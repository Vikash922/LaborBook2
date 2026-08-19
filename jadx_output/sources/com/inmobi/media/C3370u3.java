package com.inmobi.media;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3370u3 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f2640a = 0;

    public C3370u3(Context context) {
        super(context, "com.im_10.8.3.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase db, int i, int i2) {
        Intrinsics.checkNotNullParameter(db, "db");
    }
}
