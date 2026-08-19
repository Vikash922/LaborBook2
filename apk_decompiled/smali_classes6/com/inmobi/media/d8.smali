.class public final Lcom/inmobi/media/d8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig;

.field public final b:Lcom/inmobi/media/t7;

.field public final c:Lcom/inmobi/media/P7;

.field public final d:Lcom/inmobi/media/W7;

.field public final e:Lcom/inmobi/media/V7;

.field public final f:Lcom/inmobi/media/f5;

.field public final g:Ljava/lang/String;

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/lang/ref/WeakReference;

.field public j:Lcom/inmobi/media/l8;

.field public k:I

.field public final l:Lcom/inmobi/media/Z0;

.field public final m:Lcom/inmobi/media/d9;

.field public n:Z

.field public o:Lcom/inmobi/media/Ya;

.field public p:Lcom/inmobi/media/X7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/t7;Lcom/inmobi/media/P7;Lcom/inmobi/media/W7;Lcom/inmobi/media/V7;Lcom/inmobi/media/X7;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewEventListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickEventListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerFinishListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/d8;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    .line 6
    iput-object p5, p0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/W7;

    .line 7
    iput-object p6, p0, Lcom/inmobi/media/d8;->e:Lcom/inmobi/media/V7;

    .line 9
    iput-object p8, p0, Lcom/inmobi/media/d8;->f:Lcom/inmobi/media/f5;

    .line 51
    const-string p2, "d8"

    iput-object p2, p0, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 53
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/inmobi/media/d8;->h:Landroid/os/Handler;

    .line 54
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    .line 61
    new-instance p2, Lcom/inmobi/media/Z0;

    invoke-direct {p2}, Lcom/inmobi/media/Z0;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    .line 62
    sget-object p2, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    .line 63
    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p2, Lcom/inmobi/media/d9;->d:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/d9;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    const-class p2, Lcom/inmobi/media/d9;

    monitor-enter p2

    .line 66
    :try_start_0
    sget-object p3, Lcom/inmobi/media/d9;->d:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_1

    .line 67
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/inmobi/media/d9;

    if-nez p3, :cond_2

    .line 68
    :cond_1
    new-instance p3, Lcom/inmobi/media/d9;

    invoke-direct {p3, p1}, Lcom/inmobi/media/d9;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 69
    sput-object p1, Lcom/inmobi/media/d9;->d:Ljava/lang/ref/WeakReference;

    .line 70
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p2

    move-object p2, p3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 72
    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    .line 75
    iput-object p7, p0, Lcom/inmobi/media/d8;->p:Lcom/inmobi/media/X7;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/d8;Lcom/inmobi/media/D7;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1451
    iget-object p0, p0, Lcom/inmobi/media/d8;->e:Lcom/inmobi/media/V7;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1452
    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/inmobi/media/V7;->a:Lcom/inmobi/media/X7;

    .line 1493
    iget-boolean v1, v0, Lcom/inmobi/media/X7;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1494
    :cond_0
    iget-object v0, v0, Lcom/inmobi/media/X7;->b:Lcom/inmobi/media/t7;

    .line 1495
    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/t7;->a(Landroid/view/View;Lcom/inmobi/media/D7;)V

    .line 1496
    iget-object p0, p0, Lcom/inmobi/media/V7;->a:Lcom/inmobi/media/X7;

    .line 1497
    iget-object p0, p0, Lcom/inmobi/media/X7;->b:Lcom/inmobi/media/t7;

    const/4 p2, 0x0

    .line 1498
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Z)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/d8;Lcom/inmobi/media/j8;Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/inmobi/media/d8;->n:Z

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    .line 12
    iget-object v0, v0, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 13
    const-string v1, "container"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parent"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "root"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/d8;->b(Landroid/view/ViewGroup;Lcom/inmobi/media/H7;)Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public static final a(Ljava/lang/ref/WeakReference;)V
    .locals 1

    const-string v0, "$childViewRef"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 1450
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/ref/WeakReference;)V
    .locals 1

    const-string v0, "$childViewRef"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 852
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/inmobi/media/H7;)Landroid/view/ViewGroup;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    iget-object v2, p0, Lcom/inmobi/media/d8;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {v1, v0, p2, v2}, Lcom/inmobi/media/d9;->a(Landroid/content/Context;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-static {p2, p1}, Lcom/inmobi/media/N8;->a(Lcom/inmobi/media/D7;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-object v0
.end method

.method public final a(Lcom/inmobi/media/j8;Landroid/view/ViewGroup;)Lcom/inmobi/media/j8;
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    .line 193
    iget-object v0, v0, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-nez p1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 195
    iget-object v2, p0, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    .line 198
    iget-object v3, p0, Lcom/inmobi/media/d8;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 199
    invoke-virtual {v2, v1, v0, v3}, Lcom/inmobi/media/d9;->a(Landroid/content/Context;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/inmobi/media/j8;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/inmobi/media/j8;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 201
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 202
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    const-string v2, "viewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    const/4 v3, -0x1

    if-ge v3, v2, :cond_3

    .line 1020
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1021
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1022
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/inmobi/media/d9;->a(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 1023
    sget-object p1, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    .line 1024
    iget-object p1, v0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1025
    invoke-static {v1, p1}, Lcom/inmobi/media/N8;->a(Landroid/view/View;Lcom/inmobi/media/E7;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1031
    iget-object p1, p0, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    .line 1032
    iget-object v2, v0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1033
    iget-object v2, v2, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1034
    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    sput v2, Lcom/inmobi/media/d9;->g:I

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 1036
    sget-object p1, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lcom/inmobi/media/N8;->a(Lcom/inmobi/media/D7;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-object v1
.end method

.method public final a(Lcom/inmobi/media/j8;Landroid/view/ViewGroup;Lcom/inmobi/media/Ya;)Lcom/inmobi/media/j8;
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p3, p0, Lcom/inmobi/media/d8;->o:Lcom/inmobi/media/Ya;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/j8;Landroid/view/ViewGroup;)Lcom/inmobi/media/j8;

    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/inmobi/media/d8;->h:Landroid/os/Handler;

    new-instance v0, Lcom/inmobi/media/d8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/media/d8$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/j8;Landroid/view/ViewGroup;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public final a(Landroid/view/View;Lcom/inmobi/media/D7;)V
    .locals 9

    .line 1037
    iget-object v0, p0, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1038
    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAsset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1067
    :try_start_0
    sget-object v4, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    .line 1068
    iget-object v4, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1069
    iget-object v4, v4, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1070
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/media/N8;->a(I)I

    move-result v4

    int-to-float v4, v4

    .line 1071
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1072
    iget-object v5, v5, Lcom/inmobi/media/E7;->d:Landroid/graphics/Point;

    .line 1073
    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v4, v5

    if-nez v6, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    invoke-static {p1, v4, v5}, Lcom/inmobi/media/Z0;->a(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1076
    invoke-static {v4, p2}, Lcom/inmobi/media/Z0;->a(Landroid/animation/ValueAnimator;Lcom/inmobi/media/D7;)Lcom/inmobi/media/Y0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :goto_0
    iget-object v4, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1078
    iget-object v4, v4, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1079
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Lcom/inmobi/media/N8;->a(I)I

    move-result v4

    int-to-float v4, v4

    .line 1080
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1081
    iget-object v5, v5, Lcom/inmobi/media/E7;->d:Landroid/graphics/Point;

    .line 1082
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v4, v5

    if-nez v6, :cond_1

    goto :goto_1

    .line 1085
    :cond_1
    invoke-static {p1, v4, v5}, Lcom/inmobi/media/Z0;->b(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1086
    invoke-static {v4, p2}, Lcom/inmobi/media/Z0;->a(Landroid/animation/ValueAnimator;Lcom/inmobi/media/D7;)Lcom/inmobi/media/Y0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :goto_1
    iget-object v4, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1088
    iget-object v4, v4, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1089
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/media/N8;->a(I)I

    move-result v4

    int-to-float v4, v4

    .line 1090
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1091
    iget-object v5, v5, Lcom/inmobi/media/E7;->b:Landroid/graphics/Point;

    .line 1092
    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v5, v5

    cmpg-float v6, v4, v5

    const-string v7, "ofFloat(...)"

    const/4 v8, 0x0

    if-nez v6, :cond_2

    goto :goto_2

    .line 1094
    :cond_2
    :try_start_1
    const-string v6, "scaleX"

    div-float/2addr v5, v4

    .line 1095
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1096
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1097
    new-array v4, v2, [F

    aput v5, v4, v3

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    invoke-static {v4, p2}, Lcom/inmobi/media/Z0;->a(Landroid/animation/ValueAnimator;Lcom/inmobi/media/D7;)Lcom/inmobi/media/Y0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :goto_2
    iget-object v4, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1100
    iget-object v4, v4, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1101
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Lcom/inmobi/media/N8;->a(I)I

    move-result v4

    int-to-float v4, v4

    .line 1102
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1103
    iget-object v5, v5, Lcom/inmobi/media/E7;->b:Landroid/graphics/Point;

    .line 1104
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v4, v5

    if-nez v6, :cond_3

    goto :goto_3

    .line 1107
    :cond_3
    const-string v6, "scaleY"

    div-float/2addr v5, v4

    .line 1108
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1109
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1110
    new-array v4, v2, [F

    aput v5, v4, v3

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    invoke-static {v4, p2}, Lcom/inmobi/media/Z0;->a(Landroid/animation/ValueAnimator;Lcom/inmobi/media/D7;)Lcom/inmobi/media/Y0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1114
    :catch_0
    iget-object v0, v0, Lcom/inmobi/media/Z0;->a:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 1118
    :cond_4
    const-string v0, "eventType"

    const-string v4, "creativeView"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p2, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    .line 1443
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/u8;

    .line 1444
    iget-object v5, v5, Lcom/inmobi/media/u8;->b:Ljava/lang/String;

    .line 1445
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 1446
    :cond_7
    new-instance v0, Lcom/inmobi/media/Y7;

    invoke-direct {v0, p0, v1, p2}, Lcom/inmobi/media/Y7;-><init>(Lcom/inmobi/media/d8;Ljava/util/ArrayList;Lcom/inmobi/media/D7;)V

    .line 1447
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_8
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;Lcom/inmobi/media/H7;)Landroid/view/ViewGroup;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 3
    invoke-virtual/range {p0 .. p2}, Lcom/inmobi/media/d8;->b(Landroid/view/View;Lcom/inmobi/media/D7;)V

    const/4 v10, 0x0

    move v0, v10

    .line 4
    :goto_0
    iget v1, v9, Lcom/inmobi/media/H7;->B:I

    if-ge v0, v1, :cond_2d

    .line 5
    :try_start_0
    iget-object v1, v9, Lcom/inmobi/media/H7;->A:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/inmobi/media/D7;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    .line 8
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    const-string v0, "CONTAINER"

    .line 10
    iget-object v1, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "event"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, v12, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 13
    const-string v4, "card_scrollable"

    invoke-static {v0, v4, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeContainerAsset"

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, v7, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 15
    iget-object v5, v7, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    iget-object v6, v7, Lcom/inmobi/media/d8;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {v5, v0, v12, v6}, Lcom/inmobi/media/d9;->a(Landroid/content/Context;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_0
    move-object v13, v3

    .line 17
    :goto_1
    instance-of v0, v13, Lcom/inmobi/media/k8;

    if-eqz v0, :cond_2b

    .line 18
    move-object v14, v13

    check-cast v14, Lcom/inmobi/media/k8;

    invoke-virtual {v14}, Lcom/inmobi/media/k8;->getType()B

    move-result v0

    .line 19
    iget-object v5, v7, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    .line 20
    const-string v6, "dataModel"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "inflater"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/inmobi/media/Q7;

    invoke-direct {v0, v5, v7}, Lcom/inmobi/media/Q7;-><init>(Lcom/inmobi/media/P7;Lcom/inmobi/media/d8;)V

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_1
    if-ne v0, v2, :cond_2

    .line 43
    :try_start_1
    new-instance v0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;

    invoke-direct {v0, v5, v7}, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;-><init>(Lcom/inmobi/media/P7;Lcom/inmobi/media/d8;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 45
    const-string v5, "InMobi"

    const-string v6, "Error rendering ad! RecyclerView not found. Please check if the recyclerview support library was included"

    invoke-static {v2, v5, v6}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v5, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v5, Lcom/inmobi/media/d2;

    invoke-direct {v5, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 48
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v5}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 127
    :cond_2
    :goto_3
    iput-object v3, v7, Lcom/inmobi/media/d8;->j:Lcom/inmobi/media/l8;

    if-eqz v3, :cond_2b

    .line 130
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    check-cast v0, Lcom/inmobi/media/H7;

    .line 132
    iget v4, v7, Lcom/inmobi/media/d8;->k:I

    if-nez v4, :cond_3

    const v1, 0x800003

    :goto_4
    move v5, v1

    goto :goto_5

    .line 133
    :cond_3
    iget-object v1, v7, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    invoke-virtual {v1}, Lcom/inmobi/media/P7;->d()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v4, v1, :cond_4

    const v1, 0x800005

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_5
    move-object v1, v14

    move-object v2, v0

    move-object/from16 v6, p0

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/k8;->a(Lcom/inmobi/media/H7;Lcom/inmobi/media/l8;IILcom/inmobi/media/d8;)V

    .line 147
    sget-object v0, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-static {v12, v8}, Lcom/inmobi/media/N8;->a(Lcom/inmobi/media/D7;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {v7, v13, v12}, Lcom/inmobi/media/d8;->a(Landroid/view/View;Lcom/inmobi/media/D7;)V

    .line 149
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1c

    .line 150
    :cond_5
    iget-object v0, v7, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 151
    iget-object v1, v7, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    iget-object v2, v7, Lcom/inmobi/media/d8;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {v1, v0, v12, v2}, Lcom/inmobi/media/d9;->a(Landroid/content/Context;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;

    move-result-object v3

    .line 153
    :cond_6
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 155
    check-cast v3, Landroid/view/ViewGroup;

    .line 157
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    check-cast v0, Lcom/inmobi/media/H7;

    .line 158
    invoke-virtual {v7, v3, v0}, Lcom/inmobi/media/d8;->b(Landroid/view/ViewGroup;Lcom/inmobi/media/H7;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-static {v12, v8}, Lcom/inmobi/media/N8;->a(Lcom/inmobi/media/D7;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {v7, v0, v12}, Lcom/inmobi/media/d8;->a(Landroid/view/View;Lcom/inmobi/media/D7;)V

    .line 171
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1c

    .line 177
    :cond_7
    iget-object v0, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 178
    const-string v4, "WEBVIEW"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    const-string v0, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeWebViewAsset"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    check-cast v0, Lcom/inmobi/media/f9;

    .line 180
    iget-boolean v5, v0, Lcom/inmobi/media/f9;->z:Z

    if-eqz v5, :cond_a

    .line 181
    iget-object v5, v7, Lcom/inmobi/media/d8;->o:Lcom/inmobi/media/Ya;

    if-eqz v5, :cond_a

    .line 184
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_8
    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    :cond_9
    iput-object v3, v7, Lcom/inmobi/media/d8;->o:Lcom/inmobi/media/Ya;

    goto :goto_7

    .line 187
    :cond_a
    const-string v5, "UNKNOWN"

    .line 188
    iget-object v0, v0, Lcom/inmobi/media/f9;->y:Ljava/lang/String;

    .line 189
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_1c

    .line 193
    :cond_b
    const-string v0, "IMAGE"

    .line 194
    iget-object v5, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 195
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 196
    iget-object v0, v12, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    if-nez v0, :cond_c

    goto/16 :goto_1c

    :cond_c
    move-object v5, v3

    :goto_7
    if-nez v5, :cond_e

    .line 197
    iget-object v0, v7, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 198
    iget-object v5, v7, Lcom/inmobi/media/d8;->m:Lcom/inmobi/media/d9;

    iget-object v6, v7, Lcom/inmobi/media/d8;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {v5, v0, v12, v6}, Lcom/inmobi/media/d9;->a(Landroid/content/Context;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;

    move-result-object v5

    goto :goto_8

    :cond_d
    move-object v5, v3

    :cond_e
    :goto_8
    if-eqz v5, :cond_2b

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 202
    iget v6, v12, Lcom/inmobi/media/D7;->n:I

    const/4 v13, -0x1

    if-eq v6, v13, :cond_f

    const/4 v6, 0x4

    .line 203
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v6, v7, Lcom/inmobi/media/d8;->h:Landroid/os/Handler;

    new-instance v14, Lcom/inmobi/media/d8$$ExternalSyntheticLambda2;

    invoke-direct {v14, v0}, Lcom/inmobi/media/d8$$ExternalSyntheticLambda2;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 205
    iget v0, v12, Lcom/inmobi/media/D7;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    move-object/from16 v16, v4

    int-to-long v3, v0

    .line 206
    invoke-virtual {v6, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_f
    move-object/from16 v16, v4

    .line 207
    iget v3, v12, Lcom/inmobi/media/D7;->o:I

    if-eq v3, v13, :cond_10

    .line 208
    iget-object v3, v7, Lcom/inmobi/media/d8;->h:Landroid/os/Handler;

    new-instance v4, Lcom/inmobi/media/d8$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/inmobi/media/d8$$ExternalSyntheticLambda3;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 209
    iget v0, v12, Lcom/inmobi/media/D7;->o:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v13, v0

    .line 210
    invoke-virtual {v3, v4, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    :cond_10
    :goto_9
    sget-object v0, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-static {v12, v8}, Lcom/inmobi/media/N8;->a(Lcom/inmobi/media/D7;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {v7, v5, v12}, Lcom/inmobi/media/d8;->a(Landroid/view/View;Lcom/inmobi/media/D7;)V

    .line 221
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    iget-object v0, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 224
    const-string v3, "VIDEO"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "TAG"

    if-eqz v0, :cond_1d

    .line 225
    const-string v0, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    check-cast v0, Lcom/inmobi/media/C8;

    .line 226
    move-object v13, v5

    check-cast v13, Lcom/inmobi/media/M8;

    invoke-virtual {v13}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v13

    .line 227
    iget-object v14, v0, Lcom/inmobi/media/D7;->r:Lcom/inmobi/media/H7;

    .line 228
    instance-of v6, v14, Lcom/inmobi/media/H7;

    if-eqz v6, :cond_11

    goto :goto_a

    :cond_11
    const/4 v14, 0x0

    .line 229
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v20, v3

    if-eqz v14, :cond_13

    .line 230
    iget-wide v2, v14, Lcom/inmobi/media/H7;->y:J

    const-wide/16 v21, 0x0

    cmp-long v21, v21, v2

    if-eqz v21, :cond_12

    goto :goto_b

    :cond_12
    move-wide/from16 v2, v18

    .line 231
    :goto_b
    iput-wide v2, v14, Lcom/inmobi/media/H7;->y:J

    .line 232
    :cond_13
    invoke-virtual {v13, v10}, Landroid/view/View;->setClickable(Z)V

    const v2, 0x7fffffff

    .line 233
    invoke-virtual {v13, v2}, Landroid/view/View;->setId(I)V

    .line 234
    const-string v2, "videoAsset"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iput v10, v13, Lcom/inmobi/media/L8;->e:I

    .line 611
    iput v10, v13, Lcom/inmobi/media/L8;->f:I

    .line 612
    iget-object v2, v0, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 613
    instance-of v3, v2, Lcom/inmobi/media/kd;

    if-eqz v3, :cond_14

    check-cast v2, Lcom/inmobi/media/kd;

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_15

    .line 614
    check-cast v2, Lcom/inmobi/media/jd;

    invoke-virtual {v2}, Lcom/inmobi/media/jd;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    :cond_15
    const-string v2, ""

    :cond_16
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 615
    iput-object v2, v13, Lcom/inmobi/media/L8;->a:Landroid/net/Uri;

    .line 616
    iget-object v3, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 617
    const-string v14, "placementType"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v14, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v6, 0x1

    if-ne v6, v3, :cond_17

    .line 619
    new-instance v3, Lcom/inmobi/media/g8;

    invoke-direct {v3}, Lcom/inmobi/media/g8;-><init>()V

    goto :goto_d

    .line 621
    :cond_17
    sget-object v3, Lcom/inmobi/media/g8;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/inmobi/media/f8;->a()Lcom/inmobi/media/g8;

    move-result-object v3

    .line 622
    :goto_d
    iput-object v3, v13, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    .line 628
    iget v14, v13, Lcom/inmobi/media/L8;->d:I

    if-eqz v14, :cond_18

    .line 629
    invoke-virtual {v3, v14}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_e

    .line 631
    :cond_18
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    iput v3, v13, Lcom/inmobi/media/L8;->d:I

    .line 635
    :goto_e
    :try_start_2
    iget-object v3, v13, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v3, :cond_19

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v15, 0x0

    :try_start_3
    invoke-virtual {v3, v14, v2, v15}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_f

    :cond_19
    const/4 v15, 0x0

    .line 641
    :goto_f
    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 642
    new-instance v2, Lcom/inmobi/media/I8;

    invoke-direct {v2, v13}, Lcom/inmobi/media/I8;-><init>(Lcom/inmobi/media/L8;)V

    iput-object v2, v13, Lcom/inmobi/media/L8;->m:Lcom/inmobi/media/I8;

    .line 643
    iget-object v2, v13, Lcom/inmobi/media/L8;->B:Lcom/inmobi/media/K8;

    invoke-virtual {v13, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v2, 0x1

    .line 644
    invoke-virtual {v13, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 645
    invoke-virtual {v13, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 646
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    goto :goto_11

    :catch_1
    const/4 v15, 0x0

    .line 647
    :catch_2
    iget-object v2, v13, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v2, :cond_1a

    const/4 v3, -0x1

    goto :goto_10

    :cond_1a
    const/4 v3, -0x1

    .line 648
    iput v3, v2, Lcom/inmobi/media/g8;->a:I

    :goto_10
    if-nez v2, :cond_1b

    goto :goto_11

    .line 649
    :cond_1b
    iput v3, v2, Lcom/inmobi/media/g8;->b:I

    .line 650
    :goto_11
    iget-object v2, v0, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    .line 651
    instance-of v3, v2, Lcom/inmobi/media/C8;

    if-eqz v3, :cond_1c

    .line 652
    check-cast v2, Lcom/inmobi/media/C8;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/C8;->a(Lcom/inmobi/media/C8;)V

    .line 654
    :cond_1c
    new-instance v2, Lcom/inmobi/media/Z7;

    invoke-direct {v2, v7, v0}, Lcom/inmobi/media/Z7;-><init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/C8;)V

    invoke-virtual {v13, v2}, Lcom/inmobi/media/L8;->setQuartileCompletedListener(Lcom/inmobi/media/H8;)V

    .line 669
    new-instance v2, Lcom/inmobi/media/a8;

    invoke-direct {v2, v7, v0}, Lcom/inmobi/media/a8;-><init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/C8;)V

    invoke-virtual {v13, v2}, Lcom/inmobi/media/L8;->setPlaybackEventListener(Lcom/inmobi/media/G8;)V

    .line 702
    new-instance v2, Lcom/inmobi/media/b8;

    invoke-direct {v2, v7, v0}, Lcom/inmobi/media/b8;-><init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/C8;)V

    invoke-virtual {v13, v2}, Lcom/inmobi/media/L8;->setMediaErrorListener(Lcom/inmobi/media/F8;)V

    .line 714
    iget-object v2, v7, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 715
    iget-boolean v3, v2, Lcom/inmobi/media/t7;->t:Z

    if-nez v3, :cond_1e

    .line 716
    instance-of v3, v2, Lcom/inmobi/media/A8;

    if-eqz v3, :cond_1e

    .line 718
    :try_start_4
    check-cast v2, Lcom/inmobi/media/A8;

    invoke-virtual {v2, v0, v13}, Lcom/inmobi/media/A8;->b(Lcom/inmobi/media/C8;Lcom/inmobi/media/L8;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    .line 720
    iget-object v2, v7, Lcom/inmobi/media/d8;->f:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1e

    iget-object v3, v7, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 721
    const-string v13, "SDK encountered unexpected error in handling the onVideoViewCreated event; "

    invoke-static {v3, v4, v13}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 722
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1d
    move-object/from16 v20, v3

    const/4 v15, 0x0

    .line 723
    :cond_1e
    :goto_12
    invoke-virtual {v7, v5, v12}, Lcom/inmobi/media/d8;->b(Landroid/view/View;Lcom/inmobi/media/D7;)V

    .line 724
    const-string v0, "TIMER"

    .line 725
    iget-object v2, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 726
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 727
    const-string v0, "timerView"

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 728
    instance-of v0, v12, Lcom/inmobi/media/q8;

    if-eqz v0, :cond_1f

    instance-of v0, v5, Lcom/inmobi/media/t8;

    if-eqz v0, :cond_1f

    .line 729
    move-object v0, v12

    check-cast v0, Lcom/inmobi/media/q8;

    move-object v2, v5

    check-cast v2, Lcom/inmobi/media/t8;

    .line 730
    new-instance v3, Lcom/inmobi/media/c8;

    invoke-direct {v3, v7, v0}, Lcom/inmobi/media/c8;-><init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/q8;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/media/t8;->setTimerEventsListener(Lcom/inmobi/media/s8;)V

    .line 732
    :cond_1f
    iget-object v0, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    move-object/from16 v2, v20

    .line 733
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 734
    instance-of v0, v5, Lcom/inmobi/media/M8;

    if-eqz v0, :cond_20

    move-object v0, v5

    check-cast v0, Lcom/inmobi/media/M8;

    move-object v2, v0

    goto :goto_13

    :cond_20
    move-object v2, v15

    :goto_13
    if-eqz v2, :cond_26

    .line 735
    invoke-virtual {v2}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/inmobi/media/C8;

    if-eqz v3, :cond_21

    check-cast v0, Lcom/inmobi/media/C8;

    goto :goto_14

    :cond_21
    move-object v0, v15

    :goto_14
    if-eqz v0, :cond_26

    .line 739
    :try_start_5
    invoke-virtual {v0}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object v3

    if-eqz v3, :cond_22

    check-cast v3, Lcom/inmobi/media/jd;

    invoke-virtual {v3}, Lcom/inmobi/media/jd;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_22
    move-object v3, v15

    .line 740
    :goto_15
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 741
    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x12

    .line 742
    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0x13

    .line 743
    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v3, :cond_23

    .line 744
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_16

    :cond_23
    move v3, v10

    :goto_16
    if-eqz v14, :cond_24

    .line 745
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_17

    :cond_24
    move v14, v10

    .line 746
    :goto_17
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 747
    iget-object v0, v0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 748
    iget-object v0, v0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 749
    sget-object v13, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    iget v13, v0, Landroid/graphics/Point;->x:I

    invoke-static {v13}, Lcom/inmobi/media/N8;->a(I)I

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 v17, v11

    int-to-double v10, v13

    .line 750
    :try_start_6
    iget v13, v0, Landroid/graphics/Point;->y:I

    invoke-static {v13}, Lcom/inmobi/media/N8;->a(I)I

    move-result v13

    int-to-double v6, v13

    div-double/2addr v10, v6

    int-to-double v6, v3

    int-to-double v13, v14

    div-double v19, v6, v13

    cmpl-double v3, v10, v19

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_25

    .line 756
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Lcom/inmobi/media/N8;->a(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v8, v10

    div-double/2addr v8, v13

    mul-double/2addr v8, v6

    .line 757
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Lcom/inmobi/media/N8;->a(I)I

    move-result v0

    int-to-double v6, v0

    goto :goto_18

    .line 759
    :cond_25
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/media/N8;->a(I)I

    move-result v3

    int-to-double v8, v3

    .line 761
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/media/N8;->a(I)I

    move-result v0

    move-wide/from16 v19, v8

    int-to-double v8, v0

    mul-double/2addr v8, v10

    div-double/2addr v8, v6

    mul-double v6, v8, v13

    move-wide/from16 v8, v19

    .line 763
    :goto_18
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v3, v8

    double-to-int v6, v6

    invoke-direct {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1a

    :catch_4
    move-exception v0

    goto :goto_19

    :catch_5
    move-exception v0

    move/from16 v17, v11

    .line 765
    :goto_19
    iget-object v3, v2, Lcom/inmobi/media/M8;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 770
    sget-object v6, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 771
    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 772
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    move-object v0, v3

    :goto_1a
    const/16 v1, 0xd

    .line 773
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 774
    invoke-virtual {v2}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_26
    move/from16 v17, v11

    .line 776
    :goto_1b
    iget-object v0, v12, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    move-object/from16 v1, v16

    .line 777
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    instance-of v0, v5, Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_2a

    .line 778
    check-cast v5, Lcom/inmobi/media/Ya;

    .line 779
    instance-of v0, v12, Lcom/inmobi/media/f9;

    if-eqz v0, :cond_27

    .line 780
    move-object v1, v12

    check-cast v1, Lcom/inmobi/media/f9;

    .line 781
    iget-boolean v1, v1, Lcom/inmobi/media/f9;->x:Z

    .line 782
    invoke-virtual {v5, v1}, Lcom/inmobi/media/Ya;->setScrollable(Z)V

    :cond_27
    move-object/from16 v1, p0

    .line 784
    iget-object v2, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 785
    iget-object v2, v2, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 786
    invoke-virtual {v5, v2}, Lcom/inmobi/media/Ya;->setReferenceContainer(Lcom/inmobi/media/x;)V

    .line 787
    iget-object v2, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 788
    iget-object v3, v2, Lcom/inmobi/media/t7;->L:Lcom/inmobi/media/s7;

    if-nez v3, :cond_28

    .line 789
    new-instance v3, Lcom/inmobi/media/s7;

    invoke-direct {v3, v2}, Lcom/inmobi/media/s7;-><init>(Lcom/inmobi/media/t7;)V

    .line 831
    iput-object v3, v2, Lcom/inmobi/media/t7;->L:Lcom/inmobi/media/s7;

    .line 832
    :cond_28
    invoke-virtual {v5, v3}, Lcom/inmobi/media/Ya;->setRenderViewEventListener(Lcom/inmobi/media/ab;)V

    .line 833
    iget-object v2, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 834
    iget-wide v2, v2, Lcom/inmobi/media/t7;->e:J

    .line 835
    invoke-virtual {v5, v2, v3}, Lcom/inmobi/media/Ya;->setPlacementId(J)V

    .line 836
    iget-object v2, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 837
    iget-boolean v2, v2, Lcom/inmobi/media/t7;->f:Z

    .line 838
    invoke-virtual {v5, v2}, Lcom/inmobi/media/Ya;->setAllowAutoRedirection(Z)V

    .line 839
    iget-object v2, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    invoke-virtual {v2}, Lcom/inmobi/media/t7;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/inmobi/media/Ya;->setCreativeId(Ljava/lang/String;)V

    .line 840
    iget-object v2, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    invoke-virtual {v2}, Lcom/inmobi/media/t7;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/inmobi/media/Ya;->setImpressionId(Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    .line 842
    check-cast v12, Lcom/inmobi/media/f9;

    .line 843
    iget-boolean v0, v12, Lcom/inmobi/media/f9;->z:Z

    if-eqz v0, :cond_2c

    .line 844
    iget-object v0, v1, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 845
    iget-object v2, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_29

    .line 846
    iget-object v3, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "setHTMLTrackedView"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_29
    iget-byte v2, v0, Lcom/inmobi/media/t7;->K:B

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/inmobi/media/t7;->I:Lcom/inmobi/media/Ya;

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-nez v2, :cond_2c

    .line 848
    iput-object v5, v0, Lcom/inmobi/media/t7;->I:Lcom/inmobi/media/Ya;

    goto :goto_1d

    :cond_2a
    move-object/from16 v1, p0

    goto :goto_1d

    :cond_2b
    :goto_1c
    move-object v1, v7

    move/from16 v17, v11

    :cond_2c
    :goto_1d
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v7, v1

    move/from16 v0, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v1, v7

    .line 849
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    move-object v1, v7

    return-object p1
.end method

.method public final b(Landroid/view/View;Lcom/inmobi/media/D7;)V
    .locals 1

    .line 1
    iget-boolean v0, p2, Lcom/inmobi/media/D7;->f:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/inmobi/media/d8$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/inmobi/media/d8$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/d8;Lcom/inmobi/media/D7;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
