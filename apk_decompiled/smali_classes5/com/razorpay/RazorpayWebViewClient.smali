.class public Lcom/razorpay/RazorpayWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RazorpayWebViewClient.java"


# instance fields
.field private razorpay:Lcom/razorpay/BaseRazorpay;


# direct methods
.method public constructor <init>(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    return-void
.end method

.method private trackRendererCrash(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 8

    .line 134
    const-string v0, "unknown"

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1a

    const-string v4, "renderer_priority_at_exit"

    const-string v5, "did_crash"

    if-lt v2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_0
    const-string p2, "manufacturer"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string p2, "model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string p2, "os_version"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/razorpay/PerformanceUtil;->getPerformanceClass(Landroid/content/Context;)I

    move-result p2

    .line 153
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/PerformanceUtil;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v0

    .line 154
    const-string v2, "performance_class"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string p2, "is_low_end_device"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    if-eqz p2, :cond_1

    .line 161
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 162
    invoke-virtual {p2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 163
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    .line 164
    const-string p2, "total_ram_mb"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_1
    const-string p2, "cpu_cores"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string p2, "webview_type"

    const-string v0, "razorpay_webview"

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object p2, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_WEBVIEW_RENDERER_CRASHED:Lcom/razorpay/AnalyticsEvent;

    .line 176
    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    invoke-static {p2, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_1
    move-object v0, p1

    const-string v1, "webview_renderer_process"

    const-string v2, "render"

    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_WEBVIEW_RENDERER_CRASHED:Lcom/razorpay/AnalyticsEvent;

    .line 181
    invoke-virtual {p1}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebView renderer process gone"

    const-string v7, "not_available"

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 177
    invoke-static/range {v0 .. v7}, Lcom/razorpay/MonitoringUtil;->trackCriticalDependencyFailure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 188
    const-string p1, "Renderer crash analytics tracked"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error tracking renderer crash: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 26
    const-string v0, "onPageFinished"

    const-string v1, "RazorpayWebViewClient"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    iget-object v2, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v2, p1, p2}, Lcom/razorpay/BaseRazorpay;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 28
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

    .line 30
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 113
    const-string p3, "onPageStarted"

    const-string v0, "RazorpayWebViewClient"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v1

    invoke-static {v0, p3, v1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    iget-object v1, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v1, p1, p2}, Lcom/razorpay/BaseRazorpay;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v0, p3, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 92
    const-string p2, "onReceivedError"

    const-string p4, "RazorpayWebViewClient"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {p4, p2, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    move-object v0, p1

    const-string v1, "webview_render"

    const-string v2, "load"

    const-string v3, "custom_ui_webview_network_error"

    const-string v7, "not_available"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, p3

    .line 93
    invoke-static/range {v0 .. v7}, Lcom/razorpay/MonitoringUtil;->trackCriticalDependencyFailure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {p4, p2, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 125
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/razorpay/RazorpayWebViewClient;->trackRendererCrash(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error in onRenderProcessGone: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 50
    const-string v0, "shouldOverrideUrlLoading(WebView,WebResourceRequest)"

    const-string v1, "RazorpayWebViewClient"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/razorpay/BaseRazorpay;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/razorpay/BaseRazorpay;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 57
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p2

    invoke-virtual {p2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p2

    invoke-static {v1, v0, p2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 37
    const-string v0, "shouldOverrideUrlLoading(WebView,String)"

    const-string v1, "RazorpayWebViewClient"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    iget-object v2, p0, Lcom/razorpay/RazorpayWebViewClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v2, p1, p2}, Lcom/razorpay/BaseRazorpay;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 39
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p2

    invoke-virtual {p2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p2

    invoke-static {v1, v0, p2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
