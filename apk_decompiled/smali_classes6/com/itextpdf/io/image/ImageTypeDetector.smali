.class public final Lcom/itextpdf/io/image/ImageTypeDetector;
.super Ljava/lang/Object;
.source "ImageTypeDetector.java"


# static fields
.field private static final bmp:[B

.field private static final gif:[B

.field private static final jbig2:[B

.field private static final jpeg:[B

.field private static final jpeg2000_1:[B

.field private static final jpeg2000_2:[B

.field private static final png:[B

.field private static final tiff_1:[B

.field private static final tiff_2:[B

.field private static final wmf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->gif:[B

    const/4 v0, 0x2

    .line 38
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/itextpdf/io/image/ImageTypeDetector;->jpeg:[B

    const/4 v1, 0x4

    .line 39
    new-array v2, v1, [B

    fill-array-data v2, :array_2

    sput-object v2, Lcom/itextpdf/io/image/ImageTypeDetector;->jpeg2000_1:[B

    .line 40
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lcom/itextpdf/io/image/ImageTypeDetector;->jpeg2000_2:[B

    .line 41
    new-array v2, v1, [B

    fill-array-data v2, :array_4

    sput-object v2, Lcom/itextpdf/io/image/ImageTypeDetector;->png:[B

    .line 42
    new-array v2, v0, [B

    fill-array-data v2, :array_5

    sput-object v2, Lcom/itextpdf/io/image/ImageTypeDetector;->wmf:[B

    .line 43
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->bmp:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->tiff_1:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->tiff_2:[B

    const/16 v0, 0x8

    .line 46
    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->jbig2:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xct
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x4ft
        -0x1t
        0x51t
    .end array-data

    :array_4
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    :array_5
    .array-data 1
        -0x29t
        -0x33t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
    .end array-data

    :array_9
    .array-data 1
        -0x69t
        0x4at
        0x42t
        0x32t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectImageType(Ljava/io/InputStream;)Lcom/itextpdf/io/image/ImageType;
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->readImageType(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageTypeByHeader([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->readImageType(Ljava/net/URL;)[B

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageTypeByHeader([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static detectImageType([B)Lcom/itextpdf/io/image/ImageType;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->readImageType([B)[B

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageTypeByHeader([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    return-object p0
.end method

.method private static detectImageTypeByHeader([B)Lcom/itextpdf/io/image/ImageType;
    .locals 1

    .line 85
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->gif:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 87
    :cond_0
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->jpeg:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 89
    :cond_1
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->jpeg2000_1:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->jpeg2000_2:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->png:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 93
    :cond_3
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->bmp:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 95
    :cond_4
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->tiff_1:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->tiff_2:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 97
    :cond_5
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->jbig2:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 99
    :cond_6
    sget-object v0, Lcom/itextpdf/io/image/ImageTypeDetector;->wmf:[B

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageTypeDetector;->imageTypeIs([B[B)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 100
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 102
    :cond_7
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->NONE:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 96
    :cond_8
    :goto_0
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    return-object p0

    .line 90
    :cond_9
    :goto_1
    sget-object p0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    return-object p0
.end method

.method private static imageTypeIs([B[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 107
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static readImageType(Ljava/io/InputStream;)[B
    .locals 2

    const/16 v0, 0x8

    .line 123
    :try_start_0
    new-array v0, v0, [B

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "I/O exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readImageType(Ljava/net/URL;)[B
    .locals 2

    .line 114
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/io/util/UrlUtil;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->readImageType(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 116
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 114
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 116
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 117
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "I/O exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readImageType([B)[B
    .locals 1

    .line 133
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p0, 0x8

    .line 134
    new-array p0, p0, [B

    .line 135
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
