package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.I9 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC2817I9 {

    /* JADX INFO: renamed from: a */
    public static final EnumC2817I9 f1114a;

    /* JADX INFO: renamed from: b */
    public static final EnumC2817I9 f1115b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2817I9 f1116c;

    /* JADX INFO: renamed from: d */
    public static final EnumC2817I9 f1117d;

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ EnumC2817I9[] f1118e;

    static {
        EnumC2817I9 enumC2817I9 = new EnumC2817I9("PORTRAIT", 0);
        f1114a = enumC2817I9;
        EnumC2817I9 enumC2817I92 = new EnumC2817I9("LANDSCAPE", 1);
        f1115b = enumC2817I92;
        EnumC2817I9 enumC2817I93 = new EnumC2817I9("REVERSE_PORTRAIT", 2);
        f1116c = enumC2817I93;
        EnumC2817I9 enumC2817I94 = new EnumC2817I9("REVERSE_LANDSCAPE", 3);
        f1117d = enumC2817I94;
        EnumC2817I9[] enumC2817I9Arr = {enumC2817I9, enumC2817I92, enumC2817I93, enumC2817I94};
        f1118e = enumC2817I9Arr;
        EnumEntriesKt.enumEntries(enumC2817I9Arr);
    }

    public EnumC2817I9(String str, int i) {
    }

    public static EnumC2817I9 valueOf(String str) {
        return (EnumC2817I9) Enum.valueOf(EnumC2817I9.class, str);
    }

    public static EnumC2817I9[] values() {
        return (EnumC2817I9[]) f1118e.clone();
    }
}
