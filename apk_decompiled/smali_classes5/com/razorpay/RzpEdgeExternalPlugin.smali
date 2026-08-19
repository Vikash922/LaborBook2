.class public interface abstract Lcom/razorpay/RzpEdgeExternalPlugin;
.super Ljava/lang/Object;
.source "RzpEdgeExternalPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H&J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0003H&J\u0008\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0001H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/razorpay/RzpEdgeExternalPlugin;",
        "",
        "initEdge",
        "",
        "activity",
        "Landroid/app/Activity;",
        "apiKey",
        "",
        "sdkSessionId",
        "onActivityResultReceived",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onPageFinished",
        "reset",
        "startSmsListener",
        "webView",
        "Landroid/webkit/WebView;",
        "listener",
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
.method public abstract initEdge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onActivityResultReceived(IILandroid/content/Intent;)V
.end method

.method public abstract onPageFinished()V
.end method

.method public abstract reset()V
.end method

.method public abstract startSmsListener(Landroid/webkit/WebView;)V
.end method

.method public abstract startSmsListener(Ljava/lang/Object;)V
.end method
