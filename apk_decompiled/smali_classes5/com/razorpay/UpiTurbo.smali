.class public final Lcom/razorpay/UpiTurbo;
.super Ljava/lang/Object;
.source "UpiTurbo.kt"

# interfaces
.implements Lcom/razorpay/TPVInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/UpiTurbo$$sS$$__s$S$;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008%\u0018\u00002\u00020\u0001:\u0001=B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u0008\u0010\u001b\u001a\u00020\rH\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0007J\u0016\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001f\u001a\u00020\u0017J\u0016\u0010 \u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\n\u0010!\u001a\u0004\u0018\u00010\tH\u0016J&\u0010\"\u001a\u00020\u00172\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J&\u0010$\u001a\u00020\u00172\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J\u000e\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0019J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0019H\u0016J&\u0010\'\u001a\u00020\u00172\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0019H\u0016J0\u0010(\u001a\u00020\u00172\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u00192\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ&\u0010)\u001a\u00020\u00172\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010*\u001a\u00020\u0017J\u0018\u0010+\u001a\u00020\u00172\u0008\u0008\u0002\u0010,\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0019J\u000e\u0010-\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010.\u001a\u00020\u0017J\u001e\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u000e\u00102\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0012\u00103\u001a\u00020\u00012\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u000e\u00104\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u0012\u00104\u001a\u00020\u00012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\u000e\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\rJ\u0012\u00107\u001a\u00020\u00012\u0008\u00108\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u00109\u001a\u00020\u00012\u0008\u0010:\u001a\u0004\u0018\u00010\u0019H\u0016J\u0016\u0010;\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0019R\u0011\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/razorpay/UpiTurbo;",
        "Lcom/razorpay/TPVInterface;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "TPV",
        "getTPV",
        "()Lcom/razorpay/TPVInterface;",
        "color",
        "",
        "customerId",
        "customerMobile",
        "isPluginIntegrated",
        "",
        "pluginCompatibilityResponse",
        "Lcom/razorpay/RzpPluginCompatibilityResponse;",
        "razorpayTurbo",
        "Lcom/razorpay/RzpTurboExternalPlugin;",
        "razorpayTurboPlugin",
        "Lcom/razorpay/RzpPlugin;",
        "tpv",
        "Lcom/razorpay/UpiTurbo$InnerTpv;",
        "changeUpiPin",
        "",
        "upiAccount",
        "",
        "callback",
        "checkForPlugin",
        "clearSession",
        "delink",
        "upiAcOrLinkedBankAc",
        "destroy",
        "getBalance",
        "getCustomerId",
        "getLinkedBankAccounts",
        "listener",
        "getLinkedUpiAccounts",
        "initialize",
        "sessionDelegate",
        "linkNewUpiAccount",
        "linkNewUpiAccountWithUI",
        "manageUpiAccounts",
        "onPermissionsRequestResult",
        "prefetchAndLinkUpiAccounts",
        "linkAccountsWithUPIPinNotSet",
        "prefetchAndLinkUpiAccountsWithUI",
        "releaseActivityReference",
        "resetUpiPin",
        "card",
        "setActivity",
        "setColor",
        "setCustomerId",
        "setCustomerMobile",
        "setFeeBearer",
        "feeBearer",
        "setOrderId",
        "orderId",
        "setTpvBankAccount",
        "tpvBankAccount",
        "setUpiPinWithUI",
        "bankAccount",
        "InnerTpv",
        "customui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final $S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

.field private final $sS$$__s$S$:Landroid/app/Activity;

.field private final $s_$$s$_ss:Lcom/razorpay/TPVInterface;

.field private _SS$$$$s:Ljava/lang/String;

.field private _Ssss$:Lcom/razorpay/RzpPlugin;

.field private __$$__s_$:Lcom/razorpay/RzpPluginCompatibilityResponse;

.field private __S_s:Z

.field private s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

.field private s$S_SsS$SS:Ljava/lang/String;

.field private sS$$$ss_:Ljava/lang/String;


# direct methods
.method private final $sS$$__s$S$()Z
    .locals 8

    .line 18
    iget-boolean v0, p0, Lcom/razorpay/UpiTurbo;->__S_s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 22
    const-string v2, "plugins"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    .line 382
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "it.key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "upi_turbo"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    const-class v0, Lcom/razorpay/RzpTurboExternalPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_9

    .line 24
    check-cast v0, Lcom/razorpay/RzpTurboExternalPlugin;

    iput-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    .line 26
    const-class v0, Lcom/razorpay/RzpPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_8

    .line 26
    check-cast v0, Lcom/razorpay/RzpPlugin;

    iput-object v0, p0, Lcom/razorpay/UpiTurbo;->_Ssss$:Lcom/razorpay/RzpPlugin;

    if-nez v0, :cond_4

    .line 28
    const-string v0, "razorpayTurboPlugin"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_4
    const/16 v2, 0x7925

    .line 31
    const-string v3, "3.10.13"

    .line 28
    const-string v4, "custom"

    invoke-interface {v0, v4, v2, v3}, Lcom/razorpay/RzpPlugin;->isCompatible(Ljava/lang/String;ILjava/lang/String;)Lcom/razorpay/RzpPluginCompatibilityResponse;

    move-result-object v0

    const-string v2, "razorpayTurboPlugin.isCo\u2026ON_NAME\n                )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/razorpay/UpiTurbo;->__$$__s_$:Lcom/razorpay/RzpPluginCompatibilityResponse;

    .line 33
    const-string v2, "pluginCompatibilityResponse"

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_5
    invoke-virtual {v0}, Lcom/razorpay/RzpPluginCompatibilityResponse;->isCompatible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/razorpay/UpiTurbo;->__$$__s_$:Lcom/razorpay/RzpPluginCompatibilityResponse;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v7, v1

    :goto_2
    invoke-virtual {v7}, Lcom/razorpay/RzpPluginCompatibilityResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_7
    iput-boolean v1, p0, Lcom/razorpay/UpiTurbo;->__S_s:Z

    return v1

    .line 26
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.razorpay.RzpPlugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.razorpay.RzpTurboExternalPlugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return v3
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    .line 12
    new-instance p1, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    invoke-direct {p1, p0}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;-><init>(Lcom/razorpay/UpiTurbo;)V

    iput-object p1, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    .line 16
    move-object p1, p0

    check-cast p1, Lcom/razorpay/TPVInterface;

    iput-object p1, p0, Lcom/razorpay/UpiTurbo;->$s_$$s$_ss:Lcom/razorpay/TPVInterface;

    return-void
.end method

.method public static final synthetic access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getActivity$p(Lcom/razorpay/UpiTurbo;)Landroid/app/Activity;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getRazorpayTurbo$p(Lcom/razorpay/UpiTurbo;)Lcom/razorpay/RzpTurboExternalPlugin;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    return-object p0
.end method

.method public static synthetic getLinkedBankAccounts$default(Lcom/razorpay/UpiTurbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 242
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/razorpay/UpiTurbo;->getLinkedBankAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic getLinkedUpiAccounts$default(Lcom/razorpay/UpiTurbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/razorpay/UpiTurbo;->getLinkedUpiAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic linkNewUpiAccount$default(Lcom/razorpay/UpiTurbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/razorpay/UpiTurbo;->linkNewUpiAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic linkNewUpiAccountWithUI$default(Lcom/razorpay/UpiTurbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    .line 84
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/razorpay/UpiTurbo;->linkNewUpiAccountWithUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic manageUpiAccounts$default(Lcom/razorpay/UpiTurbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/razorpay/UpiTurbo;->manageUpiAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic prefetchAndLinkUpiAccounts$default(Lcom/razorpay/UpiTurbo;ZLjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 216
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/razorpay/UpiTurbo;->prefetchAndLinkUpiAccounts(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final changeUpiPin(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "upiAccount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RzpTurboExternalPlugin;->changeUpiPin(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clearSession()V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "This method is deprecated, as it is only intended for internal testing purposes."
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/razorpay/RzpTurboExternalPlugin;->clearSession()V

    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final delink(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "upiAcOrLinkedBankAc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RzpTurboExternalPlugin;->delink(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final destroy()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/razorpay/RzpTurboExternalPlugin;->destroy()V

    .line 120
    sget-object v0, Lcom/razorpay/UpiTurboUtilities;->INSTANCE:Lcom/razorpay/UpiTurboUtilities;

    invoke-virtual {v0}, Lcom/razorpay/UpiTurboUtilities;->destroyUiData()V

    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBalance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "upiAccount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RzpTurboExternalPlugin;->getBalance(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    invoke-virtual {v0}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->getCustomerId$customui_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedBankAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/razorpay/RzpTurboExternalPlugin;->getLinkedBankAccounts(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLinkedUpiAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/razorpay/RzpTurboExternalPlugin;->getLinkedUpiAccounts(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTPV()Lcom/razorpay/TPVInterface;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$s_$$s$_ss:Lcom/razorpay/TPVInterface;

    return-object v0
.end method

.method public final initialize(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "sessionDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    iget-object v2, p0, Lcom/razorpay/UpiTurbo;->_SS$$$$s:Ljava/lang/String;

    iget-object v3, p0, Lcom/razorpay/UpiTurbo;->sS$$$ss_:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/razorpay/RzpTurboExternalPlugin;->initialize(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public linkNewUpiAccount(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    invoke-virtual {v0, p1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->linkNewUpiAccount(Ljava/lang/Object;)V

    return-void
.end method

.method public final linkNewUpiAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    iget-object v2, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/razorpay/RzpTurboExternalPlugin;->linkNewUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public linkNewUpiAccountWithUI(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    invoke-virtual {v0, p1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->linkNewUpiAccountWithUI(Ljava/lang/Object;)V

    return-void
.end method

.method public final linkNewUpiAccountWithUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    iget-object v2, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/razorpay/RzpTurboExternalPlugin;->linkNewUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final manageUpiAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/razorpay/RzpTurboExternalPlugin;->manageUpiAccountsCustom(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPermissionsRequestResult()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/razorpay/RzpTurboExternalPlugin;->onPermissionsRequestResult()V

    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final prefetchAndLinkUpiAccounts(ZLjava/lang/Object;)V
    .locals 8

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 222
    iget-object v2, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    .line 223
    iget-object v3, p0, Lcom/razorpay/UpiTurbo;->_SS$$$$s:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/razorpay/UpiTurbo;->sS$$$ss_:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, p2

    move v7, p1

    .line 221
    invoke-interface/range {v1 .. v7}, Lcom/razorpay/RzpTurboExternalPlugin;->prefetchAndLinkNewUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final prefetchAndLinkUpiAccountsWithUI(Ljava/lang/Object;)V
    .locals 11

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 205
    :goto_0
    iget-object v3, p0, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$:Landroid/app/Activity;

    .line 206
    iget-object v4, p0, Lcom/razorpay/UpiTurbo;->_SS$$$$s:Ljava/lang/String;

    .line 207
    iget-object v5, p0, Lcom/razorpay/UpiTurbo;->sS$$$ss_:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$S_SsS$SS:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "color"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    .line 204
    invoke-static/range {v2 .. v10}, Lcom/razorpay/RzpTurboExternalPlugin$DefaultImpls;->prefetchAndLinkNewUpiAccount$default(Lcom/razorpay/RzpTurboExternalPlugin;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 212
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final releaseActivityReference()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 128
    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/razorpay/RzpTurboExternalPlugin;->releaseActivityReference()V

    .line 130
    :cond_1
    sget-object v0, Lcom/razorpay/UpiTurboUtilities;->INSTANCE:Lcom/razorpay/UpiTurboUtilities;

    invoke-virtual {v0}, Lcom/razorpay/UpiTurboUtilities;->releaseUiActivityReference()V

    return-void
.end method

.method public final resetUpiPin(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upiAccount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/razorpay/RzpTurboExternalPlugin;->resetUpiPin(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/razorpay/TPVInterface;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    move-object v1, p0

    check-cast v1, Lcom/razorpay/TPVInterface;

    invoke-virtual {v0, p1, v1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->setActivity(Landroid/app/Activity;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;

    move-result-object p1

    return-object p1
.end method

.method public final setColor(Ljava/lang/String;)Lcom/razorpay/UpiTurbo;
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iput-object p1, p0, Lcom/razorpay/UpiTurbo;->s$S_SsS$SS:Ljava/lang/String;

    return-object p0

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomerId(Ljava/lang/String;)Lcom/razorpay/TPVInterface;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    move-object v1, p0

    check-cast v1, Lcom/razorpay/TPVInterface;

    invoke-virtual {v0, p1, v1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->setCustomerId(Ljava/lang/String;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;

    move-result-object p1

    return-object p1
.end method

.method public final setCustomerId(Ljava/lang/String;)Lcom/razorpay/UpiTurbo;
    .locals 1

    const-string v0, "customerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iput-object p1, p0, Lcom/razorpay/UpiTurbo;->sS$$$ss_:Ljava/lang/String;

    return-object p0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomerMobile(Ljava/lang/String;)Lcom/razorpay/TPVInterface;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    move-object v1, p0

    check-cast v1, Lcom/razorpay/TPVInterface;

    invoke-virtual {v0, p1, v1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->setCustomerMobile(Ljava/lang/String;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;

    move-result-object p1

    return-object p1
.end method

.method public final setCustomerMobile(Ljava/lang/String;)Lcom/razorpay/UpiTurbo;
    .locals 1

    const-string v0, "customerMobile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/razorpay/UpiTurbo;->_SS$$$$s:Ljava/lang/String;

    return-object p0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFeeBearer(Z)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/razorpay/RzpTurboExternalPlugin;->setFeeBearer(Z)V

    return-void

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/razorpay/TPVInterface;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    move-object v1, p0

    check-cast v1, Lcom/razorpay/TPVInterface;

    invoke-virtual {v0, p1, v1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->setOrderId(Ljava/lang/String;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;

    move-result-object p1

    return-object p1
.end method

.method public setTpvBankAccount(Ljava/lang/Object;)Lcom/razorpay/TPVInterface;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->$S$_ss_:Lcom/razorpay/UpiTurbo$$sS$$__s$S$;

    move-object v1, p0

    check-cast v1, Lcom/razorpay/TPVInterface;

    invoke-virtual {v0, p1, v1}, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->setTpvBankAccount(Ljava/lang/Object;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;

    move-result-object p1

    return-object p1
.end method

.method public final setUpiPinWithUI(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "bankAccount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/razorpay/UpiTurbo;->$sS$$__s$S$()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/razorpay/UpiTurbo;->s$SSss:Lcom/razorpay/RzpTurboExternalPlugin;

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/razorpay/RzpTurboExternalPlugin;->setUpiPinWithUI(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 238
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
