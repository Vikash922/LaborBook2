.class public final Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "StaffUserAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;,
        Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$Companion;,
        Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$ItemDiffCallback;,
        Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStaffUserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,614:1\n56#2,6:615\n360#3,7:621\n1863#3,2:628\n360#3,7:630\n774#3:637\n865#3,2:638\n1863#3,2:640\n1863#3,2:642\n774#3:644\n865#3,2:645\n*S KotlinDebug\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter\n*L\n51#1:615,6\n359#1:621,7\n399#1:628,2\n487#1:630,7\n531#1:637\n531#1:638,2\n570#1:640,2\n583#1:642,2\n591#1:644\n591#1:645,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0004IJKLB+\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u0018H\u0016J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0018H\u0016J\u0018\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0018H\u0016J\u0010\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0003H\u0016J \u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00182\u0006\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00182\u0006\u00107\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u0014H\u0002J\u0010\u00109\u001a\u00020\u00182\u0006\u0010:\u001a\u00020\u0018H\u0002J\u001e\u0010;\u001a\u00020\u00072\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010=\u001a\u00020\u001fJ\u0006\u0010>\u001a\u00020\u0007J\u000e\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\tJ\u0016\u0010A\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u001aJ\u0016\u0010C\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u001aJ\u0016\u0010D\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u001aJ\u000e\u0010E\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\tJ\u0006\u0010G\u001a\u00020\u0007J\u0006\u0010H\u001a\u00020\u0007R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008\"\u0010#R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/KoinComponent;",
        "onNavigate",
        "Lkotlin/Function0;",
        "",
        "adUnitId",
        "",
        "onLockedStaffClick",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "getOnNavigate",
        "()Lkotlin/jvm/functions/Function0;",
        "originalList",
        "",
        "Lcom/laborbook/keep/model/StaffUser;",
        "nativeAds",
        "",
        "Lcom/google/android/gms/ads/nativead/NativeAd;",
        "adPositions",
        "",
        "adRetryCount",
        "",
        "adViewStartTime",
        "",
        "adLastVisibleTime",
        "mainHandler",
        "Landroid/os/Handler;",
        "shouldRefreshAds",
        "",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "Lkotlin/Lazy;",
        "adapterScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getItemViewType",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "onViewRecycled",
        "loadNativeAd",
        "listPosition",
        "originalIndex",
        "context",
        "Landroid/content/Context;",
        "insertAdIntoList",
        "targetStaff",
        "nativeAd",
        "findStaffIndexBeforeAd",
        "adPosition",
        "submitOriginalList",
        "list",
        "forceRefreshAds",
        "refreshAds",
        "refreshAdByKey",
        "adKey",
        "recordAdVisible",
        "currentTime",
        "recordAdHidden",
        "shouldRefreshAdByViewTime",
        "filter",
        "query",
        "releaseAds",
        "removeAllAds",
        "Companion",
        "StaffViewHolder",
        "AdViewHolder",
        "ItemDiffCallback",
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


# static fields
.field private static final AD_OFF_SCREEN_REFRESH_MS:J = 0x7530L

.field private static final AD_VIEW_TIME_REFRESH_MS:J = 0xea60L

.field public static final Companion:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$Companion;

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final VIEW_TYPE_AD:I = 0x1

.field private static final VIEW_TYPE_STAFF:I


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

.field private final onLockedStaffClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;"
        }
    .end annotation
.end field

.field private shouldRefreshAds:Z


# direct methods
.method public static synthetic $r8$lambda$E1p_W6NEAdv9lw0HUyYyiXKZ61Y(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->loadNativeAd$lambda$0(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->Companion:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onNavigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLockedStaffClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$ItemDiffCallback;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$ItemDiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 36
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->onNavigate:Lkotlin/jvm/functions/Function0;

    .line 37
    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adUnitId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->onLockedStaffClick:Lkotlin/jvm/functions/Function0;

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    .line 43
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->mainHandler:Landroid/os/Handler;

    .line 51
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 617
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 620
    new-instance p3, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->dataStoreManager$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 52
    invoke-static {v0, p1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getAdLastVisibleTime$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getAdRetryCount$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getAdViewStartTime$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDataStoreManager(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getNativeAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getOriginalList$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getShouldRefreshAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->shouldRefreshAds:Z

    return p0
.end method

.method public static final synthetic access$insertAdIntoList(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->insertAdIntoList(ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public static final synthetic access$loadNativeAd(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;IILandroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->loadNativeAd(IILandroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setShouldRefreshAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->shouldRefreshAds:Z

    return-void
.end method

.method private final findStaffIndexBeforeAd(I)I
    .locals 4

    .line 378
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-lez p1, :cond_1

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 381
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 382
    instance-of v3, v2, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    if-eqz v3, :cond_0

    .line 383
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    check-cast v2, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    invoke-virtual {v2}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->getStaffUser()Lcom/laborbook/keep/model/StaffUser;

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

    .line 51
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final insertAdIntoList(ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string p3, "getCurrentList(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 623
    check-cast v1, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 360
    instance-of v3, v1, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->getStaffUser()Lcom/laborbook/keep/model/StaffUser;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 366
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt v0, p2, :cond_3

    .line 367
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 368
    instance-of p2, p2, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    if-nez p2, :cond_3

    .line 369
    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    invoke-direct {p2, v0}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;-><init>(I)V

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 370
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private final loadNativeAd(IILandroid/content/Context;)V
    .locals 3

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/StaffUser;

    invoke-virtual {v0}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/StaffUser;

    .line 307
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adUnitId:Ljava/lang/String;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    new-instance p3, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    .line 329
    new-instance p3, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;

    invoke-direct {p3, p0, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$2;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;)V

    check-cast p3, Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method private static final loadNativeAd$lambda$0(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetStaff"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$1$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$loadNativeAd$adLoader$1$1;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic submitOriginalList$default(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 390
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitOriginalList(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/String;)V
    .locals 8

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 529
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    goto :goto_1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 638
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/laborbook/keep/model/StaffUser;

    .line 531
    invoke-virtual {v4}, Lcom/laborbook/keep/model/StaffUser;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/laborbook/keep/model/StaffUser;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, p1, v5, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    :cond_3
    move-object p1, v2

    check-cast p1, Ljava/util/List;

    .line 535
    :goto_1
    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 207
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 208
    instance-of v0, p1, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 209
    :cond_0
    instance-of p1, p1, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    return p1

    .line 207
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 35
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getOnNavigate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->onNavigate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 14

    move-object v7, p0

    move-object v5, p1

    move/from16 v3, p2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 229
    instance-of v1, v0, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    const/16 v2, 0x5f

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    .line 230
    move-object v1, v5

    check-cast v1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;

    check-cast v0, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->getStaffUser()Lcom/laborbook/keep/model/StaffUser;

    move-result-object v6

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->isLocked()Z

    move-result v8

    iget-object v9, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->onNavigate:Lkotlin/jvm/functions/Function0;

    iget-object v10, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->onLockedStaffClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v6, v8, v9, v10}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->bind(Lcom/laborbook/keep/model/StaffUser;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 233
    iget-object v1, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->getStaffUser()Lcom/laborbook/keep/model/StaffUser;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v4, :cond_6

    add-int/lit8 v1, v6, 0x1

    const/4 v4, 0x3

    .line 234
    rem-int/2addr v1, v4

    if-nez v1, :cond_6

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->getStaffUser()Lcom/laborbook/keep/model/StaffUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    iget-boolean v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->shouldRefreshAds:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 247
    :cond_1
    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    :cond_2
    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

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
    if-ge v0, v4, :cond_6

    .line 261
    :goto_1
    iget-object v8, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$onBindViewHolder$1;

    const/4 v10, 0x0

    move-object v0, v9

    move-object v1, p0

    move/from16 v3, p2

    move v4, v6

    move-object v5, p1

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$onBindViewHolder$1;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/coroutines/Continuation;)V

    move-object v11, v9

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 280
    :cond_4
    instance-of v0, v0, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    if-eqz v0, :cond_7

    .line 282
    invoke-direct {p0, v3}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->findStaffIndexBeforeAd(I)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/StaffUser;

    invoke-virtual {v0}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, v7, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 286
    move-object v2, v5

    check-cast v2, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;

    invoke-virtual {v2, v1, v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;->bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_5
    move-object v0, v5

    check-cast v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;->bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    .line 228
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adUnitId:Ljava/lang/String;

    invoke-direct {p2, p1, v0, p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;-><init>(Lcom/laborbook/keep/databinding/ItemNativeAdBinding;Ljava/lang/String;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown view type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemContactListBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;

    invoke-direct {p2, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;-><init>(Lcom/laborbook/keep/databinding/ItemContactListBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 296
    instance-of v0, p1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;

    if-eqz v0, :cond_0

    .line 299
    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;->unregisterAd()V

    :cond_0
    return-void
.end method

.method public final recordAdHidden(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 506
    iget-object p3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final recordAdVisible(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 502
    iget-object p3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final refreshAdByKey(Ljava/lang/String;)V
    .locals 8

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
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

    .line 482
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 483
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 484
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 486
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getCurrentList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 631
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

    .line 632
    check-cast v4, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 488
    instance-of v6, v4, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    check-cast v4, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;->getStaffUser()Lcom/laborbook/keep/model/StaffUser;

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

    .line 492
    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitList(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final refreshAds()V
    .locals 2

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->shouldRefreshAds:Z

    .line 467
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final releaseAds()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 640
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 570
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 572
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 573
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 574
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 575
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final removeAllAds()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 583
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 585
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 586
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 587
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 588
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 591
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 645
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

    check-cast v3, Lcom/laborbook/keep/screen/home/adapter/StaffListItem;

    .line 591
    instance-of v3, v3, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    if-nez v3, :cond_1

    .line 645
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 646
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 592
    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final shouldRefreshAdByViewTime(Ljava/lang/String;J)Z
    .locals 8

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 511
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

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
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v5, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    .line 392
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->originalList:Ljava/util/List;

    .line 393
    iput-boolean p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->shouldRefreshAds:Z

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 399
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 628
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 399
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 400
    :cond_0
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 401
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 402
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 403
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 404
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 408
    :cond_1
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
