package com.alderichoarau.azurequiz.config;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import java.io.IOException;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.util.ReflectionTestUtils;

class ApiKeyFilterTest {

    private static ApiKeyFilter filterWithKey(String apiKey) {
        ApiKeyFilter filter = new ApiKeyFilter();
        ReflectionTestUtils.setField(filter, "expectedApiKey", apiKey);
        return filter;
    }

    // doFilterInternal declares checked exceptions it never actually throws in these
    // scenarios -- wrapping keeps every test method's signature free of `throws`.
    private static void doFilter(
            ApiKeyFilter filter,
            MockHttpServletRequest request,
            MockHttpServletResponse response,
            FilterChain chain) {
        try {
            filter.doFilterInternal(request, response, chain);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    void noApiKeyConfigured_isNoOp() throws ServletException, IOException {
        ApiKeyFilter filter = filterWithKey("");
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/api/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void nonApiPath_bypassesTheCheckEvenWithoutAValidKey() throws ServletException, IOException {
        ApiKeyFilter filter = filterWithKey("secret-key");
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/actuator/health");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void preflightRequest_bypassesTheCheck() throws ServletException, IOException {
        ApiKeyFilter filter = filterWithKey("secret-key");
        MockHttpServletRequest request = new MockHttpServletRequest("OPTIONS", "/api/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void apiPath_missingHeader_returns401AndDoesNotContinueTheChain() throws ServletException, IOException {
        ApiKeyFilter filter = filterWithKey("secret-key");
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/api/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        assertThat(response.getStatus()).isEqualTo(401);
        verify(chain, never()).doFilter(request, response);
    }

    @Test
    void apiPath_wrongHeader_returns401() throws ServletException, IOException {
        ApiKeyFilter filter = filterWithKey("secret-key");
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/api/certifications");
        request.addHeader("X-Api-Key", "wrong-key");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        assertThat(response.getStatus()).isEqualTo(401);
        verify(chain, never()).doFilter(request, response);
    }

    @Test
    void apiPath_correctHeader_continuesTheChain() throws ServletException, IOException {
        ApiKeyFilter filter = filterWithKey("secret-key");
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/api/certifications");
        request.addHeader("X-Api-Key", "secret-key");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }
}
