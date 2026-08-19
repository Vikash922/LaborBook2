.class Lcom/razorpay/BaseRazorpay$6$1;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/RzpPluginRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay$6;->run(Lcom/razorpay/ResponseObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/razorpay/BaseRazorpay$6;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay$6;)V
    .locals 0

    .line 2351
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$6$1;->this$1:Lcom/razorpay/BaseRazorpay$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$6$1;->this$1:Lcom/razorpay/BaseRazorpay$6;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-interface {v0, p1}, Lcom/razorpay/GpayRegisteredListener;->isUserRegistered(Z)V

    return-void
.end method
