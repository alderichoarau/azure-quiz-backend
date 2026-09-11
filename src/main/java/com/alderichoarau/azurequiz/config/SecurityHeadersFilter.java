package com.alderichoarau.azurequiz.config;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

/**
 * Sets a minimal set of security response headers, found missing by the DAST scan (dast.yml).
 *
 * <p>Unlike azure-quiz-frontend (nginx serves the static bundle), this API has no reverse proxy
 * in either deploy track (Dockerfile runs the jar directly) — headers are set here instead. No
 * CSP: this is a JSON API, not HTML, so a content-security-policy header doesn't apply.
 */
@Component
public class SecurityHeadersFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(
            HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        response.setHeader("X-Content-Type-Options", "nosniff");
        response.setHeader("X-Frame-Options", "DENY");
        response.setHeader("Referrer-Policy", "strict-origin-when-cross-origin");
        // cross-origin, not same-origin: the frontend calls this API from a different domain in
        // every deploy track (app.cors.*) -- same-origin would make CORP block those legitimate
        // requests too.
        response.setHeader("Cross-Origin-Resource-Policy", "cross-origin");
        filterChain.doFilter(request, response);
    }
}
