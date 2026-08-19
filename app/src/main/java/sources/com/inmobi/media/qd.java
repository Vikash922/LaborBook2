package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes6.dex */
public final class qd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final qd f465a;
    public static final qd b;
    public static final qd c;
    public static final /* synthetic */ qd[] d;

    static {
        qd qdVar = new qd("UNKNOWN", 0);
        f465a = qdVar;
        qd qdVar2 = new qd("HIDDEN", 1);
        b = qdVar2;
        qd qdVar3 = new qd("VISIBLE", 2);
        c = qdVar3;
        qd[] qdVarArr = {qdVar, qdVar2, qdVar3};
        d = qdVarArr;
        EnumEntriesKt.enumEntries(qdVarArr);
    }

    public qd(String str, int i) {
    }

    public static qd valueOf(String str) {
        return (qd) Enum.valueOf(qd.class, str);
    }

    public static qd[] values() {
        return (qd[]) d.clone();
    }
}
