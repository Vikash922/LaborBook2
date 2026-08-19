package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes6.dex */
public final class A6 extends R1 {
    public C0346i5 b;

    static {
        Intrinsics.checkNotNullExpressionValue("A6", "getSimpleName(...)");
    }

    public A6() {
        super("logs_v2", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT NOT NULL, saveTimestamp INTEGER NOT NULL, retryCount INTEGER NOT NULL, hasLoggerFinished INTEGER NOT NULL, checkpoints INTEGER NOT NULL,lastRetryTimestamp INTEGER NOT NULL )");
    }

    @Override // com.inmobi.media.R1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("filename");
        Long asLong = contentValues.getAsLong("saveTimestamp");
        Integer asInteger = contentValues.getAsInteger("retryCount");
        Long asLong2 = contentValues.getAsLong("lastRetryTimestamp");
        Integer asInteger2 = contentValues.getAsInteger("checkpoints");
        Integer asInteger3 = contentValues.getAsInteger("hasLoggerFinished");
        boolean z = asInteger3 != null && asInteger3.intValue() == 1;
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asLong);
        long jLongValue = asLong.longValue();
        Intrinsics.checkNotNull(asInteger);
        int iIntValue = asInteger.intValue();
        Intrinsics.checkNotNull(asLong2);
        long jLongValue2 = asLong2.longValue();
        Intrinsics.checkNotNull(asInteger2);
        return new C0596z6(asString, jLongValue, iIntValue, jLongValue2, z, asInteger2.intValue());
    }

    @Override // com.inmobi.media.R1
    public final ContentValues b(Object obj) {
        C0596z6 item = (C0596z6) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        ContentValues contentValues = new ContentValues();
        contentValues.put("filename", item.f546a);
        contentValues.put("saveTimestamp", Long.valueOf(item.b));
        contentValues.put("retryCount", Integer.valueOf(item.c));
        contentValues.put("lastRetryTimestamp", Long.valueOf(item.d));
        contentValues.put("checkpoints", Integer.valueOf(item.f));
        contentValues.put("hasLoggerFinished", Integer.valueOf(item.e ? 1 : 0));
        return contentValues;
    }

    public final void b(C0596z6 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        b(data, "filename=\"" + data.f546a + Typography.quote, null);
        if (this.b != null) {
            C0346i5.a();
        }
    }

    public final void a(C0596z6 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        a("filename=\"" + data.f546a + Typography.quote, null);
    }
}
