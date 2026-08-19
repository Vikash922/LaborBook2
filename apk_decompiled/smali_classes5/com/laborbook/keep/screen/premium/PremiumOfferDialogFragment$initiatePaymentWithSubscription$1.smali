.class final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->initiatePaymentWithSubscription(Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)V
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
    value = "SMAP\nPremiumOfferDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PremiumOfferDialogFragment.kt\ncom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1187:1\n1#2:1188\n*E\n"
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
    c = "com.laborbook.keep.screen.premium.PremiumOfferDialogFragment$initiatePaymentWithSubscription$1"
    f = "PremiumOfferDialogFragment.kt"
    i = {
        0x1
    }
    l = {
        0x38d,
        0x38e
    }
    m = "invokeSuspend"
    n = {
        "mobileNumber"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $amountPaise:I

.field final synthetic $plan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

.field final synthetic $razorpay:Lcom/razorpay/Razorpay;

.field final synthetic $response:Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;

.field final synthetic $upiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

.field final synthetic $webView:Landroid/webkit/WebView;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;Lcom/razorpay/Razorpay;Landroid/webkit/WebView;ILcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
            "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
            "Lcom/razorpay/Razorpay;",
            "Landroid/webkit/WebView;",
            "I",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$response:Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;

    iput-object p3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$razorpay:Lcom/razorpay/Razorpay;

    iput-object p4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$webView:Landroid/webkit/WebView;

    iput p5, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$amountPaise:I

    iput-object p6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$plan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iput-object p7, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$upiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$response:Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;

    iget-object v3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$razorpay:Lcom/razorpay/Razorpay;

    iget-object v4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$webView:Landroid/webkit/WebView;

    iget v5, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$amountPaise:I

    iget-object v6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$plan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iget-object v7, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$upiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;Lcom/razorpay/Razorpay;Landroid/webkit/WebView;ILcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 908
    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->label:I

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

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

    .line 909
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getDataStoreManager(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 908
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 910
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getDataStoreManager(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 908
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "@laborbook.app"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 912
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$response:Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;->getPgSubscriptionId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 913
    :goto_2
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "getString(...)"

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_4

    .line 917
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget v5, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$amountPaise:I

    iget-object v6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$plan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iget-object v7, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iget-object v8, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$upiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    .line 918
    const-string v9, "amount"

    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 919
    const-string v5, "currency"

    invoke-virtual {v6}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    const-string v5, "contact"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    const-string v0, "email"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    sget p1, Lcom/laborbook/keep/R$string;->pro_subscription:I

    invoke-virtual {v7, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "description"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string p1, "method"

    const-string v0, "upi"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string p1, "_[flow]"

    const-string v0, "intent"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 925
    const-string p1, "upi_app_package_name"

    invoke-virtual {v8}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string p1, "recurring"

    invoke-virtual {v2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 927
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "com.phonepe.app"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "com.google.android.apps.nbu.paisa.user"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "net.one97.paytm"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "preferred_apps_order"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "in.org.npci.upiapp"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "other_apps_order"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    const-string p1, "subscription_id"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$razorpay:Lcom/razorpay/Razorpay;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/razorpay/Razorpay;->setWebView(Landroid/webkit/WebView;)V

    .line 932
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$createPaymentWebViewClient(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 933
    sget-object p1, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logAddPaymentInfo(Landroid/content/Context;)V

    .line 935
    :try_start_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->$razorpay:Lcom/razorpay/Razorpay;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    check-cast v0, Lcom/razorpay/PaymentResultWithDataListener;

    invoke-virtual {p1, v2, v0}, Lcom/razorpay/Razorpay;->submit(Lorg/json/JSONObject;Lcom/razorpay/PaymentResultWithDataListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 937
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$hideVerificationScreen(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    .line 938
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    sget v1, Lcom/laborbook/keep/R$string;->failed_to_initiate_payment:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Unknown error"

    :cond_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$showPaymentFailedBottomSheet(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V

    .line 940
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 914
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    sget v0, Lcom/laborbook/keep/R$string;->failed_to_initiate_payment:I

    const-string v1, "Subscription ID not available"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$showPaymentFailedBottomSheet(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V

    .line 915
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
