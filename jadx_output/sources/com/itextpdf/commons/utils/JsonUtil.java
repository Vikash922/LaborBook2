package com.itextpdf.commons.utils;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.itextpdf.commons.logs.CommonsLogMessageConstant;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class JsonUtil {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) JsonUtil.class);

    private JsonUtil() {
    }

    public static boolean areTwoJsonObjectEquals(String str, String str2) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.readTree(str2).equals(objectMapper.readTree(str));
    }

    public static void serializeToStream(OutputStream outputStream, Object obj) {
        serializeToStream(outputStream, obj, new CustomPrettyPrinter());
    }

    public static String serializeToString(Object obj) {
        return serializeToString(obj, new CustomPrettyPrinter());
    }

    public static void serializeToMinimalStream(OutputStream outputStream, Object obj) {
        serializeToStream(outputStream, obj, new MinimalPrinter());
    }

    public static String serializeToMinimalString(Object obj) {
        return serializeToString(obj, new MinimalPrinter());
    }

    public static <T> T deserializeFromStream(InputStream inputStream, Class<T> cls) {
        return (T) deserializeFromStream(inputStream, new ObjectMapper().constructType(cls));
    }

    public static <T> T deserializeFromStream(InputStream inputStream, TypeReference<T> typeReference) {
        return (T) deserializeFromStream(inputStream, new ObjectMapper().constructType(typeReference));
    }

    public static <T> T deserializeFromStream(InputStream inputStream, JavaType javaType) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        try {
            return (T) objectMapper.readValue(inputStream, javaType);
        } catch (IOException e) {
            LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.UNABLE_TO_DESERIALIZE_JSON, e.getClass(), e.getMessage()));
            return null;
        }
    }

    public static <T> T deserializeFromString(String str, Class<T> cls) {
        return (T) deserializeFromString(str, new ObjectMapper().constructType(cls));
    }

    public static <T> T deserializeFromString(String str, TypeReference<T> typeReference) {
        return (T) deserializeFromString(str, new ObjectMapper().constructType(typeReference));
    }

    public static <T> T deserializeFromString(String str, JavaType javaType) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        try {
            return (T) objectMapper.readValue(str, javaType);
        } catch (JsonProcessingException e) {
            LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.UNABLE_TO_DESERIALIZE_JSON, e.getClass(), e.getMessage()));
            return null;
        }
    }

    private static ObjectWriter createAndConfigureObjectWriter(DefaultPrettyPrinter defaultPrettyPrinter) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        objectMapper.disable(new JsonGenerator.Feature[]{JsonGenerator.Feature.AUTO_CLOSE_TARGET});
        return objectMapper.writer(defaultPrettyPrinter);
    }

    private static void serializeToStream(OutputStream outputStream, Object obj, DefaultPrettyPrinter defaultPrettyPrinter) {
        try {
            createAndConfigureObjectWriter(defaultPrettyPrinter).writeValue(outputStream, obj);
        } catch (IOException e) {
            LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.UNABLE_TO_SERIALIZE_OBJECT, e.getClass(), e.getMessage()));
        }
    }

    private static String serializeToString(Object obj, DefaultPrettyPrinter defaultPrettyPrinter) {
        try {
            return createAndConfigureObjectWriter(defaultPrettyPrinter).writeValueAsString(obj);
        } catch (JsonProcessingException e) {
            LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.UNABLE_TO_SERIALIZE_OBJECT, e.getClass(), e.getMessage()));
            return null;
        }
    }

    private static class CustomPrettyPrinter extends DefaultPrettyPrinter {
        public CustomPrettyPrinter() {
            this._objectFieldValueSeparatorWithSpaces = ": ";
            indentArraysWith(DefaultIndenter.SYSTEM_LINEFEED_INSTANCE.withLinefeed(StringUtils.f4768LF));
            indentObjectsWith(DefaultIndenter.SYSTEM_LINEFEED_INSTANCE.withLinefeed(StringUtils.f4768LF));
        }

        /* JADX INFO: renamed from: createInstance, reason: merged with bridge method [inline-methods] */
        public DefaultPrettyPrinter m3116createInstance() {
            return new CustomPrettyPrinter();
        }
    }

    private static class MinimalPrinter extends DefaultPrettyPrinter {
        public MinimalPrinter() {
            this._objectFieldValueSeparatorWithSpaces = ":";
            indentArraysWith(new DefaultIndenter("", ""));
            indentObjectsWith(new DefaultIndenter("", ""));
        }

        /* JADX INFO: renamed from: createInstance, reason: merged with bridge method [inline-methods] */
        public DefaultPrettyPrinter m3117createInstance() {
            return new MinimalPrinter();
        }
    }
}
