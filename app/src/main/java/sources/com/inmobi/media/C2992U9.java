package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.U9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2992U9 {

    /* JADX INFO: renamed from: a */
    public final C3133e6 f1569a;

    public C2992U9(Context context, String sharePrefFile) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharePrefFile, "sharePrefFile");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        this.f1569a = AbstractC3118d6.m2058a(context, sharePrefFile);
    }

    /* JADX INFO: renamed from: a */
    public final void m1850a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C3133e6.m2101a(this.f1569a, key, value, false, 4, (Object) null);
    }

    /* JADX INFO: renamed from: b */
    public final void m1853b(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C3133e6.m2101a(this.f1569a, key, value, false, 4, (Object) null);
        m1849a(System.currentTimeMillis() / ((long) 1000));
    }

    /* JADX INFO: renamed from: c */
    public final boolean m1855c(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f1569a.m2105a(key);
    }

    /* JADX INFO: renamed from: a */
    public final void m1851a(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        C3133e6.m2102a(this.f1569a, key, z, false, 4, (Object) null);
    }

    /* JADX INFO: renamed from: a */
    public final String m1847a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        C3133e6 c3133e6 = this.f1569a;
        c3133e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        return c3133e6.f2045a.getString(key, null);
    }

    /* JADX INFO: renamed from: b */
    public final long m1852b() {
        C3133e6 c3133e6 = this.f1569a;
        c3133e6.getClass();
        Intrinsics.checkNotNullParameter("last_ts", "key");
        return c3133e6.f2045a.getLong("last_ts", 0L);
    }

    /* JADX INFO: renamed from: a */
    public final void m1849a(long j) {
        C3133e6.m2100a(this.f1569a, "last_ts", j, false, 4, (Object) null);
    }

    /* JADX INFO: renamed from: a */
    public final void m1848a() {
        this.f1569a.m2106b();
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1854b(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        C3133e6 c3133e6 = this.f1569a;
        c3133e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        return c3133e6.f2045a.contains(key);
    }
}
