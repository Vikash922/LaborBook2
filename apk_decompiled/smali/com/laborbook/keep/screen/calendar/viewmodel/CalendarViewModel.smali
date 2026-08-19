.class public final Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "CalendarViewModel.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalendarViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CalendarViewModel.kt\ncom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,201:1\n56#2,6:202\n44#3,4:208\n*S KotlinDebug\n*F\n+ 1 CalendarViewModel.kt\ncom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel\n*L\n27#1:202,6\n29#1:208,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#J\u0006\u0010&\u001a\u00020\'J\u000e\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000cJ\u0016\u0010*\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010+\u001a\u00020\u001aJ\u0016\u0010,\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010+\u001a\u00020\u001dJ\u001e\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020#2\u0006\u0010$\u001a\u00020/2\u0006\u0010%\u001a\u00020/J\u0006\u00100\u001a\u00020\u0018J\u0006\u00101\u001a\u00020\u0018J\u000e\u00102\u001a\u00020!2\u0006\u0010.\u001a\u00020#R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;",
        "Lorg/koin/core/component/KoinComponent;",
        "keepUseCase",
        "Lcom/laborbook/keep/usecase/KeepUseCase;",
        "<init>",
        "(Lcom/laborbook/keep/usecase/KeepUseCase;)V",
        "getKeepUseCase",
        "()Lcom/laborbook/keep/usecase/KeepUseCase;",
        "attendanceItems",
        "",
        "Lcom/laborbook/keep/model/AttendanceItem;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "Lkotlin/Lazy;",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "getAttendanceItems",
        "",
        "cleaAttendanceItems",
        "",
        "createMarkAttendanceRequestBody",
        "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createMarkSingleAttendanceRequestBody",
        "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;",
        "attendance",
        "(Lcom/laborbook/keep/model/AttendanceItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getStaffAttendances",
        "Lkotlinx/coroutines/Job;",
        "id",
        "",
        "month",
        "year",
        "isAttendancesMarked",
        "",
        "markAttendance",
        "attendanceItem",
        "markBulkAttendance",
        "markAttendanceBody",
        "markSingleAttendance",
        "fetchUserSalary",
        "userId",
        "",
        "startReportLoading",
        "stopReportLoading",
        "getCurrentSalary",
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
.field private final attendanceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/AttendanceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/usecase/KeepUseCase;)V
    .locals 3

    const-string v0, "keepUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    .line 27
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 204
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->dataStoreManager$delegate:Lkotlin/Lazy;

    .line 208
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 29
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method private final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method


# virtual methods
.method public final cleaAttendanceItems()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final createMarkAttendanceRequestBody(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;

    iget v1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    .line 44
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v2

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object p1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkAttendanceRequestBody$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 42
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;

    invoke-direct {v1, v0, p1}, Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public final createMarkSingleAttendanceRequestBody(Lcom/laborbook/keep/model/AttendanceItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/AttendanceItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;

    iget v1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
    iget v2, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/laborbook/keep/model/AttendanceItem;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p2

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p2, v2, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p1, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$createMarkSingleAttendanceRequestBody$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 47
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    new-instance v0, Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;

    invoke-direct {v0, p1, p2}, Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;-><init>(Lcom/laborbook/keep/model/AttendanceItem;Ljava/lang/String;)V

    return-object v0
.end method

.method public final fetchUserSalary(Ljava/lang/String;II)Lkotlinx/coroutines/Job;
    .locals 9

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$fetchUserSalary$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$fetchUserSalary$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final getAttendanceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/AttendanceItem;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    return-object v0
.end method

.method public final getCurrentSalary(Ljava/lang/String;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final getKeepUseCase()Lcom/laborbook/keep/usecase/KeepUseCase;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->keepUseCase:Lcom/laborbook/keep/usecase/KeepUseCase;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 24
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getStaffAttendances(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Job;
    .locals 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "month"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "year"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getStaffAttendances$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getStaffAttendances$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final isAttendancesMarked()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final markAttendance(Lcom/laborbook/keep/model/AttendanceItem;)V
    .locals 4

    const-string v0, "attendanceItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/laborbook/keep/model/AttendanceItem;

    .line 81
    invoke-virtual {v2}, Lcom/laborbook/keep/model/AttendanceItem;->getAttendanceDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceItem;->getAttendanceDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 80
    :goto_0
    check-cast v1, Lcom/laborbook/keep/model/AttendanceItem;

    if-nez v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->attendanceItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final markBulkAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "markAttendanceBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$markBulkAttendance$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$markBulkAttendance$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final markSingleAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "markAttendanceBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$markSingleAttendance$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$markSingleAttendance$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final startReportLoading()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopReportLoading()V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
