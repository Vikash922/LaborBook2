.class final Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LogoutBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->handleLogout()V
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
    c = "com.laborbook.keep.screen.home.fragment.LogoutBottomSheetFragment$handleLogout$1"
    f = "LogoutBottomSheetFragment.kt"
    i = {
        0x1,
        0x2
    }
    l = {
        0x4c,
        0x50,
        0x51,
        0x52,
        0x55
    }
    m = "invokeSuspend"
    n = {
        "database",
        "database"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->label:I

    const-string v2, "requireContext(...)"

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/keep/database/AppDatabase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/keep/database/AppDatabase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v7, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->label:I

    invoke-virtual {p1, v1}, Lcom/laborbook/base/datastore/DataStoreManager;->clearAllPreferences(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 79
    :cond_6
    :goto_0
    sget-object p1, Lcom/laborbook/keep/database/AppDatabase;->Companion:Lcom/laborbook/keep/database/AppDatabase$Companion;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/laborbook/keep/database/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/laborbook/keep/database/AppDatabase;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/laborbook/keep/database/AppDatabase;->staffUserDao()Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    move-result-object v1

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->L$0:Ljava/lang/Object;

    iput v6, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->label:I

    invoke-interface {v1, v7}, Lcom/laborbook/keep/screen/home/dao/StaffUserDao;->deleteAllStaffs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v1, p1

    .line 81
    :goto_1
    invoke-virtual {v1}, Lcom/laborbook/keep/database/AppDatabase;->attendanceUserDao()Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    move-result-object p1

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->label:I

    invoke-interface {p1, v6}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;->deleteAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 82
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lcom/laborbook/keep/database/AppDatabase;->calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->label:I

    invoke-interface {p1, v1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;->deleteAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 84
    :cond_9
    :goto_3
    sget-object p1, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;->Companion:Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;->contactDao()Lcom/laborbook/keep/screen/addstaff/model/ContactDao;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->label:I

    invoke-interface {p1, v1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao;->deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 88
    :cond_a
    :goto_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.laborbook.auth.screen.login.view.LoginActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-virtual {v0, p1}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$handleLogout$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finishAffinity()V

    .line 93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
