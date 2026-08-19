package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.nc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0430nc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0284e6 f437a;
    public static int b;
    public static Integer c;

    static {
        C0284e6 c0284e6A;
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            c0284e6A = AbstractC0268d6.a(contextD, "imtelemetrydboverflow");
        } else {
            c0284e6A = null;
        }
        f437a = c0284e6A;
        b = -1;
    }

    public static int a() {
        if (b == -1) {
            C0284e6 c0284e6 = f437a;
            int i = 0;
            if (c0284e6 != null) {
                Intrinsics.checkNotNullParameter("count", "key");
                i = c0284e6.f340a.getInt("count", 0);
            }
            b = i;
        }
        return b;
    }
}
