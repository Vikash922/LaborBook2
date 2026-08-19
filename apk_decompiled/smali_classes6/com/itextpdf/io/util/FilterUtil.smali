.class public final Lcom/itextpdf/io/util/FilterUtil;
.super Ljava/lang/Object;
.source "FilterUtil.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/itextpdf/io/util/FilterUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/FilterUtil;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flateDecode([B)[B
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, v0}, Lcom/itextpdf/io/util/FilterUtil;->flateDecode([BZ)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/itextpdf/io/util/FilterUtil;->flateDecode([BZ)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static flateDecode([BZ)[B
    .locals 4

    .line 78
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0xffc

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 81
    :goto_0
    new-array v1, v1, [B

    .line 84
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 98
    sget-object v0, Lcom/itextpdf/io/util/FilterUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    .line 91
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 98
    sget-object v0, Lcom/itextpdf/io/util/FilterUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object p1

    .line 94
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    .line 98
    sget-object v0, Lcom/itextpdf/io/util/FilterUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_6
    throw p1
.end method

.method public static getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 133
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v0, p0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public static inflateData([B[B)V
    .locals 1

    .line 123
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 124
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 126
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 128
    :catch_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Cannot inflate TIFF image."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
