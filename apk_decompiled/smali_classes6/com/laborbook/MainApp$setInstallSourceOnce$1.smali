.class final Lcom/laborbook/MainApp$setInstallSourceOnce$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainApp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/MainApp;->setInstallSourceOnce()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainApp.kt\ncom/laborbook/MainApp$setInstallSourceOnce$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
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
    c = "com.laborbook.MainApp$setInstallSourceOnce$1"
    f = "MainApp.kt"
    i = {
        0x2
    }
    l = {
        0x65,
        0x67,
        0x68,
        0x69
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/MainApp;


# direct methods
.method constructor <init>(Lcom/laborbook/MainApp;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/MainApp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/MainApp$setInstallSourceOnce$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->this$0:Lcom/laborbook/MainApp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/laborbook/MainApp$setInstallSourceOnce$1;

    iget-object v0, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->this$0:Lcom/laborbook/MainApp;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/MainApp$setInstallSourceOnce$1;-><init>(Lcom/laborbook/MainApp;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/MainApp$setInstallSourceOnce$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 99
    iget v1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    :try_start_2
    iget-object p1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->this$0:Lcom/laborbook/MainApp;

    invoke-static {p1}, Lcom/laborbook/MainApp;->access$getDataStoreManager(Lcom/laborbook/MainApp;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_SOURCE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {p1, v1, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 99
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 102
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 103
    :cond_6
    sget-object p1, Lcom/laborbook/GooglePlayInstallReferrerReader;->INSTANCE:Lcom/laborbook/GooglePlayInstallReferrerReader;

    iget-object v1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->this$0:Lcom/laborbook/MainApp;

    check-cast v1, Landroid/content/Context;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->label:I

    invoke-virtual {p1, v1, v5}, Lcom/laborbook/GooglePlayInstallReferrerReader;->getInstallReferrer(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 99
    :cond_7
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;

    .line 104
    iget-object p1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->this$0:Lcom/laborbook/MainApp;

    invoke-static {p1}, Lcom/laborbook/MainApp;->access$getDataStoreManager(Lcom/laborbook/MainApp;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_SOURCE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1}, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->label:I

    invoke-virtual {p1, v4, v5, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 105
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;->getReferrerUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->this$0:Lcom/laborbook/MainApp;

    invoke-static {v1}, Lcom/laborbook/MainApp;->access$getDataStoreManager(Lcom/laborbook/MainApp;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v3, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v3}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_REFERRER_RAW()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;->label:I

    invoke-virtual {v1, v3, p1, p0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_9

    return-object v0

    .line 107
    :goto_3
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInstallSourceOnce failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/laborbook/base/Logger;->e(Ljava/lang/String;)V

    .line 109
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
