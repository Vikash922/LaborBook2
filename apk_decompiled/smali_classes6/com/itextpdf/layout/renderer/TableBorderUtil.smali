.class final Lcom/itextpdf/layout/renderer/TableBorderUtil;
.super Ljava/lang/Object;
.source "TableBorderUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndFillBorderList(Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 94
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;",
            "Lcom/itextpdf/layout/borders/Border;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    const/4 p0, 0x0

    :goto_2
    if-ge p0, p2, :cond_5

    .line 109
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 110
    :cond_3
    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static getCellSideBorder(Lcom/itextpdf/layout/element/Cell;I)Lcom/itextpdf/layout/borders/Border;
    .locals 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Cell;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Cell;->hasProperty(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 59
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Cell;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Cell;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Cell;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    :cond_0
    return-object v0
.end method

.method public static getWidestBorder(Ljava/util/List;)Lcom/itextpdf/layout/borders/Border;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Lcom/itextpdf/layout/borders/Border;"
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getWidestBorder(Ljava/util/List;II)Lcom/itextpdf/layout/borders/Border;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;II)",
            "Lcom/itextpdf/layout/borders/Border;"
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/borders/Border;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p2

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    :cond_1
    move-object v1, p1

    goto :goto_0

    :cond_2
    return-object v1
.end method
