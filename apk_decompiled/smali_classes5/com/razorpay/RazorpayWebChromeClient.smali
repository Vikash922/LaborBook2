.class public Lcom/razorpay/RazorpayWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "RazorpayWebChromeClient.java"


# instance fields
.field private razorpay:Lcom/razorpay/BaseRazorpay;


# direct methods
.method public constructor <init>(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/razorpay/RazorpayWebChromeClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/razorpay/RazorpayWebChromeClient;->razorpay:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v0, p1, p2}, Lcom/razorpay/BaseRazorpay;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
