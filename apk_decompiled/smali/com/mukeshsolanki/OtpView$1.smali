.class Lcom/mukeshsolanki/OtpView$1;
.super Ljava/lang/Object;
.source "OtpView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mukeshsolanki/OtpView;->setupAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mukeshsolanki/OtpView;


# direct methods
.method constructor <init>(Lcom/mukeshsolanki/OtpView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/mukeshsolanki/OtpView$1;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 157
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 159
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView$1;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-static {v1}, Lcom/mukeshsolanki/OtpView;->access$000(Lcom/mukeshsolanki/OtpView;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/mukeshsolanki/OtpView$1;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-virtual {v2}, Lcom/mukeshsolanki/OtpView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 160
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView$1;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-static {p1}, Lcom/mukeshsolanki/OtpView;->access$000(Lcom/mukeshsolanki/OtpView;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 161
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView$1;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-virtual {p1}, Lcom/mukeshsolanki/OtpView;->postInvalidate()V

    return-void
.end method
