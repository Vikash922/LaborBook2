.class public final Lcom/inmobi/media/hc;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/hc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/hc;

    invoke-direct {v0}, Lcom/inmobi/media/hc;-><init>()V

    sput-object v0, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/hc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lcom/inmobi/media/b2;

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/inmobi/media/b2;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const-string v3, "data"

    packed-switch v0, :pswitch_data_0

    .line 4
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    goto/16 :goto_6

    .line 5
    :pswitch_0
    sget-object v0, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    if-eqz v0, :cond_c

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    instance-of v1, p1, Lcom/inmobi/media/b1;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/inmobi/media/b1;

    :cond_1
    invoke-virtual {v0, v2}, Lcom/inmobi/media/qc;->a(Lcom/inmobi/media/b1;)V

    goto/16 :goto_6

    .line 8
    :pswitch_1
    sget-object v0, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    if-eqz v0, :cond_c

    .line 9
    iget-object p1, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    instance-of v1, p1, Lcom/inmobi/media/zd;

    if-eqz v1, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/inmobi/media/zd;

    :cond_3
    if-eqz v2, :cond_c

    .line 11
    invoke-static {v2}, Lcom/inmobi/media/Xc;->a(Lcom/inmobi/media/x5;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {p1}, Lcom/inmobi/media/E3;->z()Z

    move-result p1

    if-nez p1, :cond_c

    .line 12
    const-string p1, "MainThreadBlockedEvent"

    invoke-virtual {v0, p1, v2}, Lcom/inmobi/media/qc;->a(Ljava/lang/String;Lcom/inmobi/media/x5;)V

    goto/16 :goto_6

    .line 13
    :pswitch_2
    sget-object v0, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    if-eqz v0, :cond_c

    .line 14
    iget-object p1, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    instance-of v3, p1, Lcom/inmobi/media/h3;

    if-eqz v3, :cond_5

    check-cast p1, Lcom/inmobi/media/h3;

    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 16
    :goto_3
    const-string v3, "CrashEventOccurred"

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/qc;->a(Ljava/lang/String;Lcom/inmobi/media/x5;)V

    if-eqz p1, :cond_c

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "name"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v3, "OutOfMemoryError"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/h3;->g:[Ljava/lang/StackTraceElement;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const-string p1, "stackTrace"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    .line 20
    :goto_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    sget-object v3, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v3}, Lcom/inmobi/media/E3;->l()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manufacturer"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v3}, Lcom/inmobi/media/E3;->n()Ljava/lang/String;

    move-result-object v5

    const-string v6, "modelName"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v3}, Lcom/inmobi/media/E3;->s()Ljava/lang/String;

    move-result-object v5

    const-string v6, "osVersion"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3}, Lcom/inmobi/media/E3;->a()Lcom/inmobi/media/B3;

    move-result-object v3

    .line 26
    iget-wide v5, v3, Lcom/inmobi/media/B3;->a:J

    .line 27
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "maxHeapSize"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-wide v5, v3, Lcom/inmobi/media/B3;->b:J

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "freeHeapSize"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-wide v5, v3, Lcom/inmobi/media/B3;->c:J

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "currentHeapSize"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "activeThreads"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Thread;

    .line 52
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "TIM-"

    invoke-static {v7, v8, v1, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 68
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 69
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "inmobiThreadCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Lcom/inmobi/media/Xc;->b([Ljava/lang/StackTraceElement;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isSdkInvolved"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 72
    const-string v1, "OutOfMemoryEvent"

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    goto :goto_6

    .line 73
    :cond_9
    sget-object p1, Lcom/inmobi/media/ic;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    sget-object p1, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    if-eqz p1, :cond_b

    .line 75
    iget-object v0, p1, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 76
    :cond_a
    iput-object v2, p1, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    iget-object v0, p1, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    iget-object v0, p1, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    iget-object v0, p1, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 80
    iput-object v2, p1, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 81
    :cond_b
    sput-object v2, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    .line 82
    sput-object v2, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    .line 83
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object p1

    sget-object v0, Lcom/inmobi/media/ic;->h:Lcom/inmobi/media/hc;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 84
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
