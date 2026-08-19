.class public Lcom/itextpdf/io/font/cmap/CMapCidUni;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapCidUni.java"


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

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidUni;->map:Lcom/itextpdf/io/util/IntHashtable;

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
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/cmap/CMapCidUni;->toUnicodeString(Ljava/lang/String;Z)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidUni;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    :cond_1
    return-void
.end method

.method public getCids()[I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidUni;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/io/util/IntHashtable;->getKeys()[I

    move-result-object v0

    return-object v0
.end method

.method public lookup(I)I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidUni;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method
