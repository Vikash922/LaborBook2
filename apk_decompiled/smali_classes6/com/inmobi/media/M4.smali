.class public final Lcom/inmobi/media/M4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/WeakHashMap;

.field public final b:Ljava/util/WeakHashMap;

.field public final c:Lcom/inmobi/media/yd;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/inmobi/media/L4;

.field public final g:J

.field public final h:Lcom/inmobi/media/J4;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Lcom/inmobi/media/yd;Lcom/inmobi/media/J4;)V
    .locals 4

    const-string v0, "viewabilityConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    .line 9
    iput-object v1, p0, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    .line 11
    iput-object p2, p0, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    .line 17
    const-string v0, "M4"

    iput-object v0, p0, Lcom/inmobi/media/M4;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getImpressionPollIntervalMillis()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/inmobi/media/M4;->g:J

    .line 35
    new-instance p1, Lcom/inmobi/media/I4;

    invoke-direct {p1, p0}, Lcom/inmobi/media/I4;-><init>(Lcom/inmobi/media/M4;)V

    .line 36
    iget-object v0, p2, Lcom/inmobi/media/yd;->e:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "VisibilityTracker"

    const-string v3, "setVisibilityTrackerListener logger"

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iput-object p1, p2, Lcom/inmobi/media/yd;->j:Lcom/inmobi/media/ud;

    .line 38
    iput-object v2, p0, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    .line 39
    new-instance p1, Lcom/inmobi/media/L4;

    invoke-direct {p1, p0}, Lcom/inmobi/media/L4;-><init>(Lcom/inmobi/media/M4;)V

    iput-object p1, p0, Lcom/inmobi/media/M4;->f:Lcom/inmobi/media/L4;

    .line 40
    iput-object p3, p0, Lcom/inmobi/media/M4;->h:Lcom/inmobi/media/J4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/yd;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/K4;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/K4;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/M4;->a(Landroid/view/View;)V

    .line 8
    new-instance v0, Lcom/inmobi/media/K4;

    invoke-direct {v0, p2, p3, p4}, Lcom/inmobi/media/K4;-><init>(Ljava/lang/Object;II)V

    .line 9
    iget-object p4, p0, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p4, p0, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {p4, p1, p2, p3}, Lcom/inmobi/media/yd;->a(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method
