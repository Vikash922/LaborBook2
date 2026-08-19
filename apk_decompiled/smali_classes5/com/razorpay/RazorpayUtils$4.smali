.class Lcom/razorpay/RazorpayUtils$4;
.super Ljava/util/TimerTask;
.source "RazorpayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RazorpayUtils;->onTimer(Lcom/razorpay/RazorpayUtils$TimerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$timerCallback:Lcom/razorpay/RazorpayUtils$TimerCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/RazorpayUtils$TimerCallback;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/razorpay/RazorpayUtils$4;->val$timerCallback:Lcom/razorpay/RazorpayUtils$TimerCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$4;->val$timerCallback:Lcom/razorpay/RazorpayUtils$TimerCallback;

    invoke-interface {v0}, Lcom/razorpay/RazorpayUtils$TimerCallback;->onTimerFinished()V

    return-void
.end method
