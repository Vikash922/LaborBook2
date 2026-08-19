.class public final Lcom/laborbook/base/WebViewActivity$onCreate$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "WebViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/base/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/laborbook/base/WebViewActivity$onCreate$2",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/base/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/base/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/base/WebViewActivity$onCreate$2;->this$0:Lcom/laborbook/base/WebViewActivity;

    const/4 p1, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/laborbook/base/WebViewActivity$onCreate$2;->this$0:Lcom/laborbook/base/WebViewActivity;

    invoke-static {v0}, Lcom/laborbook/base/WebViewActivity;->access$getBinding$p(Lcom/laborbook/base/WebViewActivity;)Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/laborbook/base/WebViewActivity$onCreate$2;->this$0:Lcom/laborbook/base/WebViewActivity;

    invoke-static {v0}, Lcom/laborbook/base/WebViewActivity;->access$getBinding$p(Lcom/laborbook/base/WebViewActivity;)Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/laborbook/base/WebViewActivity$onCreate$2;->this$0:Lcom/laborbook/base/WebViewActivity;

    invoke-virtual {v0}, Lcom/laborbook/base/WebViewActivity;->finish()V

    :goto_1
    return-void
.end method
