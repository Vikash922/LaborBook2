.class public interface abstract Lcom/razorpay/RzpTurboExternalPlugin;
.super Ljava/lang/Object;
.source "RzpTurboExternalPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/RzpTurboExternalPlugin$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H&J\u0008\u0010\u0006\u001a\u00020\u0003H\'J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H&J,\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H&J,\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H&J,\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H&J@\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000fH&J$\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&J,\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&J>\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H&J6\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000fH&JT\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 H&J,\u0010!\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H&J,\u0010\"\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H&J\u0008\u0010#\u001a\u00020\u0003H&J@\u0010$\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010%\u001a\u00020 H&J$\u0010&\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&J\u0008\u0010\'\u001a\u00020\u0003H&J \u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020 H&J\u0018\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H&\u00a8\u0006."
    }
    d2 = {
        "Lcom/razorpay/RzpTurboExternalPlugin;",
        "",
        "changeUpiPin",
        "",
        "upiAccount",
        "callback",
        "clearSession",
        "delink",
        "upiAcOrLinkedBankAc",
        "destroy",
        "getBalance",
        "getLinkedBankAccounts",
        "activity",
        "Landroid/app/Activity;",
        "customerMobile",
        "",
        "customerId",
        "listener",
        "getLinkedTPVUpiAccounts",
        "orderId",
        "getLinkedUpiAccounts",
        "getLinkedUpiAccountsCheckout",
        "color",
        "initTurboSdk",
        "initialize",
        "sessionDelegate",
        "linkNewTPVUpiAccount",
        "tpvBankAccount",
        "linkNewUpiAccount",
        "linkNewUpiAccountCheckout",
        "amountInDisplayFormat",
        "triggeredByMerchant",
        "",
        "manageUpiAccounts",
        "manageUpiAccountsCustom",
        "onPermissionsRequestResult",
        "prefetchAndLinkNewUpiAccount",
        "linkAccountsWithUPIPinNotSet",
        "preloadUpiAccountsCheckout",
        "releaseActivityReference",
        "resetUpiPin",
        "card",
        "setFeeBearer",
        "feeBearer",
        "setUpiPinWithUI",
        "bankAccount",
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


# virtual methods
.method public abstract changeUpiPin(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract clearSession()V
    .annotation runtime Lkotlin/Deprecated;
        message = "This method is deprecated, as it is only intended for internal testing purposes."
    .end annotation
.end method

.method public abstract delink(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getBalance(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract getLinkedBankAccounts(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract getLinkedTPVUpiAccounts(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract getLinkedUpiAccounts(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract getLinkedUpiAccountsCheckout(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract initTurboSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initialize(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract linkNewTPVUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract linkNewUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract linkNewUpiAccountCheckout(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V
.end method

.method public abstract manageUpiAccounts(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract manageUpiAccountsCustom(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onPermissionsRequestResult()V
.end method

.method public abstract prefetchAndLinkNewUpiAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V
.end method

.method public abstract preloadUpiAccountsCheckout(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract releaseActivityReference()V
.end method

.method public abstract resetUpiPin(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setFeeBearer(Z)V
.end method

.method public abstract setUpiPinWithUI(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
