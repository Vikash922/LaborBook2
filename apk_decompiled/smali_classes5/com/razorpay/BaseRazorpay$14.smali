.class Lcom/razorpay/BaseRazorpay$14;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/RzpInternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 2746
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$14;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentError(ILjava/lang/String;)V
    .locals 1

    .line 2754
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$14;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v0, p1, p2}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .locals 1

    .line 2749
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$14;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v0, p1}, Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V

    return-void
.end method
