.class Lcom/razorpay/CoreConfig;
.super Lcom/razorpay/BaseConfig;
.source "CoreConfig.java"


# static fields
.field private static l$1_I$l$:Lcom/razorpay/BaseConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/razorpay/BaseConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/razorpay/BaseConfig;
    .locals 1

    .line 25
    sget-object v0, Lcom/razorpay/CoreConfig;->l$1_I$l$:Lcom/razorpay/BaseConfig;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/razorpay/CoreConfig;

    invoke-direct {v0}, Lcom/razorpay/CoreConfig;-><init>()V

    sput-object v0, Lcom/razorpay/CoreConfig;->l$1_I$l$:Lcom/razorpay/BaseConfig;

    .line 28
    :cond_0
    sget-object v0, Lcom/razorpay/CoreConfig;->l$1_I$l$:Lcom/razorpay/BaseConfig;

    return-object v0
.end method

.method public static setInstance(Lcom/razorpay/BaseConfig;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/razorpay/CoreConfig;->l$1_I$l$:Lcom/razorpay/BaseConfig;

    return-void
.end method
