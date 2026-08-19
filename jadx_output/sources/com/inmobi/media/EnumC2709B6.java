package com.inmobi.media;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.B6 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC2709B6 {

    /* JADX INFO: renamed from: a */
    public static final EnumC2709B6 f851a;

    /* JADX INFO: renamed from: b */
    public static final EnumC2709B6 f852b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2709B6 f853c;

    /* JADX INFO: renamed from: d */
    public static final EnumC2709B6 f854d;

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ EnumC2709B6[] f855e;

    static {
        EnumC2709B6 enumC2709B6 = new EnumC2709B6("INFO", 0);
        f851a = enumC2709B6;
        EnumC2709B6 enumC2709B62 = new EnumC2709B6("DEBUG", 1);
        f852b = enumC2709B62;
        EnumC2709B6 enumC2709B63 = new EnumC2709B6("ERROR", 2);
        f853c = enumC2709B63;
        EnumC2709B6 enumC2709B64 = new EnumC2709B6(InMobiNetworkKeys.STATE, 3);
        f854d = enumC2709B64;
        EnumC2709B6[] enumC2709B6Arr = {enumC2709B6, enumC2709B62, enumC2709B63, enumC2709B64};
        f855e = enumC2709B6Arr;
        EnumEntriesKt.enumEntries(enumC2709B6Arr);
    }

    public EnumC2709B6(String str, int i) {
    }

    public static EnumC2709B6 valueOf(String str) {
        return (EnumC2709B6) Enum.valueOf(EnumC2709B6.class, str);
    }

    public static EnumC2709B6[] values() {
        return (EnumC2709B6[]) f855e.clone();
    }
}
