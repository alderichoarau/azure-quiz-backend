package com.alderichoarau.azurequiz.config;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import tools.jackson.databind.json.JsonMapper;

class CacheConfigTest {

    @Test
    void jsonCacheCustomizer_configuresDefaultsAndPerCacheOverrides() {
        CacheConfig config = new CacheConfig();
        JsonMapper jsonMapper = JsonMapper.builder().build();
        RedisCacheManager.RedisCacheManagerBuilder builder =
                mock(RedisCacheManager.RedisCacheManagerBuilder.class);
        when(builder.cacheDefaults(any(RedisCacheConfiguration.class))).thenReturn(builder);
        when(builder.withCacheConfiguration(any(), any(RedisCacheConfiguration.class))).thenReturn(builder);

        config.jsonCacheCustomizer(jsonMapper).customize(builder);

        verify(builder).cacheDefaults(any(RedisCacheConfiguration.class));
        verify(builder).withCacheConfiguration(eq("certifications"), any(RedisCacheConfiguration.class));
        verify(builder).withCacheConfiguration(eq("modules"), any(RedisCacheConfiguration.class));
    }
}
