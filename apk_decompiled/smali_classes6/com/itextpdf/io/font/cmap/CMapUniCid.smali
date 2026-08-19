.class public Lcom/itextpdf/io/font/cmap/CMapUniCid;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapUniCid.java"


# instance fields
.field private map:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 54
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    const v1, 0x10001

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    return-void
.end method


# virtual methods
.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 2

    .line 58
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/cmap/CMapUniCid;->toUnicodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    :cond_1
    return-void
.end method

.method public exportToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 6

    .line 75
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v1}, Lcom/itextpdf/io/util/IntHashtable;->toOrderedKeys()[I

    move-result-object v1

    .line 77
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 78
    iget-object v5, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v5

    invoke-static {v4}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->addChar(I[C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    .line 80
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/cmap/CMapUniCid;->lookup(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->addChar(I[C)V

    :cond_1
    return-object v0
.end method

.method public lookup(I)I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method
