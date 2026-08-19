.class public final Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ContactItemAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;,
        Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$Companion;,
        Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;,
        Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactItemAdapter.kt\ncom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,561:1\n56#2,6:562\n56#2,6:568\n360#3,7:574\n1863#3,2:581\n1872#3,3:583\n774#3:586\n865#3,2:587\n1557#3:589\n1628#3,3:590\n360#3,7:593\n774#3:600\n865#3,2:601\n1872#3,3:603\n1863#3,2:606\n1863#3,2:608\n774#3:610\n865#3,2:611\n*S KotlinDebug\n*F\n+ 1 ContactItemAdapter.kt\ncom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter\n*L\n34#1:562,6\n35#1:568,6\n331#1:574,7\n371#1:581,2\n380#1:583,3\n412#1:586\n412#1:587,2\n413#1:589\n413#1:590,3\n447#1:593,7\n491#1:600\n491#1:601,2\n497#1:603,3\n517#1:606,2\n530#1:608,2\n538#1:610\n538#1:611,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0004IJKLB\u0013\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u001fH\u0016J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0010\u00100\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0003H\u0016J \u00101\u001a\u00020.2\u0006\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020.2\u0006\u00103\u001a\u00020\u001f2\u0006\u00107\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u001bH\u0002J\u0010\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020\u001fH\u0002J\u001e\u0010;\u001a\u00020.2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0008\u0008\u0002\u0010=\u001a\u00020&J\u0006\u0010>\u001a\u00020.J\u000e\u0010?\u001a\u00020.2\u0006\u0010@\u001a\u00020\u0006J\u0016\u0010A\u001a\u00020.2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020!J\u0016\u0010C\u001a\u00020.2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020!J\u0016\u0010D\u001a\u00020&2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020!J\u000e\u0010E\u001a\u00020.2\u0006\u0010F\u001a\u00020\u0006J\u0006\u0010G\u001a\u00020.J\u0006\u0010H\u001a\u00020.R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001f0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/KoinComponent;",
        "adUnitId",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "getObserverUtil",
        "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "observerUtil$delegate",
        "Lkotlin/Lazy;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "adapterScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "originalList",
        "",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
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
        "getItemViewType",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "",
        "holder",
        "onViewRecycled",
        "loadNativeAd",
        "listPosition",
        "originalIndex",
        "context",
        "Landroid/content/Context;",
        "insertAdIntoList",
        "targetContact",
        "nativeAd",
        "findContactIndexBeforeAd",
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
        "ContactViewHolder",
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

.field public static final Companion:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$Companion;

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final VIEW_TYPE_AD:I = 0x1

.field private static final VIEW_TYPE_CONTACT:I


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

.field private final observerUtil$delegate:Lkotlin/Lazy;

.field private originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private shouldRefreshAds:Z


# direct methods
.method public static synthetic $r8$lambda$4fZL9HfM3ENWTNME4vwGjRg7Abs(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->loadNativeAd$lambda$0(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->Companion:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 32
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adUnitId:Ljava/lang/String;

    .line 34
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 564
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 567
    new-instance v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->observerUtil$delegate:Lkotlin/Lazy;

    .line 570
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$special$$inlined$inject$default$2;

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->dataStoreManager$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 36
    invoke-static {v2, p1, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    .line 39
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAdPositions$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Ljava/util/Set;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getAdRetryCount$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDataStoreManager(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getNativeAds$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getShouldRefreshAds$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAds:Z

    return p0
.end method

.method public static final synthetic access$insertAdIntoList(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->insertAdIntoList(ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public static final synthetic access$loadNativeAd(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;IILandroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->loadNativeAd(IILandroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setShouldRefreshAds$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAds:Z

    return-void
.end method

.method private final findContactIndexBeforeAd(I)I
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-lez p1, :cond_1

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 353
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 354
    instance-of v3, v2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    if-eqz v3, :cond_0

    .line 355
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    check-cast v2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-virtual {v2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

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

    .line 35
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->observerUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-object v0
.end method

.method private final insertAdIntoList(ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string p3, "getCurrentList(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 575
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

    .line 576
    check-cast v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 332
    instance-of v3, v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

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

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt v0, p2, :cond_3

    .line 339
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 340
    instance-of p2, p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    if-nez p2, :cond_3

    .line 341
    new-instance p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    invoke-direct {p2, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;-><init>(I)V

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private final loadNativeAd(IILandroid/content/Context;)V
    .locals 3

    .line 274
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adUnitId:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    .line 279
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adUnitId:Ljava/lang/String;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    new-instance p3, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;ILcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    .line 301
    new-instance p3, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$loadNativeAd$adLoader$2;

    invoke-direct {p3, p0, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$loadNativeAd$adLoader$2;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;)V

    check-cast p3, Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method private static final loadNativeAd$lambda$0(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetContact"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$loadNativeAd$adLoader$1$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$loadNativeAd$adLoader$1$1;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;ILcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic submitOriginalList$default(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 362
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitOriginalList(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/String;)V
    .locals 8

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 489
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    goto :goto_1

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 601
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    .line 491
    invoke-virtual {v5}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, p1, v1, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    :cond_3
    move-object p1, v3

    check-cast p1, Ljava/util/List;

    .line 494
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 497
    check-cast p1, Ljava/lang/Iterable;

    .line 604
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v3, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    .line 498
    new-instance v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-direct {v1, v3}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    add-int/lit8 v5, v1, 0x1

    .line 502
    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v1, v5, :cond_5

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    iget-object v3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v1, :cond_5

    .line 507
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 508
    new-instance v3, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    invoke-direct {v3, v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v4

    goto :goto_2

    .line 513
    :cond_6
    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 177
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 178
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 179
    :cond_0
    instance-of p1, p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    return p1

    .line 177
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 31
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 199
    instance-of v1, v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    const/16 v2, 0x5f

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    .line 200
    move-object v1, p1

    check-cast v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;

    check-cast v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->bind(Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    .line 203
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v9, v3, :cond_6

    add-int/lit8 v1, v9, 0x1

    const/4 v3, 0x3

    .line 204
    rem-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAds:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adUnitId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 231
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adapterScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;

    const/4 v11, 0x0

    move-object v5, v0

    move-object v6, p0

    move v8, p2

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 250
    :cond_4
    instance-of v0, v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    if-eqz v0, :cond_7

    .line 252
    invoke-direct {p0, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->findContactIndexBeforeAd(I)I

    move-result p2

    if-eq p2, v3, :cond_5

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 255
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 256
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;

    invoke-virtual {p1, v0, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V

    goto :goto_2

    .line 258
    :cond_5
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->bind(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    .line 198
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemNativeAdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemNativeAdBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adUnitId:Ljava/lang/String;

    invoke-direct {p2, p1, v0, p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;-><init>(Lcom/laborbook/keep/databinding/ItemNativeAdBinding;Ljava/lang/String;Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 193
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

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemContactListBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;

    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;-><init>(Lcom/laborbook/keep/databinding/ItemContactListBinding;Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 266
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;->unregisterAd()V

    :cond_0
    return-void
.end method

.method public final recordAdHidden(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 466
    iget-object p3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final recordAdVisible(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 462
    iget-object p3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final refreshAdByKey(Ljava/lang/String;)V
    .locals 8

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
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

    .line 442
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 443
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 444
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getCurrentList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 594
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

    .line 595
    check-cast v4, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 448
    instance-of v6, v4, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    check-cast v4, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

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

    .line 452
    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitList(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final refreshAds()V
    .locals 2

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAds:Z

    .line 427
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final releaseAds()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 606
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 517
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 519
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 520
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 521
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 522
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final removeAllAds()V
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 608
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 530
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 532
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 533
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 534
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 535
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 538
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 611
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

    check-cast v3, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    .line 538
    instance-of v3, v3, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    if-nez v3, :cond_1

    .line 611
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 539
    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final shouldRefreshAdByViewTime(Ljava/lang/String;J)Z
    .locals 8

    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 471
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    .line 364
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->originalList:Ljava/util/List;

    .line 365
    iput-boolean p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAds:Z

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 371
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 581
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 371
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 373
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 374
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 375
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 376
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 380
    :cond_1
    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    .line 584
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x5f

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v4, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    .line 381
    new-instance v7, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-direct {v7, v4}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    rem-int/lit8 v7, v6, 0x3

    if-nez v7, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_4

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v4, :cond_3

    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 392
    new-instance v5, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    invoke-direct {v5, v4}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 395
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    :cond_3
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    move v3, v6

    goto :goto_1

    .line 404
    :cond_5
    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitList(Ljava/util/List;)V

    .line 407
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->shouldRefreshAds:Z

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq p2, v0, :cond_9

    .line 412
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 587
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 412
    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    .line 587
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 588
    :cond_7
    check-cast v0, Ljava/util/List;

    .line 586
    check-cast v0, Ljava/lang/Iterable;

    .line 589
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 590
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 591
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    :cond_8
    check-cast p2, Ljava/util/List;

    .line 589
    check-cast p2, Ljava/lang/Iterable;

    .line 414
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 415
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adPositions:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 416
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->nativeAds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 417
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adRetryCount:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 418
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adViewStartTime:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 419
    iget-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->adLastVisibleTime:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_9
    return-void
.end method
