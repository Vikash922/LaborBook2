.class final enum Lcom/razorpay/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/razorpay/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUETOOTH:Lcom/razorpay/NetworkType;

.field public static final enum CELLULAR:Lcom/razorpay/NetworkType;

.field public static final enum UNKNOWN:Lcom/razorpay/NetworkType;

.field public static final enum WIFI:Lcom/razorpay/NetworkType;

.field private static final synthetic l$1_I$l$:[Lcom/razorpay/NetworkType;


# instance fields
.field private mNetworkTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/razorpay/NetworkType;

    const/4 v1, 0x0

    const-string v2, "wifi"

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v1, v2}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/NetworkType;->WIFI:Lcom/razorpay/NetworkType;

    .line 11
    new-instance v0, Lcom/razorpay/NetworkType;

    const/4 v1, 0x1

    const-string v2, "cellular"

    const-string v3, "CELLULAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/NetworkType;->CELLULAR:Lcom/razorpay/NetworkType;

    .line 12
    new-instance v0, Lcom/razorpay/NetworkType;

    const/4 v1, 0x2

    const-string v2, "bluetooth"

    const-string v3, "BLUETOOTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/NetworkType;->BLUETOOTH:Lcom/razorpay/NetworkType;

    .line 13
    new-instance v0, Lcom/razorpay/NetworkType;

    const/4 v1, 0x3

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/NetworkType;->UNKNOWN:Lcom/razorpay/NetworkType;

    .line 9
    invoke-static {}, Lcom/razorpay/NetworkType;->l$1_I$l$()[Lcom/razorpay/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/razorpay/NetworkType;->l$1_I$l$:[Lcom/razorpay/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/razorpay/NetworkType;->mNetworkTypeName:Ljava/lang/String;

    return-void
.end method

.method private static synthetic l$1_I$l$()[Lcom/razorpay/NetworkType;
    .locals 4

    .line 9
    sget-object v0, Lcom/razorpay/NetworkType;->WIFI:Lcom/razorpay/NetworkType;

    sget-object v1, Lcom/razorpay/NetworkType;->CELLULAR:Lcom/razorpay/NetworkType;

    sget-object v2, Lcom/razorpay/NetworkType;->BLUETOOTH:Lcom/razorpay/NetworkType;

    sget-object v3, Lcom/razorpay/NetworkType;->UNKNOWN:Lcom/razorpay/NetworkType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/razorpay/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/razorpay/NetworkType;
    .locals 1

    .line 9
    const-class v0, Lcom/razorpay/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/razorpay/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/razorpay/NetworkType;
    .locals 1

    .line 9
    sget-object v0, Lcom/razorpay/NetworkType;->l$1_I$l$:[Lcom/razorpay/NetworkType;

    invoke-virtual {v0}, [Lcom/razorpay/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/razorpay/NetworkType;

    return-object v0
.end method


# virtual methods
.method getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/razorpay/NetworkType;->mNetworkTypeName:Ljava/lang/String;

    return-object v0
.end method
