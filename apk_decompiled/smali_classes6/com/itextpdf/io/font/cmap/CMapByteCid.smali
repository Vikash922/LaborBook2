.class public Lcom/itextpdf/io/font/cmap/CMapByteCid;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapByteCid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;
    }
.end annotation


# instance fields
.field private planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    const/16 v1, 0x100

    .line 71
    new-array v1, v1, [I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private encodeSequence([BI)V
    .locals 8

    .line 117
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 119
    :goto_0
    const-string v3, "Inconsistent mapping."

    const v4, 0x8000

    if-ge v1, v0, :cond_3

    .line 120
    iget-object v5, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 121
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    .line 122
    aget v6, v2, v5

    if-eqz v6, :cond_1

    and-int v7, v6, v4

    if-eqz v7, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 126
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    const/16 v6, 0x100

    new-array v6, v6, [I

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    or-int v6, v3, v4

    .line 128
    aput v6, v2, v5

    :cond_2
    and-int/lit16 v2, v6, 0x7fff

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 133
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 134
    aget v0, v1, p1

    and-int/2addr v0, v4

    if-nez v0, :cond_4

    .line 137
    aput p2, v1, p1

    return-void

    .line 136
    :cond_4
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 1

    .line 76
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/CMapByteCid;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/font/cmap/CMapByteCid;->encodeSequence([BI)V

    :cond_0
    return-void
.end method

.method public decodeSequence([BII)Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v1, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;

    invoke-direct {v1, p2, p3}, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;-><init>(II)V

    .line 93
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/io/font/cmap/CMapByteCid;->decodeSingle([BLcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;)I

    move-result p2

    if-ltz p2, :cond_0

    int-to-char p2, p2

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected decodeSingle([BLcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;)I
    .locals 4

    .line 100
    iget v0, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    iget v1, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget v2, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    if-ge v2, v0, :cond_1

    .line 103
    iget v2, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 104
    iget v3, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    .line 105
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 106
    aget v1, v1, v2

    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v1, v1, 0x7fff

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
