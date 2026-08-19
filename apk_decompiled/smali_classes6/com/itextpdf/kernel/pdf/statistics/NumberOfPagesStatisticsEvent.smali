.class public Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsEvent;
.super Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;
.source "NumberOfPagesStatisticsEvent.java"


# static fields
.field private static final NUMBER_OF_PAGES_STATISTICS:Ljava/lang/String; = "numberOfPages"


# instance fields
.field private final numberOfPages:I


# direct methods
.method public constructor <init>(ILcom/itextpdf/commons/actions/data/ProductData;)V
    .locals 0

    .line 49
    invoke-direct {p0, p2}, Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;-><init>(Lcom/itextpdf/commons/actions/data/ProductData;)V

    if-ltz p1, :cond_0

    .line 53
    iput p1, p0, Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsEvent;->numberOfPages:I

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Number of pages can not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createStatisticsAggregatorFromName(Ljava/lang/String;)Lcom/itextpdf/commons/actions/AbstractStatisticsAggregator;
    .locals 1

    .line 61
    const-string v0, "numberOfPages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance p1, Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsAggregator;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsAggregator;-><init>()V

    return-object p1

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;->createStatisticsAggregatorFromName(Ljava/lang/String;)Lcom/itextpdf/commons/actions/AbstractStatisticsAggregator;

    move-result-object p1

    return-object p1
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsEvent;->numberOfPages:I

    return v0
.end method

.method public getStatisticsNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    const-string v0, "numberOfPages"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
