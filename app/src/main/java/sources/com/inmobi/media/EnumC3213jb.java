package com.inmobi.media;

import com.google.firebase.perf.FirebasePerformance;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.jb */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3213jb {

    /* JADX INFO: renamed from: a */
    public static final EnumC3213jb f2228a;

    /* JADX INFO: renamed from: b */
    public static final EnumC3213jb f2229b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC3213jb[] f2230c;

    static {
        EnumC3213jb enumC3213jb = new EnumC3213jb("GET", 0);
        f2228a = enumC3213jb;
        EnumC3213jb enumC3213jb2 = new EnumC3213jb("POST", 1);
        f2229b = enumC3213jb2;
        EnumC3213jb[] enumC3213jbArr = {enumC3213jb, enumC3213jb2, new EnumC3213jb(FirebasePerformance.HttpMethod.PUT, 2), new EnumC3213jb(FirebasePerformance.HttpMethod.DELETE, 3), new EnumC3213jb(FirebasePerformance.HttpMethod.PATCH, 4)};
        f2230c = enumC3213jbArr;
        EnumEntriesKt.enumEntries(enumC3213jbArr);
    }

    public EnumC3213jb(String str, int i) {
    }

    public static EnumC3213jb valueOf(String str) {
        return (EnumC3213jb) Enum.valueOf(EnumC3213jb.class, str);
    }

    public static EnumC3213jb[] values() {
        return (EnumC3213jb[]) f2230c.clone();
    }
}
