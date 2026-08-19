.class Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AttendanceUserDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/laborbook/keep/model/AttendanceUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$1;->this$0:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/model/AttendanceUser;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 60
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPresent()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    const/4 v0, 0x4

    .line 61
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAbsent()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    const/4 v0, 0x5

    .line 62
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAdvance()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 63
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getMonth()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :goto_2
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalOt()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalOt()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 73
    :goto_3
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPp()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 74
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 76
    :cond_4
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPp()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 78
    :goto_4
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPh()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 83
    :goto_5
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalH()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 86
    :cond_6
    invoke-virtual {p2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalH()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    :goto_6
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 40
    check-cast p2, Lcom/laborbook/keep/model/AttendanceUser;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/model/AttendanceUser;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "INSERT OR REPLACE INTO `attendance_user` (`id`,`name`,`totalPresent`,`totalAbsent`,`totalAdvance`,`month`,`totalOt`,`totalPp`,`totalPh`,`totalH`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
