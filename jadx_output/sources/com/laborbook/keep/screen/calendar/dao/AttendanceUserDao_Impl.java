package com.laborbook.keep.screen.calendar.dao;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p005db.SupportSQLiteStatement;
import com.laborbook.keep.model.AttendanceUser;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class AttendanceUserDao_Impl implements AttendanceUserDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<AttendanceUser> __insertionAdapterOfAttendanceUser;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByUserId;

    public AttendanceUserDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfAttendanceUser = new EntityInsertionAdapter<AttendanceUser>(__db) { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `attendance_user` (`id`,`name`,`totalPresent`,`totalAbsent`,`totalAdvance`,`month`,`totalOt`,`totalPp`,`totalPh`,`totalH`) VALUES (?,?,?,?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final AttendanceUser entity) {
                if (entity.getId() == null) {
                    statement.bindNull(1);
                } else {
                    statement.bindString(1, entity.getId());
                }
                if (entity.getName() == null) {
                    statement.bindNull(2);
                } else {
                    statement.bindString(2, entity.getName());
                }
                statement.bindDouble(3, entity.getTotalPresent());
                statement.bindDouble(4, entity.getTotalAbsent());
                statement.bindDouble(5, entity.getTotalAdvance());
                if (entity.getMonth() == null) {
                    statement.bindNull(6);
                } else {
                    statement.bindString(6, entity.getMonth());
                }
                if (entity.getTotalOt() == null) {
                    statement.bindNull(7);
                } else {
                    statement.bindDouble(7, entity.getTotalOt().doubleValue());
                }
                if (entity.getTotalPp() == null) {
                    statement.bindNull(8);
                } else {
                    statement.bindDouble(8, entity.getTotalPp().doubleValue());
                }
                if (entity.getTotalPh() == null) {
                    statement.bindNull(9);
                } else {
                    statement.bindDouble(9, entity.getTotalPh().doubleValue());
                }
                if (entity.getTotalH() == null) {
                    statement.bindNull(10);
                } else {
                    statement.bindDouble(10, entity.getTotalH().doubleValue());
                }
            }
        };
        this.__preparedStmtOfDeleteByUserId = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM attendance_user WHERE id = ?";
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM attendance_user";
            }
        };
    }

    @Override // com.laborbook.keep.screen.calendar.dao.AttendanceUserDao
    public Object insert(final AttendanceUser user, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.4
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                AttendanceUserDao_Impl.this.__db.beginTransaction();
                try {
                    AttendanceUserDao_Impl.this.__insertionAdapterOfAttendanceUser.insert(user);
                    AttendanceUserDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    AttendanceUserDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.AttendanceUserDao
    public Object deleteByUserId(final String id, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.5
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = AttendanceUserDao_Impl.this.__preparedStmtOfDeleteByUserId.acquire();
                String str = id;
                if (str == null) {
                    supportSQLiteStatementAcquire.bindNull(1);
                } else {
                    supportSQLiteStatementAcquire.bindString(1, str);
                }
                try {
                    AttendanceUserDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        AttendanceUserDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        AttendanceUserDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    AttendanceUserDao_Impl.this.__preparedStmtOfDeleteByUserId.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.AttendanceUserDao
    public Object deleteAll(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = AttendanceUserDao_Impl.this.__preparedStmtOfDeleteAll.acquire();
                try {
                    AttendanceUserDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        AttendanceUserDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        AttendanceUserDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    AttendanceUserDao_Impl.this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.AttendanceUserDao
    public Object getUserById(final String id, final Continuation<? super AttendanceUser> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM attendance_user WHERE id = ?", 1);
        if (id == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, id);
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<AttendanceUser>() { // from class: com.laborbook.keep.screen.calendar.dao.AttendanceUserDao_Impl.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AttendanceUser call() throws Exception {
                AttendanceUser attendanceUser = null;
                Cursor cursorQuery = DBUtil.query(AttendanceUserDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalPresent");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalAbsent");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalAdvance");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "month");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalOt");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalPp");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalPh");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalH");
                    if (cursorQuery.moveToFirst()) {
                        attendanceUser = new AttendanceUser(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getDouble(columnIndexOrThrow3), cursorQuery.getDouble(columnIndexOrThrow4), cursorQuery.getDouble(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow7)), cursorQuery.isNull(columnIndexOrThrow8) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow8)), cursorQuery.isNull(columnIndexOrThrow9) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow9)), cursorQuery.isNull(columnIndexOrThrow10) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow10)));
                    }
                    return attendanceUser;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
