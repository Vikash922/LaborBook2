.class public final synthetic Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/example/swipebutton_library/SwipeButton;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/example/swipebutton_library/SwipeButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;->f$0:Lcom/example/swipebutton_library/SwipeButton;

    iput-object p2, p0, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;->f$0:Lcom/example/swipebutton_library/SwipeButton;

    iget-object v1, p0, Lcom/example/swipebutton_library/SwipeButton$$ExternalSyntheticLambda1;->f$1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, p1}, Lcom/example/swipebutton_library/SwipeButton;->lambda$deactivateButton$2$com-example-swipebutton_library-SwipeButton(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
