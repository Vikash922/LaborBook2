.class Lcom/razorpay/GpuInfoUtil$2;
.super Ljava/lang/Object;
.source "GpuInfoUtil.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/GpuInfoUtil;->extractGpuInfo(Landroid/webkit/WebView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/razorpay/GpuInfoUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/razorpay/GpuInfoUtil$2;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 118
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\"unknown\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/GpuInfoUtil;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GPU Vendor extracted: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/razorpay/GpuInfoUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 121
    invoke-static {p1}, Lcom/razorpay/GpuInfoUtil;->access$202(Z)Z

    .line 124
    iget-object p1, p0, Lcom/razorpay/GpuInfoUtil$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/razorpay/GpuInfoUtil;->access$300(Landroid/content/Context;)V

    .line 127
    invoke-static {}, Lcom/razorpay/Lumberjack;->updateGpuInfo()V

    :cond_0
    return-void
.end method
