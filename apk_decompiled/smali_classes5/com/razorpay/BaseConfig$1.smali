.class Lcom/razorpay/BaseConfig$1;
.super Ljava/lang/Object;
.source "BaseConfig.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseConfig;->fetchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fallbackUrl:Ljava/lang/String;

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/razorpay/BaseConfig$1;->val$fallbackUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/razorpay/BaseConfig$1;->val$headers:Ljava/util/Map;

    iput-object p3, p0, Lcom/razorpay/BaseConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 2

    .line 404
    invoke-static {p1}, Lcom/razorpay/BaseConfig;->access$000(Lcom/razorpay/ResponseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config fetch failed on primary URL (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "), falling back to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/razorpay/BaseConfig$1;->val$fallbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/razorpay/BaseConfig$1;->val$fallbackUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/razorpay/BaseConfig$1;->val$headers:Ljava/util/Map;

    new-instance v1, Lcom/razorpay/BaseConfig$1$1;

    invoke-direct {v1, p0}, Lcom/razorpay/BaseConfig$1$1;-><init>(Lcom/razorpay/BaseConfig$1;)V

    invoke-static {p1, v0, v1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/razorpay/BaseConfig$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/razorpay/BaseConfig;->access$100(Lcom/razorpay/ResponseObject;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
