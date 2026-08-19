.class Lcom/razorpay/BaseRazorpay$11;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/NativeOtpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$nativeOtpCallback:Lcom/razorpay/NativeOtpCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/NativeOtpCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2648
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$11;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$11;->val$nativeOtpCallback:Lcom/razorpay/NativeOtpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 2

    .line 2651
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$11;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {v0, p1}, Lcom/razorpay/BaseRazorpay;->access$1200(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/ResponseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$11;->val$nativeOtpCallback:Lcom/razorpay/NativeOtpCallback;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/razorpay/NativeOtpCallback;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$11;->val$nativeOtpCallback:Lcom/razorpay/NativeOtpCallback;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/razorpay/NativeOtpCallback;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
