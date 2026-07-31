package com.alderichoarau.azurequiz.config;

import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.springframework.boot.cache.autoconfigure.RedisCacheManagerBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.serializer.GenericJacksonJsonRedisSerializer;
import org.springframework.data.redis.serializer.JacksonJsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import tools.jackson.databind.JavaType;
import tools.jackson.databind.json.JsonMapper;

@Configuration
public class CacheConfig {

    @Bean
    public RedisCacheManagerBuilderCustomizer jsonCacheCustomizer(JsonMapper jsonMapper) {
        RedisCacheConfiguration defaults =
                RedisCacheConfiguration.defaultCacheConfig()
                        .entryTtl(Duration.ofMinutes(30))
                        .serializeValuesWith(
                                RedisSerializationContext.SerializationPair.fromSerializer(
                                        new GenericJacksonJsonRedisSerializer(jsonMapper)));

        return builder ->
                builder.cacheDefaults(defaults)
                        .withCacheConfiguration(
                                "certifications", typedListConfig(jsonMapper, CertificationSummaryDto.class))
                        .withCacheConfiguration("modules", typedListConfig(jsonMapper, ModuleSummaryDto.class));
    }

    private RedisCacheConfiguration typedListConfig(JsonMapper mapper, Class<?> elementType) {
        JavaType listType = mapper.getTypeFactory().constructCollectionType(ArrayList.class, elementType);
        JacksonJsonRedisSerializer<List<?>> serializer = new JacksonJsonRedisSerializer<>(mapper, listType);

        return RedisCacheConfiguration.defaultCacheConfig()
                .entryTtl(Duration.ofMinutes(30))
                .serializeValuesWith(
                        RedisSerializationContext.SerializationPair.fromSerializer(serializer));
    }
}
