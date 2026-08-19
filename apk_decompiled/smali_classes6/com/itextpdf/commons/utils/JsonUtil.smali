.class public final Lcom/itextpdf/commons/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/commons/utils/JsonUtil$MinimalPrinter;,
        Lcom/itextpdf/commons/utils/JsonUtil$CustomPrettyPrinter;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/itextpdf/commons/utils/JsonUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/utils/JsonUtil;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areTwoJsonObjectEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 68
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    .line 69
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static createAndConfigureObjectWriter(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 4

    .line 223
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 224
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 226
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v1, 0x1

    .line 227
    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v2, 0x0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 228
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writer(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeFromStream(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/fasterxml/jackson/core/type/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/commons/utils/JsonUtil;->deserializeFromStream(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeFromStream(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 156
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 158
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 160
    sget-object p1, Lcom/itextpdf/commons/utils/JsonUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 160
    const-string v0, "Unable to deserialize json. Exception {0} was thrown with the message: {1}."

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static deserializeFromStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/commons/utils/JsonUtil;->deserializeFromStream(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeFromString(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/type/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/commons/utils/JsonUtil;->deserializeFromString(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeFromString(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 205
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 207
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 209
    sget-object p1, Lcom/itextpdf/commons/utils/JsonUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 209
    const-string v0, "Unable to deserialize json. Exception {0} was thrown with the message: {1}."

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static deserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 177
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/commons/utils/JsonUtil;->deserializeFromString(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static serializeToMinimalStream(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/itextpdf/commons/utils/JsonUtil$MinimalPrinter;

    invoke-direct {v0}, Lcom/itextpdf/commons/utils/JsonUtil$MinimalPrinter;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/commons/utils/JsonUtil;->serializeToStream(Ljava/io/OutputStream;Ljava/lang/Object;Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V

    return-void
.end method

.method public static serializeToMinimalString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 114
    new-instance v0, Lcom/itextpdf/commons/utils/JsonUtil$MinimalPrinter;

    invoke-direct {v0}, Lcom/itextpdf/commons/utils/JsonUtil$MinimalPrinter;-><init>()V

    invoke-static {p0, v0}, Lcom/itextpdf/commons/utils/JsonUtil;->serializeToString(Ljava/lang/Object;Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeToStream(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/itextpdf/commons/utils/JsonUtil$CustomPrettyPrinter;

    invoke-direct {v0}, Lcom/itextpdf/commons/utils/JsonUtil$CustomPrettyPrinter;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/commons/utils/JsonUtil;->serializeToStream(Ljava/io/OutputStream;Ljava/lang/Object;Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V

    return-void
.end method

.method private static serializeToStream(Ljava/io/OutputStream;Ljava/lang/Object;Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V
    .locals 0

    .line 241
    :try_start_0
    invoke-static {p2}, Lcom/itextpdf/commons/utils/JsonUtil;->createAndConfigureObjectWriter(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    sget-object p1, Lcom/itextpdf/commons/utils/JsonUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 243
    const-string p2, "Unable to serialize object. Exception {0} was thrown with the message: {1}."

    invoke-static {p2, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static serializeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 92
    new-instance v0, Lcom/itextpdf/commons/utils/JsonUtil$CustomPrettyPrinter;

    invoke-direct {v0}, Lcom/itextpdf/commons/utils/JsonUtil$CustomPrettyPrinter;-><init>()V

    invoke-static {p0, v0}, Lcom/itextpdf/commons/utils/JsonUtil;->serializeToString(Ljava/lang/Object;Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static serializeToString(Ljava/lang/Object;Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)Ljava/lang/String;
    .locals 1

    .line 258
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/commons/utils/JsonUtil;->createAndConfigureObjectWriter(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 260
    sget-object p1, Lcom/itextpdf/commons/utils/JsonUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 260
    const-string v0, "Unable to serialize object. Exception {0} was thrown with the message: {1}."

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
