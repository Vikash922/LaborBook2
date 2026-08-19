package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0595z5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static C0284e6 f545a;

    public static final C0284e6 a() {
        C0284e6 c0284e6A;
        if (f545a == null) {
            Context contextD = Kb.d();
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                c0284e6A = AbstractC0268d6.a(contextD, "CrashSession-store");
            } else {
                c0284e6A = null;
            }
            f545a = c0284e6A;
        }
        return f545a;
    }

    public static final long a(AbstractC0390l3 crashType) {
        Intrinsics.checkNotNullParameter(crashType, "crashType");
        C0284e6 c0284e6A = a();
        if (c0284e6A == null) {
            return 0L;
        }
        String key = crashType.b;
        Intrinsics.checkNotNullParameter(key, "key");
        return c0284e6A.f340a.getLong(key, 0L);
    }
}
