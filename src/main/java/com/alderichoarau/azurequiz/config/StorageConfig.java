package com.alderichoarau.azurequiz.config;

import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.BlobServiceClient;
import com.azure.storage.blob.models.BlobStorageException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * The {@code BlobServiceClient} bean itself is auto-configured by {@code
 * spring-cloud-azure-starter-storage-blob} from {@code spring.cloud.azure.storage.blob.*}
 * (application.yml) -- account-name + this Web App's managed identity in prod, a container-scoped
 * SAS token on aks, a plain connection-string against local Azurite in dev. This class only
 * narrows that down to the containers the backend actually uses.
 */
@Configuration
public class StorageConfig {

    @Value("${app.storage.container-name}")
    private String containerName;

    @Value("${app.storage.question-images-container-name}")
    private String questionImagesContainerName;

    @Bean
    public BlobContainerClient resultsContainerClient(BlobServiceClient blobServiceClient) {
        return containerClient(blobServiceClient, containerName);
    }

    /** Separate container from {@link #resultsContainerClient} — admin-uploaded question images
     * (see AdminContentService) are unrelated content with their own lifecycle; keeping them apart
     * makes it possible to migrate/backup/purge one without touching the other. */
    @Bean
    public BlobContainerClient questionImagesContainerClient(BlobServiceClient blobServiceClient) {
        return containerClient(blobServiceClient, questionImagesContainerName);
    }

    private BlobContainerClient containerClient(BlobServiceClient blobServiceClient, String name) {
        BlobContainerClient client = blobServiceClient.getBlobContainerClient(name);
        // In prod (managed identity) this container already exists (Terraform's storage-java.tf)
        // and createIfNotExists is a fast no-op. Locally, against a fresh Azurite instance, this
        // is what actually creates it.
        //
        // On aks (application.yml's aks profile, container-scoped SAS from aks-deploy.yml)
        // createIfNotExists() still attempts the underlying container-CREATE call even when the
        // container already exists -- and a container-scoped SAS, however broad its blob-level
        // permissions, can never authorize creating the container itself (that's an
        // account/service-level operation). The call 403s here even though the container is
        // already there, created by that same Terraform. Swallow that specific case: the
        // container's presence on every non-local profile is guaranteed by Terraform, not by this
        // bean -- this call only actually needs to create anything against local Azurite.
        try {
            client.createIfNotExists();
        } catch (BlobStorageException e) {
            if (e.getStatusCode() != 403) {
                throw e;
            }
        }
        return client;
    }
}
