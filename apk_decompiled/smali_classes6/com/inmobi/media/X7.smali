.class public final Lcom/inmobi/media/X7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lcom/inmobi/media/t7;

.field public final c:Lcom/inmobi/media/f5;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/inmobi/media/d8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/t7;Lcom/inmobi/media/P7;Lcom/inmobi/media/f5;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mNativeAdContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/inmobi/media/X7;->b:Lcom/inmobi/media/t7;

    .line 4
    iput-object p5, p0, Lcom/inmobi/media/X7;->c:Lcom/inmobi/media/f5;

    .line 7
    const-string v0, "X7"

    iput-object v0, p0, Lcom/inmobi/media/X7;->d:Ljava/lang/String;

    .line 11
    new-instance v6, Lcom/inmobi/media/W7;

    invoke-direct {v6, p0}, Lcom/inmobi/media/W7;-><init>(Lcom/inmobi/media/X7;)V

    .line 19
    new-instance v7, Lcom/inmobi/media/V7;

    invoke-direct {v7, p0}, Lcom/inmobi/media/V7;-><init>(Lcom/inmobi/media/X7;)V

    .line 28
    new-instance v0, Lcom/inmobi/media/d8;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p0

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/inmobi/media/d8;-><init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/t7;Lcom/inmobi/media/P7;Lcom/inmobi/media/W7;Lcom/inmobi/media/V7;Lcom/inmobi/media/X7;Lcom/inmobi/media/f5;)V

    iput-object v0, p0, Lcom/inmobi/media/X7;->e:Lcom/inmobi/media/d8;

    .line 29
    iget-object p1, v0, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    .line 30
    iget p2, p3, Lcom/inmobi/media/t7;->B:I

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sput p2, Lcom/inmobi/media/d9;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;ZLcom/inmobi/media/Ya;)Lcom/inmobi/media/j8;
    .locals 4

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "InMobiAdView"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 2
    :goto_0
    instance-of v3, p1, Lcom/inmobi/media/j8;

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/inmobi/media/j8;

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/X7;->e:Lcom/inmobi/media/d8;

    invoke-virtual {p1, v2, p2, p4}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/j8;Landroid/view/ViewGroup;Lcom/inmobi/media/Ya;)Lcom/inmobi/media/j8;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/X7;->e:Lcom/inmobi/media/d8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p4, p1, Lcom/inmobi/media/d8;->o:Lcom/inmobi/media/Ya;

    .line 110
    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/j8;Landroid/view/ViewGroup;)Lcom/inmobi/media/j8;

    move-result-object p3

    .line 111
    iget-boolean p4, p1, Lcom/inmobi/media/d8;->n:Z

    if-nez p4, :cond_3

    .line 112
    iget-object p4, p1, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    .line 113
    iget-object p4, p4, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 114
    const-string v3, "container"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "root"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1, p3, p4}, Lcom/inmobi/media/d8;->b(Landroid/view/ViewGroup;Lcom/inmobi/media/H7;)Landroid/view/ViewGroup;

    :cond_3
    move-object p1, p3

    :goto_1
    if-nez v2, :cond_4

    .line 293
    iget-object p2, p0, Lcom/inmobi/media/X7;->c:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/inmobi/media/X7;->d:Ljava/lang/String;

    const-string p4, "TAG"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p4, "InMobiNative.getPrimaryView called with Non Native View."

    invoke-virtual {p2, p3, p4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    .line 295
    :cond_5
    iget-object p2, p0, Lcom/inmobi/media/X7;->b:Lcom/inmobi/media/t7;

    invoke-virtual {p1, p2}, Lcom/inmobi/media/j8;->setNativeStrandAd(Lcom/inmobi/media/t7;)V

    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 296
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    return-object p1
.end method
