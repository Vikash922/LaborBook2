package com.amplitude.android.migration;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.amplitude.common.Logger;
import com.amplitude.common.android.LogcatLogger;
import com.facebook.appevents.UserDataStore;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: DatabaseStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u0005¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u0005J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#H\u0016J\"\u0010$\u001a\u00020\u00132\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0016JY\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0010\u0010)\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010*2\b\u0010+\u001a\u0004\u0018\u00010\u00052\u0010\u0010,\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010*2\b\u0010-\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0002\u0010.J\f\u0010/\u001a\b\u0012\u0004\u0012\u00020100J\u0016\u00102\u001a\b\u0012\u0004\u0012\u000201002\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\f\u00103\u001a\b\u0012\u0004\u0012\u00020100J\f\u00104\u001a\b\u0012\u0004\u0012\u00020100J\u000e\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0018J\u0018\u00107\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u0018H\u0002J\u000e\u00108\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0018J\u000e\u00109\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0018J\u000e\u0010:\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010;\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005J\u0018\u0010<\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006="}, m2722d2 = {"Lcom/amplitude/android/migration/DatabaseStorage;", "Landroid/database/sqlite/SQLiteOpenHelper;", "context", "Landroid/content/Context;", "databaseName", "", "logger", "Lcom/amplitude/common/Logger;", "(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;)V", "<set-?>", "", "currentDbVersion", "getCurrentDbVersion", "()I", ShareInternalUtility.STAGING_PARAM, "Ljava/io/File;", "isValidDatabaseFile", "", "closeDb", "", "convertIfCursorWindowException", "e", "Ljava/lang/RuntimeException;", "getLongValue", "", "key", "(Ljava/lang/String;)Ljava/lang/Long;", "getValue", "getValueFromTable", "", "table", "handleIfCursorRowTooLargeException", "Ljava/lang/IllegalStateException;", "onCreate", UserDataStore.DATE_OF_BIRTH, "Landroid/database/sqlite/SQLiteDatabase;", "onUpgrade", "oldVersion", "newVersion", "queryDb", "Landroid/database/Cursor;", "columns", "", "selection", "selectionArgs", "orderBy", "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "readEventsContent", "", "Lorg/json/JSONObject;", "readEventsFromTable", "readIdentifiesContent", "readInterceptedIdentifiesContent", "removeEvent", "rowId", "removeEventFromTable", "removeIdentify", "removeInterceptedIdentify", "removeLongValue", "removeValue", "removeValueFromTable", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class DatabaseStorage extends SQLiteOpenHelper {
    private int currentDbVersion;
    private File file;
    private boolean isValidDatabaseFile;
    private final Logger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatabaseStorage(Context context, String databaseName, Logger logger) {
        super(context, databaseName, (SQLiteDatabase.CursorFactory) null, 4);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(databaseName, "databaseName");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        File databasePath = context.getDatabasePath(databaseName);
        Intrinsics.checkNotNullExpressionValue(databasePath, "context.getDatabasePath(databaseName)");
        this.file = databasePath;
        this.isValidDatabaseFile = true;
        this.currentDbVersion = 4;
    }

    public final int getCurrentDbVersion() {
        return this.currentDbVersion;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        this.isValidDatabaseFile = false;
        this.logger.error(Intrinsics.stringPlus("Attempt to re-create existing legacy database file ", this.file.getAbsolutePath()));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        this.currentDbVersion = oldVersion;
    }

    private final Cursor queryDb(SQLiteDatabase db, String table, String[] columns, String selection, String[] selectionArgs, String orderBy) {
        return db.query(table, columns, selection, selectionArgs, null, null, orderBy, null);
    }

    private final void handleIfCursorRowTooLargeException(IllegalStateException e) {
        String message = e.getMessage();
        if (message != null && message.length() != 0 && StringsKt.contains$default((CharSequence) message, (CharSequence) "Couldn't read", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) message, (CharSequence) "CursorWindow", false, 2, (Object) null)) {
            closeDb();
            return;
        }
        throw e;
    }

    private final void convertIfCursorWindowException(RuntimeException e) {
        String message = e.getMessage();
        String str = message;
        if (str == null || str.length() == 0) {
            throw e;
        }
        if (StringsKt.startsWith$default(message, "Cursor window allocation of", false, 2, (Object) null) || StringsKt.startsWith$default(message, "Could not allocate CursorWindow", false, 2, (Object) null)) {
            throw new CursorWindowAllocationException(message);
        }
        throw e;
    }

    private final void closeDb() {
        try {
            close();
        } catch (Exception e) {
            LogcatLogger.INSTANCE.getLogger().error(Intrinsics.stringPlus("close failed: ", e.getMessage()));
        }
    }

    public final synchronized List<JSONObject> readEventsContent() {
        return readEventsFromTable(DatabaseConstants.EVENT_TABLE_NAME);
    }

    public final synchronized List<JSONObject> readIdentifiesContent() {
        return readEventsFromTable(DatabaseConstants.IDENTIFY_TABLE_NAME);
    }

    public final synchronized List<JSONObject> readInterceptedIdentifiesContent() {
        if (this.currentDbVersion < 4) {
            return CollectionsKt.emptyList();
        }
        return readEventsFromTable(DatabaseConstants.IDENTIFY_INTERCEPTOR_TABLE_NAME);
    }

    private final List<JSONObject> readEventsFromTable(String table) {
        SQLiteDatabase db;
        if (!this.file.exists()) {
            return new ArrayList();
        }
        LinkedList linkedList = new LinkedList();
        Cursor cursorQueryDb = null;
        try {
            try {
                try {
                    try {
                        db = getReadableDatabase();
                    } catch (StackOverflowError e) {
                        LogcatLogger.INSTANCE.getLogger().error("read events from " + table + " failed: " + ((Object) e.getMessage()));
                        closeDb();
                        if (0 == 0) {
                        }
                        close();
                        return linkedList;
                    }
                } catch (RuntimeException e2) {
                    convertIfCursorWindowException(e2);
                    if (0 == 0) {
                    }
                    close();
                    return linkedList;
                }
            } catch (SQLiteException e3) {
                LogcatLogger.INSTANCE.getLogger().error("read events from " + table + " failed: " + ((Object) e3.getMessage()));
                closeDb();
                if (0 != 0) {
                    break;
                }
                close();
                return linkedList;
            } catch (IllegalStateException e4) {
                handleIfCursorRowTooLargeException(e4);
                if (0 != 0) {
                    break;
                }
                close();
                return linkedList;
            }
            if (!this.isValidDatabaseFile) {
                ArrayList arrayList = new ArrayList();
                close();
                return arrayList;
            }
            Intrinsics.checkNotNullExpressionValue(db, "db");
            cursorQueryDb = queryDb(db, table, new String[]{"id", "event"}, null, null, "id ASC");
            while (true) {
                Intrinsics.checkNotNull(cursorQueryDb);
                if (!cursorQueryDb.moveToNext()) {
                    break;
                }
                long j = cursorQueryDb.getLong(0);
                String string = cursorQueryDb.getString(1);
                String str = string;
                if (str != null && str.length() != 0) {
                    JSONObject jSONObject = new JSONObject(string);
                    jSONObject.put(DatabaseConstants.ROW_ID_FIELD, j);
                    linkedList.add(jSONObject);
                }
            }
            cursorQueryDb.close();
            close();
            return linkedList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQueryDb.close();
            }
            close();
            throw th;
        }
    }

    public final synchronized void removeEvent(long rowId) {
        removeEventFromTable(DatabaseConstants.EVENT_TABLE_NAME, rowId);
    }

    public final synchronized void removeIdentify(long rowId) {
        removeEventFromTable(DatabaseConstants.IDENTIFY_TABLE_NAME, rowId);
    }

    public final synchronized void removeInterceptedIdentify(long rowId) {
        if (this.currentDbVersion < 4) {
            return;
        }
        removeEventFromTable(DatabaseConstants.IDENTIFY_INTERCEPTOR_TABLE_NAME, rowId);
    }

    private final void removeEventFromTable(String table, long rowId) {
        try {
            try {
                getWritableDatabase().delete(table, "id = ?", new String[]{String.valueOf(rowId)});
            } catch (SQLiteException e) {
                LogcatLogger.INSTANCE.getLogger().error("remove events from " + table + " failed: " + ((Object) e.getMessage()));
                closeDb();
            } catch (StackOverflowError e2) {
                LogcatLogger.INSTANCE.getLogger().error("remove events from " + table + " failed: " + ((Object) e2.getMessage()));
                closeDb();
            }
        } finally {
            close();
        }
    }

    public final synchronized String getValue(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (String) getValueFromTable(DatabaseConstants.STORE_TABLE_NAME, key);
    }

    public final synchronized Long getLongValue(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (Long) getValueFromTable(DatabaseConstants.LONG_STORE_TABLE_NAME, key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.database.Cursor] */
    private final Object getValueFromTable(String table, String key) throws Throwable {
        Cursor cursorQueryDb;
        SQLiteDatabase db;
        ?? r3 = 0;
        string = null;
        string = null;
        string = null;
        string = null;
        string = null;
        string = null;
        string = null;
        string = null;
        Object string = null;
        try {
            if (!this.file.exists()) {
                return null;
            }
            try {
                db = getReadableDatabase();
            } catch (SQLiteException e) {
                e = e;
                cursorQueryDb = null;
            } catch (IllegalStateException e2) {
                e = e2;
                cursorQueryDb = null;
            } catch (RuntimeException e3) {
                e = e3;
                cursorQueryDb = null;
            } catch (StackOverflowError e4) {
                e = e4;
                cursorQueryDb = null;
            } catch (Throwable th) {
                th = th;
                if (r3 != 0) {
                    r3.close();
                }
                close();
                throw th;
            }
            if (!this.isValidDatabaseFile) {
                close();
                return null;
            }
            Intrinsics.checkNotNullExpressionValue(db, "db");
            cursorQueryDb = queryDb(db, table, new String[]{"key", "value"}, "key = ?", new String[]{key}, null);
            try {
                Intrinsics.checkNotNull(cursorQueryDb);
                if (cursorQueryDb.moveToFirst()) {
                    string = Intrinsics.areEqual(table, DatabaseConstants.STORE_TABLE_NAME) ? cursorQueryDb.getString(1) : Long.valueOf(cursorQueryDb.getLong(1));
                }
            } catch (SQLiteException e5) {
                e = e5;
                LogcatLogger.INSTANCE.getLogger().error("getValue from " + table + " failed: " + ((Object) e.getMessage()));
                closeDb();
                if (cursorQueryDb != null) {
                }
                close();
                return string;
            } catch (IllegalStateException e6) {
                e = e6;
                handleIfCursorRowTooLargeException(e);
                if (cursorQueryDb == null) {
                }
                close();
                return string;
            } catch (RuntimeException e7) {
                e = e7;
                convertIfCursorWindowException(e);
                if (cursorQueryDb == null) {
                }
                close();
                return string;
            } catch (StackOverflowError e8) {
                e = e8;
                LogcatLogger.INSTANCE.getLogger().error("getValue from " + table + " failed: " + ((Object) e.getMessage()));
                closeDb();
                if (cursorQueryDb == null) {
                }
                close();
                return string;
            }
            cursorQueryDb.close();
            close();
            return string;
            LogcatLogger.INSTANCE.getLogger().error("getValue from " + table + " failed: " + ((Object) e.getMessage()));
            closeDb();
            if (cursorQueryDb != null) {
                cursorQueryDb.close();
            }
            close();
            return string;
        } catch (Throwable th2) {
            th = th2;
            r3 = key;
        }
    }

    public final synchronized void removeValue(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        removeValueFromTable(DatabaseConstants.STORE_TABLE_NAME, key);
    }

    public final synchronized void removeLongValue(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        removeValueFromTable(DatabaseConstants.LONG_STORE_TABLE_NAME, key);
    }

    private final void removeValueFromTable(String table, String key) {
        try {
            try {
                try {
                    getWritableDatabase().delete(table, "key = ?", new String[]{key});
                } catch (SQLiteException e) {
                    LogcatLogger.INSTANCE.getLogger().error("remove value from " + table + " failed: " + ((Object) e.getMessage()));
                    closeDb();
                }
            } catch (StackOverflowError e2) {
                LogcatLogger.INSTANCE.getLogger().error("remove value from " + table + " failed: " + ((Object) e2.getMessage()));
                closeDb();
            }
        } finally {
            close();
        }
    }
}
