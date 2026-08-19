package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z5 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3447z5 {

    /* JADX INFO: renamed from: a */
    public static C3133e6 f2790a;

    /* JADX INFO: renamed from: a */
    public static final C3133e6 m2633a() {
        C3133e6 c3133e6M2058a;
        if (f2790a == null) {
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "CrashSession-store");
            } else {
                c3133e6M2058a = null;
            }
            f2790a = c3133e6M2058a;
        }
        return f2790a;
    }

    /* JADX INFO: renamed from: a */
    public static final long m2632a(AbstractC3235l3 crashType) {
        Intrinsics.checkNotNullParameter(crashType, "crashType");
        C3133e6 c3133e6M2633a = m2633a();
        if (c3133e6M2633a == null) {
            return 0L;
        }
        String key = crashType.f2268b;
        Intrinsics.checkNotNullParameter(key, "key");
        return c3133e6M2633a.f2045a.getLong(key, 0L);
    }
}
