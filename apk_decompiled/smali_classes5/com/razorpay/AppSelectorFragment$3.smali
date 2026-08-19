.class Lcom/razorpay/AppSelectorFragment$3;
.super Ljava/lang/Object;
.source "AppSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/AppSelectorFragment;


# direct methods
.method constructor <init>(Lcom/razorpay/AppSelectorFragment;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment$3;->this$0:Lcom/razorpay/AppSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/razorpay/AppSelectorFragment$3;->this$0:Lcom/razorpay/AppSelectorFragment;

    invoke-virtual {p1}, Lcom/razorpay/AppSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
