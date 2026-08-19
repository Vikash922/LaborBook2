.class final Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KeepNetworkModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/network/KeepNetworkModule;->getUserAttendances(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepNetworkModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepNetworkModule.kt\ncom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/laborbook/keep/model/StaffAttendanceResponse;"
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
    c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$3"
    f = "KeepNetworkModule.kt"
    i = {
        0x1
    }
    l = {
        0x43,
        0x44
    }
    m = "invokeSuspend"
    n = {
        "calendarItems"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $month:Ljava/lang/String;

.field final synthetic $year:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/network/KeepNetworkModule;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/network/KeepNetworkModule;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$month:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$year:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iget-object v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$month:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$year:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;-><init>(Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {p1}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/database/AppDatabase;->calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$month:Ljava/lang/String;

    iget-object v5, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$year:Ljava/lang/String;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->label:I

    invoke-interface {p1, v1, v4, v5, v6}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;->getAllByIdMonthYear(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 66
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 68
    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iget-object v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$id:Ljava/lang/String;

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/database/AppDatabase;->attendanceUserDao()Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    move-result-object v1

    iput-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->label:I

    invoke-interface {v1, v3, p0}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;->getUserById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    check-cast p1, Lcom/laborbook/keep/model/AttendanceUser;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    :cond_5
    check-cast p1, Lcom/laborbook/keep/model/AttendanceUser;

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 70
    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iget-object v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$3;->$month:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/laborbook/keep/network/KeepNetworkModule;->access$buildAttendanceUserFromCalendarItems(Lcom/laborbook/keep/network/KeepNetworkModule;Lcom/laborbook/keep/model/AttendanceUser;Ljava/util/List;Ljava/lang/String;)Lcom/laborbook/keep/model/AttendanceUser;

    move-result-object p1

    .line 75
    :cond_6
    new-instance v1, Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-direct {v1, p1, v0}, Lcom/laborbook/keep/model/StaffAttendanceResponse;-><init>(Lcom/laborbook/keep/model/AttendanceUser;Ljava/util/List;)V

    .line 74
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
