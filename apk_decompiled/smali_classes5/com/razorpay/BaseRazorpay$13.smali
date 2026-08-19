.class Lcom/razorpay/BaseRazorpay$13;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->SSsS$sss__s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 2688
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 2706
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 2707
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1}, Lcom/razorpay/BaseRazorpay;->access$1300(Lcom/razorpay/BaseRazorpay;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 2692
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 2694
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1}, Lcom/razorpay/BaseRazorpay;->access$1300(Lcom/razorpay/BaseRazorpay;)V

    .line 2697
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object p1, p1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay$13;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1, v0, v1}, Lcom/razorpay/RazorpayUtils;->genericPollForPaymentStatus(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2699
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TNG_POLLING_STARTED_ON_RETURN:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
