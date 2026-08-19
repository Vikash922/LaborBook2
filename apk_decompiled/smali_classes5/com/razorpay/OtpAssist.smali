.class public final Lcom/razorpay/OtpAssist;
.super Ljava/lang/Object;
.source "OtpAssist.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0006\u0010\u0019\u001a\u00020\u000eJ\u0006\u0010\u001a\u001a\u00020\u000eJ\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/razorpay/OtpAssist;",
        "",
        "()V",
        "SMS_CONSENT_REQUEST",
        "",
        "getSMS_CONSENT_REQUEST",
        "()I",
        "rzpEdgeExternalPlugin",
        "Lcom/razorpay/RzpEdgeExternalPlugin;",
        "checkAndInitializePlugin",
        "",
        "activity",
        "Landroid/app/Activity;",
        "checkForPlugin",
        "",
        "context",
        "Landroid/content/Context;",
        "initRazorpayOtpAssist",
        "apiKey",
        "",
        "onActivityResultReceived",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onPageFinished",
        "reset",
        "startSmsListener",
        "webView",
        "Landroid/webkit/WebView;",
        "otpListener",
        "customui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private $sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

.field private final s$SSss:I


# direct methods
.method private final $sS$$__s$S$(Landroid/content/Context;)V
    .locals 3

    .line 16
    invoke-static {p1}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/Map;

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.razorpay.plugin.edge"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-class v1, Lcom/razorpay/RzpEdgeExternalPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 18
    check-cast v0, Lcom/razorpay/RzpEdgeExternalPlugin;

    iput-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.razorpay.RzpEdgeExternalPlugin"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private final $sS$$__s$S$(Landroid/app/Activity;)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/razorpay/OtpAssist;->$sS$$__s$S$(Landroid/content/Context;)V

    .line 54
    iget-object p1, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3de

    .line 12
    iput v0, p0, Lcom/razorpay/OtpAssist;->s$SSss:I

    return-void
.end method


# virtual methods
.method public final getSMS_CONSENT_REQUEST()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/razorpay/OtpAssist;->s$SSss:I

    return v0
.end method

.method public final initRazorpayOtpAssist(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/razorpay/OtpAssist;->$sS$$__s$S$(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "rzpEdgeExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getLocalOrderId()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/razorpay/RzpEdgeExternalPlugin;->initEdge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onActivityResultReceived(IILandroid/content/Intent;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 45
    const-string v0, "rzpEdgeExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/razorpay/RzpEdgeExternalPlugin;->onActivityResultReceived(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 60
    const-string v0, "rzpEdgeExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/razorpay/RzpEdgeExternalPlugin;->onPageFinished()V

    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 66
    const-string v0, "rzpEdgeExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/razorpay/RzpEdgeExternalPlugin;->reset()V

    :cond_1
    return-void
.end method

.method public final startSmsListener(Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 39
    const-string v0, "rzpEdgeExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/razorpay/RzpEdgeExternalPlugin;->startSmsListener(Landroid/webkit/WebView;)V

    :cond_1
    return-void
.end method

.method public final startSmsListener(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "otpListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/razorpay/OtpAssist;->$sS$$__s$S$:Lcom/razorpay/RzpEdgeExternalPlugin;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 33
    const-string v0, "rzpEdgeExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/razorpay/RzpEdgeExternalPlugin;->startSmsListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
