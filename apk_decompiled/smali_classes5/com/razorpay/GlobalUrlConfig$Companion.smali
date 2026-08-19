.class public final Lcom/razorpay/GlobalUrlConfig$Companion;
.super Ljava/lang/Object;
.source "GlobalUrlConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/GlobalUrlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0008\u0010\t\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/razorpay/GlobalUrlConfig$Companion;",
        "",
        "()V",
        "globalUrlConfig",
        "Lcom/razorpay/GlobalUrlConfig;",
        "initiate",
        "",
        "urlConfig",
        "Lorg/json/JSONObject;",
        "instance",
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/razorpay/GlobalUrlConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initiate(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/razorpay/GlobalUrlConfig;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, v1, v0}, Lcom/razorpay/GlobalUrlConfig;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/razorpay/GlobalUrlConfig;

    invoke-direct {v1, p1, v0}, Lcom/razorpay/GlobalUrlConfig;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v1

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/razorpay/GlobalUrlConfig;->access$setGlobalUrlConfig$cp(Lcom/razorpay/GlobalUrlConfig;)V

    return-void
.end method

.method public final instance()Lcom/razorpay/GlobalUrlConfig;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->access$getGlobalUrlConfig$cp()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    const-string v1, "globalUrlConfig"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->access$getGlobalUrlConfig$cp()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    .line 16
    :cond_1
    new-instance v0, Lcom/razorpay/GlobalUrlConfig;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v3, v2}, Lcom/razorpay/GlobalUrlConfig;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/razorpay/GlobalUrlConfig;->access$setGlobalUrlConfig$cp(Lcom/razorpay/GlobalUrlConfig;)V

    .line 17
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->access$getGlobalUrlConfig$cp()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    return-object v2
.end method
