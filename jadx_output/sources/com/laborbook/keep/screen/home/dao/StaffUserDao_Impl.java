package com.laborbook.keep.screen.home.dao;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p005db.SupportSQLiteStatement;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.keep.model.StaffUser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class StaffUserDao_Impl implements StaffUserDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<StaffUser> __insertionAdapterOfStaffUser;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllStaffs;

    public StaffUserDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfStaffUser = new EntityInsertionAdapter<StaffUser>(__db) { // from class: com.laborbook.keep.screen.home.dao.StaffUserDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `staffs` (`id`,`name`,`mobile_number`,`company_id`,`user_type`) VALUES (?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final StaffUser entity) {
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
                if (entity.getMobileNumber() == null) {
                    statement.bindNull(3);
                } else {
                    statement.bindString(3, entity.getMobileNumber());
                }
                if (entity.getCompanyId() == null) {
                    statement.bindNull(4);
                } else {
                    statement.bindString(4, entity.getCompanyId());
                }
                if (entity.getUserType() == null) {
                    statement.bindNull(5);
                } else {
                    statement.bindString(5, entity.getUserType());
                }
            }
        };
        this.__preparedStmtOfDeleteAllStaffs = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.home.dao.StaffUserDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM staffs";
            }
        };
    }

    @Override // com.laborbook.keep.screen.home.dao.StaffUserDao
    public Object insertStaffUsers(final List<StaffUser> users, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.home.dao.StaffUserDao_Impl.3
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                StaffUserDao_Impl.this.__db.beginTransaction();
                try {
                    StaffUserDao_Impl.this.__insertionAdapterOfStaffUser.insert((Iterable) users);
                    StaffUserDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    StaffUserDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.home.dao.StaffUserDao
    public Object deleteAllStaffs(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.home.dao.StaffUserDao_Impl.4
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = StaffUserDao_Impl.this.__preparedStmtOfDeleteAllStaffs.acquire();
                try {
                    StaffUserDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        StaffUserDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        StaffUserDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    StaffUserDao_Impl.this.__preparedStmtOfDeleteAllStaffs.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.home.dao.StaffUserDao
    public Object getAllStaffUsers(final Continuation<? super List<StaffUser>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM staffs", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<StaffUser>>() { // from class: com.laborbook.keep.screen.home.dao.StaffUserDao_Impl.5
            @Override // java.util.concurrent.Callable
            public List<StaffUser> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(StaffUserDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mobile_number");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "company_id");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, ConstantEventAttributes.USER_TYPE);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new StaffUser(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
                    }
                    return arrayList;
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
