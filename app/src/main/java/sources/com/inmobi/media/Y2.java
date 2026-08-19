package com.inmobi.media;

import android.content.ContentValues;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Y2 extends R1 {
    public Y2() {
        super("c_data", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, e_data TEXT NOT NULL, timestamp INTEGER NOT NULL )");
        Intrinsics.checkNotNullExpressionValue("Y2", "getSimpleName(...)");
    }

    @Override // com.inmobi.media.R1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("e_data");
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        Long asLong = contentValues.getAsLong(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP);
        Intrinsics.checkNotNullExpressionValue(asLong, "getAsLong(...)");
        return new Z3(asString, asLong.longValue());
    }

    @Override // com.inmobi.media.R1
    public final ContentValues b(Object obj) {
        Z3 data = (Z3) obj;
        Intrinsics.checkNotNullParameter(data, "data");
        ContentValues contentValues = new ContentValues();
        contentValues.put("e_data", data.f293a);
        contentValues.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, Long.valueOf(data.b));
        return contentValues;
    }
}
