package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.entity.QuestionContentBlock;
import com.alderichoarau.azurequiz.exception.GlobalExceptionHandler;
import com.alderichoarau.azurequiz.repository.QuestionContentBlockRepository;
import com.alderichoarau.azurequiz.service.QuestionImageStorageService;
import java.util.Optional;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class ImageControllerTest {

    @Mock private QuestionContentBlockRepository questionContentBlockRepository;
    @Mock private QuestionImageStorageService questionImageStorageService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc =
                standaloneSetup(new ImageController(questionContentBlockRepository, questionImageStorageService))
                        .setControllerAdvice(new GlobalExceptionHandler())
                        .build();
    }

    @Test
    void getImage_withContentType_returnsBytesWithThatType() throws Exception {
        UUID blockId = UUID.randomUUID();
        QuestionContentBlock block =
                QuestionContentBlock.builder()
                        .id(blockId)
                        .imageBlobName("question-images/" + blockId)
                        .imageContentType("image/png")
                        .build();
        byte[] data = {1, 2, 3};
        when(questionContentBlockRepository.findById(blockId)).thenReturn(Optional.of(block));
        when(questionImageStorageService.download("question-images/" + blockId)).thenReturn(data);

        mvc.perform(get("/api/images/{blockId}", blockId))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.IMAGE_PNG))
                .andExpect(content().bytes(data));
    }

    @Test
    void getImage_withoutContentType_defaultsToOctetStream() throws Exception {
        UUID blockId = UUID.randomUUID();
        QuestionContentBlock block =
                QuestionContentBlock.builder().id(blockId).imageBlobName("question-images/" + blockId).build();
        byte[] data = {1, 2, 3};
        when(questionContentBlockRepository.findById(blockId)).thenReturn(Optional.of(block));
        when(questionImageStorageService.download("question-images/" + blockId)).thenReturn(data);

        mvc.perform(get("/api/images/{blockId}", blockId))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_OCTET_STREAM));
    }

    @Test
    void getImage_blockNotFound_returns404() throws Exception {
        UUID blockId = UUID.randomUUID();
        when(questionContentBlockRepository.findById(blockId)).thenReturn(Optional.empty());

        mvc.perform(get("/api/images/{blockId}", blockId)).andExpect(status().isNotFound());
    }

    @Test
    void getImage_blockWithoutImage_returns404() throws Exception {
        UUID blockId = UUID.randomUUID();
        QuestionContentBlock block = QuestionContentBlock.builder().id(blockId).imageBlobName(null).build();
        when(questionContentBlockRepository.findById(blockId)).thenReturn(Optional.of(block));

        mvc.perform(get("/api/images/{blockId}", blockId)).andExpect(status().isNotFound());
    }
}
