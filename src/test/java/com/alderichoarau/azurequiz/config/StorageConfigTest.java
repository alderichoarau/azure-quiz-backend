package com.alderichoarau.azurequiz.config;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import com.azure.core.http.HttpResponse;
import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.BlobServiceClient;
import com.azure.storage.blob.models.BlobStorageException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;

@ExtendWith(MockitoExtension.class)
class StorageConfigTest {

    @Mock private BlobServiceClient blobServiceClient;
    @Mock private BlobContainerClient blobContainerClient;

    private StorageConfig config;

    @BeforeEach
    void setUp() {
        config = new StorageConfig();
        ReflectionTestUtils.setField(config, "containerName", "quiz-results-local");
        ReflectionTestUtils.setField(config, "questionImagesContainerName", "quiz-question-images-local");
    }

    @Test
    void resultsContainerClient_createsContainerAndReturnsIt() {
        when(blobServiceClient.getBlobContainerClient("quiz-results-local")).thenReturn(blobContainerClient);

        BlobContainerClient result = config.resultsContainerClient(blobServiceClient);

        assertThat(result).isSameAs(blobContainerClient);
    }

    @Test
    void questionImagesContainerClient_createsContainerAndReturnsIt() {
        when(blobServiceClient.getBlobContainerClient("quiz-question-images-local")).thenReturn(blobContainerClient);

        BlobContainerClient result = config.questionImagesContainerClient(blobServiceClient);

        assertThat(result).isSameAs(blobContainerClient);
    }

    @Test
    void containerClient_containerAlreadyExistsWith403_swallowsAndReturnsClient() {
        when(blobServiceClient.getBlobContainerClient("quiz-results-local")).thenReturn(blobContainerClient);
        HttpResponse response = mock(HttpResponse.class);
        when(response.getStatusCode()).thenReturn(403);
        doThrow(new BlobStorageException("forbidden", response, null))
                .when(blobContainerClient)
                .createIfNotExists();

        BlobContainerClient result = config.resultsContainerClient(blobServiceClient);

        assertThat(result).isSameAs(blobContainerClient);
    }

    @Test
    void containerClient_otherStorageError_isRethrown() {
        when(blobServiceClient.getBlobContainerClient("quiz-results-local")).thenReturn(blobContainerClient);
        HttpResponse response = mock(HttpResponse.class);
        when(response.getStatusCode()).thenReturn(500);
        doThrow(new BlobStorageException("server error", response, null))
                .when(blobContainerClient)
                .createIfNotExists();

        assertThatThrownBy(() -> config.resultsContainerClient(blobServiceClient))
                .isInstanceOf(BlobStorageException.class);
    }
}
