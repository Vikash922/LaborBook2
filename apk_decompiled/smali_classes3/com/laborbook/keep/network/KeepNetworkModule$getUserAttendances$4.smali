.class final Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KeepNetworkModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepNetworkModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepNetworkModule.kt\ncom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n1#2:303\n1863#3,2:304\n*S KotlinDebug\n*F\n+ 1 KeepNetworkModule.kt\ncom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4\n*L\n85#1:304,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
    c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$4"
    f = "KeepNetworkModule.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x54,
        0x5a,
        0x5c,
        0x5e
    }
    m = "invokeSuspend"
    n = {
        "it",
        "MAX_ENTRIES",
        "it",
        "MAX_ENTRIES",
        "it"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $month:Ljava/lang/String;

.field final synthetic $year:Ljava/lang/String;

.field I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/network/KeepNetworkModule;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/network/KeepNetworkModule;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$month:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$year:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v6, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iget-object v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$month:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$year:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;-><init>(Ljava/lang/String;Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public final invoke(Lcom/laborbook/keep/model/StaffAttendanceResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/laborbook/keep/model/StaffAttendanceResponse;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->invoke(Lcom/laborbook/keep/model/StaffAttendanceResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->I$0:I

    iget-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->I$0:I

    iget-object v6, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/laborbook/keep/model/StaffAttendanceResponse;

    .line 83
    invoke-virtual {v6}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getUser()Lcom/laborbook/keep/model/AttendanceUser;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/laborbook/keep/model/AttendanceUser;->setId(Ljava/lang/String;)V

    .line 84
    :cond_5
    invoke-virtual {v6}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getUser()Lcom/laborbook/keep/model/AttendanceUser;

    move-result-object p1

    const/16 v1, 0x4e20

    if-eqz p1, :cond_6

    iget-object v7, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v7}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/laborbook/keep/database/AppDatabase;->attendanceUserDao()Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    move-result-object v7

    iput-object v6, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->I$0:I

    iput v5, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->label:I

    invoke-interface {v7, p1, p0}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;->insert(Lcom/laborbook/keep/model/AttendanceUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 85
    :cond_6
    :goto_0
    invoke-virtual {v6}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getAttendance()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    iget-object v7, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$id:Ljava/lang/String;

    iget-object v8, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$month:Ljava/lang/String;

    iget-object v9, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->$year:Ljava/lang/String;

    .line 304
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/laborbook/keep/model/CalendarItem;

    .line 86
    invoke-virtual {v10, v7}, Lcom/laborbook/keep/model/CalendarItem;->setId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v10, v8}, Lcom/laborbook/keep/model/CalendarItem;->setMonth(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v10, v9}, Lcom/laborbook/keep/model/CalendarItem;->setYear(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {p1}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/database/AppDatabase;->calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    move-result-object p1

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->I$0:I

    iput v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->label:I

    invoke-interface {p1, v7}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;->getCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v4, v6

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lt p1, v1, :cond_a

    .line 92
    iget-object v6, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v6}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/laborbook/keep/database/AppDatabase;->calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    move-result-object v6

    sub-int/2addr p1, v1

    add-int/2addr p1, v5

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->label:I

    invoke-interface {v6, p1, v1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;->deleteOldest(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v1, v4

    :goto_3
    move-object v4, v1

    .line 94
    :cond_a
    invoke-virtual {v4}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getAttendance()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v1}, Lcom/laborbook/keep/network/KeepNetworkModule;->getDb()Lcom/laborbook/keep/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/database/AppDatabase;->calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getUserAttendances$4;->label:I

    invoke-interface {v1, p1, p0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 95
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
