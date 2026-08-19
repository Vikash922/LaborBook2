package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;

/* JADX INFO: renamed from: com.inmobi.media.A6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2694A6 extends AbstractC2942R1 {

    /* JADX INFO: renamed from: b */
    public C3192i5 f822b;

    static {
        Intrinsics.checkNotNullExpressionValue("A6", "getSimpleName(...)");
    }

    public C2694A6() {
        super("logs_v2", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT NOT NULL, saveTimestamp INTEGER NOT NULL, retryCount INTEGER NOT NULL, hasLoggerFinished INTEGER NOT NULL, checkpoints INTEGER NOT NULL,lastRetryTimestamp INTEGER NOT NULL )");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
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
        return new C3448z6(asString, jLongValue, iIntValue, jLongValue2, z, asInteger2.intValue());
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        C3448z6 item = (C3448z6) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        ContentValues contentValues = new ContentValues();
        contentValues.put("filename", item.f2791a);
        contentValues.put("saveTimestamp", Long.valueOf(item.f2792b));
        contentValues.put("retryCount", Integer.valueOf(item.f2793c));
        contentValues.put("lastRetryTimestamp", Long.valueOf(item.f2794d));
        contentValues.put("checkpoints", Integer.valueOf(item.f2796f));
        contentValues.put("hasLoggerFinished", Integer.valueOf(item.f2795e ? 1 : 0));
        return contentValues;
    }

    /* JADX INFO: renamed from: b */
    public final void m839b(C3448z6 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        m1756b(data, "filename=\"" + data.f2791a + Typography.quote, null);
        if (this.f822b != null) {
            C3192i5.m2244a();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m837a(C3448z6 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        m1752a("filename=\"" + data.f2791a + Typography.quote, null);
    }
}
