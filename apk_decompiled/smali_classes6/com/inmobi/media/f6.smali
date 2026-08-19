.class public final Lcom/inmobi/media/f6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/g6;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/g6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/f6;->a:Lcom/inmobi/media/g6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/inmobi/media/b2;

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/inmobi/media/b2;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 5
    const-string v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/b2;->c:Ljava/util/Map;

    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/x5;

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/f6;->a:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->b(Lcom/inmobi/media/x5;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/f6;->a:Lcom/inmobi/media/g6;

    .line 10
    iget-object v0, p1, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 11
    iget-object v3, v0, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 12
    :cond_1
    iput-object v2, v0, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    iget-object v3, v0, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v3, v0, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object v1, v0, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 16
    iput-object v2, v0, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 17
    :cond_2
    iput-object v2, p1, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    .line 18
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    iget-object p1, p1, Lcom/inmobi/media/g6;->d:Lcom/inmobi/media/f6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 19
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
