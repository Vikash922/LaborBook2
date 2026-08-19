.class public final Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;
.super Ljava/lang/Object;
.source "ContactDao_Impl.java"

# interfaces
.implements Lcom/laborbook/keep/screen/addstaff/model/ContactDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfContactItem:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllContacts:Landroidx/room/SharedSQLiteStatement;


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    new-instance v0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$1;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__insertionAdapterOfContactItem:Landroidx/room/EntityInsertionAdapter;

    .line 60
    new-instance v0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$2;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__preparedStmtOfDeleteAllContacts:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__insertionAdapterOfContactItem:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__preparedStmtOfDeleteAllContacts:Landroidx/room/SharedSQLiteStatement;

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

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 91
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$4;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$4;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 115
    const-string v0, "SELECT * FROM contacts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 116
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$5;

    invoke-direct {v4, p0, v0}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$5;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertContacts([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contacts",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$3;-><init>(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;[Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
