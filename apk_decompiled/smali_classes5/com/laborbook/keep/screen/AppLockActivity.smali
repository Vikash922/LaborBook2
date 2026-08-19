.class public final Lcom/laborbook/keep/screen/AppLockActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppLockActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppLockActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLockActivity.kt\ncom/laborbook/keep/screen/AppLockActivity\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,114:1\n50#2,5:115\n*S KotlinDebug\n*F\n+ 1 AppLockActivity.kt\ncom/laborbook/keep/screen/AppLockActivity\n*L\n21#1:115,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0013H\u0002J\u0008\u0010\u0017\u001a\u00020\u0013H\u0002J\u0008\u0010\u0018\u001a\u00020\u0013H\u0002J\u0008\u0010\u0019\u001a\u00020\u0013H\u0014J\u0008\u0010\u001a\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/AppLockActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "binding",
        "Lcom/laborbook/keep/databinding/ActivityAppLockBinding;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "Lkotlin/Lazy;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "biometricPrompt",
        "Landroidx/biometric/BiometricPrompt;",
        "promptInfo",
        "Landroidx/biometric/BiometricPrompt$PromptInfo;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setupBiometricPrompt",
        "checkBiometricAvailability",
        "showBiometricPrompt",
        "onResume",
        "onBackPressed",
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
.field private binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

.field private biometricPrompt:Landroidx/biometric/BiometricPrompt;

.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private executor:Ljava/util/concurrent/Executor;

.field private promptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 21
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 117
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 119
    new-instance v2, Lcom/laborbook/keep/screen/AppLockActivity$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/AppLockActivity$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->dataStoreManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/laborbook/keep/screen/AppLockActivity;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    return-object p0
.end method

.method public static final synthetic access$getDataStoreManager(Lcom/laborbook/keep/screen/AppLockActivity;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/laborbook/keep/screen/AppLockActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method private final checkBiometricAvailability()V
    .locals 4

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x800f

    .line 75
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/16 v3, 0xb

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    .line 91
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    sget v1, Lcom/laborbook/keep/R$string;->biometric_unavailable:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    sget v1, Lcom/laborbook/keep/R$string;->no_biometric_hardware:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    sget v1, Lcom/laborbook/keep/R$string;->no_biometric_enrolled:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    iget-object v0, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    sget v1, Lcom/laborbook/keep/R$string;->biometric_unavailable:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v1, v0

    :goto_4
    iget-object v0, v1, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->tvLockMessage:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    sget v1, Lcom/laborbook/keep/R$string;->touch_sensor_to_unlock:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/laborbook/keep/screen/AppLockActivity;->showBiometricPrompt()V

    :goto_5
    return-void
.end method

.method private final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final setupBiometricPrompt()V
    .locals 4

    .line 36
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->executor:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/laborbook/keep/screen/AppLockActivity;->executor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    const-string v2, "executor"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 38
    :cond_0
    new-instance v3, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;

    invoke-direct {v3, p0}, Lcom/laborbook/keep/screen/AppLockActivity$setupBiometricPrompt$1;-><init>(Lcom/laborbook/keep/screen/AppLockActivity;)V

    check-cast v3, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 37
    invoke-direct {v0, v1, v2, v3}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    .line 66
    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    .line 67
    sget v1, Lcom/laborbook/keep/R$string;->app_lock:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 68
    sget v1, Lcom/laborbook/keep/R$string;->unlock_app_to_continue:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 69
    sget v1, Lcom/laborbook/keep/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/AppLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->promptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    return-void
.end method

.method private final showBiometricPrompt()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "biometricPrompt"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/laborbook/keep/screen/AppLockActivity;->promptInfo:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-nez v2, :cond_1

    const-string v2, "promptInfo"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/AppLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/AppLockActivity;->binding:Lcom/laborbook/keep/databinding/ActivityAppLockBinding;

    if-nez p1, :cond_0

    .line 29
    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ActivityAppLockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/AppLockActivity;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-direct {p0}, Lcom/laborbook/keep/screen/AppLockActivity;->setupBiometricPrompt()V

    .line 32
    invoke-direct {p0}, Lcom/laborbook/keep/screen/AppLockActivity;->checkBiometricAvailability()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/laborbook/keep/screen/AppLockActivity;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/laborbook/keep/screen/AppLockActivity;->checkBiometricAvailability()V

    :cond_0
    return-void
.end method
