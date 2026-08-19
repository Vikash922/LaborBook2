.class public Lcom/itextpdf/io/font/cmap/CMapCidByte;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapCidByte.java"


# instance fields
.field private final EMPTY:[B

.field private codeSpaceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->EMPTY:[B

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 1

    .line 64
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method addCodeSpaceRange([B[B)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCodeSpaceRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    return-object v0
.end method

.method public getReversMap()Lcom/itextpdf/io/util/IntHashtable;
    .locals 8

    .line 80
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    .line 81
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 84
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_0

    aget-byte v7, v3, v5

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v0, v6, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public lookup(I)[B
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->EMPTY:[B

    :cond_0
    return-object p1
.end method
