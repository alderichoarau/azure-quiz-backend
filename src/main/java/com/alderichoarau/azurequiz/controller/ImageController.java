package com.alderichoarau.azurequiz.controller;

import com.alderichoarau.azurequiz.entity.QuestionContentBlock;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.QuestionContentBlockRepository;
import com.alderichoarau.azurequiz.service.QuestionImageStorageService;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * Student-facing (not admin-only): question images are part of the normal quiz-taking flow, so
 * this sits under the regular {@code /api/**} surface, covered by the existing public
 * {@code ApiKeyFilter} like every other read endpoint — not {@code AdminApiKeyFilter}.
 */
@RestController
@RequiredArgsConstructor
public class ImageController {

    private final QuestionContentBlockRepository questionContentBlockRepository;
    private final QuestionImageStorageService questionImageStorageService;

    @GetMapping("/api/images/{blockId}")
    public ResponseEntity<byte[]> getImage(@PathVariable UUID blockId) {
        QuestionContentBlock block =
                questionContentBlockRepository
                        .findById(blockId)
                        .orElseThrow(() -> new ResourceNotFoundException("Image not found: " + blockId));
        if (block.getImageBlobName() == null) {
            throw new ResourceNotFoundException("Content block is not an image: " + blockId);
        }
        byte[] data = questionImageStorageService.download(block.getImageBlobName());
        MediaType contentType =
                block.getImageContentType() != null
                        ? MediaType.parseMediaType(block.getImageContentType())
                        : MediaType.APPLICATION_OCTET_STREAM;
        return ResponseEntity.ok().contentType(contentType).body(data);
    }
}
