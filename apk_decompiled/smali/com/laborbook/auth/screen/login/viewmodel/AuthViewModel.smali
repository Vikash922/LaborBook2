.class public final Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "AuthViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/auth/screen/login/uistate/UiState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthViewModel.kt\ncom/laborbook/auth/screen/login/viewmodel/AuthViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,143:1\n44#2,4:144\n*S KotlinDebug\n*F\n+ 1 AuthViewModel.kt\ncom/laborbook/auth/screen/login/viewmodel/AuthViewModel\n*L\n23#1:144,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/auth/screen/login/uistate/UiState;",
        "authUseCase",
        "Lcom/laborbook/auth/usecase/AuthUseCase;",
        "<init>",
        "(Lcom/laborbook/auth/usecase/AuthUseCase;)V",
        "getAuthUseCase",
        "()Lcom/laborbook/auth/usecase/AuthUseCase;",
        "PHONE_NUMBER_REQUEST",
        "",
        "getPHONE_NUMBER_REQUEST",
        "()I",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "generateOtp",
        "Lkotlinx/coroutines/Job;",
        "authRequestBody",
        "Lcom/laborbook/auth/model/request/AuthRequestBody;",
        "resendOtp",
        "verifyOtp",
        "truecallerLogin",
        "truecallerRequestBody",
        "Lcom/laborbook/auth/model/request/TruecallerRequestBody;",
        "attachPhoneNumberTextWatcher",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "attachOtpTextWatcher",
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


# instance fields
.field private final PHONE_NUMBER_REQUEST:I

.field private final authUseCase:Lcom/laborbook/auth/usecase/AuthUseCase;

.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;


# direct methods
.method public constructor <init>(Lcom/laborbook/auth/usecase/AuthUseCase;)V
    .locals 1

    const-string v0, "authUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->authUseCase:Lcom/laborbook/auth/usecase/AuthUseCase;

    const/16 p1, 0xc

    .line 21
    iput p1, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->PHONE_NUMBER_REQUEST:I

    .line 144
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 23
    iput-object v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final attachOtpTextWatcher(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$attachOtpTextWatcher$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$attachOtpTextWatcher$textWatcher$1;-><init>(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;)V

    .line 141
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final attachPhoneNumberTextWatcher(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$attachPhoneNumberTextWatcher$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$attachPhoneNumberTextWatcher$textWatcher$1;-><init>(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;)V

    .line 123
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "authRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$generateOtp$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$generateOtp$1;-><init>(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final getAuthUseCase()Lcom/laborbook/auth/usecase/AuthUseCase;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->authUseCase:Lcom/laborbook/auth/usecase/AuthUseCase;

    return-object v0
.end method

.method public final getPHONE_NUMBER_REQUEST()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->PHONE_NUMBER_REQUEST:I

    return v0
.end method

.method public final resendOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "authRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$resendOtp$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$resendOtp$1;-><init>(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final truecallerLogin(Lcom/laborbook/auth/model/request/TruecallerRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "truecallerRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$truecallerLogin$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$truecallerLogin$1;-><init>(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final verifyOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "authRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$verifyOtp$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel$verifyOtp$1;-><init>(Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
