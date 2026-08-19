package com.inmobi.media;

import com.google.firebase.perf.FirebasePerformance;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.jb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC0368jb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EnumC0368jb f396a;
    public static final EnumC0368jb b;
    public static final /* synthetic */ EnumC0368jb[] c;

    static {
        EnumC0368jb enumC0368jb = new EnumC0368jb("GET", 0);
        f396a = enumC0368jb;
        EnumC0368jb enumC0368jb2 = new EnumC0368jb("POST", 1);
        b = enumC0368jb2;
        EnumC0368jb[] enumC0368jbArr = {enumC0368jb, enumC0368jb2, new EnumC0368jb(FirebasePerformance.HttpMethod.PUT, 2), new EnumC0368jb(FirebasePerformance.HttpMethod.DELETE, 3), new EnumC0368jb(FirebasePerformance.HttpMethod.PATCH, 4)};
        c = enumC0368jbArr;
        EnumEntriesKt.enumEntries(enumC0368jbArr);
    }

    public EnumC0368jb(String str, int i) {
    }

    public static EnumC0368jb valueOf(String str) {
        return (EnumC0368jb) Enum.valueOf(EnumC0368jb.class, str);
    }

    public static EnumC0368jb[] values() {
        return (EnumC0368jb[]) c.clone();
    }
}
