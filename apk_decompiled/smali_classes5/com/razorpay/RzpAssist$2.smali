.class Lcom/razorpay/RzpAssist$2;
.super Ljava/lang/Object;
.source "RzpAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RzpAssist;->setUseWideViewPort(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/RzpAssist;

.field final synthetic val$shouldUse:Z


# direct methods
.method constructor <init>(Lcom/razorpay/RzpAssist;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/razorpay/RzpAssist$2;->this$0:Lcom/razorpay/RzpAssist;

    iput-boolean p2, p0, Lcom/razorpay/RzpAssist$2;->val$shouldUse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/razorpay/RzpAssist$2;->this$0:Lcom/razorpay/RzpAssist;

    invoke-static {v0}, Lcom/razorpay/RzpAssist;->access$000(Lcom/razorpay/RzpAssist;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/razorpay/RzpAssist$2;->val$shouldUse:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method
