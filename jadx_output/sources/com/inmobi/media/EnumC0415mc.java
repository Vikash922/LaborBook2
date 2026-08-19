package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.mc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC0415mc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EnumC0415mc f426a;
    public static final EnumC0415mc b;
    public static final /* synthetic */ EnumC0415mc[] c;

    static {
        EnumC0415mc enumC0415mc = new EnumC0415mc("SDK", 0);
        f426a = enumC0415mc;
        EnumC0415mc enumC0415mc2 = new EnumC0415mc("TEMPLATE", 1);
        b = enumC0415mc2;
        EnumC0415mc[] enumC0415mcArr = {enumC0415mc, enumC0415mc2};
        c = enumC0415mcArr;
        EnumEntriesKt.enumEntries(enumC0415mcArr);
    }

    public EnumC0415mc(String str, int i) {
    }

    public static EnumC0415mc valueOf(String str) {
        return (EnumC0415mc) Enum.valueOf(EnumC0415mc.class, str);
    }

    public static EnumC0415mc[] values() {
        return (EnumC0415mc[]) c.clone();
    }
}
