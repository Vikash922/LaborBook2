.class public final Lcom/inmobi/media/C4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lcom/inmobi/media/z4;


# instance fields
.field public final a:B

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/inmobi/media/f5;

.field public g:Lcom/inmobi/media/M4;

.field public h:Lcom/inmobi/media/F4;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Lcom/inmobi/media/A4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/z4;

    invoke-direct {v0}, Lcom/inmobi/media/z4;-><init>()V

    sput-object v0, Lcom/inmobi/media/C4;->k:Lcom/inmobi/media/z4;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;IIILcom/inmobi/media/f5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lcom/inmobi/media/C4;->a:B

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/C4;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/inmobi/media/C4;->c:I

    .line 5
    iput p4, p0, Lcom/inmobi/media/C4;->d:I

    .line 6
    iput p5, p0, Lcom/inmobi/media/C4;->e:I

    .line 7
    iput-object p6, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/C4;->i:Ljava/util/LinkedHashMap;

    .line 160
    new-instance p1, Lcom/inmobi/media/A4;

    invoke-direct {p1, p0}, Lcom/inmobi/media/A4;-><init>(Lcom/inmobi/media/C4;)V

    iput-object p1, p0, Lcom/inmobi/media/C4;->j:Lcom/inmobi/media/A4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "HtmlAdTracker"

    const-string v2, "onActivityStarted"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    if-eqz v0, :cond_3

    .line 144
    iget-object v1, v0, Lcom/inmobi/media/M4;->d:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v1, v0, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/K4;

    .line 146
    iget-object v4, v0, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    .line 147
    iget-object v5, v2, Lcom/inmobi/media/K4;->a:Ljava/lang/Object;

    .line 148
    iget v2, v2, Lcom/inmobi/media/K4;->b:I

    .line 149
    invoke-virtual {v4, v3, v5, v2}, Lcom/inmobi/media/yd;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, v0, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    iget-object v2, v0, Lcom/inmobi/media/M4;->f:Lcom/inmobi/media/L4;

    iget-wide v3, v0, Lcom/inmobi/media/M4;->g:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :goto_1
    iget-object v0, v0, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v0}, Lcom/inmobi/media/yd;->f()V

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/media/yd;->f()V

    :cond_4
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    const-string v2, "HtmlAdTracker"

    if-eqz v1, :cond_0

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "stopTrackingForImpression"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/C4;->b:Ljava/lang/String;

    const-string v3, "video"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/C4;->b:Ljava/lang/String;

    const-string v3, "audio"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    if-eqz v1, :cond_4

    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, v1, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, v1, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, v1, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/yd;->a(Landroid/view/View;)V

    .line 133
    iget-object p1, v1, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 134
    iget-object p1, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Impression tracker is free, removing it"

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    if-eqz p1, :cond_3

    .line 136
    iget-object v0, p1, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 137
    iget-object v0, p1, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 138
    iget-object v0, p1, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v0}, Lcom/inmobi/media/yd;->a()V

    .line 139
    iget-object v0, p1, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object p1, p1, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {p1}, Lcom/inmobi/media/yd;->b()V

    :cond_3
    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    :cond_4
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "HtmlAdTracker"

    const-string v2, "onActivityStopped"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Lcom/inmobi/media/M4;->d:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v1}, Lcom/inmobi/media/yd;->a()V

    .line 13
    iget-object v1, v0, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/yd;->e()V

    :cond_2
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    const-string v1, "HtmlAdTracker"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "stopTrackingForVisibility"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/media/yd;->a(Landroid/view/View;)V

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/yd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "Visibility tracker is free, removing it"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/yd;->b()V

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/C4;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
