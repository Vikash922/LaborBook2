.class Lcom/razorpay/BaseRazorpay$1;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/RzpPluginRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->getAppsWhichSupportUpi(Landroid/content/Context;Lcom/razorpay/RzpUpiSupportedAppsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/razorpay/RzpUpiSupportedAppsCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pluginsMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcom/razorpay/RzpUpiSupportedAppsCallback;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 616
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$1;->val$pluginsMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$1;->val$callback:Lcom/razorpay/RzpUpiSupportedAppsCallback;

    iput-object p3, p0, Lcom/razorpay/BaseRazorpay$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 1

    .line 619
    invoke-static {}, Lcom/razorpay/BaseRazorpay;->access$008()I

    .line 620
    invoke-static {}, Lcom/razorpay/BaseRazorpay;->access$000()I

    move-result p1

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$1;->val$pluginsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 621
    invoke-static {p1}, Lcom/razorpay/BaseRazorpay;->access$002(I)I

    .line 622
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$1;->val$callback:Lcom/razorpay/RzpUpiSupportedAppsCallback;

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/razorpay/BaseRazorpay;->access$100(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/razorpay/RzpUpiSupportedAppsCallback;->onReceiveUpiSupportedApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method
