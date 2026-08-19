.class final Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LaborMonthlyCalendarFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->triggerInAppReview()V
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
    c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$triggerInAppReview$1"
    f = "LaborMonthlyCalendarFragment.kt"
    i = {}
    l = {
        0x1e3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;


# direct methods
.method public static synthetic $r8$lambda$0zwUHFxaVtUK7tkdIUAXwr1PO1Q(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->invokeSuspend$lambda$1$lambda$0(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$glhvVTx8uluTOOox_2tPCVe_ZXY(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->invokeSuspend$lambda$1(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/google/android/gms/tasks/Task;)V

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
            "Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 489
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 495
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 494
    invoke-interface {p0, v0, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string p2, "launchReviewFlow(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    move-object p2, p1

    check-cast p2, Lcom/laborbook/base/BaseFragment;

    const-string v0, "in_app_review"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1, v2}, Lcom/laborbook/base/BaseFragment;->triggerImpressionEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 499
    new-instance p2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 500
    check-cast p0, Lcom/laborbook/base/BaseFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "in_app_review_done"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
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

    new-instance p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 475
    iget v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 478
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 483
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getAPP_OPEN_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    .line 484
    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_5

    .line 486
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-interface {p1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "requestReviewFlow(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;->this$0:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/play/core/review/ReviewManager;Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    .line 479
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 508
    :catch_0
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
