.class synthetic Lcom/razorpay/Lumberjack$3;
.super Ljava/lang/Object;
.source "Lumberjack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/Lumberjack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$razorpay$NetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 283
    invoke-static {}, Lcom/razorpay/NetworkType;->values()[Lcom/razorpay/NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/razorpay/Lumberjack$3;->$SwitchMap$com$razorpay$NetworkType:[I

    :try_start_0
    sget-object v1, Lcom/razorpay/NetworkType;->WIFI:Lcom/razorpay/NetworkType;

    invoke-virtual {v1}, Lcom/razorpay/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/razorpay/Lumberjack$3;->$SwitchMap$com$razorpay$NetworkType:[I

    sget-object v1, Lcom/razorpay/NetworkType;->CELLULAR:Lcom/razorpay/NetworkType;

    invoke-virtual {v1}, Lcom/razorpay/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/razorpay/Lumberjack$3;->$SwitchMap$com$razorpay$NetworkType:[I

    sget-object v1, Lcom/razorpay/NetworkType;->BLUETOOTH:Lcom/razorpay/NetworkType;

    invoke-virtual {v1}, Lcom/razorpay/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
