package com.alderichoarau.azurequiz.service;

import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.models.BlobStorageException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * Stores admin-uploaded question images in the {@code questionImagesContainerClient} container
 * (see StorageConfig) — a separate container from {@link QuizResultExportService}'s results
 * export, so the two can be migrated/backed up independently. The blob name is opaque; the actual
 * content-type is tracked in {@code question_content_block.image_content_type} (Postgres) rather
 * than as blob metadata, since the serving endpoint (GET /api/images/{blockId}) already has to
 * look up that row anyway.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class QuestionImageStorageService {

    private final BlobContainerClient questionImagesContainerClient;

    public String upload(UUID blockId, byte[] data) {
        String blobName = blobName(blockId);
        questionImagesContainerClient
                .getBlobClient(blobName)
                .upload(new ByteArrayInputStream(data), data.length, true);
        log.info("Uploaded question image '{}' ({} bytes)", blobName, data.length);
        return blobName;
    }

    public byte[] download(String blobName) {
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            questionImagesContainerClient.getBlobClient(blobName).downloadStream(out);
            return out.toByteArray();
        } catch (BlobStorageException e) {
            throw new ResourceNotFoundException("Image not found: " + blobName);
        }
    }

    /** Called when a question is edited: every image block is always re-uploaded fresh (see
     * AdminContentService#updateQuestion), so the blob it's replacing becomes orphaned garbage
     * unless cleaned up here. Best-effort — a missing blob is not an error worth failing the
     * edit over. */
    public void delete(String blobName) {
        boolean deleted = questionImagesContainerClient.getBlobClient(blobName).deleteIfExists();
        log.info("Deleted question image '{}': {}", blobName, deleted ? "removed" : "already absent");
    }

    private String blobName(UUID blockId) {
        return "question-images/" + blockId;
    }
}
