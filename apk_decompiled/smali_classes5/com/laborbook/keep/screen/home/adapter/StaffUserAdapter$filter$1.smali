.class final Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StaffUserAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->filter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStaffUserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,614:1\n1872#2,3:615\n*S KotlinDebug\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1\n*L\n545#1:615,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.keep.screen.home.adapter.StaffUserAdapter$filter$1"
    f = "StaffUserAdapter.kt"
    i = {}
    l = {
        0x218
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $filteredStaffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;


# direct methods
.method public static synthetic $r8$lambda$roYMOvpgjy8_WHrv69hpLksaFbw(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;ZZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->invokeSuspend$lambda$1(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;ZZI)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->$filteredStaffList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;ZZI)V
    .locals 8

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 545
    check-cast p0, Ljava/lang/Iterable;

    .line 616
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/laborbook/keep/model/StaffUser;

    .line 547
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getOriginalList$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    if-lt v2, p4, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    .line 551
    :goto_1
    new-instance v7, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    invoke-direct {v7, v3, v6}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;-><init>(Lcom/laborbook/keep/model/StaffUser;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 553
    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_2

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getOriginalList$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_2

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getNativeAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v2, :cond_2

    .line 558
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 559
    new-instance v3, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v4

    goto :goto_0

    .line 564
    :cond_3
    invoke-virtual {p1, v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->$filteredStaffList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 535
    iget v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 536
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getDataStoreManager(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 537
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 538
    sget-object v0, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v0, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result v3

    .line 539
    sget-object v0, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v0, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->getFreeUserMaxStaffCount(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)I

    move-result v5

    .line 541
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getMainHandler$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->$filteredStaffList:Ljava/util/List;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    new-instance v6, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1$$ExternalSyntheticLambda0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$filter$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;ZZI)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
