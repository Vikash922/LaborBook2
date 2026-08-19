.class public final Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "AddAdvanceViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/keep/screen/advance/uistate/AddAdvanceUiState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddAdvanceViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddAdvanceViewModel.kt\ncom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,64:1\n44#2,4:65\n*S KotlinDebug\n*F\n+ 1 AddAdvanceViewModel.kt\ncom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel\n*L\n20#1:65,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/keep/screen/advance/uistate/AddAdvanceUiState;",
        "keepUseCase",
        "Lcom/laborbook/keep/usecase/KeepUseCase;",
        "<init>",
        "(Lcom/laborbook/keep/usecase/KeepUseCase;)V",
        "getKeepUseCase",
        "()Lcom/laborbook/keep/usecase/KeepUseCase;",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "addAdvance",
        "Lkotlinx/coroutines/Job;",
        "id",
        "",
        "addAdvanceRequestBody",
        "Lcom/laborbook/keep/model/AddAdvanceRequestBody;",
        "attachAdvanceTextWatcher",
        "",
        "textView",
        "Landroid/widget/TextView;",
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
.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/usecase/KeepUseCase;)V
    .locals 1

    const-string v0, "keepUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    .line 65
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 20
    iput-object v0, p0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addAdvance(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addAdvanceRequestBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel$addAdvance$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel$addAdvance$1;-><init>(Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final attachAdvanceTextWatcher(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel$attachAdvanceTextWatcher$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel$attachAdvanceTextWatcher$textWatcher$1;-><init>(Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;)V

    .line 62
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final getKeepUseCase()Lcom/laborbook/keep/usecase/KeepUseCase;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    return-object v0
.end method
