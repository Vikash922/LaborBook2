.class public abstract Lcom/laborbook/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/laborbook/base/BaseFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,130:1\n50#2,5:131\n50#2,5:136\n50#2,5:141\n50#2,5:146\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/laborbook/base/BaseFragment\n*L\n25#1:131,5\n26#1:136,5\n27#1:141,5\n28#1:146,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J+\u0010,\u001a\u0004\u0018\u00018\u00002\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u000102H&\u00a2\u0006\u0002\u00103J&\u00104\u001a\u0004\u0018\u0001052\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u001a\u00106\u001a\u0002072\u0006\u00108\u001a\u0002052\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0008\u00109\u001a\u000207H\u0016J\u0008\u0010:\u001a\u000207H\u0016J7\u0010;\u001a\u0002072(\u0008\u0002\u0010<\u001a\"\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u00010?j\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u0001`=H\u0002\u00a2\u0006\u0002\u0010@J=\u0010;\u001a\u0002072\u0006\u0010A\u001a\u00020)2(\u0008\u0002\u0010<\u001a\"\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u00010?j\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u0001`=\u00a2\u0006\u0002\u0010BJ=\u0010C\u001a\u0002072\u0006\u0010A\u001a\u00020)2(\u0008\u0002\u0010<\u001a\"\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u00010?j\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u0001`=\u00a2\u0006\u0002\u0010BJ=\u0010D\u001a\u0002072\u0006\u0010A\u001a\u00020)2(\u0008\u0002\u0010<\u001a\"\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u00010?j\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020>\u0018\u0001`=\u00a2\u0006\u0002\u0010BJ\u0016\u0010E\u001a\u0002072\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020)J \u0010I\u001a\u0002072\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020)2\u0008\u0010J\u001a\u0004\u0018\u00010)R\u001e\u0010\u0006\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008 \u0010!R\u001b\u0010#\u001a\u00020$8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0018\u001a\u0004\u0008%\u0010&R\u0012\u0010(\u001a\u00020)X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006K"
    }
    d2 = {
        "Lcom/laborbook/base/BaseFragment;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "binding",
        "getBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "setBinding",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "Landroidx/viewbinding/ViewBinding;",
        "isRefresh",
        "",
        "()Z",
        "setRefresh",
        "(Z)V",
        "isFirstTime",
        "setFirstTime",
        "analytics",
        "Lcom/laborbook/base/analytics/Analytics;",
        "getAnalytics",
        "()Lcom/laborbook/base/analytics/Analytics;",
        "analytics$delegate",
        "Lkotlin/Lazy;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "fragmentNavigator",
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        "getFragmentNavigator",
        "()Lcom/laborbook/base/navigator/FragmentNavigator;",
        "fragmentNavigator$delegate",
        "moduleNavigator",
        "Lcom/laborbook/base/navigator/ModuleNavigator;",
        "getModuleNavigator",
        "()Lcom/laborbook/base/navigator/ModuleNavigator;",
        "moduleNavigator$delegate",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "",
        "view",
        "onResume",
        "onDestroyView",
        "triggerImpressionEvent",
        "hashMap",
        "Lkotlin/collections/HashMap;",
        "",
        "Ljava/util/HashMap;",
        "(Ljava/util/HashMap;)V",
        "eventName",
        "(Ljava/lang/String;Ljava/util/HashMap;)V",
        "recordClickEvent",
        "triggerSystemEvent",
        "openUrlInCustomTab",
        "context",
        "Landroid/content/Context;",
        "url",
        "openUrlInWebView",
        "title",
        "base_release"
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
.field private final analytics$delegate:Lkotlin/Lazy;

.field private binding:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field

.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private final fragmentNavigator$delegate:Lkotlin/Lazy;

.field private isFirstTime:Z

.field private isRefresh:Z

.field private final moduleNavigator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 133
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 135
    new-instance v2, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/laborbook/base/BaseFragment;->analytics$delegate:Lkotlin/Lazy;

    .line 138
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 140
    new-instance v2, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/laborbook/base/BaseFragment;->dataStoreManager$delegate:Lkotlin/Lazy;

    .line 143
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 145
    new-instance v2, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$3;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/laborbook/base/BaseFragment;->fragmentNavigator$delegate:Lkotlin/Lazy;

    .line 148
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 150
    new-instance v2, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$4;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/base/BaseFragment$special$$inlined$inject$default$4;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/laborbook/base/BaseFragment;->moduleNavigator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: recordClickEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final triggerImpressionEvent(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$1;-><init>(Lcom/laborbook/base/BaseFragment;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic triggerImpressionEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: triggerImpressionEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic triggerImpressionEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/laborbook/base/BaseFragment;->triggerImpressionEvent(Ljava/util/HashMap;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: triggerImpressionEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic triggerSystemEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: triggerSystemEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAnalytics()Lcom/laborbook/base/analytics/Analytics;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/laborbook/base/BaseFragment;->analytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/analytics/Analytics;

    return-object v0
.end method

.method public final getBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/laborbook/base/BaseFragment;->binding:Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/laborbook/base/BaseFragment;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method public final getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/laborbook/base/BaseFragment;->fragmentNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/navigator/FragmentNavigator;

    return-object v0
.end method

.method public final getModuleNavigator()Lcom/laborbook/base/navigator/ModuleNavigator;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/laborbook/base/BaseFragment;->moduleNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/navigator/ModuleNavigator;

    return-object v0
.end method

.method public abstract getScreenName()Ljava/lang/String;
.end method

.method public abstract getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            ")TVB;"
        }
    .end annotation
.end method

.method public final isFirstTime()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/laborbook/base/BaseFragment;->isFirstTime:Z

    return v0
.end method

.method public final isRefresh()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/laborbook/base/BaseFragment;->isRefresh:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/base/BaseFragment;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/laborbook/base/BaseFragment;->binding:Landroidx/viewbinding/ViewBinding;

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 44
    invoke-static {p0, p1, p2, p1}, Lcom/laborbook/base/BaseFragment;->triggerImpressionEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method public final openUrlInCustomTab(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/laborbook/base/WebViewActivity;->Companion:Lcom/laborbook/base/WebViewActivity$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/laborbook/base/WebViewActivity$Companion;->start$default(Lcom/laborbook/base/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final openUrlInWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/laborbook/base/WebViewActivity;->Companion:Lcom/laborbook/base/WebViewActivity$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/base/WebViewActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/base/BaseFragment$recordClickEvent$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/base/BaseFragment$recordClickEvent$1;-><init>(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final setBinding(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/laborbook/base/BaseFragment;->binding:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public final setFirstTime(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/laborbook/base/BaseFragment;->isFirstTime:Z

    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/laborbook/base/BaseFragment;->isRefresh:Z

    return-void
.end method

.method public final triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;-><init>(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/base/BaseFragment$triggerSystemEvent$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/base/BaseFragment$triggerSystemEvent$1;-><init>(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
