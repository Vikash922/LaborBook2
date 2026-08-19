package com.inmobi.media;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlin.text.Typography;

/* JADX INFO: renamed from: com.inmobi.media.v3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3385v3 {

    /* JADX INFO: renamed from: b */
    public static final SQLiteDatabase f2681b;

    /* JADX INFO: renamed from: a */
    public static final C3385v3 f2680a = new C3385v3();

    /* JADX INFO: renamed from: c */
    public static final Object f2682c = new Object();

    static {
        try {
            f2681b = new C3370u3(C2849Kb.m1254d()).getWritableDatabase();
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final int m2499a(String tableName, ContentValues contentValues, String str, String[] strArr) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f2682c) {
            long jM2502a = m2502a(tableName, contentValues);
            if (jM2502a == -1) {
                return m2504b(tableName, contentValues, str, strArr);
            }
            return (int) jM2502a;
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: b */
    public static final int m2504b(String tableName, ContentValues contentValues, String str, String[] strArr) {
        int iUpdateWithOnConflict;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            if (sQLiteDatabase != null) {
                iUpdateWithOnConflict = sQLiteDatabase.updateWithOnConflict(tableName, contentValues, str, strArr, 4);
            } else {
                Intrinsics.checkNotNullExpressionValue("v3", "TAG");
                iUpdateWithOnConflict = -1;
            }
        }
        return iUpdateWithOnConflict;
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final long m2502a(String tableName, ContentValues contentValues) {
        long jInsertWithOnConflict;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            if (sQLiteDatabase != null) {
                jInsertWithOnConflict = sQLiteDatabase.insertWithOnConflict(tableName, null, contentValues, 4);
            } else {
                Intrinsics.checkNotNullExpressionValue("v3", "TAG");
                jInsertWithOnConflict = -1;
            }
        }
        return jInsertWithOnConflict;
    }

    @JvmStatic
    /* JADX INFO: renamed from: b */
    public static final List<ContentValues> m2505b(String tableName, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        Cursor cursorQuery;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            cursorQuery = sQLiteDatabase != null ? sQLiteDatabase.query(tableName, strArr, str, strArr2, str2, str3, str4, str5) : null;
            Unit unit = Unit.INSTANCE;
        }
        if (cursorQuery != null) {
            try {
                ArrayList arrayList = new ArrayList();
                if (cursorQuery.moveToFirst()) {
                    do {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
                        arrayList.add(contentValues);
                    } while (cursorQuery.moveToNext());
                }
                CloseableKt.closeFinally(cursorQuery, null);
                return arrayList;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(cursorQuery, th);
                    throw th2;
                }
            }
        }
        return CollectionsKt.emptyList();
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final int m2500a(String tableName, String str, String[] strArr) {
        int iDelete;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            if (sQLiteDatabase != null) {
                iDelete = sQLiteDatabase.delete(tableName, str, strArr);
            } else {
                Intrinsics.checkNotNullExpressionValue("v3", "TAG");
                iDelete = 0;
            }
        }
        return iDelete;
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m2503a(String tableName) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        String str = "DROP TABLE IF EXISTS \"" + tableName + Typography.quote;
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.execSQL(str);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2506a(String tableName, String tableSchema) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
        String str = "CREATE TABLE IF NOT EXISTS " + tableName + tableSchema + ';';
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.execSQL(str);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final int m2501a(String tableName, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        int i;
        Cursor cursorQuery;
        int columnIndex;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f2682c) {
            SQLiteDatabase sQLiteDatabase = f2681b;
            i = 0;
            cursorQuery = sQLiteDatabase != null ? sQLiteDatabase.query(tableName, new String[]{"COUNT(*) AS count"}, str, strArr2, str2, str3, str4, str5) : null;
            Unit unit = Unit.INSTANCE;
        }
        if (cursorQuery != null) {
            try {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("count")) >= 0) {
                        i = cursorQuery.getInt(columnIndex);
                    }
                    CloseableKt.closeFinally(cursorQuery, null);
                } finally {
                }
            } catch (Exception unused) {
            }
        }
        return i;
    }
}
