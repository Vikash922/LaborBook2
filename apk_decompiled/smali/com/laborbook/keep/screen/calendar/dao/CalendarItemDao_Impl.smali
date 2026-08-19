.class public final Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;
.super Ljava/lang/Object;
.source "CalendarItemDao_Impl.java"

# interfaces
.implements Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfCalendarItem:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/laborbook/keep/model/CalendarItem;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByUserIdMonthYear:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteOldest:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 44
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$1;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__insertionAdapterOfCalendarItem:Landroidx/room/EntityInsertionAdapter;

    .line 116
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$2;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__preparedStmtOfDeleteByUserIdMonthYear:Landroidx/room/SharedSQLiteStatement;

    .line 124
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$3;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__preparedStmtOfDeleteOldest:Landroidx/room/SharedSQLiteStatement;

    .line 132
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$4;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__insertionAdapterOfCalendarItem:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__preparedStmtOfDeleteByUserIdMonthYear:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$300(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__preparedStmtOfDeleteOldest:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$400(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

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

    .line 248
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$9;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$9;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteByUserIdMonthYear(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "month",
            "year",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$7;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteOldest(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "count",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllByIdMonthYear(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "month",
            "year",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/CalendarItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 273
    const-string v0, "SELECT * FROM calendar_item WHERE id = ? AND month = ? AND year = ?"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 276
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 282
    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    if-nez p3, :cond_2

    .line 288
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 290
    :cond_2
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 292
    :goto_2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 293
    iget-object p2, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p3, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$10;

    invoke-direct {p3, p0, v0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$10;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 401
    const-string v0, "SELECT COUNT(*) FROM calendar_item"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 402
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$11;

    invoke-direct {v4, p0, v0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$11;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/laborbook/keep/model/CalendarItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "item",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/CalendarItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$5;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Lcom/laborbook/keep/model/CalendarItem;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "items",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/CalendarItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$6;-><init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
