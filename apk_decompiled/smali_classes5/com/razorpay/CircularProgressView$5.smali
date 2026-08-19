.class Lcom/razorpay/CircularProgressView$5;
.super Ljava/lang/Object;
.source "CircularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/CircularProgressView;->l$1_I$l$(F)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/CircularProgressView;


# direct methods
.method constructor <init>(Lcom/razorpay/CircularProgressView;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/razorpay/CircularProgressView$5;->this$0:Lcom/razorpay/CircularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/razorpay/CircularProgressView$5;->this$0:Lcom/razorpay/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/razorpay/CircularProgressView;->access$202(Lcom/razorpay/CircularProgressView;F)F

    .line 380
    iget-object p1, p0, Lcom/razorpay/CircularProgressView$5;->this$0:Lcom/razorpay/CircularProgressView;

    invoke-virtual {p1}, Lcom/razorpay/CircularProgressView;->invalidate()V

    return-void
.end method
