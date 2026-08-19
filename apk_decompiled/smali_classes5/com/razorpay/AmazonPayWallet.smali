.class public final Lcom/razorpay/AmazonPayWallet;
.super Ljava/lang/Object;
.source "AmazonPayWallet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/AmazonPayWallet$$sS$$__s$S$;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0008H\u0002J(\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0008J&\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$J&\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$J\u001e\u0010%\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0001J\u001e\u0010(\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/razorpay/AmazonPayWallet;",
        "",
        "()V",
        "razorpayAmazonpayWalletExternalPlugin",
        "Lcom/razorpay/RazorpayAmazonpayExternalPlugin;",
        "razorpayAmazonpayWalletRzpPlugin",
        "Lcom/razorpay/RzpPlugin;",
        "getPaymentMetadata",
        "",
        "activity",
        "Landroid/app/Activity;",
        "initiate",
        "",
        "context",
        "Landroid/content/Context;",
        "className",
        "apiKey",
        "isAmazonDomainUrl",
        "",
        "url",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "payload",
        "Lorg/json/JSONObject;",
        "setDataForPolling",
        "payment_id",
        "shouldOverrideUrlLoading",
        "webview",
        "Landroid/webkit/WebView;",
        "resourceRequest",
        "Landroid/webkit/WebResourceRequest;",
        "internalCallback",
        "Lcom/razorpay/RzpInternalCallback;",
        "startAuthorization",
        "customerId",
        "authCodeCallback",
        "startTransaction",
        "paymentUrl",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/razorpay/AmazonPayWallet$$sS$$__s$S$;

.field public static final LAUNCH_CODE_AMAZON_AUTH:I = 0x26aa

.field public static final LAUNCH_CODE_AMAZON_REDIRECT:I = 0x26ab


# instance fields
.field private $sS$$__s$S$:Lcom/razorpay/RzpPlugin;

.field private s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;


# direct methods
.method private final $sS$$__s$S$(Ljava/lang/String;)Z
    .locals 8

    .line 102
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getAmazonDomainUrlList()Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    const-string v1, "domains"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v5

    goto :goto_1

    .line 138
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "domain"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v6, v1, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 104
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "amazon.in"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "amazonpay.amazon.in"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_5
    :goto_1
    return v2
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/razorpay/AmazonPayWallet$$sS$$__s$S$;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/razorpay/AmazonPayWallet$$sS$$__s$S$;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/razorpay/AmazonPayWallet;->Companion:Lcom/razorpay/AmazonPayWallet$$sS$$__s$S$;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPaymentMetadata(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayAmazonpayWalletExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->getPaymentMetadata(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final initiate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-class v0, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v3, v2, [Ljava/lang/Class;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 55
    check-cast v0, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    iput-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    .line 57
    const-class v0, Lcom/razorpay/RzpPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_1

    new-array v0, v2, [Ljava/lang/Class;

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    if-eqz p2, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_3

    .line 57
    check-cast p2, Lcom/razorpay/RzpPlugin;

    iput-object p2, p0, Lcom/razorpay/AmazonPayWallet;->$sS$$__s$S$:Lcom/razorpay/RzpPlugin;

    .line 60
    iget-object p2, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez p2, :cond_2

    const-string p2, "razorpayAmazonpayWalletExternalPlugin"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, p2

    :goto_2
    invoke-interface {v1, p1, p3}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.razorpay.RzpPlugin"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.razorpay.RazorpayAmazonpayExternalPlugin"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onActivityResult(IILandroid/content/Intent;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayAmazonpayWalletExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->onActivityResult(IILandroid/content/Intent;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final setDataForPolling(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayAmazonpayWalletExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->setDataForPolling(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)Z
    .locals 3

    const-string v0, "webview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    const/4 v1, 0x0

    const-string v2, "razorpayAmazonpayWalletExternalPlugin"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    .line 121
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceRequest.url.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/razorpay/AmazonPayWallet;->$sS$$__s$S$(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, p3, p4}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->startTransaction(Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)Z
    .locals 3

    const-string v0, "webview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    const/4 v1, 0x0

    const-string v2, "razorpayAmazonpayWalletExternalPlugin"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 112
    invoke-direct {p0, p2}, Lcom/razorpay/AmazonPayWallet;->$sS$$__s$S$(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1, p2, p3, p4}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->startTransaction(Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final startAuthorization(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authCodeCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayAmazonpayWalletExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p2, p1, p3}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->startAuthorization(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method public final startTransaction(Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V
    .locals 1

    const-string v0, "paymentUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/razorpay/AmazonPayWallet;->s$SSss:Lcom/razorpay/RazorpayAmazonpayExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayAmazonpayWalletExternalPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/razorpay/RazorpayAmazonpayExternalPlugin;->startTransaction(Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V

    return-void
.end method
