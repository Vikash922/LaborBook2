package com.inmobi.media;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0521u3 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f497a = 0;

    public C0521u3(Context context) {
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
