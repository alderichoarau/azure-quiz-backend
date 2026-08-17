package com.alderichoarau.azurequiz.config;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

/**
 * Validates the {@code X-Admin-Key} header on {@code /api/admin/**} requests — the
 * content-authoring endpoints (create certification/module/question).
 *
 * <p>Deliberately a <em>separate</em> filter and secret from {@link ApiKeyFilter}: that one's key
 * is shipped inside the public frontend bundle (fine for read/quiz-taking traffic — see
 * {@code api-key.interceptor.ts}), so it can't also be the only thing gating write access to
 * content. This key is never built into the frontend; the admin UI prompts for it once and keeps
 * it in {@code sessionStorage} only, sending it via a dedicated interceptor scoped to
 * {@code /api/admin/**}.
 *
 * <p>Runs in addition to {@link ApiKeyFilter} (which still applies to every {@code /api/**} path,
 * admin included) rather than instead of it — both checks must pass in production.
 *
 * <p>The check is a no-op whenever {@code app.security.admin-key} is blank, which is the default
 * for local development (see {@code application.yml}), matching {@link ApiKeyFilter}'s own
 * convention.
 */
@Component
public class AdminApiKeyFilter extends OncePerRequestFilter {

    private static final String HEADER_NAME = "X-Admin-Key";
    private static final String ADMIN_PATH_PREFIX = "/api/admin/";

    @Value("${app.security.admin-key:}")
    private String expectedAdminKey;

    @Override
    protected void doFilterInternal(
            HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        boolean disabled = !StringUtils.hasText(expectedAdminKey);
        boolean isAdminPath = request.getRequestURI().startsWith(ADMIN_PATH_PREFIX);
        boolean isPreflight = "OPTIONS".equalsIgnoreCase(request.getMethod());

        if (disabled || !isAdminPath || isPreflight) {
            filterChain.doFilter(request, response);
            return;
        }

        String providedKey = request.getHeader(HEADER_NAME);
        if (!expectedAdminKey.equals(providedKey)) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid or missing " + HEADER_NAME);
            return;
        }
        filterChain.doFilter(request, response);
    }
}
