.class public final Lcom/laborbook/keep/database/AppDatabase_Impl;
.super Lcom/laborbook/keep/database/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _attendanceUserDao:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

.field private volatile _calendarItemDao:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

.field private volatile _staffUserDao:Lcom/laborbook/keep/screen/home/dao/StaffUserDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/laborbook/keep/database/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/laborbook/keep/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/laborbook/keep/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/laborbook/keep/database/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/laborbook/keep/database/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/database/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/laborbook/keep/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public attendanceUserDao()Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_attendanceUserDao:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_attendanceUserDao:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    return-object v0

    .line 236
    :cond_0
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_attendanceUserDao:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_attendanceUserDao:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_attendanceUserDao:Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_calendarItemDao:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_calendarItemDao:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    return-object v0

    .line 250
    :cond_0
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_calendarItemDao:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_calendarItemDao:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_calendarItemDao:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 255
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    .line 175
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/laborbook/keep/database/AppDatabase;->assertNotMainThread()V

    .line 176
    invoke-super {p0}, Lcom/laborbook/keep/database/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 178
    :try_start_0
    invoke-super {p0}, Lcom/laborbook/keep/database/AppDatabase;->beginTransaction()V

    .line 179
    const-string v3, "DELETE FROM `staffs`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v3, "DELETE FROM `attendance_user`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v3, "DELETE FROM `calendar_item`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Lcom/laborbook/keep/database/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-super {p0}, Lcom/laborbook/keep/database/AppDatabase;->endTransaction()V

    .line 185
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 184
    invoke-super {p0}, Lcom/laborbook/keep/database/AppDatabase;->endTransaction()V

    .line 185
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 168
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 170
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "staffs"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "attendance_user"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "calendar_item"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 42
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/laborbook/keep/database/AppDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/laborbook/keep/database/AppDatabase_Impl$1;-><init>(Lcom/laborbook/keep/database/AppDatabase_Impl;I)V

    const-string v2, "f54db1e4685a569f2003fc77b6b34443"

    const-string v3, "2c73375c9a21c2758b14f726e235ba75"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 161
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-class v1, Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    invoke-static {}, Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-class v1, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;

    invoke-static {}, Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-class v1, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;

    invoke-static {}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public staffUserDao()Lcom/laborbook/keep/screen/home/dao/StaffUserDao;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_staffUserDao:Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_staffUserDao:Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    return-object v0

    .line 222
    :cond_0
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_staffUserDao:Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_staffUserDao:Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/laborbook/keep/database/AppDatabase_Impl;->_staffUserDao:Lcom/laborbook/keep/screen/home/dao/StaffUserDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 227
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
