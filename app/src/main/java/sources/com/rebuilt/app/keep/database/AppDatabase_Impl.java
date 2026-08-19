package com.rebuilt.app.keep.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.p005db.SupportSQLiteDatabase;
import androidx.sqlite.p005db.SupportSQLiteOpenHelper;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.keep.screen.calendar.dao.AttendanceUserDao;
import com.rebuilt.app.keep.screen.calendar.dao.AttendanceUserDao_Impl;
import com.rebuilt.app.keep.screen.calendar.dao.CalendarItemDao;
import com.rebuilt.app.keep.screen.calendar.dao.CalendarItemDao_Impl;
import com.rebuilt.app.keep.screen.home.dao.StaffUserDao;
import com.rebuilt.app.keep.screen.home.dao.StaffUserDao_Impl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {
    private volatile AttendanceUserDao _attendanceUserDao;
    private volatile CalendarItemDao _calendarItemDao;
    private volatile StaffUserDao _staffUserDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(final DatabaseConfiguration config) {
        return config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(config.context).name(config.name).callback(new RoomOpenHelper(config, new RoomOpenHelper.Delegate(4) { // from class: com.rebuilt.app.keep.database.AppDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(final SupportSQLiteDatabase db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("CREATE TABLE IF NOT EXISTS `staffs` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `mobile_number` TEXT NOT NULL, `company_id` TEXT NOT NULL, `user_type` TEXT NOT NULL, PRIMARY KEY(`id`))");
                db.execSQL("CREATE TABLE IF NOT EXISTS `attendance_user` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `totalPresent` REAL NOT NULL, `totalAbsent` REAL NOT NULL, `totalAdvance` REAL NOT NULL, `month` TEXT NOT NULL, `totalOt` REAL, `totalPp` REAL, `totalPh` REAL, `totalH` REAL, PRIMARY KEY(`id`))");
                db.execSQL("CREATE TABLE IF NOT EXISTS `calendar_item` (`id` TEXT NOT NULL, `month` TEXT NOT NULL, `year` TEXT NOT NULL, `date` TEXT NOT NULL, `day` TEXT NOT NULL, `attendanceStatus` TEXT, `advance` TEXT, `reason` TEXT, `otMinutes` REAL, `otPerHour` REAL, `otTotalAmount` REAL, `advancePaymentMethod` TEXT, PRIMARY KEY(`id`, `date`, `month`, `year`))");
                db.execSQL(RoomMasterTable.CREATE_QUERY);
                db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'f54db1e4685a569f2003fc77b6b34443')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("DROP TABLE IF EXISTS `staffs`");
                db.execSQL("DROP TABLE IF EXISTS `attendance_user`");
                db.execSQL("DROP TABLE IF EXISTS `calendar_item`");
                List list = AppDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onCreate(final SupportSQLiteDatabase db) {
                List list = AppDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(final SupportSQLiteDatabase db) {
                AppDatabase_Impl.this.mDatabase = db;
                AppDatabase_Impl.this.internalInitInvalidationTracker(db);
                List list = AppDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onOpen(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(final SupportSQLiteDatabase db) {
                DBUtil.dropFtsSyncTriggers(db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public RoomOpenHelper.ValidationResult onValidateSchema(final SupportSQLiteDatabase db) {
                HashMap map = new HashMap(5);
                map.put("id", new TableInfo.Column("id", "TEXT", true, 1, null, 1));
                map.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map.put("mobile_number", new TableInfo.Column("mobile_number", "TEXT", true, 0, null, 1));
                map.put("company_id", new TableInfo.Column("company_id", "TEXT", true, 0, null, 1));
                map.put(ConstantEventAttributes.USER_TYPE, new TableInfo.Column(ConstantEventAttributes.USER_TYPE, "TEXT", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("staffs", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(db, "staffs");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "staffs(com.rebuilt.app.keep.model.StaffUser).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(10);
                map2.put("id", new TableInfo.Column("id", "TEXT", true, 1, null, 1));
                map2.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map2.put("totalPresent", new TableInfo.Column("totalPresent", "REAL", true, 0, null, 1));
                map2.put("totalAbsent", new TableInfo.Column("totalAbsent", "REAL", true, 0, null, 1));
                map2.put("totalAdvance", new TableInfo.Column("totalAdvance", "REAL", true, 0, null, 1));
                map2.put("month", new TableInfo.Column("month", "TEXT", true, 0, null, 1));
                map2.put("totalOt", new TableInfo.Column("totalOt", "REAL", false, 0, null, 1));
                map2.put("totalPp", new TableInfo.Column("totalPp", "REAL", false, 0, null, 1));
                map2.put("totalPh", new TableInfo.Column("totalPh", "REAL", false, 0, null, 1));
                map2.put("totalH", new TableInfo.Column("totalH", "REAL", false, 0, null, 1));
                TableInfo tableInfo3 = new TableInfo("attendance_user", map2, new HashSet(0), new HashSet(0));
                TableInfo tableInfo4 = TableInfo.read(db, "attendance_user");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "attendance_user(com.rebuilt.app.keep.model.AttendanceUser).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                HashMap map3 = new HashMap(12);
                map3.put("id", new TableInfo.Column("id", "TEXT", true, 1, null, 1));
                map3.put("month", new TableInfo.Column("month", "TEXT", true, 3, null, 1));
                map3.put("year", new TableInfo.Column("year", "TEXT", true, 4, null, 1));
                map3.put("date", new TableInfo.Column("date", "TEXT", true, 2, null, 1));
                map3.put("day", new TableInfo.Column("day", "TEXT", true, 0, null, 1));
                map3.put("attendanceStatus", new TableInfo.Column("attendanceStatus", "TEXT", false, 0, null, 1));
                map3.put("advance", new TableInfo.Column("advance", "TEXT", false, 0, null, 1));
                map3.put("reason", new TableInfo.Column("reason", "TEXT", false, 0, null, 1));
                map3.put("otMinutes", new TableInfo.Column("otMinutes", "REAL", false, 0, null, 1));
                map3.put("otPerHour", new TableInfo.Column("otPerHour", "REAL", false, 0, null, 1));
                map3.put("otTotalAmount", new TableInfo.Column("otTotalAmount", "REAL", false, 0, null, 1));
                map3.put("advancePaymentMethod", new TableInfo.Column("advancePaymentMethod", "TEXT", false, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("calendar_item", map3, new HashSet(0), new HashSet(0));
                TableInfo tableInfo6 = TableInfo.read(db, "calendar_item");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenHelper.ValidationResult(false, "calendar_item(com.rebuilt.app.keep.model.CalendarItem).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "f54db1e4685a569f2003fc77b6b34443", "2c73375c9a21c2758b14f726e235ba75")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "staffs", "attendance_user", "calendar_item");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `staffs`");
            writableDatabase.execSQL("DELETE FROM `attendance_user`");
            writableDatabase.execSQL("DELETE FROM `calendar_item`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(StaffUserDao.class, StaffUserDao_Impl.getRequiredConverters());
        map.put(AttendanceUserDao.class, AttendanceUserDao_Impl.getRequiredConverters());
        map.put(CalendarItemDao.class, CalendarItemDao_Impl.getRequiredConverters());
        return map;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(final Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        return new ArrayList();
    }

    @Override // com.rebuilt.app.keep.database.AppDatabase
    public StaffUserDao staffUserDao() {
        StaffUserDao staffUserDao;
        if (this._staffUserDao != null) {
            return this._staffUserDao;
        }
        synchronized (this) {
            if (this._staffUserDao == null) {
                this._staffUserDao = new StaffUserDao_Impl(this);
            }
            staffUserDao = this._staffUserDao;
        }
        return staffUserDao;
    }

    @Override // com.rebuilt.app.keep.database.AppDatabase
    public AttendanceUserDao attendanceUserDao() {
        AttendanceUserDao attendanceUserDao;
        if (this._attendanceUserDao != null) {
            return this._attendanceUserDao;
        }
        synchronized (this) {
            if (this._attendanceUserDao == null) {
                this._attendanceUserDao = new AttendanceUserDao_Impl(this);
            }
            attendanceUserDao = this._attendanceUserDao;
        }
        return attendanceUserDao;
    }

    @Override // com.rebuilt.app.keep.database.AppDatabase
    public CalendarItemDao calendarItemDao() {
        CalendarItemDao calendarItemDao;
        if (this._calendarItemDao != null) {
            return this._calendarItemDao;
        }
        synchronized (this) {
            if (this._calendarItemDao == null) {
                this._calendarItemDao = new CalendarItemDao_Impl(this);
            }
            calendarItemDao = this._calendarItemDao;
        }
        return calendarItemDao;
    }
}
