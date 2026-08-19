.class public Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;
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
    name = "PageRangePartAfter"
.end annotation


# instance fields
.field private final start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput p1, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;->start:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 359
    instance-of v0, p1, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;

    .line 364
    iget v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;->start:I

    iget p1, p1, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;->start:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
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

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget v1, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;->start:I

    :goto_0
    if-gt v1, p1, :cond_0

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;->start:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public isPageInRange(I)Z
    .locals 1

    .line 351
    iget v0, p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;->start:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
