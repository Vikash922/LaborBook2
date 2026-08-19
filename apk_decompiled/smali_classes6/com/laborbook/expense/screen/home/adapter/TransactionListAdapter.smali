.class public final Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "TransactionListAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;,
        Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$Companion;,
        Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/laborbook/expense/model/TransactionItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionListAdapter.kt\ncom/laborbook/expense/screen/home/adapter/TransactionListAdapter\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,515:1\n56#2,6:516\n360#3,7:522\n1863#3,2:529\n360#3,7:531\n1863#3,2:538\n1863#3,2:540\n774#3:542\n865#3,2:543\n*S KotlinDebug\n*F\n+ 1 TransactionListAdapter.kt\ncom/laborbook/expense/screen/home/adapter/TransactionListAdapter\n*L\n38#1:516,6\n362#1:522,7\n397#1:529,2\n432#1:531,7\n474#1:538,2\n487#1:540,2\n495#1:542\n495#1:543,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u0000 G2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0003GHIB;\u0012\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\'\u001a\u0004\u0018\u00010\u00022\u0006\u0010(\u001a\u00020\u0008J\u0010\u0010)\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0008H\u0016J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0008H\u0016J\u0018\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0008H\u0016J\u0010\u00100\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0003H\u0016J \u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u00082\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020\t2\u0006\u00103\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u001cH\u0002J\u0010\u00109\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u0008H\u0002J\u001e\u0010;\u001a\u00020\t2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00192\u0008\u0008\u0002\u0010=\u001a\u00020&J\u0006\u0010>\u001a\u00020\tJ\u000e\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\rJ\u0016\u0010A\u001a\u00020\t2\u0006\u0010@\u001a\u00020\r2\u0006\u0010B\u001a\u00020!J\u0016\u0010C\u001a\u00020\t2\u0006\u0010@\u001a\u00020\r2\u0006\u0010B\u001a\u00020!J\u0016\u0010D\u001a\u00020&2\u0006\u0010@\u001a\u00020\r2\u0006\u0010B\u001a\u00020!J\u0006\u0010E\u001a\u00020\tJ\u0006\u0010F\u001a\u00020\tR \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/laborbook/expense/model/TransactionItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/KoinComponent;",
        "onExpenseClick",
        "Lkotlin/Function2;",
        "Lcom/laborbook/expense/model/Transaction;",
        "",
        "",
        "onLoadMore",
        "Lkotlin/Function0;",
        "adUnitId",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "Lkotlin/Lazy;",
        "adapterScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "originalTransactions",
        "",
        "nativeAds",
        "",
        "Lcom/google/android/gms/ads/nativead/NativeAd;",
        "adPositions",
        "",
        "adRetryCount",
        "adViewStartTime",
        "",
        "adLastVisibleTime",
        "mainHandler",
        "Landroid/os/Handler;",
        "shouldRefreshAds",
        "",
        "getExpenseItemAt",
        "position",
        "getItemViewType",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "onViewRecycled",
        "loadNativeAd",
        "listPosition",
        "transactionIndex",
        "context",
        "Landroid/content/Context;",
        "insertAdIntoList",
        "targetTransaction",
        "nativeAd",
        "findTransactionIndexBeforeAd",
        "adPosition",
        "submitOriginalList",
        "transactions",
        "forceRefreshAds",
        "refreshAds",
        "refreshAdByKey",
        "adKey",
        "recordAdVisible",
        "currentTime",
        "recordAdHidden",
        "shouldRefreshAdByViewTime",
        "releaseAds",
        "removeAllAds",
        "Companion",
        "ExpenseViewHolder",
        "AdViewHolder",
        "expense_release"
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
.field private static final AD_OFF_SCREEN_REFRESH_MS:J = 0x7530L

.field private static final AD_VIEW_TIME_REFRESH_MS:J = 0xea60L

.field public static final Companion:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$Companion;

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final VIEW_TYPE_AD:I = 0x1

.field public static final VIEW_TYPE_EXPENSE:I


# instance fields
.field private final adLastVisibleTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final adPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final adRetryCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final adUnitId:Ljava/lang/String;

.field private final adViewStartTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterScope:Lkotlinx/coroutines/CoroutineScope;

.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private final mainHandler:Landroid/os/Handler;

.field private final nativeAds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/nativead/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private final onExpenseClick:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/laborbook/expense/model/Transaction;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onLoadMore:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private originalTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private shouldRefreshAds:Z


# direct methods
.method public static synthetic $r8$lambda$bU_Yw4V5ZTsl-g_LV-xMtqV5JiY(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->loadNativeAd$lambda$0(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->Companion:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/laborbook/expense/model/Transaction;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "onExpenseClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLoadMore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/laborbook/expense/screen/home/adapter/ExpenseDiffCallback;

    invoke-direct {v0}, Lcom/laborbook/expense/screen/home/adapter/ExpenseDiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 33
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->onExpenseClick:Lkotlin/jvm/functions/Function2;

    .line 34
    iput-object p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->onLoadMore:Lkotlin/jvm/functions/Function0;

    .line 35
    iput-object p3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adUnitId:Ljava/lang/String;

    .line 38
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 518
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 521
    new-instance p3, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->dataStoreManager$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 39
    invoke-static {v0, p1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    .line 43
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAdPositions$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Ljava/util/Set;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getAdRetryCount$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDataStoreManager(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getNativeAds$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getShouldRefreshAds$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->shouldRefreshAds:Z

    return p0
.end method

.method public static final synthetic access$insertAdIntoList(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->insertAdIntoList(ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public static final synthetic access$loadNativeAd(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;IILandroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->loadNativeAd(IILandroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setShouldRefreshAds$p(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->shouldRefreshAds:Z

    return-void
.end method

.method private final findTransactionIndexBeforeAd(I)I
    .locals 4

    .line 379
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-lez p1, :cond_1

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 382
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laborbook/expense/model/TransactionItem;

    .line 383
    instance-of v3, v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v3, :cond_0

    .line 384
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    check-cast v2, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v2}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final insertAdIntoList(ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string p3, "getCurrentList(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 523
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 524
    check-cast v1, Lcom/laborbook/expense/model/TransactionItem;

    .line 363
    instance-of v3, v1, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v1}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt v0, p2, :cond_2

    .line 369
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/laborbook/expense/model/TransactionItem;

    .line 370
    instance-of p2, p2, Lcom/laborbook/expense/model/TransactionItem$AdItem;

    if-nez p2, :cond_2

    .line 371
    new-instance p2, Lcom/laborbook/expense/model/TransactionItem$AdItem;

    invoke-direct {p2, v0}, Lcom/laborbook/expense/model/TransactionItem$AdItem;-><init>(I)V

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private final loadNativeAd(IILandroid/content/Context;)V
    .locals 3

    .line 313
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adUnitId:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/Transaction;

    invoke-virtual {v0}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/Transaction;

    .line 318
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adUnitId:Ljava/lang/String;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    new-instance p3, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    .line 338
    new-instance p3, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$2;

    invoke-direct {p3, p0, p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$2;-><init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;)V

    check-cast p3, Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method private static final loadNativeAd$lambda$0(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetTransaction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;-><init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;ILcom/laborbook/expense/model/Transaction;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic submitOriginalList$default(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 391
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitOriginalList(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final getExpenseItemAt(I)Lcom/laborbook/expense/model/TransactionItem;
    .locals 1

    if-ltz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/model/TransactionItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 62
    invoke-virtual {p0, p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/model/TransactionItem;

    .line 63
    instance-of v0, p1, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    instance-of p1, p1, Lcom/laborbook/expense/model/TransactionItem$AdItem;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    return p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported item type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 32
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    const-string v0, "holder"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v8}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/TransactionItem;

    .line 85
    instance-of v1, v0, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    const/16 v2, 0x5f

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    .line 86
    move-object v1, v5

    check-cast v1, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;

    check-cast v0, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v0}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;->bind(Lcom/laborbook/expense/model/Transaction;I)V

    .line 89
    iget-object v1, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adUnitId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 90
    iget-object v1, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_6

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    .line 91
    rem-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-boolean v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->shouldRefreshAds:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 103
    :cond_1
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_6

    .line 117
    :goto_1
    iget-object v9, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$onBindViewHolder$1;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$onBindViewHolder$1;-><init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/coroutines/Continuation;)V

    move-object v12, v10

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 136
    :cond_4
    instance-of v0, v0, Lcom/laborbook/expense/model/TransactionItem$AdItem;

    if-eqz v0, :cond_6

    .line 137
    invoke-direct {p0, v8}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->findTransactionIndexBeforeAd(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/model/Transaction;

    invoke-virtual {v0}, Lcom/laborbook/expense/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 141
    move-object v2, v5

    check-cast v2, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;

    invoke-virtual {v2, v1, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_5
    move-object v0, v5

    check-cast v0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V

    .line 152
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_7

    .line 153
    iget-object v0, v7, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->onLoadMore:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/expense/databinding/ItemNativeAdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemNativeAdBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance p2, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;-><init>(Lcom/laborbook/expense/databinding/ItemNativeAdBinding;Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid view type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    new-instance p2, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/laborbook/expense/databinding/ItemExpenseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/ItemExpenseBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->onExpenseClick:Lkotlin/jvm/functions/Function2;

    .line 71
    invoke-direct {p2, p1, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;-><init>(Lcom/laborbook/expense/databinding/ItemExpenseBinding;Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 159
    instance-of v0, p1, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;->unregisterAd()V

    :cond_0
    return-void
.end method

.method public final recordAdHidden(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 452
    iget-object p3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final recordAdVisible(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 448
    iget-object p3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final refreshAdByKey(Ljava/lang/String;)V
    .locals 8

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    const-string v0, "_"

    const/4 v7, 0x0

    aput-object v0, v2, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 428
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 429
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 431
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getCurrentList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 532
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 533
    check-cast v4, Lcom/laborbook/expense/model/TransactionItem;

    .line 433
    instance-of v6, v4, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    if-eqz v6, :cond_2

    .line 434
    iget-object v6, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    check-cast v4, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;

    invoke-virtual {v4}, Lcom/laborbook/expense/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/expense/model/Transaction;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_2

    move v4, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v7

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_3
    if-eq v3, v5, :cond_5

    .line 438
    invoke-virtual {p0, v1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final refreshAds()V
    .locals 2

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->shouldRefreshAds:Z

    .line 412
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-virtual {p0, v0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final releaseAds()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 538
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 474
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 476
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 477
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 478
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 479
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final removeAllAds()V
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 540
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 487
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 489
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 490
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 491
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 492
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 495
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 543
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/laborbook/expense/model/TransactionItem;

    .line 495
    instance-of v3, v3, Lcom/laborbook/expense/model/TransactionItem$AdItem;

    if-nez v3, :cond_1

    .line 543
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 496
    invoke-virtual {p0, v1}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final shouldRefreshAdByViewTime(Ljava/lang/String;J)Z
    .locals 8

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 457
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    sub-long v2, p2, v2

    const-wide/32 v6, 0xea60

    cmp-long p1, v2, v6

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    return v0

    :cond_1
    sub-long/2addr p2, v4

    const-wide/16 v2, 0x7530

    cmp-long p1, p2, v2

    if-ltz p1, :cond_2

    cmp-long p1, p2, v6

    if-gez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final submitOriginalList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/expense/model/Transaction;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->originalTransactions:Ljava/util/List;

    .line 393
    iput-boolean p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->shouldRefreshAds:Z

    if-eqz p2, :cond_1

    .line 397
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 529
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 397
    invoke-virtual {p2}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 399
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 400
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 401
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 402
    iget-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method
