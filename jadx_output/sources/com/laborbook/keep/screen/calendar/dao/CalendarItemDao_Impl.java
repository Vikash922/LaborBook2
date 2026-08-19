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
import com.laborbook.keep.model.CalendarItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class CalendarItemDao_Impl implements CalendarItemDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<CalendarItem> __insertionAdapterOfCalendarItem;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByUserIdMonthYear;
    private final SharedSQLiteStatement __preparedStmtOfDeleteOldest;

    public CalendarItemDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfCalendarItem = new EntityInsertionAdapter<CalendarItem>(__db) { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `calendar_item` (`id`,`month`,`year`,`date`,`day`,`attendanceStatus`,`advance`,`reason`,`otMinutes`,`otPerHour`,`otTotalAmount`,`advancePaymentMethod`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final CalendarItem entity) {
                if (entity.getId() == null) {
                    statement.bindNull(1);
                } else {
                    statement.bindString(1, entity.getId());
                }
                if (entity.getMonth() == null) {
                    statement.bindNull(2);
                } else {
                    statement.bindString(2, entity.getMonth());
                }
                if (entity.getYear() == null) {
                    statement.bindNull(3);
                } else {
                    statement.bindString(3, entity.getYear());
                }
                if (entity.getDate() == null) {
                    statement.bindNull(4);
                } else {
                    statement.bindString(4, entity.getDate());
                }
                if (entity.getDay() == null) {
                    statement.bindNull(5);
                } else {
                    statement.bindString(5, entity.getDay());
                }
                if (entity.getAttendanceStatus() == null) {
                    statement.bindNull(6);
                } else {
                    statement.bindString(6, entity.getAttendanceStatus());
                }
                if (entity.getAdvance() == null) {
                    statement.bindNull(7);
                } else {
                    statement.bindString(7, entity.getAdvance());
                }
                if (entity.getReason() == null) {
                    statement.bindNull(8);
                } else {
                    statement.bindString(8, entity.getReason());
                }
                if (entity.getOtMinutes() == null) {
                    statement.bindNull(9);
                } else {
                    statement.bindDouble(9, entity.getOtMinutes().doubleValue());
                }
                if (entity.getOtPerHour() == null) {
                    statement.bindNull(10);
                } else {
                    statement.bindDouble(10, entity.getOtPerHour().doubleValue());
                }
                if (entity.getOtTotalAmount() == null) {
                    statement.bindNull(11);
                } else {
                    statement.bindDouble(11, entity.getOtTotalAmount().doubleValue());
                }
                if (entity.getAdvancePaymentMethod() == null) {
                    statement.bindNull(12);
                } else {
                    statement.bindString(12, entity.getAdvancePaymentMethod());
                }
            }
        };
        this.__preparedStmtOfDeleteByUserIdMonthYear = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM calendar_item WHERE id = ? AND month = ? AND year = ?";
            }
        };
        this.__preparedStmtOfDeleteOldest = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM calendar_item WHERE id IN (SELECT id FROM calendar_item ORDER BY id ASC LIMIT ?)";
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM calendar_item";
            }
        };
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object insert(final CalendarItem item, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.5
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                CalendarItemDao_Impl.this.__db.beginTransaction();
                try {
                    CalendarItemDao_Impl.this.__insertionAdapterOfCalendarItem.insert(item);
                    CalendarItemDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    CalendarItemDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object insertAll(final List<CalendarItem> items, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                CalendarItemDao_Impl.this.__db.beginTransaction();
                try {
                    CalendarItemDao_Impl.this.__insertionAdapterOfCalendarItem.insert((Iterable) items);
                    CalendarItemDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    CalendarItemDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object deleteByUserIdMonthYear(final String id, final String month, final String year, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = CalendarItemDao_Impl.this.__preparedStmtOfDeleteByUserIdMonthYear.acquire();
                String str = id;
                if (str == null) {
                    supportSQLiteStatementAcquire.bindNull(1);
                } else {
                    supportSQLiteStatementAcquire.bindString(1, str);
                }
                String str2 = month;
                if (str2 == null) {
                    supportSQLiteStatementAcquire.bindNull(2);
                } else {
                    supportSQLiteStatementAcquire.bindString(2, str2);
                }
                String str3 = year;
                if (str3 == null) {
                    supportSQLiteStatementAcquire.bindNull(3);
                } else {
                    supportSQLiteStatementAcquire.bindString(3, str3);
                }
                try {
                    CalendarItemDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        CalendarItemDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        CalendarItemDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    CalendarItemDao_Impl.this.__preparedStmtOfDeleteByUserIdMonthYear.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object deleteOldest(final int count, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = CalendarItemDao_Impl.this.__preparedStmtOfDeleteOldest.acquire();
                supportSQLiteStatementAcquire.bindLong(1, count);
                try {
                    CalendarItemDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        CalendarItemDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        CalendarItemDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    CalendarItemDao_Impl.this.__preparedStmtOfDeleteOldest.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object deleteAll(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.9
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = CalendarItemDao_Impl.this.__preparedStmtOfDeleteAll.acquire();
                try {
                    CalendarItemDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        CalendarItemDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        CalendarItemDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    CalendarItemDao_Impl.this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object getAllByIdMonthYear(final String id, final String month, final String year, final Continuation<? super List<CalendarItem>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM calendar_item WHERE id = ? AND month = ? AND year = ?", 3);
        if (id == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, id);
        }
        if (month == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindString(2, month);
        }
        if (year == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindString(3, year);
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<CalendarItem>>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.10
            @Override // java.util.concurrent.Callable
            public List<CalendarItem> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(CalendarItemDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "month");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "attendanceStatus");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "advance");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "reason");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "otMinutes");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "otPerHour");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "otTotalAmount");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "advancePaymentMethod");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new CalendarItem(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), cursorQuery.isNull(columnIndexOrThrow9) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow9)), cursorQuery.isNull(columnIndexOrThrow10) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow10)), cursorQuery.isNull(columnIndexOrThrow11) ? null : Double.valueOf(cursorQuery.getDouble(columnIndexOrThrow11)), cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.calendar.dao.CalendarItemDao
    public Object getCount(final Continuation<? super Integer> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) FROM calendar_item", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Integer>() { // from class: com.laborbook.keep.screen.calendar.dao.CalendarItemDao_Impl.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                Integer numValueOf = null;
                Cursor cursorQuery = DBUtil.query(CalendarItemDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                        numValueOf = Integer.valueOf(cursorQuery.getInt(0));
                    }
                    return numValueOf;
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
