.class Lcom/example/swipebutton_library/SwipeButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/swipebutton_library/SwipeButton;->activateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/swipebutton_library/SwipeButton;


# direct methods
.method constructor <init>(Lcom/example/swipebutton_library/SwipeButton;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$2;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 323
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 324
    iget-object p1, p0, Lcom/example/swipebutton_library/SwipeButton$2;->this$0:Lcom/example/swipebutton_library/SwipeButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/example/swipebutton_library/SwipeButton;->access$402(Lcom/example/swipebutton_library/SwipeButton;Z)Z

    return-void
.end method
