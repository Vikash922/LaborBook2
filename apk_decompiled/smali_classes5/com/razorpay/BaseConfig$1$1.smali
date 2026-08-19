.class Lcom/razorpay/BaseConfig$1$1;
.super Ljava/lang/Object;
.source "BaseConfig.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseConfig$1;->run(Lcom/razorpay/ResponseObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseConfig$1;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseConfig$1;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/razorpay/BaseConfig$1$1;->this$0:Lcom/razorpay/BaseConfig$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/razorpay/BaseConfig$1$1;->this$0:Lcom/razorpay/BaseConfig$1;

    iget-object v0, v0, Lcom/razorpay/BaseConfig$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/razorpay/BaseConfig;->access$100(Lcom/razorpay/ResponseObject;Landroid/content/Context;)V

    return-void
.end method
