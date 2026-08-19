package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.qd */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3320qd {

    /* JADX INFO: renamed from: a */
    public static final EnumC3320qd f2470a;

    /* JADX INFO: renamed from: b */
    public static final EnumC3320qd f2471b;

    /* JADX INFO: renamed from: c */
    public static final EnumC3320qd f2472c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC3320qd[] f2473d;

    static {
        EnumC3320qd enumC3320qd = new EnumC3320qd("UNKNOWN", 0);
        f2470a = enumC3320qd;
        EnumC3320qd enumC3320qd2 = new EnumC3320qd("HIDDEN", 1);
        f2471b = enumC3320qd2;
        EnumC3320qd enumC3320qd3 = new EnumC3320qd("VISIBLE", 2);
        f2472c = enumC3320qd3;
        EnumC3320qd[] enumC3320qdArr = {enumC3320qd, enumC3320qd2, enumC3320qd3};
        f2473d = enumC3320qdArr;
        EnumEntriesKt.enumEntries(enumC3320qdArr);
    }

    public EnumC3320qd(String str, int i) {
    }

    public static EnumC3320qd valueOf(String str) {
        return (EnumC3320qd) Enum.valueOf(EnumC3320qd.class, str);
    }

    public static EnumC3320qd[] values() {
        return (EnumC3320qd[]) f2473d.clone();
    }
}
