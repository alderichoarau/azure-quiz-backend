package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.doAnswer;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.azure.core.http.HttpResponse;
import com.azure.storage.blob.BlobClient;
import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.models.BlobStorageException;
import java.io.ByteArrayOutputStream;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class QuestionImageStorageServiceTest {

    @Mock private BlobContainerClient questionImagesContainerClient;
    @Mock private BlobClient blobClient;

    private QuestionImageStorageService service;

    @BeforeEach
    void setUp() {
        service = new QuestionImageStorageService(questionImagesContainerClient);
    }

    @Test
    void upload_uploadsBytesUnderABlobNamedAfterTheBlockId() {
        UUID blockId = UUID.randomUUID();
        byte[] data = "image-bytes".getBytes();
        when(questionImagesContainerClient.getBlobClient("question-images/" + blockId))
                .thenReturn(blobClient);

        String blobName = service.upload(blockId, data);

        assertThat(blobName).isEqualTo("question-images/" + blockId);
        verify(blobClient, times(1)).upload(any(), eq((long) data.length), eq(true));
    }

    @Test
    void download_returnsTheStoredBytes() {
        String blobName = "question-images/" + UUID.randomUUID();
        byte[] stored = "stored-bytes".getBytes();
        when(questionImagesContainerClient.getBlobClient(blobName)).thenReturn(blobClient);
        doAnswer(
                        invocation -> {
                            ByteArrayOutputStream out = invocation.getArgument(0);
                            out.write(stored);
                            return null;
                        })
                .when(blobClient)
                .downloadStream(any());

        byte[] result = service.download(blobName);

        assertThat(result).isEqualTo(stored);
    }

    @Test
    void download_blobNotFound_throwsResourceNotFound() {
        String blobName = "question-images/" + UUID.randomUUID();
        when(questionImagesContainerClient.getBlobClient(blobName)).thenReturn(blobClient);
        doThrow(new BlobStorageException("not found", mock(HttpResponse.class), null))
                .when(blobClient)
                .downloadStream(any());

        assertThatThrownBy(() -> service.download(blobName)).isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void delete_existingBlob_deletesIt() {
        String blobName = "question-images/" + UUID.randomUUID();
        when(questionImagesContainerClient.getBlobClient(blobName)).thenReturn(blobClient);
        when(blobClient.deleteIfExists()).thenReturn(true);

        service.delete(blobName);

        verify(blobClient, times(1)).deleteIfExists();
    }

    @Test
    void delete_missingBlob_isNoOp() {
        String blobName = "question-images/" + UUID.randomUUID();
        when(questionImagesContainerClient.getBlobClient(blobName)).thenReturn(blobClient);
        when(blobClient.deleteIfExists()).thenReturn(false);

        service.delete(blobName);

        verify(blobClient, times(1)).deleteIfExists();
    }
}
