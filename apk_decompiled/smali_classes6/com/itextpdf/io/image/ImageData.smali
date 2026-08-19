.class public abstract Lcom/itextpdf/io/image/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# static fields
.field private static serialId:J

.field private static final staticLock:Ljava/lang/Object;


# instance fields
.field protected XYRatio:F

.field protected bpc:I

.field protected colorEncodingComponentsNumber:I

.field protected colorTransform:I

.field protected data:[B

.field protected decode:[F

.field protected decodeParms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected deflated:Z

.field protected dpiX:I

.field protected dpiY:I

.field protected filter:Ljava/lang/String;

.field protected height:F

.field protected imageAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected imageMask:Lcom/itextpdf/io/image/ImageData;

.field protected imageSize:I

.field protected interpolation:Z

.field protected inverted:Z

.field protected mask:Z

.field protected mySerialId:Ljava/lang/Long;

.field protected originalType:Lcom/itextpdf/io/image/ImageType;

.field protected profile:Lcom/itextpdf/io/colors/IccProfile;

.field protected rotation:F

.field protected transparency:[I

.field protected url:Ljava/net/URL;

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/io/image/ImageData;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->colorEncodingComponentsNumber:I

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    .line 95
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    .line 97
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    .line 99
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    .line 103
    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    .line 115
    invoke-static {}, Lcom/itextpdf/io/image/ImageData;->getSerialId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->mySerialId:Ljava/lang/Long;

    .line 118
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    .line 119
    iput-object p2, p0, Lcom/itextpdf/io/image/ImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    return-void
.end method

.method protected constructor <init>([BLcom/itextpdf/io/image/ImageType;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->colorEncodingComponentsNumber:I

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    .line 95
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    .line 97
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    .line 99
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    .line 103
    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    .line 115
    invoke-static {}, Lcom/itextpdf/io/image/ImageData;->getSerialId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->mySerialId:Ljava/lang/Long;

    .line 123
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->data:[B

    .line 124
    iput-object p2, p0, Lcom/itextpdf/io/image/ImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    return-void
.end method

.method private static getSerialId()Ljava/lang/Long;
    .locals 5

    .line 361
    sget-object v0, Lcom/itextpdf/io/image/ImageData;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    sget-wide v1, Lcom/itextpdf/io/image/ImageData;->serialId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/itextpdf/io/image/ImageData;->serialId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public canBeMask()Z
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isRawImage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    return v1

    .line 231
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->colorEncodingComponentsNumber:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canImageBeInline()Z
    .locals 4

    .line 333
    const-class v0, Lcom/itextpdf/io/image/ImageData;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 334
    iget v1, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    const/16 v2, 0x1000

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 335
    const-string v1, "Inline image size cannot be more than 4KB. It will be added as an ImageXObject"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v3

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/image/ImageData;->imageMask:Lcom/itextpdf/io/image/ImageData;

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "Image cannot be inline if it has a Mask"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBpc()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    return v0
.end method

.method public getColorEncodingComponentsNumber()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->colorEncodingComponentsNumber:I

    return v0
.end method

.method public getColorTransform()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->data:[B

    return-object v0
.end method

.method public getDecode()[F
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decode:[F

    return-object v0
.end method

.method public getDecodeParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decodeParms:Ljava/util/Map;

    return-object v0
.end method

.method public getDpiX()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    return v0
.end method

.method public getDpiY()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 269
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->height:F

    return v0
.end method

.method public getImageAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->imageAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getImageMask()Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->imageMask:Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public getOriginalType()Lcom/itextpdf/io/image/ImageType;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    return-object v0
.end method

.method public getProfile()Lcom/itextpdf/io/colors/IccProfile;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->profile:Lcom/itextpdf/io/colors/IccProfile;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->rotation:F

    return v0
.end method

.method public getTransparency()[I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->transparency:[I

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 261
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->width:F

    return v0
.end method

.method public getXYRatio()F
    .locals 1

    .line 293
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    return v0
.end method

.method public isDeflated()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->deflated:Z

    return v0
.end method

.method public isInterpolation()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->interpolation:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    return v0
.end method

.method public isMask()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    return v0
.end method

.method public isRawImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSoftMask()Z
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method loadData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/net/URL;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 352
    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 353
    invoke-static {v0, v1}, Lcom/itextpdf/io/util/StreamUtil;->transferBytes(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 354
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 355
    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->data:[B

    return-void
.end method

.method public makeMask()V
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->canBeMask()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    return-void

    .line 256
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "This image can not be an image mask."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBpc(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    return-void
.end method

.method public setColorEncodingComponentsNumber(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->colorEncodingComponentsNumber:I

    return-void
.end method

.method public setColorTransform(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    return-void
.end method

.method public setDecode([F)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->decode:[F

    return-void
.end method

.method public setDeflated(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/itextpdf/io/image/ImageData;->deflated:Z

    return-void
.end method

.method public setDpi(II)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    .line 181
    iput p2, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->filter:Ljava/lang/String;

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->height:F

    return-void
.end method

.method public setImageAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->imageAttributes:Ljava/util/Map;

    return-void
.end method

.method public setImageMask(Lcom/itextpdf/io/image/ImageData;)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    if-nez v0, :cond_1

    .line 245
    iget-boolean v0, p1, Lcom/itextpdf/io/image/ImageData;->mask:Z

    if-eqz v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->imageMask:Lcom/itextpdf/io/image/ImageData;

    return-void

    .line 246
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Image is not a mask. You must call ImageData#makeMask()."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_1
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Image mask cannot contain another image mask."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterpolation(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/itextpdf/io/image/ImageData;->interpolation:Z

    return-void
.end method

.method public setInverted(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    return-void
.end method

.method public setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->profile:Lcom/itextpdf/io/colors/IccProfile;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->rotation:F

    return-void
.end method

.method public setTransparency([I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->transparency:[I

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->width:F

    return-void
.end method

.method public setXYRatio(F)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    return-void
.end method
