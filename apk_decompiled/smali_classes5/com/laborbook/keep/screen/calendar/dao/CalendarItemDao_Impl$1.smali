.class Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "CalendarItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/laborbook/keep/model/CalendarItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 44
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$1;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/model/CalendarItem;)V
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

    .line 54
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getMonth()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 60
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    :goto_1
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getYear()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 65
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :goto_2
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 70
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :goto_3
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getDay()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 75
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getDay()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :goto_4
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 82
    :cond_5
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 84
    :goto_5
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 87
    :cond_6
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :goto_6
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 92
    :cond_7
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :goto_7
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 97
    :cond_8
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 99
    :goto_8
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    .line 100
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 102
    :cond_9
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 104
    :goto_9
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_a

    .line 105
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 107
    :cond_a
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 109
    :goto_a
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAdvancePaymentMethod()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_b

    .line 110
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 112
    :cond_b
    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAdvancePaymentMethod()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_b
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

    .line 44
    check-cast p2, Lcom/laborbook/keep/model/CalendarItem;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/model/CalendarItem;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "INSERT OR REPLACE INTO `calendar_item` (`id`,`month`,`year`,`date`,`day`,`attendanceStatus`,`advance`,`reason`,`otMinutes`,`otPerHour`,`otTotalAmount`,`advancePaymentMethod`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
