.class public Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/PageRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageRangePartAnd"
.end annotation


# instance fields
.field private final conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)V
    .locals 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    .line 446
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 476
    instance-of v0, p1, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 480
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;

    .line 481
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    iget-object p1, p1, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllPagesInRange(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    invoke-interface {v1, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->getAllPagesInRange(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 456
    invoke-interface {v2, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->getAllPagesInRange(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 491
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isPageInRange(I)Z
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;->conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 464
    invoke-interface {v1, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->isPageInRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
