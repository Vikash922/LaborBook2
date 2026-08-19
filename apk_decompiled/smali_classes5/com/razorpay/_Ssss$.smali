.class public abstract Lcom/razorpay/_Ssss$;
.super Lcom/razorpay/BaseRazorpay;
.source "OtpelfBaseRazorpay.java"


# instance fields
.field private $sS$$__s$S$:Lcom/razorpay/RzpAssist;

.field isRzpAssistEnabled:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/razorpay/BaseRazorpay;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/razorpay/BaseRazorpay;-><init>(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    return-void
.end method


# virtual methods
.method protected final finish()V
    .locals 4

    .line 71
    const-string v0, "finish"

    const-string v1, "OtpelfBaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v2, p0, Lcom/razorpay/_Ssss$;->$sS$$__s$S$:Lcom/razorpay/RzpAssist;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2}, Lcom/razorpay/RzpAssist;->reset()V

    .line 74
    iget-object v2, p0, Lcom/razorpay/_Ssss$;->$sS$$__s$S$:Lcom/razorpay/RzpAssist;

    invoke-virtual {v2}, Lcom/razorpay/RzpAssist;->paymentFlowEnd()V

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/razorpay/BaseRazorpay;->finish()V

    .line 77
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 115
    const-string v0, "onRequestPermissionsResult"

    const-string v1, "OtpelfBaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    iget-boolean v2, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/razorpay/_Ssss$;->$sS$$__s$S$:Lcom/razorpay/RzpAssist;

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2, p1, p2, p3}, Lcom/razorpay/RzpAssist;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method setPaymentIdInAddon(Ljava/lang/String;)V
    .locals 3

    .line 102
    const-string v0, "setPaymentIdInAddon"

    const-string v1, "OtpelfBaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    iget-boolean v2, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/razorpay/_Ssss$;->$sS$$__s$S$:Lcom/razorpay/RzpAssist;

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2, p1}, Lcom/razorpay/RzpAssist;->setPaymentId(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected setUpAddon(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method trackBackPress()V
    .locals 5

    .line 86
    const-string v0, "trackBackPress"

    const-string v1, "OtpelfBaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-boolean v3, p0, Lcom/razorpay/_Ssss$;->isRzpAssistEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/razorpay/_Ssss$;->$sS$$__s$S$:Lcom/razorpay/RzpAssist;

    if-eqz v3, :cond_0

    .line 89
    const-string v4, "current_loading_url"

    invoke-virtual {v3}, Lcom/razorpay/RzpAssist;->getCurrentLoadingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "last_loaded_url"

    iget-object v4, p0, Lcom/razorpay/_Ssss$;->$sS$$__s$S$:Lcom/razorpay/RzpAssist;

    invoke-virtual {v4}, Lcom/razorpay/RzpAssist;->getLastLoadedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    sget-object v3, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_BACK_PRESSED_SOFT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 93
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
