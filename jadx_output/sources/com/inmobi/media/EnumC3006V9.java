package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.V9 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3006V9 {

    /* JADX INFO: renamed from: b */
    public static final EnumC3006V9 f1596b;

    /* JADX INFO: renamed from: c */
    public static final EnumC3006V9 f1597c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC3006V9[] f1598d;

    /* JADX INFO: renamed from: a */
    public final int f1599a;

    static {
        EnumC3006V9 enumC3006V9 = new EnumC3006V9(0, 0, "HIGHEST");
        f1596b = enumC3006V9;
        EnumC3006V9 enumC3006V92 = new EnumC3006V9(1, 1, "HIGH");
        EnumC3006V9 enumC3006V93 = new EnumC3006V9(2, 2, "MEDIUM");
        f1597c = enumC3006V93;
        EnumC3006V9[] enumC3006V9Arr = {enumC3006V9, enumC3006V92, enumC3006V93, new EnumC3006V9(3, 3, "LOW"), new EnumC3006V9(4, 4, "LOWEST")};
        f1598d = enumC3006V9Arr;
        EnumEntriesKt.enumEntries(enumC3006V9Arr);
    }

    public EnumC3006V9(int i, int i2, String str) {
        this.f1599a = i2;
    }

    public static EnumC3006V9 valueOf(String str) {
        return (EnumC3006V9) Enum.valueOf(EnumC3006V9.class, str);
    }

    public static EnumC3006V9[] values() {
        return (EnumC3006V9[]) f1598d.clone();
    }
}
