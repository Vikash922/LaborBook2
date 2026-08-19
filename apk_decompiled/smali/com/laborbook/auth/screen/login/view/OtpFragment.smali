.class public final Lcom/laborbook/auth/screen/login/view/OtpFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "OtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/auth/databinding/FragmentOtpBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOtpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtpFragment.kt\ncom/laborbook/auth/screen/login/view/OtpFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,274:1\n35#2,6:275\n254#3:281\n*S KotlinDebug\n*F\n+ 1 OtpFragment.kt\ncom/laborbook/auth/screen/login/view/OtpFragment\n*L\n47#1:275,6\n227#1:281\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001a2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u001d\u001a\u00020\u000eH\u0002J\u0008\u0010\u001e\u001a\u00020\u000eH\u0002J\u0008\u0010\u001f\u001a\u00020\u000eH\u0002J\u0018\u0010 \u001a\u00020\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0082@\u00a2\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020\u000eH\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006)"
    }
    d2 = {
        "Lcom/laborbook/auth/screen/login/view/OtpFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/auth/databinding/FragmentOtpBinding;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;",
        "getViewModel",
        "()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "mobileNumber",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "screenName",
        "getScreenName",
        "()Ljava/lang/String;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "setupViews",
        "registerOnClickListeners",
        "viewModelObserver",
        "storeUserDetails",
        "authResponse",
        "Lcom/laborbook/auth/model/request/AuthResponse;",
        "(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "changeButtonState",
        "enable",
        "",
        "initSMSRetriever",
        "Companion",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;


# instance fields
.field private mobileNumber:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4vC7pNeFRgbWA5-0WalhHVey9yU(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->viewModelObserver$lambda$7(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ErPZ6BDZHyfkJPi92nO1zYI2mwk(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->registerOnClickListeners$lambda$6$lambda$3(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NUTQ1nc4GzDz8mLvjJdTGATg0J8(Lcom/laborbook/auth/screen/login/view/OtpFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->registerOnClickListeners$lambda$6$lambda$4(Lcom/laborbook/auth/screen/login/view/OtpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cfs_eeRpoekzMZXy7KoDH8BWuA0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->initSMSRetriever$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hOUXTGq8mOSASzbtWZGB9P2I_4E(Lcom/laborbook/auth/screen/login/view/OtpFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->registerOnClickListeners$lambda$6$lambda$5(Lcom/laborbook/auth/screen/login/view/OtpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pE0tDHKZVWtI0c4evTFjXPraY00(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->initSMSRetriever$lambda$13(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wksEy5kWMtiWmFF7ZIR2xxYuvjU(Lcom/laborbook/auth/screen/login/view/OtpFragment;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->initSMSRetriever$lambda$11(Lcom/laborbook/auth/screen/login/view/OtpFragment;Ljava/lang/Void;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->Companion:Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 47
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 277
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 280
    new-instance v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/auth/screen/login/view/OtpFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMobileNumber$p(Lcom/laborbook/auth/screen/login/view/OtpFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->mobileNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/auth/screen/login/view/OtpFragment;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$storeUserDetails(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->storeUserDetails(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final changeButtonState(Z)V
    .locals 9

    .line 226
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_2

    .line 227
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpError:Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

    const-string v2, "tvOtpError"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpError:Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 230
    :cond_0
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    sget v2, Lcom/laborbook/auth/R$string;->verify_otp:I

    invoke-virtual {p0, v2}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 233
    iget-object p1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    invoke-virtual {p1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->performClick()Z

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    return-object v0
.end method

.method private final initSMSRetriever()V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "startSmsRetriever(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;)V

    new-instance v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 263
    new-instance v1, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final initSMSRetriever$lambda$11(Lcom/laborbook/auth/screen/login/view/OtpFragment;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    sget-object p1, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;->Companion:Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;

    new-instance v0, Lcom/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1;

    invoke-direct {v0, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;)V

    check-cast v0, Lcom/laborbook/auth/common/sms/SMSListener;

    invoke-virtual {p1, v0}, Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;->initSMSListener(Lcom/laborbook/auth/common/sms/SMSListener;)V

    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initSMSRetriever$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initSMSRetriever$lambda$13(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lcom/laborbook/auth/screen/login/view/OtpFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->Companion:Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/laborbook/auth/screen/login/view/OtpFragment;

    move-result-object p0

    return-object p0
.end method

.method private final registerOnClickListeners()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->toolbar:Lcom/laborbook/auth/databinding/ToolbarBinding;

    iget-object v1, v1, Lcom/laborbook/auth/databinding/ToolbarBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->ivResendOtp:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    new-instance v1, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$6$lambda$3(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final registerOnClickListeners$lambda$6$lambda$4(Lcom/laborbook/auth/screen/login/view/OtpFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$6$lambda$5(Lcom/laborbook/auth/screen/login/view/OtpFragment;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object p1

    .line 129
    new-instance v8, Lcom/laborbook/auth/model/request/AuthRequestBody;

    .line 131
    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->mobileNumber:Ljava/lang/String;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    .line 129
    const-string v1, "91"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/laborbook/auth/model/request/AuthRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    invoke-virtual {p1, v8}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->resendOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    .line 134
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->mobileNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "mobile_number"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "resend_otp"

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private final setupViews()V
    .locals 5

    .line 86
    sget v0, Lcom/laborbook/auth/R$string;->otp_has_been_sent_to:I

    invoke-virtual {p0, v0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +91 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Landroid/text/SpannableString;

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/laborbook/auth/R$color;->otp_phone_number:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 91
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 93
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpSentToNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->otpView:Lcom/mukeshsolanki/OtpView;

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->attachOtpTextWatcher(Landroid/widget/TextView;)V

    :cond_2
    return-void
.end method

.method private final storeUserDetails(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;

    iget v3, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;

    invoke-direct {v2, v0, v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 178
    iget v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, ""

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v3, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/amplitude/android/Amplitude;

    iget-object v2, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/events/Identify;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :pswitch_1
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_f

    :pswitch_2
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_e

    :pswitch_3
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d

    :pswitch_4
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_c

    :pswitch_5
    iget v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/boilerplate/network/NetworkHandler;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v6, [Lkotlin/Pair;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_6
    iget v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/NetworkHandler;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v8, [Lkotlin/Pair;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v12, [Lkotlin/Pair;

    iget-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move v6, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    goto/16 :goto_a

    :pswitch_7
    iget v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/NetworkHandler;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v13, [Lkotlin/Pair;

    iget-object v14, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_8
    iget v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/NetworkHandler;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v13, [Lkotlin/Pair;

    iget-object v14, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_a
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_b
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_d
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_e
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_f
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_10
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_17

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/auth/model/request/AuthResponse;->getUser()Lcom/laborbook/auth/model/request/User;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v11, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v11}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getACCESS_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/auth/model/request/AuthResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    move-object v12, v10

    :cond_1
    iput-object v0, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2

    return-object v3

    :cond_2
    move-object v11, v0

    .line 182
    :goto_1
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getUserId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    move-object v13, v10

    :cond_3
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    .line 183
    :cond_4
    :goto_2
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getUserName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    move-object v13, v10

    :cond_5
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    .line 184
    :cond_6
    :goto_3
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getUserType()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_7

    move-object v13, v10

    :cond_7
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    .line 185
    :cond_8
    :goto_4
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getMobileNumber()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    move-object v13, v10

    :cond_9
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const/4 v14, 0x5

    iput v14, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    .line 186
    :cond_a
    :goto_5
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getCOMPANY_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getCompanyId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v4, v10

    :cond_b
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const/4 v13, 0x6

    iput v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v4, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    :cond_c
    move-object v4, v11

    .line 187
    :goto_6
    invoke-virtual {v4}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v11, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v11}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_LOGGED_IN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v11

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    const/4 v13, 0x7

    iput v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    return-object v3

    .line 188
    :cond_d
    :goto_7
    sget-object v1, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v1}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v1

    .line 190
    new-array v11, v6, [Lkotlin/Pair;

    .line 192
    invoke-virtual {v4}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v6

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getCOMPANY_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v6, v12, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v12, "x-lb-companyID"

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    const/4 v13, 0x0

    iput v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    const/16 v14, 0x8

    iput v14, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_e

    return-object v3

    :cond_e
    move-object v14, v4

    move v4, v13

    move-object v13, v11

    move-object/from16 v16, v6

    move-object v6, v1

    move-object/from16 v1, v16

    .line 190
    :goto_8
    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v15, v11, v4

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v4, "Bearer "

    .line 197
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 198
    invoke-virtual {v14}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v11, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v11}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getACCESS_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v11

    invoke-virtual {v1, v11, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v14, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v12, "Authorization"

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$5:Ljava/lang/Object;

    iput v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    const/16 v11, 0x9

    iput v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f

    return-object v3

    :cond_f
    move-object v11, v13

    .line 178
    :goto_9
    check-cast v1, Ljava/lang/String;

    .line 197
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v11, v8

    .line 203
    invoke-virtual {v14}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v14, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v11, "x-lb-userID"

    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$5:Ljava/lang/Object;

    iput v7, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    const/16 v4, 0xa

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    return-object v3

    :cond_10
    move-object v4, v6

    move v6, v7

    move-object v8, v13

    move-object v12, v14

    .line 201
    :goto_a
    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v8, v6

    .line 207
    invoke-virtual {v12}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v8, "User-ID"

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->I$0:I

    const/16 v6, 0xb

    iput v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_11

    return-object v3

    :cond_11
    move-object v6, v13

    move-object v11, v6

    .line 205
    :goto_b
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v5

    .line 189
    invoke-static {v11}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 188
    invoke-virtual {v4, v1}, Lcom/boilerplate/network/NetworkHandler;->setAdditionalHeaders(Ljava/util/HashMap;)V

    .line 213
    :try_start_5
    new-instance v4, Lcom/amplitude/android/events/Identify;

    invoke-direct {v4}, Lcom/amplitude/android/events/Identify;-><init>()V

    .line 214
    const-string v5, "user_id"

    invoke-virtual {v12}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    const/16 v6, 0xc

    iput v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_12

    return-object v3

    :cond_12
    move-object v6, v4

    move-object v8, v12

    :goto_c
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 215
    const-string v5, "user_mobile_number"

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xd

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_13

    return-object v3

    :cond_13
    move-object v4, v6

    :goto_d
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 216
    const-string v5, "user_name"

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xe

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_14

    return-object v3

    :cond_14
    move-object v4, v6

    :goto_e
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 217
    const-string v5, "user_type"

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xf

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_15

    return-object v3

    :cond_15
    move-object v4, v6

    :goto_f
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 218
    sget-object v1, Lcom/laborbook/base/analytics/AmplitudeHolder;->INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

    invoke-virtual {v1}, Lcom/laborbook/base/analytics/AmplitudeHolder;->getInstance()Lcom/amplitude/android/Amplitude;

    move-result-object v1

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v4

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v5, 0x10

    iput v5, v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_16

    return-object v3

    :cond_16
    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    :goto_10
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/amplitude/android/Amplitude;->setUserId(Ljava/lang/String;)Lcom/amplitude/core/Amplitude;

    .line 219
    sget-object v1, Lcom/laborbook/base/analytics/AmplitudeHolder;->INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

    invoke-virtual {v1}, Lcom/laborbook/base/analytics/AmplitudeHolder;->getInstance()Lcom/amplitude/android/Amplitude;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/Amplitude;

    check-cast v2, Lcom/amplitude/core/events/Identify;

    invoke-static {v1, v2, v9, v7, v9}, Lcom/amplitude/core/Amplitude;->identify$default(Lcom/amplitude/core/Amplitude;Lcom/amplitude/core/events/Identify;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_11

    .line 220
    :catch_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 223
    :cond_17
    :goto_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final viewModelObserver()V
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;)V

    new-instance v3, Lcom/laborbook/auth/screen/login/view/OtpFragmentKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/auth/screen/login/view/OtpFragmentKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final viewModelObserver$lambda$7(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$Loading;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    :cond_0
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 148
    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 158
    :cond_2
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$Error;

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpError:Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/laborbook/auth/screen/login/uistate/UiState$Error;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpError:Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

    if-eqz p0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_5
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpEntered;

    if-eqz v0, :cond_6

    .line 165
    check-cast p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpEntered;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpEntered;->isValidOtp()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->changeButtonState(Z)V

    goto :goto_0

    .line 168
    :cond_6
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpSent;

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 170
    :cond_7
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpSent;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpSent;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 175
    :cond_8
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "otp"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/auth/databinding/FragmentOtpBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 65
    invoke-static {p1, p2, p3}, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    const-string v0, "MOBILE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->mobileNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->viewModelObserver()V

    .line 79
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->setupViews()V

    .line 80
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->registerOnClickListeners()V

    .line 81
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->initSMSRetriever()V

    return-void
.end method
