.class Lcom/razorpay/CircularProgressView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/CircularProgressView;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/CircularProgressView;

.field wasCancelled:Z


# direct methods
.method constructor <init>(Lcom/razorpay/CircularProgressView;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/razorpay/CircularProgressView$4;->this$0:Lcom/razorpay/CircularProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/razorpay/CircularProgressView$4;->wasCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/razorpay/CircularProgressView$4;->wasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 338
    iget-boolean p1, p0, Lcom/razorpay/CircularProgressView$4;->wasCancelled:Z

    if-nez p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/razorpay/CircularProgressView$4;->this$0:Lcom/razorpay/CircularProgressView;

    invoke-virtual {p1}, Lcom/razorpay/CircularProgressView;->resetAnimation()V

    :cond_0
    return-void
.end method
