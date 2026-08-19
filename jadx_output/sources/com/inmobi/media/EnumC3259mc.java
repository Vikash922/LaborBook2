package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.mc */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3259mc {

    /* JADX INFO: renamed from: a */
    public static final EnumC3259mc f2349a;

    /* JADX INFO: renamed from: b */
    public static final EnumC3259mc f2350b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC3259mc[] f2351c;

    static {
        EnumC3259mc enumC3259mc = new EnumC3259mc("SDK", 0);
        f2349a = enumC3259mc;
        EnumC3259mc enumC3259mc2 = new EnumC3259mc("TEMPLATE", 1);
        f2350b = enumC3259mc2;
        EnumC3259mc[] enumC3259mcArr = {enumC3259mc, enumC3259mc2};
        f2351c = enumC3259mcArr;
        EnumEntriesKt.enumEntries(enumC3259mcArr);
    }

    public EnumC3259mc(String str, int i) {
    }

    public static EnumC3259mc valueOf(String str) {
        return (EnumC3259mc) Enum.valueOf(EnumC3259mc.class, str);
    }

    public static EnumC3259mc[] values() {
        return (EnumC3259mc[]) f2351c.clone();
    }
}
