package com.alderichoarau.azurequiz.config;

import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.springframework.boot.autoconfigure.cache.RedisCacheManagerBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;

/**
 * Spring Boot's auto-configured {@code RedisCacheManager} serializes cache values with plain JDK
 * serialization by default, which requires every cached type to implement {@code Serializable} --
 * the DTOs cached here ({@code CertificationSummaryDto}, {@code ModuleSummaryDto}, see
 * CertificationService/ModuleService) are plain Java records and don't. Switching to JSON avoids
 * that requirement entirely.
 *
 * <p>The default cache serializer is {@link GenericJackson2JsonRedisSerializer}, but that class
 * embeds a polymorphic type id (an {@code "@class"} field) in every cached value so it knows what
 * Java type to reconstruct on read. Both cached methods here return their list via {@code
 * .stream()...toList()} (Java 16+), which produces a JDK-internal immutable list implementation
 * ({@code ImmutableCollections$ListN}), not {@code ArrayList} -- and that internal class name is
 * exactly what got embedded as the type id, which Jackson's own deserializer then can't
 * reconstruct on read ({@code MismatchedInputException: Unexpected token (START_OBJECT), expected
 * VALUE_STRING} from {@code AsArrayTypeDeserializer}). A {@code redis-cli FLUSHALL} only clears
 * old bad entries -- the next write reproduces the exact same broken entry, which is exactly what
 * happened.
 *
 * <p>Fix: give each cache its own {@link Jackson2JsonRedisSerializer}, built with an explicit
 * target {@code JavaType} instead of the generic/polymorphic serializer. Each cache here always
 * holds exactly one known type, so there's nothing to embed or resolve at read time -- Jackson is
 * simply told up front "deserialize this JSON into a {@code List<CertificationSummaryDto>}",
 * regardless of what concrete list class produced the JSON on write.
 */
@Configuration
public class CacheConfig {

    @Bean
    public RedisCacheManagerBuilderCustomizer jsonCacheCustomizer() {
        ObjectMapper mapper = new ObjectMapper().findAndRegisterModules();

        RedisCacheConfiguration defaults =
                RedisCacheConfiguration.defaultCacheConfig()
                        .entryTtl(Duration.ofMinutes(30))
                        .serializeValuesWith(
                                RedisSerializationContext.SerializationPair.fromSerializer(
                                        new GenericJackson2JsonRedisSerializer(mapper)));

        return builder ->
                builder.cacheDefaults(defaults)
                        .withCacheConfiguration(
                                "certifications", typedListConfig(mapper, CertificationSummaryDto.class))
                        .withCacheConfiguration("modules", typedListConfig(mapper, ModuleSummaryDto.class));
    }

    private RedisCacheConfiguration typedListConfig(ObjectMapper mapper, Class<?> elementType) {
        CollectionType listType =
                mapper.getTypeFactory().constructCollectionType(ArrayList.class, elementType);
        Jackson2JsonRedisSerializer<List<?>> serializer =
                new Jackson2JsonRedisSerializer<>(mapper, listType);

        return RedisCacheConfiguration.defaultCacheConfig()
                .entryTtl(Duration.ofMinutes(30))
                .serializeValuesWith(
                        RedisSerializationContext.SerializationPair.fromSerializer(serializer));
    }
}
