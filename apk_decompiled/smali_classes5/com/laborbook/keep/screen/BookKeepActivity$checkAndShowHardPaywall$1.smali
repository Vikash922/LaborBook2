.class final Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BookKeepActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity;->checkAndShowHardPaywall()V
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
    c = "com.laborbook.keep.screen.BookKeepActivity$checkAndShowHardPaywall$1"
    f = "BookKeepActivity.kt"
    i = {}
    l = {
        0x9a,
        0x9c,
        0x9e,
        0xa3,
        0xa9,
        0xb0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/BookKeepActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/BookKeepActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

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

    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_6

    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :pswitch_3
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    :try_start_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    invoke-static {p1, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$ensureNetworkHeadersSync(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 156
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_EXISTING_USER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {p1, v1, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x3

    iput v5, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 151
    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 159
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lez v1, :cond_5

    .line 161
    :try_start_4
    const-string v1, "https://api.laborbook.app/"

    .line 162
    sget-object v5, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v5}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v5

    new-instance v6, Lretrofit2/Retrofit$Builder;

    invoke-direct {v6}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v6, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v1, v5}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v5}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v5, Lcom/laborbook/keep/network/KeepApi;

    invoke-virtual {v1, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/network/KeepApi;

    .line 163
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1$response$1;

    invoke-direct {v6, v1, p1, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1$response$1;-><init>(Lcom/laborbook/keep/network/KeepApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x4

    iput v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 151
    :cond_3
    :goto_3
    check-cast p1, Lretrofit2/Response;

    .line 166
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/network/model/DataResponse;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/boilerplate/network/model/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/model/StaffUserResponseModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/laborbook/keep/model/StaffUserResponseModel;->getUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_4

    :cond_4
    move p1, v3

    :goto_4
    if-lez p1, :cond_5

    .line 169
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_EXISTING_USER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x5

    iput v7, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    invoke-virtual {p1, v1, v5, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 176
    :catch_0
    :cond_5
    :goto_5
    :try_start_5
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getPremiumOfferManager(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x6

    iput v5, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->label:I

    invoke-virtual {p1, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->shouldShowHardPaywall(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 177
    sget-object p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    invoke-static {p1, v3, v4, v4, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;ZZILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PremiumOfferDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 181
    :catch_1
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
