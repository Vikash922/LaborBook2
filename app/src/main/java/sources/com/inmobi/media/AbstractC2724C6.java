package com.inmobi.media;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.C6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2724C6 {
    /* JADX INFO: renamed from: a */
    public static final EnumC2709B6 m896a(String logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return StringsKt.equals(logLevel, "DEBUG", true) ? EnumC2709B6.f852b : StringsKt.equals(logLevel, "ERROR", true) ? EnumC2709B6.f853c : StringsKt.equals(logLevel, "INFO", true) ? EnumC2709B6.f851a : StringsKt.equals(logLevel, InMobiNetworkKeys.STATE, true) ? EnumC2709B6.f854d : EnumC2709B6.f853c;
    }
}
