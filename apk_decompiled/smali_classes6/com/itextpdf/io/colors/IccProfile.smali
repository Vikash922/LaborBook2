.class public Lcom/itextpdf/io/colors/IccProfile;
.super Ljava/lang/Object;
.source "IccProfile.java"


# static fields
.field private static cstags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected data:[B

.field protected numComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x3

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XYZ "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "Lab "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "Luv "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "YCbr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "Yxy "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "RGB "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GRAY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "HSV "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "HLS "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CMYK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v3, "CMY "

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "2CLR"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v3, "3CLR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v1, "4CLR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ECLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccColorSpaceName([B)Ljava/lang/String;
    .locals 4

    .line 197
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    const/16 v2, 0x10

    const/4 v3, 0x4

    invoke-direct {v0, p0, v2, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 199
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid ICC profile."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getIccDeviceClass([B)Ljava/lang/String;
    .locals 4

    .line 214
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    const/16 v2, 0xc

    const/4 v3, 0x4

    invoke-direct {v0, p0, v2, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 216
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid ICC profile."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getIccNumberOfComponents([B)Ljava/lang/Integer;
    .locals 1

    .line 228
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    invoke-static {p0}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getInstance(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Lcom/itextpdf/io/colors/IccProfile;
    .locals 7

    .line 116
    const-string v0, "Invalid ICC profile."

    const/16 v1, 0x80

    :try_start_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    :goto_0
    if-lez v4, :cond_1

    .line 120
    invoke-virtual {p0, v2, v5, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v6

    if-ltz v6, :cond_0

    sub-int/2addr v4, v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v4, 0x24

    .line 126
    aget-byte v4, v2, v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_4

    const/16 v4, 0x25

    aget-byte v4, v2, v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_4

    const/16 v4, 0x26

    aget-byte v4, v2, v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_4

    const/16 v4, 0x27

    aget-byte v4, v2, v4

    const/16 v5, 0x70

    if-ne v4, v5, :cond_4

    .line 130
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 132
    new-array v5, v4, [B

    .line 133
    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v1

    :goto_1
    if-lez v4, :cond_3

    .line 137
    invoke-virtual {p0, v5, v1, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v2

    if-ltz v2, :cond_2

    sub-int/2addr v4, v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 139
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_3
    invoke-static {v5}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object p0

    return-object p0

    .line 128
    :cond_4
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 146
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;)Lcom/itextpdf/io/colors/IccProfile;
    .locals 2

    .line 161
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 162
    invoke-virtual {v1, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 164
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid ICC profile."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/itextpdf/io/colors/IccProfile;
    .locals 2

    .line 179
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 180
    invoke-virtual {v1, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 182
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid ICC profile."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getInstance([B)Lcom/itextpdf/io/colors/IccProfile;
    .locals 1

    .line 101
    invoke-static {p0}, Lcom/itextpdf/io/colors/IccProfile;->getIccNumberOfComponents([B)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    :goto_0
    invoke-static {p0, v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([BI)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance([BI)Lcom/itextpdf/io/colors/IccProfile;
    .locals 2

    .line 77
    array-length v0, p0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    const/16 v0, 0x24

    aget-byte v0, p0, v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    const/16 v0, 0x25

    aget-byte v0, p0, v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    const/16 v0, 0x26

    aget-byte v0, p0, v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    aget-byte v0, p0, v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    .line 80
    new-instance v0, Lcom/itextpdf/io/colors/IccProfile;

    invoke-direct {v0}, Lcom/itextpdf/io/colors/IccProfile;-><init>()V

    .line 81
    iput-object p0, v0, Lcom/itextpdf/io/colors/IccProfile;->data:[B

    .line 83
    invoke-static {p0}, Lcom/itextpdf/io/colors/IccProfile;->getIccNumberOfComponents([B)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 85
    :goto_0
    iput p0, v0, Lcom/itextpdf/io/colors/IccProfile;->numComponents:I

    if-ne p0, p1, :cond_1

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "ICC profile contains {0} components, while the image data contains {1} components."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p0

    throw p0

    .line 79
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Invalid ICC profile."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/colors/IccProfile;->data:[B

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/itextpdf/io/colors/IccProfile;->numComponents:I

    return v0
.end method
