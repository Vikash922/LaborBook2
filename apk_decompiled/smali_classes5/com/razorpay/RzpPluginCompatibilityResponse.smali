.class public Lcom/razorpay/RzpPluginCompatibilityResponse;
.super Ljava/lang/Object;
.source "RzpPluginCompatibilityResponse.java"


# instance fields
.field private __l1_:Ljava/lang/String;

.field private l$1_I$l$:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->l$1_I$l$:Z

    .line 18
    iput-object p2, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->__l1_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->__l1_:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isCompatible()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->l$1_I$l$:Z

    return v0
.end method
