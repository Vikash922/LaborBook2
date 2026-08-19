.class public final Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "AppLockActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/AppLockActivity;->setupBiometricPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1",
        "Landroidx/biometric/BiometricPrompt$AuthenticationCallback;",
        "onAuthenticationError",
        "",
        "errorCode",
        "",
        "errString",
        "",
        "onAuthenticationSucceeded",
        "result",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "onAuthenticationFailed",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/AppLockActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/AppLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    .line 38
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "errString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 41
    const-string v2, "binding"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    .line 46
    iget-object p1, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/AppLockActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/AppLockActivity;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/AppLockActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/AppLockActivity;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    iget-object p2, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    sget v0, Lcom/laborbook/keep/R$string;->unlock_app_to_continue:I

    invoke-virtual {p2, v0}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 61
    invoke-super {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 62
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    invoke-static {v0}, Lcom/laborbook/keep/screen/AppLockActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/AppLockActivity;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    iget-object v1, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    sget v2, Lcom/laborbook/keep/R$string;->authentication_failed:I

    invoke-virtual {v1, v2}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 53
    iget-object p1, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1$onAuthenticationSucceeded$1;

    iget-object v1, p0, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;->this$0:Lcom/laborbook/keep/screen/AppLockActivity;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1$onAuthenticationSucceeded$1;-><init>(Lcom/laborbook/keep/screen/AppLockActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
