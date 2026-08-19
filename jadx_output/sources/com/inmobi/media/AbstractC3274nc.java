package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.nc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3274nc {

    /* JADX INFO: renamed from: a */
    public static final C3133e6 f2386a;

    /* JADX INFO: renamed from: b */
    public static int f2387b;

    /* JADX INFO: renamed from: c */
    public static Integer f2388c;

    static {
        C3133e6 c3133e6M2058a;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "imtelemetrydboverflow");
        } else {
            c3133e6M2058a = null;
        }
        f2386a = c3133e6M2058a;
        f2387b = -1;
    }

    /* JADX INFO: renamed from: a */
    public static int m2321a() {
        if (f2387b == -1) {
            C3133e6 c3133e6 = f2386a;
            int i = 0;
            if (c3133e6 != null) {
                Intrinsics.checkNotNullParameter("count", "key");
                i = c3133e6.f2045a.getInt("count", 0);
            }
            f2387b = i;
        }
        return f2387b;
    }
}
