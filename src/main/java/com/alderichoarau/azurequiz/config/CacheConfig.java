package com.alderichoarau.azurequiz.config;

import java.time.Duration;
import org.springframework.boot.autoconfigure.cache.RedisCacheManagerBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;

/**
 * Spring Boot's auto-configured {@code RedisCacheManager} serializes cache values with plain JDK
 * serialization by default, which requires every cached type to implement {@code Serializable} --
 * the DTOs cached here ({@code CertificationSummaryDto}, {@code ModuleSummaryDto}, see
 * CertificationService/ModuleService) are plain Java records and don't. Switching to JSON
 * (Jackson, already on the classpath via spring-boot-starter-web) avoids that requirement
 * entirely and keeps cached values human-readable if you inspect Redis directly (e.g. with
 * redis-cli GET).
 */
@Configuration
public class CacheConfig {

    @Bean
    public RedisCacheManagerBuilderCustomizer jsonCacheCustomizer() {
        return builder ->
                builder.cacheDefaults(
                        RedisCacheConfiguration.defaultCacheConfig()
                                .entryTtl(Duration.ofMinutes(30))
                                .serializeValuesWith(
                                        RedisSerializationContext.SerializationPair.fromSerializer(
                                                new GenericJackson2JsonRedisSerializer())));
    }
}
