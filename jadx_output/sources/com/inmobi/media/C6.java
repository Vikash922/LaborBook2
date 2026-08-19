package com.inmobi.media;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class C6 {
    public static final B6 a(String logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return StringsKt.equals(logLevel, "DEBUG", true) ? B6.b : StringsKt.equals(logLevel, "ERROR", true) ? B6.c : StringsKt.equals(logLevel, "INFO", true) ? B6.f82a : StringsKt.equals(logLevel, InMobiNetworkKeys.STATE, true) ? B6.d : B6.c;
    }
}
