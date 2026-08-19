.class final Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->loadNativeAd(IILandroid/content/Context;)V
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
    c = "com.laborbook.expense.screen.home.adapter.TransactionListAdapter$loadNativeAd$adLoader$1$1"
    f = "TransactionListAdapter.kt"
    i = {}
    l = {
        0x142
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adKey:Ljava/lang/String;

.field final synthetic $nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field final synthetic $targetTransaction:Lcom/laborbook/expense/model/Transaction;

.field final synthetic $transactionIndex:I

.field label:I

.field final synthetic this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;


# direct methods
.method public static synthetic $r8$lambda$-ensKs9an2nL7FrOdKUtDmDJS7w(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->invokeSuspend$lambda$0(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;",
            "Lcom/google/android/gms/ads/nativead/NativeAd;",
            "Ljava/lang/String;",
            "I",
            "Lcom/laborbook/expense/model/Transaction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    iput-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    iput-object p3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$adKey:Ljava/lang/String;

    iput p4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$transactionIndex:I

    iput-object p5, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$targetTransaction:Lcom/laborbook/expense/model/Transaction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    .line 334
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->access$insertAdIntoList(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

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

    new-instance p1, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;

    iget-object v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    iget-object v2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    iget-object v3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$adKey:Ljava/lang/String;

    iget v4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$transactionIndex:I

    iget-object v5, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$targetTransaction:Lcom/laborbook/expense/model/Transaction;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;-><init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 321
    iget v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-static {p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->access$getDataStoreManager(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->label:I

    invoke-static {p1, v1}, Lcom/laborbook/base/datastore/DataStoreManagerExtensionsKt;->shouldShowGoogleAds(Lcom/laborbook/base/datastore/DataStoreManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 325
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 326
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-static {p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->access$getNativeAds$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$adKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-static {p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->access$getAdRetryCount$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$adKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    invoke-static {p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->access$getMainHandler$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->this$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    iget v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$transactionIndex:I

    iget-object v2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$targetTransaction:Lcom/laborbook/expense/model/Transaction;

    iget-object v3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    new-instance v4, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
