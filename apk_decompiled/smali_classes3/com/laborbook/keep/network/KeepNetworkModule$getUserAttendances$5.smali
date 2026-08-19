.class final Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$5"
    f = "KeepNetworkModule.kt"
    i = {}
    l = {
        0x61,
        0x62
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $month:Ljava/lang/String;

.field final synthetic $year:Ljava/lang/String;

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
            "Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$month:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$year:Ljava/lang/String;

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

    new-instance v6, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iget-object v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$month:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$year:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;-><init>(Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

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

    .line 97
    iget-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {p1}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/database/AppDatabase;->attendanceUserDao()Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$id:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->label:I

    invoke-interface {p1, v1, v4}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;->deleteByUserId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 98
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {p1}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/database/AppDatabase;->calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$month:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->$year:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$5;->label:I

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;->deleteByUserIdMonthYear(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 99
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
