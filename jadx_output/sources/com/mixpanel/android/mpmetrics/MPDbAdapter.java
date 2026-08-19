package com.mixpanel.android.mpmetrics;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.amplitude.android.migration.DatabaseConstants;
import com.mixpanel.android.util.MPLog;
import java.io.File;
import java.io.FilenameFilter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class MPDbAdapter {
    public static final int AUTOMATIC_DATA_COLUMN_INDEX = 3;
    public static final int CREATED_AT_COLUMN_INDEX = 2;
    private static final String DATABASE_NAME = "mixpanel";
    private static final int DATABASE_VERSION = 7;
    public static final int DATA_COLUMN_INDEX = 1;
    public static final int DB_OUT_OF_MEMORY_ERROR = -2;
    public static final int DB_UNDEFINED_CODE = -3;
    public static final int DB_UPDATE_ERROR = -1;
    public static final int ID_COLUMN_INDEX = 0;
    public static final String KEY_AUTOMATIC_DATA = "automatic_data";
    public static final String KEY_CREATED_AT = "created_at";
    public static final String KEY_DATA = "data";
    public static final String KEY_TOKEN = "token";
    private static final String LOGTAG = "MixpanelAPI.Database";
    private static final int MAX_DB_VERSION = 7;
    private static final int MIN_DB_VERSION = 4;
    public static final int TOKEN_COLUMN_INDEX = 4;
    private final MPDatabaseHelper mDb;
    private static final Map<Context, MPDbAdapter> sInstances = new HashMap();
    private static final String CREATE_EVENTS_TABLE = "CREATE TABLE " + Table.EVENTS.getName() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL, automatic_data INTEGER DEFAULT 0, token STRING NOT NULL DEFAULT '')";
    private static final String CREATE_PEOPLE_TABLE = "CREATE TABLE " + Table.PEOPLE.getName() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL, automatic_data INTEGER DEFAULT 0, token STRING NOT NULL DEFAULT '')";
    private static final String CREATE_GROUPS_TABLE = "CREATE TABLE " + Table.GROUPS.getName() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL, automatic_data INTEGER DEFAULT 0, token STRING NOT NULL DEFAULT '')";
    private static final String CREATE_ANONYMOUS_PEOPLE_TABLE = "CREATE TABLE " + Table.ANONYMOUS_PEOPLE.getName() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL, automatic_data INTEGER DEFAULT 0, token STRING NOT NULL DEFAULT '')";
    private static final String EVENTS_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + Table.EVENTS.getName() + " (created_at);";
    private static final String PEOPLE_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + Table.PEOPLE.getName() + " (created_at);";
    private static final String GROUPS_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + Table.GROUPS.getName() + " (created_at);";
    private static final String ANONYMOUS_PEOPLE_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + Table.ANONYMOUS_PEOPLE.getName() + " (created_at);";

    public enum Table {
        EVENTS(DatabaseConstants.EVENT_TABLE_NAME),
        PEOPLE("people"),
        ANONYMOUS_PEOPLE("anonymous_people"),
        GROUPS("groups");

        private final String mTableName;

        Table(String str) {
            this.mTableName = str;
        }

        public String getName() {
            return this.mTableName;
        }
    }

    private static class MPDatabaseHelper extends SQLiteOpenHelper {
        private final MPConfig mConfig;
        private final Context mContext;
        private final File mDatabaseFile;

        MPDatabaseHelper(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 7);
            this.mDatabaseFile = context.getDatabasePath(str);
            this.mConfig = MPConfig.getInstance(context);
            this.mContext = context;
        }

        public void deleteDatabase() {
            close();
            this.mDatabaseFile.delete();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            MPLog.m2686v(MPDbAdapter.LOGTAG, "Creating a new Mixpanel events DB");
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_GROUPS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_ANONYMOUS_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.EVENTS_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.PEOPLE_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.GROUPS_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.ANONYMOUS_PEOPLE_TIME_INDEX);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            MPLog.m2686v(MPDbAdapter.LOGTAG, "Upgrading app, replacing Mixpanel events DB");
            if (i >= 4 && i2 <= 7) {
                if (i == 4) {
                    migrateTableFrom4To5(sQLiteDatabase);
                    migrateTableFrom5To6(sQLiteDatabase);
                    migrateTableFrom6To7(sQLiteDatabase);
                }
                if (i == 5) {
                    migrateTableFrom5To6(sQLiteDatabase);
                    migrateTableFrom6To7(sQLiteDatabase);
                }
                if (i == 6) {
                    migrateTableFrom6To7(sQLiteDatabase);
                    return;
                }
                return;
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + Table.EVENTS.getName());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + Table.PEOPLE.getName());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + Table.GROUPS.getName());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + Table.ANONYMOUS_PEOPLE.getName());
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_GROUPS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_ANONYMOUS_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.EVENTS_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.PEOPLE_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.GROUPS_TIME_INDEX);
            sQLiteDatabase.execSQL(MPDbAdapter.ANONYMOUS_PEOPLE_TIME_INDEX);
        }

        public boolean aboveMemThreshold() {
            if (this.mDatabaseFile.exists()) {
                return this.mDatabaseFile.length() > Math.max(this.mDatabaseFile.getUsableSpace(), (long) this.mConfig.getMinimumDatabaseLimit()) || this.mDatabaseFile.length() > ((long) this.mConfig.getMaximumDatabaseLimit());
            }
            return false;
        }

        private void migrateTableFrom4To5(SQLiteDatabase sQLiteDatabase) {
            int i;
            String string;
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.EVENTS.getName() + " ADD COLUMN automatic_data INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.PEOPLE.getName() + " ADD COLUMN automatic_data INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.EVENTS.getName() + " ADD COLUMN token STRING NOT NULL DEFAULT ''");
            sQLiteDatabase.execSQL("ALTER TABLE " + Table.PEOPLE.getName() + " ADD COLUMN token STRING NOT NULL DEFAULT ''");
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + Table.EVENTS.getName(), null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    sQLiteDatabase.execSQL("UPDATE " + Table.EVENTS.getName() + " SET " + MPDbAdapter.KEY_TOKEN + " = '" + new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("data") >= 0 ? cursorRawQuery.getColumnIndex("data") : 1)).getJSONObject("properties").getString(MPDbAdapter.KEY_TOKEN) + "' WHERE _id = " + cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id") >= 0 ? cursorRawQuery.getColumnIndex("_id") : 0));
                } catch (JSONException unused) {
                    sQLiteDatabase.delete(Table.EVENTS.getName(), "_id = 0", null);
                }
            }
            Cursor cursorRawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM " + Table.PEOPLE.getName(), null);
            while (cursorRawQuery2.moveToNext()) {
                try {
                    string = new JSONObject(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("data") >= 0 ? cursorRawQuery2.getColumnIndex("data") : 1)).getString("$token");
                    i = cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex("_id") >= 0 ? cursorRawQuery2.getColumnIndex("_id") : 0);
                } catch (JSONException unused2) {
                    i = 0;
                }
                try {
                    sQLiteDatabase.execSQL("UPDATE " + Table.PEOPLE.getName() + " SET " + MPDbAdapter.KEY_TOKEN + " = '" + string + "' WHERE _id = " + i);
                } catch (JSONException unused3) {
                    sQLiteDatabase.delete(Table.PEOPLE.getName(), "_id = " + i, null);
                }
            }
        }

        private void migrateTableFrom5To6(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_GROUPS_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.GROUPS_TIME_INDEX);
        }

        private void migrateTableFrom6To7(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(MPDbAdapter.CREATE_ANONYMOUS_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(MPDbAdapter.ANONYMOUS_PEOPLE_TIME_INDEX);
            File file = new File(this.mContext.getApplicationInfo().dataDir, "shared_prefs");
            if (file.exists() && file.isDirectory()) {
                for (String str : file.list(new FilenameFilter() { // from class: com.mixpanel.android.mpmetrics.MPDbAdapter.MPDatabaseHelper.1
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file2, String str2) {
                        return str2.startsWith("com.mixpanel.android.mpmetrics.MixpanelAPI_");
                    }
                })) {
                    SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(str.split("\\.xml")[0], 0);
                    String string = sharedPreferences.getString("waiting_array", null);
                    if (string != null) {
                        try {
                            JSONArray jSONArray = new JSONArray(string);
                            sQLiteDatabase.beginTransaction();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                try {
                                    try {
                                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                                        String string2 = jSONObject.getString("$token");
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put("data", jSONObject.toString());
                                        contentValues.put(MPDbAdapter.KEY_CREATED_AT, Long.valueOf(System.currentTimeMillis()));
                                        contentValues.put(MPDbAdapter.KEY_AUTOMATIC_DATA, (Boolean) false);
                                        contentValues.put(MPDbAdapter.KEY_TOKEN, string2);
                                        sQLiteDatabase.insert(Table.ANONYMOUS_PEOPLE.getName(), null, contentValues);
                                    } catch (JSONException unused) {
                                    }
                                } catch (Throwable th) {
                                    sQLiteDatabase.endTransaction();
                                    throw th;
                                }
                            }
                            sQLiteDatabase.setTransactionSuccessful();
                            sQLiteDatabase.endTransaction();
                        } catch (JSONException unused2) {
                        }
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.remove("waiting_array");
                        editorEdit.apply();
                    }
                }
            }
        }
    }

    public MPDbAdapter(Context context) {
        this(context, DATABASE_NAME);
    }

    public MPDbAdapter(Context context, String str) {
        this.mDb = new MPDatabaseHelper(context, str);
    }

    public static MPDbAdapter getInstance(Context context) {
        MPDbAdapter mPDbAdapter;
        Map<Context, MPDbAdapter> map = sInstances;
        synchronized (map) {
            Context applicationContext = context.getApplicationContext();
            if (!map.containsKey(applicationContext)) {
                mPDbAdapter = new MPDbAdapter(applicationContext);
                map.put(applicationContext, mPDbAdapter);
            } else {
                mPDbAdapter = map.get(applicationContext);
            }
        }
        return mPDbAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007e A[PHI: r1
      0x007e: PHI (r1v5 android.database.Cursor) = (r1v4 android.database.Cursor), (r1v7 android.database.Cursor) binds: [B:16:0x007c, B:26:0x0099] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int addJSON(org.json.JSONObject r8, java.lang.String r9, com.mixpanel.android.mpmetrics.MPDbAdapter.Table r10) throws java.lang.Throwable {
        /*
            r7 = this;
            java.lang.String r0 = "SELECT COUNT(*) FROM "
            boolean r1 = r7.aboveMemThreshold()
            java.lang.String r2 = "MixpanelAPI.Database"
            if (r1 == 0) goto L11
            java.lang.String r8 = "There is not enough space left on the device or the data was over the maximum size limit so it was discarded"
            com.mixpanel.android.util.MPLog.m2682e(r2, r8)
            r8 = -2
            return r8
        L11:
            java.lang.String r10 = r10.getName()
            r1 = 0
            com.mixpanel.android.mpmetrics.MPDbAdapter$MPDatabaseHelper r3 = r7.mDb     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            android.database.sqlite.SQLiteDatabase r3 = r3.getWritableDatabase()     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            r4.<init>()     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.String r5 = "data"
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            r4.put(r5, r8)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.String r8 = "created_at"
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            r4.put(r8, r5)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.String r8 = "token"
            r4.put(r8, r9)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            r3.insert(r10, r1, r4)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.StringBuilder r8 = r8.append(r10)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.String r10 = " WHERE token='"
            java.lang.StringBuilder r8 = r8.append(r10)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.String r9 = "'"
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            android.database.Cursor r8 = r3.rawQuery(r8, r1)     // Catch: java.lang.Throwable -> L75 java.lang.OutOfMemoryError -> L77 android.database.sqlite.SQLiteException -> L87
            r8.moveToFirst()     // Catch: java.lang.OutOfMemoryError -> L73 android.database.sqlite.SQLiteException -> L88 java.lang.Throwable -> L9e
            r9 = 0
            int r9 = r8.getInt(r9)     // Catch: java.lang.OutOfMemoryError -> L73 android.database.sqlite.SQLiteException -> L88 java.lang.Throwable -> L9e
            if (r8 == 0) goto L6d
            r8.close()
        L6d:
            com.mixpanel.android.mpmetrics.MPDbAdapter$MPDatabaseHelper r8 = r7.mDb
            r8.close()
            goto L9d
        L73:
            r1 = r8
            goto L77
        L75:
            r9 = move-exception
            goto La0
        L77:
            java.lang.String r8 = "Out of memory when adding Mixpanel data to table"
            com.mixpanel.android.util.MPLog.m2682e(r2, r8)     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L81
        L7e:
            r1.close()
        L81:
            com.mixpanel.android.mpmetrics.MPDbAdapter$MPDatabaseHelper r8 = r7.mDb
            r8.close()
            goto L9c
        L87:
            r8 = r1
        L88:
            java.lang.String r9 = "Could not add Mixpanel data to table"
            com.mixpanel.android.util.MPLog.m2682e(r2, r9)     // Catch: java.lang.Throwable -> L9e
            if (r8 == 0) goto L93
            r8.close()     // Catch: java.lang.Throwable -> L9e
            goto L94
        L93:
            r1 = r8
        L94:
            com.mixpanel.android.mpmetrics.MPDbAdapter$MPDatabaseHelper r8 = r7.mDb     // Catch: java.lang.Throwable -> L75
            r8.deleteDatabase()     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L81
            goto L7e
        L9c:
            r9 = -1
        L9d:
            return r9
        L9e:
            r9 = move-exception
            r1 = r8
        La0:
            if (r1 == 0) goto La5
            r1.close()
        La5:
            com.mixpanel.android.mpmetrics.MPDbAdapter$MPDatabaseHelper r8 = r7.mDb
            r8.close()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.MPDbAdapter.addJSON(org.json.JSONObject, java.lang.String, com.mixpanel.android.mpmetrics.MPDbAdapter$Table):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v7 */
    int pushAnonymousUpdatesToPeopleDb(String str, String str2) throws Throwable {
        Cursor cursorRawQuery;
        SQLiteDatabase writableDatabase;
        if (aboveMemThreshold()) {
            MPLog.m2682e(LOGTAG, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded");
            return -2;
        }
        ?? r7 = 0;
        r7 = 0;
        int i = -1;
        try {
        } catch (Throwable th) {
            th = th;
            r7 = str;
        }
        try {
            try {
                writableDatabase = this.mDb.getWritableDatabase();
                cursorRawQuery = writableDatabase.rawQuery(new StringBuffer("SELECT * FROM " + Table.ANONYMOUS_PEOPLE.getName() + " WHERE token = '" + str + "'").toString(), null);
            } catch (SQLiteException e) {
                e = e;
                cursorRawQuery = null;
            }
            try {
                writableDatabase.beginTransaction();
                while (cursorRawQuery.moveToNext()) {
                    try {
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(KEY_CREATED_AT, Long.valueOf(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(KEY_CREATED_AT) >= 0 ? cursorRawQuery.getColumnIndex(KEY_CREATED_AT) : 2)));
                            contentValues.put(KEY_AUTOMATIC_DATA, Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(KEY_AUTOMATIC_DATA) >= 0 ? cursorRawQuery.getColumnIndex(KEY_AUTOMATIC_DATA) : 3)));
                            contentValues.put(KEY_TOKEN, cursorRawQuery.getString(cursorRawQuery.getColumnIndex(KEY_TOKEN) >= 0 ? cursorRawQuery.getColumnIndex(KEY_TOKEN) : 4));
                            JSONObject jSONObject = new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("data") >= 0 ? cursorRawQuery.getColumnIndex("data") : 1));
                            jSONObject.put("$distinct_id", str2);
                            contentValues.put("data", jSONObject.toString());
                            writableDatabase.insert(Table.PEOPLE.getName(), null, contentValues);
                            writableDatabase.delete(Table.ANONYMOUS_PEOPLE.getName(), "_id = " + cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id") >= 0 ? cursorRawQuery.getColumnIndex("_id") : 0), null);
                            i++;
                        } catch (JSONException unused) {
                        }
                    } finally {
                        writableDatabase.endTransaction();
                    }
                }
                writableDatabase.setTransactionSuccessful();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (SQLiteException e2) {
                e = e2;
                MPLog.m2683e(LOGTAG, "Could not push anonymous updates records from " + Table.ANONYMOUS_PEOPLE.getName() + ". Re-initializing database.", e);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                } else {
                    r7 = cursorRawQuery;
                }
                this.mDb.deleteDatabase();
                if (r7 != 0) {
                    r7.close();
                }
            }
            this.mDb.close();
            return i;
        } catch (Throwable th2) {
            th = th2;
            if (r7 != 0) {
                r7.close();
            }
            this.mDb.close();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    int rewriteEventDataWithProperties(Map<String, String> map, String str) throws Throwable {
        Cursor cursorRawQuery;
        int i;
        if (aboveMemThreshold()) {
            MPLog.m2682e(LOGTAG, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded");
            return -2;
        }
        int i2 = 0;
        ?? r8 = 0;
        r8 = 0;
        Cursor cursor = null;
        try {
            try {
                try {
                    SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                    cursorRawQuery = writableDatabase.rawQuery(new StringBuffer("SELECT * FROM " + Table.EVENTS.getName() + " WHERE token = '" + str + "'").toString(), null);
                    try {
                        writableDatabase.beginTransaction();
                        i = 0;
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                try {
                                    try {
                                        ContentValues contentValues = new ContentValues();
                                        JSONObject jSONObject = new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("data") >= 0 ? cursorRawQuery.getColumnIndex("data") : 1));
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("properties");
                                        for (Map.Entry<String, String> entry : map.entrySet()) {
                                            jSONObject2.put(entry.getKey(), entry.getValue());
                                        }
                                        jSONObject.put("properties", jSONObject2);
                                        contentValues.put("data", jSONObject.toString());
                                        writableDatabase.update(Table.EVENTS.getName(), contentValues, "_id = " + cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id") >= 0 ? cursorRawQuery.getColumnIndex("_id") : 0), null);
                                        i++;
                                    } catch (JSONException unused) {
                                    }
                                } catch (SQLiteException e) {
                                    e = e;
                                    i2 = i;
                                    MPLog.m2683e(LOGTAG, "Could not re-write events history. Re-initializing database.", e);
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    } else {
                                        cursor = cursorRawQuery;
                                    }
                                    this.mDb.deleteDatabase();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    this.mDb.close();
                                    i = i2;
                                    r8 = cursor;
                                }
                            } finally {
                                writableDatabase.endTransaction();
                            }
                        }
                        writableDatabase.setTransactionSuccessful();
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        this.mDb.close();
                    } catch (SQLiteException e2) {
                        e = e2;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (r8 != 0) {
                        r8.close();
                    }
                    this.mDb.close();
                    throw th;
                }
            } catch (SQLiteException e3) {
                e = e3;
                cursorRawQuery = null;
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
            r8 = " WHERE token = '";
        }
    }

    public void cleanupEvents(String str, Table table, String str2) {
        String name = table.getName();
        try {
            try {
                this.mDb.getWritableDatabase().delete(name, new StringBuffer("_id <= " + str + " AND token = '" + str2 + "'").toString(), null);
            } catch (SQLiteException e) {
                MPLog.m2683e(LOGTAG, "Could not clean sent Mixpanel records from " + name + ". Re-initializing database.", e);
                this.mDb.deleteDatabase();
            } catch (Exception e2) {
                MPLog.m2683e(LOGTAG, "Unknown exception. Could not clean sent Mixpanel records from " + name + ".Re-initializing database.", e2);
                this.mDb.deleteDatabase();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void cleanupEvents(long j, Table table) {
        String name = table.getName();
        try {
            try {
                this.mDb.getWritableDatabase().delete(name, "created_at <= " + j, null);
            } catch (SQLiteException e) {
                MPLog.m2683e(LOGTAG, "Could not clean timed-out Mixpanel records from " + name + ". Re-initializing database.", e);
                this.mDb.deleteDatabase();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void cleanupAllEvents(Table table, String str) {
        String name = table.getName();
        try {
            try {
                this.mDb.getWritableDatabase().delete(name, "token = '" + str + "'", null);
            } catch (SQLiteException e) {
                MPLog.m2683e(LOGTAG, "Could not clean timed-out Mixpanel records from " + name + ". Re-initializing database.", e);
                this.mDb.deleteDatabase();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void deleteDB() {
        this.mDb.deleteDatabase();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] generateDataString(com.mixpanel.android.mpmetrics.MPDbAdapter.Table r14, java.lang.String r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.MPDbAdapter.generateDataString(com.mixpanel.android.mpmetrics.MPDbAdapter$Table, java.lang.String):java.lang.String[]");
    }

    public File getDatabaseFile() {
        return this.mDb.mDatabaseFile;
    }

    protected boolean aboveMemThreshold() {
        return this.mDb.aboveMemThreshold();
    }
}
