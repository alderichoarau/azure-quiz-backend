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
 * Validates the {@code X-Api-Key} header on {@code /api/**} requests.
 *
 * <p>This is a compromise for the Static Web App "linked backend" limitation: the App Service
 * must stay publicly reachable (Microsoft doc'd constraint), so it can't rely on network
 * isolation alone. CORS is locked to the exact Static Web App origin, and this shared key adds an
 * application-layer check on top.
 *
 * <p>The check is a no-op whenever {@code app.security.api-key} is blank, which is the default for
 * local development (see {@code application.yml}) — no extra setup needed to run the app locally.
 * In production, Azure App Service injects {@code BACKEND_API_KEY} from Key Vault (see
 * {@code app-service-java.tf} / {@code keyvault.tf} in the infra repo), and the frontend sends the
 * same value via an Angular HTTP interceptor.
 */
@Component
public class ApiKeyFilter extends OncePerRequestFilter {

    private static final String HEADER_NAME = "X-Api-Key";

    @Value("${app.security.api-key:}")
    private String expectedApiKey;

    @Override
    protected void doFilterInternal(
            HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        boolean disabled = !StringUtils.hasText(expectedApiKey);
        boolean isApiPath = request.getRequestURI().startsWith("/api/");
        boolean isPreflight = "OPTIONS".equalsIgnoreCase(request.getMethod());

        if (disabled || !isApiPath || isPreflight) {
            filterChain.doFilter(request, response);
            return;
        }

        String providedKey = request.getHeader(HEADER_NAME);
        if (!expectedApiKey.equals(providedKey)) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid or missing " + HEADER_NAME);
            return;
        }
        filterChain.doFilter(request, response);
    }
}
