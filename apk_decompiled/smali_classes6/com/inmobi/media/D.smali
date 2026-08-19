.class public final Lcom/inmobi/media/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p2, Lcom/inmobi/media/o4;

    .line 2
    iget v0, p2, Lcom/inmobi/media/o4;->c:I

    .line 3
    iget p2, p2, Lcom/inmobi/media/o4;->d:I

    mul-int/2addr v0, p2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    check-cast p1, Lcom/inmobi/media/o4;

    .line 6
    iget v0, p1, Lcom/inmobi/media/o4;->c:I

    .line 7
    iget p1, p1, Lcom/inmobi/media/o4;->d:I

    mul-int/2addr v0, p1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 9
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
