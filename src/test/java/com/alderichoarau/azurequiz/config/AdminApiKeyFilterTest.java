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

class AdminApiKeyFilterTest {

    private static AdminApiKeyFilter filterWithKey(String adminKey) {
        AdminApiKeyFilter filter = new AdminApiKeyFilter();
        ReflectionTestUtils.setField(filter, "expectedAdminKey", adminKey);
        return filter;
    }

    private static void doFilter(
            AdminApiKeyFilter filter,
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
    void noAdminKeyConfigured_isNoOp() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("");
        MockHttpServletRequest request = new MockHttpServletRequest("POST", "/api/admin/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void nonAdminApiPath_bypassesTheCheckEvenWithoutAValidKey() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("admin-secret");
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/api/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void preflightRequest_bypassesTheCheck() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("admin-secret");
        MockHttpServletRequest request = new MockHttpServletRequest("OPTIONS", "/api/admin/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void adminPath_missingHeader_returns401AndDoesNotContinueTheChain() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("admin-secret");
        MockHttpServletRequest request = new MockHttpServletRequest("POST", "/api/admin/certifications");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        assertThat(response.getStatus()).isEqualTo(401);
        verify(chain, never()).doFilter(request, response);
    }

    @Test
    void adminPath_wrongHeader_returns401() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("admin-secret");
        MockHttpServletRequest request = new MockHttpServletRequest("POST", "/api/admin/certifications");
        request.addHeader("X-Admin-Key", "wrong-key");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        assertThat(response.getStatus()).isEqualTo(401);
        verify(chain, never()).doFilter(request, response);
    }

    @Test
    void adminPath_correctHeader_continuesTheChain() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("admin-secret");
        MockHttpServletRequest request = new MockHttpServletRequest("POST", "/api/admin/certifications");
        request.addHeader("X-Admin-Key", "admin-secret");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }

    @Test
    void regularApiPath_notUnderAdmin_isNotGatedByAdminKeyEvenWhenConfigured() throws ServletException, IOException {
        AdminApiKeyFilter filter = filterWithKey("admin-secret");
        MockHttpServletRequest request = new MockHttpServletRequest("POST", "/api/quiz-sessions");
        MockHttpServletResponse response = new MockHttpServletResponse();
        FilterChain chain = mock(FilterChain.class);

        doFilter(filter, request, response, chain);

        verify(chain).doFilter(request, response);
    }
}
