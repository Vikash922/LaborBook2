.class Lcom/razorpay/BaseRazorpay$4$1;
.super Landroid/os/CountDownTimer;
.source "BaseRazorpay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay$4;->run(Lcom/razorpay/ResponseObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/razorpay/BaseRazorpay$4;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay$4;JJ)V
    .locals 0

    .line 2178
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$4$1;->this$1:Lcom/razorpay/BaseRazorpay$4;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 2186
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$4$1;->this$1:Lcom/razorpay/BaseRazorpay$4;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay$4;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {v0}, Lcom/razorpay/BaseRazorpay;->access$800(Lcom/razorpay/BaseRazorpay;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
