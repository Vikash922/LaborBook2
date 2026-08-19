.class Lcom/razorpay/BaseUtils$1;
.super Ljava/lang/Object;
.source "BaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseUtils;->setWebViewSettings(Landroid/content/Context;Landroid/webkit/WebView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/razorpay/BaseUtils$1;->val$webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/razorpay/BaseUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/razorpay/BaseUtils$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/razorpay/BaseUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/razorpay/GpuInfoUtil;->extractGpuInfo(Landroid/webkit/WebView;Landroid/content/Context;)V

    return-void
.end method
