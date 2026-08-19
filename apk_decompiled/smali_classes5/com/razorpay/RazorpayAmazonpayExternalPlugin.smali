.class public interface abstract Lcom/razorpay/RazorpayAmazonpayExternalPlugin;
.super Ljava/lang/Object;
.source "RazorpayAmazonpayExternalPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H&J*\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003H&J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0003H&J \u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0001H&J \u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"H&\u00a8\u0006#"
    }
    d2 = {
        "Lcom/razorpay/RazorpayAmazonpayExternalPlugin;",
        "",
        "getPaymentMetadata",
        "",
        "activity",
        "Landroid/app/Activity;",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "apiKey",
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
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "url",
        "startAuthorization",
        "customerId",
        "amazonpayAuthCodeCallback",
        "startTransaction",
        "amazonpayUrl",
        "razorpayAmazonpayInternalCallback",
        "Lcom/razorpay/RzpInternalCallback;",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getPaymentMetadata(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract initialize(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;Lorg/json/JSONObject;)V
.end method

.method public abstract setDataForPolling(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
.end method

.method public abstract shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method

.method public abstract startAuthorization(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Object;)V
.end method

.method public abstract startTransaction(Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V
.end method
