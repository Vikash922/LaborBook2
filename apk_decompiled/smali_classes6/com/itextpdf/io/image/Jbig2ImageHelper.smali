.class Lcom/itextpdf/io/image/Jbig2ImageHelper;
.super Ljava/lang/Object;
.source "Jbig2ImageHelper.java"


# instance fields
.field private globals:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalSegment(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)[B
    .locals 1

    .line 67
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 68
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read()V

    const/4 p0, 0x1

    .line 69
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->getGlobal(Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 78
    check-cast p0, Lcom/itextpdf/io/image/Jbig2ImageData;

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jbig2ImageData;->loadData()V

    .line 84
    :cond_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 86
    new-instance v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 87
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read()V

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->getPage(I)Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    move-result-object v2

    .line 89
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 91
    iget v1, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;->setHeight(F)V

    .line 92
    iget v1, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;->setWidth(F)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;->setBpc(I)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;->setColorEncodingComponentsNumber(I)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->getGlobal(Z)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v4, "JBIG2Globals"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object v3, p0, Lcom/itextpdf/io/image/Jbig2ImageData;->decodeParms:Ljava/util/Map;

    .line 110
    :cond_1
    const-string v0, "JBIG2Decode"

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jbig2ImageData;->setFilter(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;->setColorEncodingComponentsNumber(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;->setBpc(I)V

    .line 113
    invoke-virtual {v2, v1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->getData(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/Jbig2ImageData;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "JBIG2 image exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JBIG2 image expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
