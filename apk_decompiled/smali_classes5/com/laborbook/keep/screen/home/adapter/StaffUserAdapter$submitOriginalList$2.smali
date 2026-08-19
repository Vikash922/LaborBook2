.class final Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StaffUserAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitOriginalList(Ljava/util/List;Z)V
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
    value = "SMAP\nStaffUserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,614:1\n1872#2,3:615\n774#2:618\n865#2,2:619\n1557#2:621\n1628#2,3:622\n*S KotlinDebug\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2\n*L\n416#1:615,3\n450#1:618\n450#1:619,2\n451#1:621\n451#1:622,3\n*E\n"
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
    c = "com.laborbook.keep.screen.home.adapter.StaffUserAdapter$submitOriginalList$2"
    f = "StaffUserAdapter.kt"
    i = {}
    l = {
        0x199
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $previousList:Ljava/util/List;
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
.method public static synthetic $r8$lambda$kRjFxrPoYeyxhkk-eSgUHlruTA8(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;ZZI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->invokeSuspend$lambda$3(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;ZZI)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffUser;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$list:Ljava/util/List;

    iput-object p3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$items:Ljava/util/List;

    iput-object p4, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$previousList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;ZZI)V
    .locals 9

    .line 416
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 616
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x5f

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/laborbook/keep/model/StaffUser;

    if-eqz p4, :cond_1

    if-nez p5, :cond_1

    if-lt v2, p6, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v1

    .line 419
    :goto_1
    new-instance v8, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;

    invoke-direct {v8, v3, v7}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;-><init>(Lcom/laborbook/keep/model/StaffUser;Z)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    rem-int/lit8 v7, v6, 0x3

    if-nez v7, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v2, v7, :cond_3

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getNativeAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v3, :cond_2

    .line 429
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 430
    new-instance v4, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;

    invoke-direct {v4, v3}, Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;-><init>(I)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 433
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 435
    :cond_2
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move v2, v6

    goto :goto_0

    .line 442
    :cond_4
    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->submitList(Ljava/util/List;)V

    .line 445
    invoke-static {p1, v1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$setShouldRefreshAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Z)V

    .line 448
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-eq p2, p3, :cond_8

    .line 450
    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 618
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 619
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    add-int/lit8 p6, p5, 0x1

    .line 450
    rem-int/lit8 p6, p6, 0x3

    if-nez p6, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p6

    sub-int/2addr p6, v5

    if-ge p5, p6, :cond_5

    .line 619
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 620
    :cond_6
    check-cast p3, Ljava/util/List;

    .line 618
    check-cast p3, Ljava/lang/Iterable;

    .line 621
    new-instance p2, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 622
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 623
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 451
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/laborbook/keep/model/StaffUser;

    invoke-virtual {p4}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 623
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 624
    :cond_7
    check-cast p2, Ljava/util/List;

    .line 621
    check-cast p2, Ljava/lang/Iterable;

    .line 452
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 453
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Set;

    move-result-object p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 454
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getNativeAds$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 455
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdRetryCount$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 456
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdViewStartTime$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 457
    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getAdLastVisibleTime$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$list:Ljava/util/List;

    iget-object v3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$items:Ljava/util/List;

    iget-object v4, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$previousList:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;-><init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 408
    iget v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->label:I

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

    .line 409
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

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

    iput v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 410
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 411
    sget-object v0, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v0, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result v5

    .line 412
    sget-object v0, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v0, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->getFreeUserMaxStaffCount(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)I

    move-result v7

    .line 414
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->access$getMainHandler$p(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$list:Ljava/util/List;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->this$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iget-object v3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$items:Ljava/util/List;

    iget-object v4, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2;->$previousList:Ljava/util/List;

    new-instance v8, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2$$ExternalSyntheticLambda0;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$submitOriginalList$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/util/List;Ljava/util/List;ZZI)V

    invoke-virtual {p1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
