.class public final Lcom/boilerplate/analytics/b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $eventName:Ljava/lang/String;

.field final synthetic $eventPlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/boilerplate/analytics/AnalyticsManagerImpl;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/analytics/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/boilerplate/analytics/b;->$eventPlatforms:Ljava/util/List;

    iput-object p2, p0, Lcom/boilerplate/analytics/b;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iput-object p3, p0, Lcom/boilerplate/analytics/b;->$eventName:Ljava/lang/String;

    iput-object p4, p0, Lcom/boilerplate/analytics/b;->$properties:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/boilerplate/analytics/b;

    iget-object v1, p0, Lcom/boilerplate/analytics/b;->$eventPlatforms:Ljava/util/List;

    iget-object v2, p0, Lcom/boilerplate/analytics/b;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v3, p0, Lcom/boilerplate/analytics/b;->$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/boilerplate/analytics/b;->$properties:Ljava/util/HashMap;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/analytics/b;-><init>(Ljava/util/List;Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/boilerplate/analytics/b;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/analytics/b;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/analytics/b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/analytics/b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/boilerplate/analytics/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/boilerplate/analytics/b;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/boilerplate/analytics/b;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object v1, p0, Lcom/boilerplate/analytics/b;->$eventPlatforms:Ljava/util/List;

    iget-object v9, p0, Lcom/boilerplate/analytics/b;->this$0:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    iget-object v10, p0, Lcom/boilerplate/analytics/b;->$eventName:Ljava/lang/String;

    iget-object v11, p0, Lcom/boilerplate/analytics/b;->$properties:Ljava/util/HashMap;

    .line 89
    new-instance v12, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 91
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 92
    new-instance v13, Lcom/boilerplate/analytics/a;

    const/4 v8, 0x0

    move-object v3, v13

    move-object v4, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/boilerplate/analytics/a;-><init>(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    .line 180
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    iput v2, p0, Lcom/boilerplate/analytics/b;->label:I

    invoke-static {v12, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 182
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
