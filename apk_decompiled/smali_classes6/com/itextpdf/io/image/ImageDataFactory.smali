.class public final Lcom/itextpdf/io/image/ImageDataFactory;
.super Ljava/lang/Object;
.source "ImageDataFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;
    .locals 8

    if-eqz p5, :cond_1

    .line 164
    array-length v0, p5

    mul-int/lit8 v1, p2, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-ne p3, v0, :cond_2

    .line 167
    invoke-static {p4, p0, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v6

    const/16 v4, 0x100

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v1, p0

    move v2, p1

    move-object v7, p5

    .line 168
    invoke-static/range {v1 .. v7}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIZII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0

    .line 170
    :cond_2
    new-instance v1, Lcom/itextpdf/io/image/RawImageData;

    sget-object v2, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v1, p4, v2}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    int-to-float p1, p1

    .line 171
    iput p1, v1, Lcom/itextpdf/io/image/RawImageData;->height:F

    int-to-float p0, p0

    .line 172
    iput p0, v1, Lcom/itextpdf/io/image/RawImageData;->width:F

    const/4 p0, 0x4

    if-eq p2, v0, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    if-ne p2, p0, :cond_3

    goto :goto_1

    .line 174
    :cond_3
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Components must be 1, 3 or 4."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eq p3, v0, :cond_6

    const/4 p1, 0x2

    if-eq p3, p1, :cond_6

    if-eq p3, p0, :cond_6

    const/16 p0, 0x8

    if-ne p3, p0, :cond_5

    goto :goto_2

    .line 176
    :cond_5
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Bits per component must be 1, 2, 4 or 8."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_6
    :goto_2
    iput p2, v1, Lcom/itextpdf/io/image/RawImageData;->colorEncodingComponentsNumber:I

    .line 178
    iput p3, v1, Lcom/itextpdf/io/image/RawImageData;->bpc:I

    .line 179
    iput-object p4, v1, Lcom/itextpdf/io/image/RawImageData;->data:[B

    .line 180
    iput-object p5, v1, Lcom/itextpdf/io/image/RawImageData;->transparency:[I

    return-object v1
.end method

.method public static create(IIZII[B[I)Lcom/itextpdf/io/image/ImageData;
    .locals 2

    if-eqz p6, :cond_1

    .line 136
    array-length v0, p6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0x100

    if-eq p3, v0, :cond_3

    const/16 v0, 0x101

    if-eq p3, v0, :cond_3

    const/16 v0, 0x102

    if-ne p3, v0, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "CCITT compression type must be CCITTG4, CCITTG3_1D or CCITTG3_2D."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 141
    invoke-static {p5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 142
    :cond_4
    new-instance p2, Lcom/itextpdf/io/image/RawImageData;

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p2, p5, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 143
    invoke-virtual {p2, p3}, Lcom/itextpdf/io/image/RawImageData;->setTypeCcitt(I)V

    int-to-float p1, p1

    .line 144
    iput p1, p2, Lcom/itextpdf/io/image/RawImageData;->height:F

    int-to-float p0, p0

    .line 145
    iput p0, p2, Lcom/itextpdf/io/image/RawImageData;->width:F

    .line 146
    iput p4, p2, Lcom/itextpdf/io/image/RawImageData;->colorEncodingComponentsNumber:I

    .line 147
    iput-object p6, p2, Lcom/itextpdf/io/image/RawImageData;->transparency:[I

    return-object p2
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/image/AwtImageDataFactory;->create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/lang/String;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/itextpdf/io/util/UrlUtil;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->createImageInstance(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create([BZ)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create([BZ)Lcom/itextpdf/io/image/ImageData;
    .locals 0

    .line 69
    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->createImageInstance([BZ)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static createBmp(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 217
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 218
    new-instance v0, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/image/BmpImageData;-><init>(Ljava/net/URL;Z)V

    .line 219
    invoke-static {v0}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createBmp([BZ)Lcom/itextpdf/io/image/ImageData;
    .locals 2

    if-nez p1, :cond_1

    .line 231
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BMP image expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_1
    :goto_0
    new-instance v0, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/image/BmpImageData;-><init>([BZ)V

    .line 233
    invoke-static {v0}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createGif([B)Lcom/itextpdf/io/image/GifImageData;
    .locals 1

    .line 246
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 247
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 248
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;)V

    return-object v0
.end method

.method public static createGifFrame(Ljava/net/URL;I)Lcom/itextpdf/io/image/ImageData;
    .locals 0

    .line 260
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->createGifFrames(Ljava/net/URL;[I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/image/ImageData;

    return-object p0
.end method

.method public static createGifFrame([BI)Lcom/itextpdf/io/image/ImageData;
    .locals 0

    .line 271
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->createGifFrames([B[I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/image/ImageData;

    return-object p0
.end method

.method public static createGifFrames(Ljava/net/URL;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 321
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>(Ljava/net/URL;)V

    .line 322
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;)V

    .line 323
    invoke-virtual {v0}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createGifFrames(Ljava/net/URL;[I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 296
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>(Ljava/net/URL;)V

    .line 297
    invoke-static {p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->processGifImageAndExtractFrames([ILcom/itextpdf/io/image/GifImageData;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createGifFrames([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 308
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 309
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;)V

    .line 310
    invoke-virtual {v0}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createGifFrames([B[I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 283
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 284
    invoke-static {p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->processGifImageAndExtractFrames([ILcom/itextpdf/io/image/GifImageData;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static createImageInstance(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 3

    .line 458
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 459
    sget-object v1, Lcom/itextpdf/io/image/ImageDataFactory$1;->$SwitchMap$com$itextpdf$io$image$ImageType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 496
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Image format cannot be recognized."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :pswitch_0
    new-instance p1, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {p1, p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>(Ljava/net/URL;I)V

    .line 492
    invoke-static {p1}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 486
    :pswitch_1
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/itextpdf/io/image/TiffImageData;-><init>(Ljava/net/URL;ZIZ)V

    .line 487
    invoke-static {v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0

    .line 481
    :pswitch_2
    new-instance p1, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {p1, p0, v2}, Lcom/itextpdf/io/image/BmpImageData;-><init>(Ljava/net/URL;Z)V

    .line 482
    invoke-static {p1}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 476
    :pswitch_3
    new-instance p1, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>(Ljava/net/URL;)V

    .line 477
    invoke-static {p1}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 471
    :pswitch_4
    new-instance p1, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>(Ljava/net/URL;)V

    .line 472
    invoke-static {p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 466
    :pswitch_5
    new-instance p1, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>(Ljava/net/URL;)V

    .line 467
    invoke-static {p1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 461
    :pswitch_6
    new-instance p1, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>(Ljava/net/URL;)V

    .line 462
    invoke-static {p1, v2}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 463
    invoke-virtual {p1}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/image/ImageData;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createImageInstance([BZ)Lcom/itextpdf/io/image/ImageData;
    .locals 3

    .line 501
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 502
    sget-object v1, Lcom/itextpdf/io/image/ImageDataFactory$1;->$SwitchMap$com$itextpdf$io$image$ImageType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 539
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Image format cannot be recognized."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 534
    :pswitch_0
    new-instance p1, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {p1, p0, v1}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>([BI)V

    .line 535
    invoke-static {p1}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 529
    :pswitch_1
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/itextpdf/io/image/TiffImageData;-><init>([BZIZ)V

    .line 530
    invoke-static {v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0

    .line 524
    :pswitch_2
    new-instance p1, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {p1, p0, v2}, Lcom/itextpdf/io/image/BmpImageData;-><init>([BZ)V

    .line 525
    invoke-static {p1}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 519
    :pswitch_3
    new-instance p1, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>([B)V

    .line 520
    invoke-static {p1}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 514
    :pswitch_4
    new-instance p1, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>([B)V

    .line 515
    invoke-static {p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 509
    :pswitch_5
    new-instance p1, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>([B)V

    .line 510
    invoke-static {p1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object p1

    .line 504
    :pswitch_6
    new-instance p1, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {p1, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 505
    invoke-static {p1, v2}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 506
    invoke-virtual {p1}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/image/ImageData;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createJbig2(Ljava/net/URL;I)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 329
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 330
    new-instance v0, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>(Ljava/net/URL;I)V

    .line 331
    invoke-static {v0}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0

    .line 328
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The page number must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createJbig2([BI)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 338
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 339
    new-instance v0, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>([BI)V

    .line 340
    invoke-static {v0}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The page number must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createJpeg(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 351
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 352
    new-instance v0, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>(Ljava/net/URL;)V

    .line 353
    invoke-static {v0}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createJpeg([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 358
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 359
    new-instance v0, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>([B)V

    .line 360
    invoke-static {v0}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createJpeg2000(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 366
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 367
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>(Ljava/net/URL;)V

    .line 368
    invoke-static {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createJpeg2000([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 373
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 374
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>([B)V

    .line 375
    invoke-static {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createPng(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 380
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 381
    new-instance v0, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>(Ljava/net/URL;)V

    .line 382
    invoke-static {v0}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createPng([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 387
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 388
    new-instance v0, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>([B)V

    .line 389
    invoke-static {v0}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createRawImage([B)Lcom/itextpdf/io/image/ImageData;
    .locals 2

    .line 408
    new-instance v0, Lcom/itextpdf/io/image/RawImageData;

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    return-object v0
.end method

.method public static createTiff(Ljava/net/URL;ZIZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 394
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 395
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/io/image/TiffImageData;-><init>(Ljava/net/URL;ZIZ)V

    .line 396
    invoke-static {v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static createTiff([BZIZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 401
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 402
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/io/image/TiffImageData;-><init>([BZIZ)V

    .line 403
    invoke-static {v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    return-object v0
.end method

.method public static isSupportedType(Lcom/itextpdf/io/image/ImageType;)Z
    .locals 1

    .line 452
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSupportedType(Ljava/net/URL;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 439
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    .line 440
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageDataFactory;->isSupportedType(Lcom/itextpdf/io/image/ImageType;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedType([B)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 423
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    .line 424
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageDataFactory;->isSupportedType(Lcom/itextpdf/io/image/ImageType;)Z

    move-result p0

    return p0
.end method

.method private static processGifImageAndExtractFrames([ILcom/itextpdf/io/image/GifImageData;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/itextpdf/io/image/GifImageData;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 544
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 545
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 548
    invoke-virtual {p1}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V
    .locals 2

    .line 562
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    if-ne p0, p1, :cond_0

    return-void

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " image expected. Detected image type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 565
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateImageType([BLcom/itextpdf/io/image/ImageType;)V
    .locals 2

    .line 554
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object p0

    if-ne p0, p1, :cond_0

    return-void

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " image expected. Detected image type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 557
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
