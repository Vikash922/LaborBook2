.class public final Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "OvertimeViewModel.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOvertimeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OvertimeViewModel.kt\ncom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,64:1\n56#2,6:65\n*S KotlinDebug\n*F\n+ 1 OvertimeViewModel.kt\ncom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel\n*L\n19#1:65,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J.\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0010J\u001e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/core/component/KoinComponent;",
        "repository",
        "Lcom/laborbook/keep/repository/KeepRepository;",
        "<init>",
        "(Lcom/laborbook/keep/repository/KeepRepository;)V",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "Lkotlin/Lazy;",
        "otResult",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Result;",
        "",
        "getOtResult",
        "()Landroidx/lifecycle/MutableLiveData;",
        "addOvertime",
        "",
        "userId",
        "date",
        "otMinutes",
        "",
        "otPerHour",
        "managerId",
        "deleteOvertime",
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
.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private final otResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/laborbook/keep/repository/KeepRepository;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/repository/KeepRepository;)V
    .locals 3

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->repository:Lcom/laborbook/keep/repository/KeepRepository;

    .line 19
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 67
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->dataStoreManager$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->otResult:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;)Lcom/laborbook/keep/repository/KeepRepository;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->repository:Lcom/laborbook/keep/repository/KeepRepository;

    return-object p0
.end method

.method private final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method


# virtual methods
.method public final addOvertime(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 12

    const-string v0, "userId"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managerId"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v11, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$addOvertime$1;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$addOvertime$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v1, v11

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p1, v0

    move-object p2, v4

    move-object p3, v5

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deleteOvertime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getOtResult()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->otResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
