.class public final Lcom/inmobi/media/P2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/inmobi/media/E2;

.field public final b:Lcom/inmobi/media/Q2;

.field public final c:Lcom/inmobi/media/Q2;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/E2;Lcom/inmobi/media/Q2;Lcom/inmobi/media/Q2;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/P2;->a:Lcom/inmobi/media/E2;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/P2;->c:Lcom/inmobi/media/Q2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    .line 724
    iget v3, v2, Lcom/inmobi/media/Q2;->z:I

    const/4 v4, 0x4

    const-string v5, "accountId"

    if-gt v1, v3, :cond_7

    .line 725
    const-string v3, "mRequest"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v2}, Lcom/inmobi/media/l9;->b()Lcom/inmobi/media/m9;

    move-result-object v6

    .line 727
    new-instance v7, Lcom/inmobi/media/W2;

    invoke-direct {v7, v2, v6}, Lcom/inmobi/media/W2;-><init>(Lcom/inmobi/media/Q2;Lcom/inmobi/media/m9;)V

    .line 728
    iget-object v2, v7, Lcom/inmobi/media/W2;->c:Ljava/util/LinkedHashMap;

    .line 729
    invoke-virtual {v7}, Lcom/inmobi/media/W2;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 730
    iget-object v6, p0, Lcom/inmobi/media/P2;->c:Lcom/inmobi/media/Q2;

    if-eqz v6, :cond_4

    .line 731
    :cond_1
    iget v1, v6, Lcom/inmobi/media/Q2;->z:I

    if-gt v0, v1, :cond_3

    .line 732
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v6}, Lcom/inmobi/media/l9;->b()Lcom/inmobi/media/m9;

    move-result-object v1

    .line 734
    new-instance v2, Lcom/inmobi/media/W2;

    invoke-direct {v2, v6, v1}, Lcom/inmobi/media/W2;-><init>(Lcom/inmobi/media/Q2;Lcom/inmobi/media/m9;)V

    .line 735
    iget-object v1, v2, Lcom/inmobi/media/W2;->c:Ljava/util/LinkedHashMap;

    .line 736
    invoke-virtual {v2}, Lcom/inmobi/media/W2;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 740
    :cond_2
    invoke-virtual {p0, v6, v1}, Lcom/inmobi/media/P2;->a(Lcom/inmobi/media/Q2;Ljava/util/LinkedHashMap;)V

    .line 741
    iget-object v2, v6, Lcom/inmobi/media/Q2;->y:Ljava/util/Map;

    .line 742
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 746
    invoke-virtual {p0, v6, v0, v1}, Lcom/inmobi/media/P2;->a(Lcom/inmobi/media/Q2;ILjava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/P2;->a:Lcom/inmobi/media/E2;

    .line 754
    iget-object v1, v6, Lcom/inmobi/media/Q2;->B:Ljava/lang/String;

    .line 755
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1474
    iput v4, v2, Landroid/os/Message;->what:I

    .line 1475
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1476
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1477
    :cond_4
    iget-object v3, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    .line 1478
    iget-boolean v3, v3, Lcom/inmobi/media/Q2;->C:Z

    if-eqz v3, :cond_6

    .line 1479
    iget-object v3, p0, Lcom/inmobi/media/P2;->a:Lcom/inmobi/media/E2;

    .line 1480
    iget-object v6, v7, Lcom/inmobi/media/W2;->a:Lcom/inmobi/media/m9;

    .line 1481
    iget-object v6, v6, Lcom/inmobi/media/m9;->e:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 1482
    const-string v7, "cip"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_5

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    new-instance v7, Lcom/inmobi/media/U2;

    invoke-direct {v7, v6}, Lcom/inmobi/media/U2;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/inmobi/media/T2;->a:Lcom/inmobi/media/T2;

    .line 1483
    :goto_1
    const-string v6, "ipAddress"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    const/4 v8, 0x7

    .line 2209
    iput v8, v6, Landroid/os/Message;->what:I

    .line 2210
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2211
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2212
    :cond_6
    iget-object v3, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    invoke-virtual {p0, v3, v2}, Lcom/inmobi/media/P2;->a(Lcom/inmobi/media/Q2;Ljava/util/LinkedHashMap;)V

    .line 2218
    iget-object v3, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    .line 2219
    iget-object v3, v3, Lcom/inmobi/media/Q2;->y:Ljava/util/Map;

    .line 2220
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 2224
    iget-object v3, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    invoke-virtual {p0, v3, v1, v2}, Lcom/inmobi/media/P2;->a(Lcom/inmobi/media/Q2;ILjava/util/LinkedHashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2232
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/P2;->a:Lcom/inmobi/media/E2;

    iget-object v1, p0, Lcom/inmobi/media/P2;->b:Lcom/inmobi/media/Q2;

    .line 2233
    iget-object v1, v1, Lcom/inmobi/media/Q2;->B:Ljava/lang/String;

    .line 2234
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2952
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2953
    iput v4, v2, Landroid/os/Message;->what:I

    .line 2954
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2955
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/inmobi/media/Q2;Ljava/util/LinkedHashMap;)V
    .locals 5

    .line 2956
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2957
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/S2;

    .line 2958
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2959
    iget-object v2, v1, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2960
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/P2;->a:Lcom/inmobi/media/E2;

    .line 2961
    const-string v3, "response"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3671
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x6

    .line 3672
    iput v4, v3, Landroid/os/Message;->what:I

    .line 3673
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3674
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3676
    const-string v1, "configType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3786
    iget-object v1, p1, Lcom/inmobi/media/Q2;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/Q2;ILjava/util/LinkedHashMap;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/inmobi/media/Q2;->z:I

    if-le p2, v0, :cond_2

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/Q2;->y:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/S2;

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/P2;->a:Lcom/inmobi/media/E2;

    .line 7
    const-string v1, "response"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    .line 718
    iput v2, v1, Landroid/os/Message;->what:I

    .line 719
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 721
    :cond_2
    iget p1, p1, Lcom/inmobi/media/Q2;->A:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    .line 722
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/P2;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    const-string v0, "P2"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
