package com.inmobi.media;

import android.util.SparseArray;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.B1 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC2704B1 {

    /* JADX INFO: renamed from: b */
    public static final C2689A1 f839b;

    /* JADX INFO: renamed from: c */
    public static final SparseArray f840c;

    /* JADX INFO: renamed from: d */
    public static final EnumC2704B1 f841d;

    /* JADX INFO: renamed from: e */
    public static final EnumC2704B1 f842e;

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ EnumC2704B1[] f843f;

    /* JADX INFO: renamed from: a */
    public final int f844a;

    static {
        EnumC2704B1 enumC2704B1 = new EnumC2704B1(0, 0, "UNKNOWN");
        f841d = enumC2704B1;
        EnumC2704B1 enumC2704B12 = new EnumC2704B1(1, 1, "PLAYING");
        f842e = enumC2704B12;
        EnumC2704B1[] enumC2704B1Arr = {enumC2704B1, enumC2704B12, new EnumC2704B1(2, 2, "PAUSED"), new EnumC2704B1(3, 3, "COMPLETED")};
        f843f = enumC2704B1Arr;
        EnumEntriesKt.enumEntries(enumC2704B1Arr);
        f839b = new C2689A1();
        f840c = new SparseArray();
        for (EnumC2704B1 enumC2704B13 : values()) {
            f840c.put(enumC2704B13.f844a, enumC2704B13);
        }
    }

    public EnumC2704B1(int i, int i2, String str) {
        this.f844a = i2;
    }

    public static EnumC2704B1 valueOf(String str) {
        return (EnumC2704B1) Enum.valueOf(EnumC2704B1.class, str);
    }

    public static EnumC2704B1[] values() {
        return (EnumC2704B1[]) f843f.clone();
    }
}
