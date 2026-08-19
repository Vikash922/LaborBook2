package com.inmobi.media;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes6.dex */
public final class B6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B6 f82a;
    public static final B6 b;
    public static final B6 c;
    public static final B6 d;
    public static final /* synthetic */ B6[] e;

    static {
        B6 b6 = new B6("INFO", 0);
        f82a = b6;
        B6 b62 = new B6("DEBUG", 1);
        b = b62;
        B6 b63 = new B6("ERROR", 2);
        c = b63;
        B6 b64 = new B6(InMobiNetworkKeys.STATE, 3);
        d = b64;
        B6[] b6Arr = {b6, b62, b63, b64};
        e = b6Arr;
        EnumEntriesKt.enumEntries(b6Arr);
    }

    public B6(String str, int i) {
    }

    public static B6 valueOf(String str) {
        return (B6) Enum.valueOf(B6.class, str);
    }

    public static B6[] values() {
        return (B6[]) e.clone();
    }
}
