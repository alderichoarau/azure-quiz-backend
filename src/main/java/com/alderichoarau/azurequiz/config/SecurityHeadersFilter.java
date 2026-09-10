package com.alderichoarau.azurequiz.config;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

/**
 * Sets a minimal set of security response headers on every request — found missing by the DAST
 * scan (dast.yml: {@code X-Content-Type-Options}, {@code Cross-Origin-Resource-Policy}).
 *
 * <p>Unlike azure-quiz-frontend (nginx sits in front of the static bundle, see its {@code
 * nginx.conf}), this API has no reverse proxy in either deploy track (Dockerfile runs the jar's
 * embedded Tomcat directly) — headers have to be set at the application layer instead. No CSP
 * here: this is a pure JSON API, not an HTML-serving app, so a content-security-policy header
 * (meant to constrain what a *browser* renders) doesn't apply the way it does for the frontend.
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
        // cross-origin, not same-origin: this API is deliberately consumed cross-origin by
        // azure-quiz-frontend (a different domain in every deploy track, see app.cors.*
        // above/application.yml) -- same-origin would make CORP itself block those legitimate
        // requests in enforcing browsers, on top of (not instead of) the existing CORS config.
        response.setHeader("Cross-Origin-Resource-Policy", "cross-origin");
        filterChain.doFilter(request, response);
    }
}
