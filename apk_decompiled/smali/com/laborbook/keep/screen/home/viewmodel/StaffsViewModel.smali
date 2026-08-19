.class public final Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "StaffsViewModel.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStaffsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaffsViewModel.kt\ncom/laborbook/keep/screen/home/viewmodel/StaffsViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,55:1\n44#2,4:56\n*S KotlinDebug\n*F\n+ 1 StaffsViewModel.kt\ncom/laborbook/keep/screen/home/viewmodel/StaffsViewModel\n*L\n22#1:56,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;",
        "Lorg/koin/core/component/KoinComponent;",
        "keepUseCase",
        "Lcom/laborbook/keep/usecase/KeepUseCase;",
        "<init>",
        "(Lcom/laborbook/keep/usecase/KeepUseCase;)V",
        "getKeepUseCase",
        "()Lcom/laborbook/keep/usecase/KeepUseCase;",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "cachedStaffList",
        "",
        "Lcom/laborbook/keep/model/StaffUser;",
        "getUsers",
        "Lkotlinx/coroutines/Job;",
        "id",
        "",
        "getStaffCount",
        "",
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
.field private cachedStaffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/usecase/KeepUseCase;)V
    .locals 1

    const-string v0, "keepUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    .line 56
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 22
    iput-object v0, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->cachedStaffList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCachedStaffList$p(Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;Ljava/util/List;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->cachedStaffList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getKeepUseCase()Lcom/laborbook/keep/usecase/KeepUseCase;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getStaffCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->cachedStaffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getUsers(Ljava/lang/String;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel$getUsers$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel$getUsers$1;-><init>(Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
