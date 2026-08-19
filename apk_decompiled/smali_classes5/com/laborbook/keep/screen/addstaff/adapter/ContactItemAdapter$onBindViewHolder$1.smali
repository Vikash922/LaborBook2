.class final Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContactItemAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
    c = "com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$onBindViewHolder$1"
    f = "ContactItemAdapter.kt"
    i = {}
    l = {
        0xe8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adKey:Ljava/lang/String;

.field final synthetic $holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic $originalIndex:I

.field final synthetic $position:I

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;


# direct methods
.method public static synthetic $r8$lambda$QPBNRAZGTbV3MivVVU-oNp8UeMw(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->invokeSuspend$lambda$0(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;",
            "Ljava/lang/String;",
            "II",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->this$0:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$adKey:Ljava/lang/String;

    iput p3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$position:I

    iput p4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$originalIndex:I

    iput-object p5, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 235
    invoke-static {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$getAdPositions$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$getShouldRefreshAds$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 240
    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$setShouldRefreshAds$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Z)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 243
    iget-object p1, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "getContext(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p3, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$loadNativeAd(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->this$0:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$adKey:Ljava/lang/String;

    iget v3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$position:I

    iget v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$originalIndex:I

    iget-object v5, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 231
    iget v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->label:I

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

    .line 232
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->this$0:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$getDataStoreManager(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->label:I

    invoke-static {p1, v1}, Lcom/laborbook/base/datastore/DataStoreManagerExtensionsKt;->shouldShowGoogleAds(Lcom/laborbook/base/datastore/DataStoreManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 234
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->this$0:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->access$getMainHandler$p(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->this$0:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$adKey:Ljava/lang/String;

    iget v3, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$position:I

    iget v4, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$originalIndex:I

    iget-object v5, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    new-instance v6, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1$$ExternalSyntheticLambda0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$onBindViewHolder$1$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/lang/String;IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
