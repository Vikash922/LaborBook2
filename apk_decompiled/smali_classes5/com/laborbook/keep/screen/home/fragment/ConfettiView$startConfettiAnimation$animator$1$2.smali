.class public final Lcom/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConfettiView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->startConfettiAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/ConfettiView;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/ConfettiView;

    .line 113
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/ConfettiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->access$setAnimating$p(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;Z)V

    .line 117
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/ConfettiView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->setVisibility(I)V

    return-void
.end method
