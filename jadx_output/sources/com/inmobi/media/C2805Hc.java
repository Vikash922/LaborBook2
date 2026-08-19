package com.inmobi.media;

import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Hc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2805Hc {

    /* JADX INFO: renamed from: a */
    public final byte f1084a;

    /* JADX INFO: renamed from: b */
    public HashMap f1085b = new LinkedHashMap();

    public C2805Hc(byte b) {
        this.f1084a = b;
    }

    /* JADX INFO: renamed from: a */
    public final Object m1153a(String key, Class classType) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(classType, "classType");
        Object obj = this.f1085b.get(key);
        if (classType.isInstance(obj)) {
            return classType.cast(obj);
        }
        return null;
    }
}
