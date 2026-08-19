.class public final Lcom/razorpay/UpiTurbo$$sS$$__s$S$;
.super Ljava/lang/Object;
.source "UpiTurbo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/UpiTurbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = ""
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0002\u0008\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0001J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0016\u001a\u00020\u00102\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0013\u001a\u00020\u0010R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/razorpay/UpiTurbo$InnerTpv;",
        "",
        "(Lcom/razorpay/UpiTurbo;)V",
        "customerId",
        "",
        "customerMobile",
        "orderId",
        "tpvBankAccount",
        "getCustomerId",
        "getCustomerId$customui_release",
        "linkNewUpiAccount",
        "",
        "callback",
        "linkNewUpiAccountWithUI",
        "listener",
        "setActivity",
        "Lcom/razorpay/TPVInterface;",
        "activity",
        "Landroid/app/Activity;",
        "tpvInterface",
        "setCustomerId",
        "setCustomerMobile",
        "setOrderId",
        "setTpvBankAccount",
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
.field private $sS$$__s$S$:Ljava/lang/String;

.field private _Ssss$:Ljava/lang/String;

.field private __S_s:Ljava/lang/Object;

.field private s$SSss:Ljava/lang/String;

.field final synthetic this$0:Lcom/razorpay/UpiTurbo;


# direct methods
.method public constructor <init>(Lcom/razorpay/UpiTurbo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCustomerId$customui_release()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->s$SSss:Ljava/lang/String;

    return-object v0
.end method

.method public final linkNewUpiAccount(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$getRazorpayTurbo$p(Lcom/razorpay/UpiTurbo;)Lcom/razorpay/RzpTurboExternalPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 311
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$getActivity$p(Lcom/razorpay/UpiTurbo;)Landroid/app/Activity;

    move-result-object v2

    .line 312
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->_Ssss$:Ljava/lang/String;

    const-string v3, ""

    if-nez v0, :cond_1

    move-object v0, v3

    .line 313
    :cond_1
    iget-object v4, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->$sS$$__s$S$:Ljava/lang/String;

    .line 314
    iget-object v5, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->__S_s:Ljava/lang/Object;

    .line 315
    iget-object v6, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->s$SSss:Ljava/lang/String;

    if-nez v6, :cond_2

    move-object v6, v3

    :cond_2
    move-object v3, v0

    move-object v7, p1

    .line 310
    invoke-interface/range {v1 .. v7}, Lcom/razorpay/RzpTurboExternalPlugin;->linkNewTPVUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 319
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final linkNewUpiAccountWithUI(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$getRazorpayTurbo$p(Lcom/razorpay/UpiTurbo;)Lcom/razorpay/RzpTurboExternalPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "razorpayTurbo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 326
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$getActivity$p(Lcom/razorpay/UpiTurbo;)Landroid/app/Activity;

    move-result-object v2

    .line 327
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->_Ssss$:Ljava/lang/String;

    const-string v3, ""

    if-nez v0, :cond_1

    move-object v0, v3

    .line 328
    :cond_1
    iget-object v4, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->$sS$$__s$S$:Ljava/lang/String;

    .line 329
    iget-object v5, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->__S_s:Ljava/lang/Object;

    .line 330
    iget-object v6, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->s$SSss:Ljava/lang/String;

    if-nez v6, :cond_2

    move-object v6, v3

    :cond_2
    move-object v3, v0

    move-object v7, p1

    .line 325
    invoke-interface/range {v1 .. v7}, Lcom/razorpay/RzpTurboExternalPlugin;->linkNewTPVUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 334
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setActivity(Landroid/app/Activity;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tpvInterface"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {p1}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCustomerId(Ljava/lang/String;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;
    .locals 1

    const-string v0, "tpvInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput-object p1, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->s$SSss:Ljava/lang/String;

    return-object p2

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCustomerMobile(Ljava/lang/String;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;
    .locals 1

    const-string v0, "tpvInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iput-object p1, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->_Ssss$:Ljava/lang/String;

    return-object p2

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOrderId(Ljava/lang/String;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;
    .locals 1

    const-string v0, "tpvInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iput-object p1, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->$sS$$__s$S$:Ljava/lang/String;

    return-object p2

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTpvBankAccount(Ljava/lang/Object;Lcom/razorpay/TPVInterface;)Lcom/razorpay/TPVInterface;
    .locals 1

    const-string v0, "tpvInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->this$0:Lcom/razorpay/UpiTurbo;

    invoke-static {v0}, Lcom/razorpay/UpiTurbo;->access$checkForPlugin(Lcom/razorpay/UpiTurbo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iput-object p1, p0, Lcom/razorpay/UpiTurbo$$sS$$__s$S$;->__S_s:Ljava/lang/Object;

    return-object p2

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Razorpay UPI-Turbo Wrapper Plugin not integrated. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
