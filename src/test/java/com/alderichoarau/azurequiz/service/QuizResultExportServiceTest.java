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

import com.alderichoarau.azurequiz.dto.QuizResultDto;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.azure.core.http.HttpResponse;
import com.azure.storage.blob.BlobClient;
import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.models.BlobStorageException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class QuizResultExportServiceTest {

    @Mock private BlobContainerClient resultsContainerClient;
    @Mock private BlobClient blobClient;

    private QuizResultExportService service;

    @BeforeEach
    void setUp() {
        service = new QuizResultExportService(resultsContainerClient, new ObjectMapper());
    }

    @Test
    void export_uploadsResultAsJsonBlobNamedAfterTheSession() {
        UUID sessionId = UUID.randomUUID();
        QuizResultDto result = new QuizResultDto(sessionId, 10, 10, 8, 80.0, List.of());
        when(resultsContainerClient.getBlobClient("results/" + sessionId + ".json")).thenReturn(blobClient);

        service.export(result);

        verify(blobClient, times(1)).upload(any(), anyLong(), eq(true));
    }

    @Test
    void export_uploadFailure_isSwallowedNotThrown() {
        UUID sessionId = UUID.randomUUID();
        QuizResultDto result = new QuizResultDto(sessionId, 10, 10, 8, 80.0, List.of());
        when(resultsContainerClient.getBlobClient("results/" + sessionId + ".json")).thenReturn(blobClient);
        // upload(...) is void -- doThrow(...).when(...), not when(...).thenThrow(...).
        doThrow(new BlobStorageException("boom", mock(HttpResponse.class), null))
                .when(blobClient)
                .upload(any(), anyLong(), eq(true));

        // A Storage outage must never break the quiz flow -- see the service's own javadoc.
        // Reaching this line without an exception propagating out is the assertion.
        service.export(result);
    }

    @Test
    void download_returnsTheStoredBytes() {
        UUID sessionId = UUID.randomUUID();
        byte[] stored = ("{\"sessionId\":\"" + sessionId + "\"}".getBytes()).getBytes();
        when(resultsContainerClient.getBlobClient("results/" + sessionId + ".json")).thenReturn(blobClient);
        doAnswer(
                        invocation -> {
                            ByteArrayOutputStream out = invocation.getArgument(0);
                            out.write(stored);
                            return null;
                        })
                .when(blobClient)
                .downloadStream(any());

        byte[] result = service.download(sessionId);

        assertThat(result).isEqualTo(stored);
    }

    @Test
    void download_blobNotFound_throwsResourceNotFound() {
        UUID sessionId = UUID.randomUUID();
        when(resultsContainerClient.getBlobClient("results/" + sessionId + ".json")).thenReturn(blobClient);
        doThrow(new BlobStorageException("not found", mock(HttpResponse.class), null))
                .when(blobClient)
                .downloadStream(any());

        assertThatThrownBy(() -> service.download(sessionId)).isInstanceOf(ResourceNotFoundException.class);
    }
}
