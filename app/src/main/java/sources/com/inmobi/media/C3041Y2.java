package com.inmobi.media;

import android.content.ContentValues;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Y2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3041Y2 extends AbstractC2942R1 {
    public C3041Y2() {
        super("c_data", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, e_data TEXT NOT NULL, timestamp INTEGER NOT NULL )");
        Intrinsics.checkNotNullExpressionValue("Y2", "getSimpleName(...)");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("e_data");
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        Long asLong = contentValues.getAsLong(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP);
        Intrinsics.checkNotNullExpressionValue(asLong, "getAsLong(...)");
        return new C3056Z3(asString, asLong.longValue());
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        C3056Z3 data = (C3056Z3) obj;
        Intrinsics.checkNotNullParameter(data, "data");
        ContentValues contentValues = new ContentValues();
        contentValues.put("e_data", data.f1800a);
        contentValues.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, Long.valueOf(data.f1801b));
        return contentValues;
    }
}
