.class public final Lcom/inmobi/media/I4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/ud;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/M4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/M4;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const-string v0, "visibleViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invisibleViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/M4;->d:Ljava/lang/String;

    .line 3
    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8
    iget-object v1, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 9
    iget-object v1, v1, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/K4;

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/M4;->a(Landroid/view/View;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 18
    iget-object v2, v2, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/K4;

    .line 20
    iget-object v3, v1, Lcom/inmobi/media/K4;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/inmobi/media/K4;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/inmobi/media/K4;->d:J

    .line 23
    iget-object v2, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 24
    iget-object v2, v2, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 29
    iget-object v0, v0, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    .line 30
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/I4;->a:Lcom/inmobi/media/M4;

    .line 33
    iget-object p2, p1, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 36
    :cond_5
    iget-object p2, p1, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    iget-object v0, p1, Lcom/inmobi/media/M4;->f:Lcom/inmobi/media/L4;

    iget-wide v1, p1, Lcom/inmobi/media/M4;->g:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method
