.class final Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RoutingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/RoutingActivity;->updateGoogleAdsConfig(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.RoutingActivity$updateGoogleAdsConfig$1"
    f = "RoutingActivity.kt"
    i = {}
    l = {
        0x93,
        0x94
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $googleAdsEnabled:Z

.field final synthetic $homePageAdsEnabled:Z

.field label:I

.field final synthetic this$0:Lcom/laborbook/RoutingActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/RoutingActivity;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/RoutingActivity;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->this$0:Lcom/laborbook/RoutingActivity;

    iput-boolean p2, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->$googleAdsEnabled:Z

    iput-boolean p3, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->$homePageAdsEnabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;

    iget-object v0, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->this$0:Lcom/laborbook/RoutingActivity;

    iget-boolean v1, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->$googleAdsEnabled:Z

    iget-boolean v2, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->$homePageAdsEnabled:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;-><init>(Lcom/laborbook/RoutingActivity;ZZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget v1, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    iget-object p1, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->this$0:Lcom/laborbook/RoutingActivity;

    invoke-static {p1}, Lcom/laborbook/RoutingActivity;->access$getDataStoreManager(Lcom/laborbook/RoutingActivity;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getGOOGLE_ADS_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    iget-boolean v4, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->$googleAdsEnabled:Z

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->label:I

    invoke-virtual {p1, v1, v4, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 148
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->this$0:Lcom/laborbook/RoutingActivity;

    invoke-static {p1}, Lcom/laborbook/RoutingActivity;->access$getDataStoreManager(Lcom/laborbook/RoutingActivity;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getHOME_PAGE_ADS_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    iget-boolean v3, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->$homePageAdsEnabled:Z

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/RoutingActivity$updateGoogleAdsConfig$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 149
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
