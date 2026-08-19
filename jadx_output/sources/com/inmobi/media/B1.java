package com.inmobi.media;

import android.util.SparseArray;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes6.dex */
public final class B1 {
    public static final A1 b;
    public static final SparseArray c;
    public static final B1 d;
    public static final B1 e;
    public static final /* synthetic */ B1[] f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f77a;

    static {
        B1 b1 = new B1(0, 0, "UNKNOWN");
        d = b1;
        B1 b12 = new B1(1, 1, "PLAYING");
        e = b12;
        B1[] b1Arr = {b1, b12, new B1(2, 2, "PAUSED"), new B1(3, 3, "COMPLETED")};
        f = b1Arr;
        EnumEntriesKt.enumEntries(b1Arr);
        b = new A1();
        c = new SparseArray();
        for (B1 b13 : values()) {
            c.put(b13.f77a, b13);
        }
    }

    public B1(int i, int i2, String str) {
        this.f77a = i2;
    }

    public static B1 valueOf(String str) {
        return (B1) Enum.valueOf(B1.class, str);
    }

    public static B1[] values() {
        return (B1[]) f.clone();
    }
}
