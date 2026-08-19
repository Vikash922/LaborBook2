.class final Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LaborMonthlyCalendarFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->checkAndShowCoachMark()V
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
    c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$checkAndShowCoachMark$1"
    f = "LaborMonthlyCalendarFragment.kt"
    i = {}
    l = {
        0x316
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;


# direct methods
.method public static synthetic $r8$lambda$DbHy8ffzeaMn3z3r5lCOPSc7-2o(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->invokeSuspend$lambda$2$lambda$1$lambda$0(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JNOCGtNaJgv9oz8p00gZAXV15Ls(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->invokeSuspend$lambda$2(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V
    .locals 4

    .line 794
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v0, :cond_1

    .line 799
    invoke-static {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->access$getCoachMarkManager(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lcom/laborbook/keep/utils/CoachMarkManager;

    move-result-object v1

    .line 800
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    .line 801
    check-cast v0, Landroid/view/View;

    .line 799
    new-instance v3, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/laborbook/keep/utils/CoachMarkManager;->showEditButtonCoachMark(Landroid/app/Activity;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final invokeSuspend$lambda$2$lambda$1$lambda$0(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lkotlin/Unit;
    .locals 7

    .line 804
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$1$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$1$1$1$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 814
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 784
    iget v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->label:I

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

    .line 786
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 790
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->access$getCoachMarkManager(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lcom/laborbook/keep/utils/CoachMarkManager;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/laborbook/keep/utils/CoachMarkManager;->shouldShowCoachMark(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 792
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {p1, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 818
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 787
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
