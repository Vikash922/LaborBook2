.class public final Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;
.super Ljava/lang/Object;
.source "AttendanceUserDao_Impl.java"

# interfaces
.implements Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAttendanceUser:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/laborbook/keep/model/AttendanceUser;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByUserId:Landroidx/room/SharedSQLiteStatement;


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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$1;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__insertionAdapterOfAttendanceUser:Landroidx/room/EntityInsertionAdapter;

    .line 90
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$2;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__preparedStmtOfDeleteByUserId:Landroidx/room/SharedSQLiteStatement;

    .line 98
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$3;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__insertionAdapterOfAttendanceUser:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__preparedStmtOfDeleteByUserId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$300(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

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

    .line 271
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

    .line 157
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$6;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$6;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteByUserId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$5;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/model/AttendanceUser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    const-string v0, "SELECT * FROM attendance_user WHERE id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 189
    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 190
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$7;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$7;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/laborbook/keep/model/AttendanceUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "user",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/AttendanceUser;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$4;-><init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Lcom/laborbook/keep/model/AttendanceUser;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
