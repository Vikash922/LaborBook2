package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.kb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC0383kb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EnumC0383kb f406a;
    public static final /* synthetic */ EnumC0383kb[] b;

    static {
        EnumC0383kb enumC0383kb = new EnumC0383kb("HIGH", 0);
        EnumC0383kb enumC0383kb2 = new EnumC0383kb("LOW", 1);
        f406a = enumC0383kb2;
        EnumC0383kb[] enumC0383kbArr = {enumC0383kb, enumC0383kb2};
        b = enumC0383kbArr;
        EnumEntriesKt.enumEntries(enumC0383kbArr);
    }

    public EnumC0383kb(String str, int i) {
    }

    public static EnumC0383kb valueOf(String str) {
        return (EnumC0383kb) Enum.valueOf(EnumC0383kb.class, str);
    }

    public static EnumC0383kb[] values() {
        return (EnumC0383kb[]) b.clone();
    }
}
