.class public abstract Lcom/itextpdf/io/font/cmap/AbstractCMap;
.super Ljava/lang/Object;
.source "AbstractCMap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cmapName:Ljava/lang/String;

.field private ordering:Ljava/lang/String;

.field private registry:Ljava/lang/String;

.field private supplement:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToInt([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 167
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 169
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static decodeStringToByte(Ljava/lang/String;)[B
    .locals 3

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 139
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static intToByteArray(I[B)V
    .locals 2

    .line 159
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    int-to-byte v1, p0

    .line 160
    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
.end method

.method addCodeSpaceRange([B[B)V
    .locals 0

    return-void
.end method

.method addRange(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 8

    .line 100
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object p1

    .line 101
    invoke-static {p2}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object p2

    .line 102
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isString()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 109
    :goto_0
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->byteArrayToInt([B)I

    move-result v2

    .line 110
    invoke-static {p2}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->byteArrayToInt([B)I

    move-result p2

    move v3, v2

    :goto_1
    if-gt v3, p2, :cond_4

    .line 112
    invoke-static {v3, p1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->intToByteArray(I[B)V

    .line 113
    invoke-static {p1, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    sub-int v6, v3, v2

    .line 116
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/font/cmap/CMapObject;

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V

    goto :goto_2

    .line 117
    :cond_1
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v2

    .line 119
    new-instance v6, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v7, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v6}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isString()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    new-instance v5, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V

    .line 124
    invoke-static {v0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->byteArrayToInt([B)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->intToByteArray(I[B)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid map."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->cmapName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->ordering:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->supplement:I

    return v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->cmapName:Ljava/lang/String;

    return-void
.end method

.method setOrdering(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->ordering:Ljava/lang/String;

    return-void
.end method

.method setRegistry(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->registry:Ljava/lang/String;

    return-void
.end method

.method setSupplement(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->supplement:I

    return-void
.end method

.method protected toUnicodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 146
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p2, :cond_0

    .line 148
    const-string p2, "UnicodeBigUnmarked"

    invoke-static {p1, p2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    array-length p2, p1

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 p2, 0x0

    aget-byte p2, p1, p2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    aget-byte p2, p1, p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 151
    const-string p2, "UnicodeBig"

    invoke-static {p1, p2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    const-string p2, "PDF"

    invoke-static {p1, p2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
