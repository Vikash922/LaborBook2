.class Lcom/razorpay/BaseRazorpay$2;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lcom/razorpay/FetchPreferencesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$fetchPreferencesCallback:Lcom/razorpay/FetchPreferencesCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/FetchPreferencesCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1898
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$2;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$2;->val$fetchPreferencesCallback:Lcom/razorpay/FetchPreferencesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    .line 1900
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1901
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 1902
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string p1, "rzp_payment_preferences"

    invoke-static {p1, v0, v1, v2}, Lcom/razorpay/CacheManager;->put(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1903
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$2;->val$fetchPreferencesCallback:Lcom/razorpay/FetchPreferencesCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/FetchPreferencesCallback;->onResponse(Ljava/lang/String;)V

    .line 1904
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->FETCH_PREFERENCES_CALL_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    goto :goto_0

    .line 1906
    :cond_0
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$2;->val$fetchPreferencesCallback:Lcom/razorpay/FetchPreferencesCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/FetchPreferencesCallback;->onError(Ljava/lang/String;)V

    .line 1907
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->FETCH_PREFERENCES_METHODS_CALL_FAIL:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    :goto_0
    return-void
.end method
