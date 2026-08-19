package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.R3 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC2944R3 {

    /* JADX INFO: renamed from: a */
    public static final EnumC2944R3 f1490a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2944R3[] f1491b;

    static {
        EnumC2944R3 enumC2944R3 = new EnumC2944R3("URL", 0);
        f1490a = enumC2944R3;
        EnumC2944R3[] enumC2944R3Arr = {enumC2944R3, new EnumC2944R3("HTML", 1)};
        f1491b = enumC2944R3Arr;
        EnumEntriesKt.enumEntries(enumC2944R3Arr);
    }

    public EnumC2944R3(String str, int i) {
    }

    public static EnumC2944R3 valueOf(String str) {
        return (EnumC2944R3) Enum.valueOf(EnumC2944R3.class, str);
    }

    public static EnumC2944R3[] values() {
        return (EnumC2944R3[]) f1491b.clone();
    }
}
