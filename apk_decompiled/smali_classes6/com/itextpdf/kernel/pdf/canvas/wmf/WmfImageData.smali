.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;
.super Lcom/itextpdf/io/image/ImageData;
.source "WmfImageData.java"


# static fields
.field private static final wmf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->wmf:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x29t
        -0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 82
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->readImageType(Ljava/net/URL;)[B

    move-result-object p1

    .line 83
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->wmf:[B

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->imageTypeIs([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Not a WMF image."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 94
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 95
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->readImageType([B)[B

    move-result-object p1

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->wmf:[B

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->imageTypeIs([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Not a WMF image."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static imageTypeIs([B[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 103
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

.method private static readImageType(Ljava/net/URL;)[B
    .locals 3

    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    const/16 p0, 0x8

    .line 113
    new-array p0, p0, [B

    .line 114
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 117
    :try_start_2
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 121
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 125
    :catch_2
    :cond_1
    throw p0
.end method

.method private static readImageType([B)[B
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 130
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method
