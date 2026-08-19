.class Lcom/razorpay/AppSelectorFragment$1;
.super Ljava/lang/Object;
.source "AppSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/AppSelectorFragment;
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

    .line 48
    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment$1;->this$0:Lcom/razorpay/AppSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/razorpay/AppSelectorFragment$1;->this$0:Lcom/razorpay/AppSelectorFragment;

    iget-object v0, v0, Lcom/razorpay/AppSelectorFragment;->onAppSelectedListener:Lcom/razorpay/OnAppSelectedListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/razorpay/AppSelectorFragment$1;->this$0:Lcom/razorpay/AppSelectorFragment;

    iget-object v0, v0, Lcom/razorpay/AppSelectorFragment;->onAppSelectedListener:Lcom/razorpay/OnAppSelectedListener;

    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment$1;->this$0:Lcom/razorpay/AppSelectorFragment;

    iget-object v1, v1, Lcom/razorpay/AppSelectorFragment;->urlData:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/razorpay/OnAppSelectedListener;->onUpiAppLaunched(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/razorpay/AppSelectorFragment$1;->this$0:Lcom/razorpay/AppSelectorFragment;

    iget-object v0, v0, Lcom/razorpay/AppSelectorFragment;->onAppSelectedListener:Lcom/razorpay/OnAppSelectedListener;

    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment$1;->this$0:Lcom/razorpay/AppSelectorFragment;

    iget-object v1, v1, Lcom/razorpay/AppSelectorFragment;->urlData:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/razorpay/OnAppSelectedListener;->openUpiApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
