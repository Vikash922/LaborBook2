package com.inmobi.media;

import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Hc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f132a;
    public HashMap b = new LinkedHashMap();

    public Hc(byte b) {
        this.f132a = b;
    }

    public final Object a(String key, Class classType) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(classType, "classType");
        Object obj = this.b.get(key);
        if (classType.isInstance(obj)) {
            return classType.cast(obj);
        }
        return null;
    }
}
