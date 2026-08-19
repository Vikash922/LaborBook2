.class public final Lcom/razorpay/LifecycleContext$Companion;
.super Ljava/lang/Object;
.source "LifecycleContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/LifecycleContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/razorpay/LifecycleContext$Companion;",
        "",
        "()V",
        "redirectingToApp",
        "",
        "packageName",
        "redirectingUsingScheme",
        "scheme",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/razorpay/LifecycleContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirectingToApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 74
    sget-object v0, Lcom/razorpay/LifecycleContext;->REDIRECTING_TO_APP:Lcom/razorpay/LifecycleContext;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Lcom/razorpay/LifecycleContext;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final redirectingUsingScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 85
    sget-object v0, Lcom/razorpay/LifecycleContext;->REDIRECTING_USING_SCHEME:Lcom/razorpay/LifecycleContext;

    const-string v1, "scheme"

    invoke-virtual {v0, v1, p1}, Lcom/razorpay/LifecycleContext;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
