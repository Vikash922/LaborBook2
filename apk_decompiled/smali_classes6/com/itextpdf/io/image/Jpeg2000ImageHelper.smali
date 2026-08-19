.class final Lcom/itextpdf/io/image/Jpeg2000ImageHelper;
.super Ljava/lang/Object;
.source "Jpeg2000ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException;,
        Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    }
.end annotation


# static fields
.field private static final JP2_BPCC:I = 0x62706363

.field private static final JP2_COLR:I = 0x636f6c72

.field private static final JP2_DBTL:I = 0x6474626c

.field private static final JP2_FTYP:I = 0x66747970

.field private static final JP2_IHDR:I = 0x69686472

.field private static final JP2_JP:I = 0x6a502020

.field private static final JP2_JP2:I = 0x6a703220

.field private static final JP2_JP2C:I = 0x6a703263

.field private static final JP2_JP2H:I = 0x6a703268

.field private static final JP2_URL:I = 0x75726c20

.field private static final JPIP_JPIP:I = 0x6a706970

.field private static final JPX_JPXB:I = 0x6a707862


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cio_read(ILjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p0, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v2, p0, 0x3

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 198
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    .line 199
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    .line 200
    iget v1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 201
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    .line 205
    iget p0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    if-eqz p0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Unsupported box size == 0."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_1
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Cannot handle box sizes higher than 2^32."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_2
    iget p0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    if-eqz p0, :cond_3

    :goto_0
    return-void

    .line 208
    :cond_3
    new-instance p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException;

    const-string p1, "Unsupported box size == 0"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static jp2_read_colr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;

    invoke-direct {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 179
    invoke-static {v5, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x4

    .line 183
    invoke-static {v3, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 186
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_1
    iget v3, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v3, v1

    if-lez v3, :cond_2

    .line 190
    iget v3, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 191
    iget p0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr p0, v1

    invoke-virtual {p1, v3, v2, p0}, Ljava/io/InputStream;->read([BII)I

    .line 192
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->setColorProfile([B)V

    :cond_2
    return-object v0
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-static {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processParameters(Lcom/itextpdf/io/image/Jpeg2000ImageData;)V

    .line 85
    const-string v0, "JPXDecode"

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/ImageData;->setFilter(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JPEG2000 image expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static processParameters(Lcom/itextpdf/io/image/Jpeg2000ImageData;)V
    .locals 10

    .line 92
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    invoke-direct {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->loadData()V

    .line 97
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    new-instance v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;-><init>(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$1;)V

    const/4 v2, 0x4

    .line 99
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    .line 100
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-ne v3, v4, :cond_d

    .line 101
    iget-object v3, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->isJp2:Z

    .line 102
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    .line 103
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v7, 0x6a502020

    if-ne v7, v3, :cond_c

    .line 106
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    const v7, 0xd0a870a

    if-ne v7, v3, :cond_b

    .line 110
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 111
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v7, 0x66747970

    if-ne v7, v3, :cond_a

    const-wide/16 v7, 0x8

    .line 114
    invoke-static {v0, v7, v8}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    move v3, v2

    .line 115
    :goto_0
    iget v7, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    div-int/2addr v7, v2

    if-ge v3, v7, :cond_2

    .line 116
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v7

    const v8, 0x6a707862

    if-ne v7, v8, :cond_1

    .line 117
    iget-object v7, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iput-boolean v4, v7, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->isJpxBaseline:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 123
    :cond_3
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v7, 0x6a703268

    if-eq v7, v3, :cond_5

    .line 124
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v8, 0x6a703263

    if-eq v3, v8, :cond_4

    .line 127
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v3, v6

    int-to-long v8, v3

    invoke-static {v0, v8, v9}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 128
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    goto :goto_1

    .line 125
    :cond_4
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Expected JP2H marker."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_5
    :goto_1
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-ne v7, v3, :cond_3

    .line 131
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 132
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v7, 0x69686472

    if-ne v7, v3, :cond_9

    .line 135
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setHeight(F)V

    .line 136
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setWidth(F)V

    .line 137
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    invoke-static {v5, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    .line 138
    invoke-static {v4, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setBpc(I)V

    const-wide/16 v2, 0x3

    .line 139
    invoke-static {v0, v2, v3}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 140
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 141
    iget v2, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v3, 0x62706363

    if-ne v2, v3, :cond_6

    .line 142
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v3, v6

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->bpcBoxData:[B

    .line 143
    iget-object p0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget-object p0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->bpcBoxData:[B

    iget v1, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v1, v6

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    goto/16 :goto_2

    .line 144
    :cond_6
    iget v2, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v3, 0x636f6c72

    if-ne v2, v3, :cond_e

    .line 146
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget-object v2, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    if-nez v2, :cond_8

    .line 147
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    .line 148
    :cond_8
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget-object v2, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_colr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :try_start_1
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :catch_0
    :try_start_2
    iget v2, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-eq v3, v2, :cond_7

    goto :goto_2

    .line 133
    :cond_9
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Expected IHDR marker."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_a
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Expected FTYP marker."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_b
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Error with JP marker."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_c
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Expected JP marker."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_d
    iget v1, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    const v3, -0xb000af

    if-ne v1, v3, :cond_f

    const-wide/16 v3, 0x4

    .line 157
    invoke-static {v0, v3, v4}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 158
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    .line 159
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    .line 160
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v4

    .line 161
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    const-wide/16 v7, 0x10

    .line 162
    invoke-static {v0, v7, v8}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 163
    invoke-static {v5, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setColorEncodingComponentsNumber(I)V

    .line 164
    invoke-virtual {p0, v6}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setBpc(I)V

    sub-int/2addr v3, v2

    int-to-float v0, v3

    .line 165
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setHeight(F)V

    sub-int/2addr v1, v4

    int-to-float v0, v1

    .line 166
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setWidth(F)V

    :cond_e
    :goto_2
    return-void

    .line 168
    :cond_f
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Invalid JPEG2000 file."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 171
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "JPEG2000 image exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
