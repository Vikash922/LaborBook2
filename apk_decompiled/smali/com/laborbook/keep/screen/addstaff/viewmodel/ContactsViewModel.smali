.class public final Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "ContactsViewModel.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactsViewModel.kt\ncom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,134:1\n44#2,4:135\n*S KotlinDebug\n*F\n+ 1 ContactsViewModel.kt\ncom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel\n*L\n32#1:135,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aJ$\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0083@\u00a2\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;",
        "Lorg/koin/core/component/KoinComponent;",
        "keepUseCase",
        "Lcom/laborbook/keep/usecase/KeepUseCase;",
        "<init>",
        "(Lcom/laborbook/keep/usecase/KeepUseCase;)V",
        "getKeepUseCase",
        "()Lcom/laborbook/keep/usecase/KeepUseCase;",
        "isNameEntered",
        "",
        "isMobileNumberEntered",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "loadContacts",
        "",
        "context",
        "Landroid/content/Context;",
        "shouldHardRefresh",
        "addStaffUser",
        "Lkotlinx/coroutines/Job;",
        "addStaffRequestBody",
        "Lcom/laborbook/keep/model/AddStaffUserRequestBody;",
        "attachNameTextWatcher",
        "textView",
        "Landroid/widget/TextView;",
        "attachMobileNumberTextWatcher",
        "fetchContacts",
        "",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
        "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "openNonContactStaff",
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

.field private isMobileNumberEntered:Z

.field private isNameEntered:Z

.field private final keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/usecase/KeepUseCase;)V
    .locals 1

    const-string v0, "keepUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    .line 135
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 32
    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic access$fetchContacts(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->fetchContacts(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMobileNumberEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->isMobileNumberEntered:Z

    return p0
.end method

.method public static final synthetic access$isNameEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->isNameEntered:Z

    return p0
.end method

.method public static final synthetic access$setMobileNumberEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->isMobileNumberEntered:Z

    return-void
.end method

.method public static final synthetic access$setNameEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->isNameEntered:Z

    return-void
.end method

.method private final fetchContacts(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/keep/usecase/KeepUseCase;->loadContacts(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "addStaffRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1;-><init>(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final attachMobileNumberTextWatcher(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;-><init>(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)V

    .line 123
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final attachNameTextWatcher(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachNameTextWatcher$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachNameTextWatcher$textWatcher$1;-><init>(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)V

    .line 101
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final getKeepUseCase()Lcom/laborbook/keep/usecase/KeepUseCase;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 27
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final loadContacts(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;->INSTANCE:Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 39
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$loadContacts$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$loadContacts$1;-><init>(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final openNonContactStaff()V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$OpenNonContactStaff;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$OpenNonContactStaff;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
