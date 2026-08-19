.class public Lcom/itextpdf/io/image/Jbig2ImageData;
.super Lcom/itextpdf/io/image/ImageData;
.source "Jbig2ImageData.java"


# instance fields
.field private page:I


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1

    .line 63
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 64
    iput p2, p0, Lcom/itextpdf/io/image/Jbig2ImageData;->page:I

    return-void
.end method

.method protected constructor <init>([BI)V
    .locals 1

    .line 68
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 69
    iput p2, p0, Lcom/itextpdf/io/image/Jbig2ImageData;->page:I

    return-void
.end method

.method public static getNumberOfPages(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 2

    .line 93
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 94
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read()V

    .line 95
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->numberOfPages()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "JBIG2 image exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getNumberOfPages([B)I
    .locals 1

    .line 82
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p0

    .line 83
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-static {v0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getNumberOfPages(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canImageBeInline()Z
    .locals 2

    .line 103
    const-class v0, Lcom/itextpdf/io/image/ImageData;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 104
    const-string v1, "Image cannot be inline if it has JBIG2Decode filter. It will be added as an ImageXObject"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/itextpdf/io/image/Jbig2ImageData;->page:I

    return v0
.end method
