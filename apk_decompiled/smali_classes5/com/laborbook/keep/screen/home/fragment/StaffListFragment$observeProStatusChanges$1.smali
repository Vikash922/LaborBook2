.class final Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StaffListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->observeProStatusChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "isPro",
        ""
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
    c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$observeProStatusChanges$1"
    f = "StaffListFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-direct {v0, v1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->Z$0:Z

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 103
    iget v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->Z$0:Z

    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->ivProTag:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->access$getAdapter$p(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;)Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->access$getWasProPreviously$p(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->access$getAdapter$p(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;)Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->removeAllAds()V

    .line 108
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->setRefresh(Z)V

    .line 109
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->access$callGetStaffsAPI(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentStaffListBinding;->ivProTag:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$observeProStatusChanges$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-static {v0, p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->access$setWasProPreviously$p(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Z)V

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
