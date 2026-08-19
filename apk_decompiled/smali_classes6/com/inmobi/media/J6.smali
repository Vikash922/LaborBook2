.class public abstract Lcom/inmobi/media/J6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/inmobi/media/Ca;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    :cond_2
    sget-object v2, Lcom/inmobi/media/K6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 12
    const-string v0, "event"

    invoke-static {p0, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_3
    return-void
.end method
