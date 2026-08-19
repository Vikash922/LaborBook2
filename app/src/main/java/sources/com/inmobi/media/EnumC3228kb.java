package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.kb */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3228kb {

    /* JADX INFO: renamed from: a */
    public static final EnumC3228kb f2260a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC3228kb[] f2261b;

    static {
        EnumC3228kb enumC3228kb = new EnumC3228kb("HIGH", 0);
        EnumC3228kb enumC3228kb2 = new EnumC3228kb("LOW", 1);
        f2260a = enumC3228kb2;
        EnumC3228kb[] enumC3228kbArr = {enumC3228kb, enumC3228kb2};
        f2261b = enumC3228kbArr;
        EnumEntriesKt.enumEntries(enumC3228kbArr);
    }

    public EnumC3228kb(String str, int i) {
    }

    public static EnumC3228kb valueOf(String str) {
        return (EnumC3228kb) Enum.valueOf(EnumC3228kb.class, str);
    }

    public static EnumC3228kb[] values() {
        return (EnumC3228kb[]) f2261b.clone();
    }
}
