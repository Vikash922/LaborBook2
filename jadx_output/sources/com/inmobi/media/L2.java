package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class L2 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final L2 f166a = new L2();

    public L2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ContentValues contentValues = (ContentValues) obj;
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        if (contentValues.getAsString("config_value") != null) {
            return contentValues.getAsLong("update_ts");
        }
        return null;
    }
}
