.class Lcom/razorpay/OtpElfData$2;
.super Ljava/lang/Object;
.source "OtpElfData.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/OtpElfData;->l$1_I$l$(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/OtpElfData;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/razorpay/OtpElfData;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/razorpay/OtpElfData$2;->this$0:Lcom/razorpay/OtpElfData;

    iput-object p2, p0, Lcom/razorpay/OtpElfData$2;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    .line 57
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/razorpay/OtpElfData$2;->val$version:Ljava/lang/String;

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->getOTPElfJsFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/razorpay/BaseUtils;->getVersionedAssetName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/razorpay/OtpElfData$2;->this$0:Lcom/razorpay/OtpElfData;

    iget-object v1, v1, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/BaseUtils;->storeFileInInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/razorpay/OtpElfData$2;->this$0:Lcom/razorpay/OtpElfData;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/razorpay/OtpElfData;->access$102(Lcom/razorpay/OtpElfData;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/razorpay/OtpElfData$2;->this$0:Lcom/razorpay/OtpElfData;

    iget-object p1, p1, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget-object v0, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/razorpay/OtpElfData$2;->val$version:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/razorpay/BaseUtils;->updateLocalVersion(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->OTPELF_LOCAL_SAVE_FAILED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
