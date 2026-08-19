.class Lcom/razorpay/OtpElfData$1;
.super Ljava/lang/Object;
.source "OtpElfData.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/OtpElfData;->checkForUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/OtpElfData;


# direct methods
.method constructor <init>(Lcom/razorpay/OtpElfData;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/razorpay/OtpElfData$1;->this$0:Lcom/razorpay/OtpElfData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    const-string v0, "OTPElf on latest version: "

    .line 28
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 29
    const-string p1, "No version received"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/razorpay/BaseUtils;->getVersionFromJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/razorpay/OtpElfData$1;->this$0:Lcom/razorpay/OtpElfData;

    iget-object v1, v1, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/razorpay/BaseUtils;->getLocalVersion(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    const-string v0, "Updating OTPElf"

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->OTPELF_UPDATE_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 39
    iget-object v0, p0, Lcom/razorpay/OtpElfData$1;->this$0:Lcom/razorpay/OtpElfData;

    invoke-static {v0, p1}, Lcom/razorpay/OtpElfData;->access$000(Lcom/razorpay/OtpElfData;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1"

    const-string v1, "Could not extract version from server json"

    invoke-static {p1, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
