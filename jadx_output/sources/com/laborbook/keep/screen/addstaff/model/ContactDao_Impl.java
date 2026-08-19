package com.laborbook.keep.screen.addstaff.model;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p005db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class ContactDao_Impl implements ContactDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<ContactItem> __insertionAdapterOfContactItem;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllContacts;

    public ContactDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfContactItem = new EntityInsertionAdapter<ContactItem>(__db) { // from class: com.laborbook.keep.screen.addstaff.model.ContactDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `contacts` (`id`,`name`,`mobileNumber`) VALUES (nullif(?, 0),?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final ContactItem entity) {
                statement.bindLong(1, entity.getId());
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
            }
        };
        this.__preparedStmtOfDeleteAllContacts = new SharedSQLiteStatement(__db) { // from class: com.laborbook.keep.screen.addstaff.model.ContactDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM contacts";
            }
        };
    }

    @Override // com.laborbook.keep.screen.addstaff.model.ContactDao
    public Object insertContacts(final ContactItem[] contacts, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.addstaff.model.ContactDao_Impl.3
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                ContactDao_Impl.this.__db.beginTransaction();
                try {
                    ContactDao_Impl.this.__insertionAdapterOfContactItem.insert((Object[]) contacts);
                    ContactDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    ContactDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.addstaff.model.ContactDao
    public Object deleteAllContacts(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.laborbook.keep.screen.addstaff.model.ContactDao_Impl.4
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = ContactDao_Impl.this.__preparedStmtOfDeleteAllContacts.acquire();
                try {
                    ContactDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        ContactDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        ContactDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    ContactDao_Impl.this.__preparedStmtOfDeleteAllContacts.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.laborbook.keep.screen.addstaff.model.ContactDao
    public Object getAllContacts(final Continuation<? super List<ContactItem>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM contacts", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<ContactItem>>() { // from class: com.laborbook.keep.screen.addstaff.model.ContactDao_Impl.5
            @Override // java.util.concurrent.Callable
            public List<ContactItem> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(ContactDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mobileNumber");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new ContactItem(cursorQuery.getInt(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3)));
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
