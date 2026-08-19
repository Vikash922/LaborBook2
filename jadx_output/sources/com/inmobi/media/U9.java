package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class U9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0284e6 f255a;

    public U9(Context context, String sharePrefFile) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharePrefFile, "sharePrefFile");
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        this.f255a = AbstractC0268d6.a(context, sharePrefFile);
    }

    public final void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C0284e6.a(this.f255a, key, value, false, 4, (Object) null);
    }

    public final void b(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C0284e6.a(this.f255a, key, value, false, 4, (Object) null);
        a(System.currentTimeMillis() / ((long) 1000));
    }

    public final boolean c(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f255a.a(key);
    }

    public final void a(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        C0284e6.a(this.f255a, key, z, false, 4, (Object) null);
    }

    public final String a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        C0284e6 c0284e6 = this.f255a;
        c0284e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        return c0284e6.f340a.getString(key, null);
    }

    public final long b() {
        C0284e6 c0284e6 = this.f255a;
        c0284e6.getClass();
        Intrinsics.checkNotNullParameter("last_ts", "key");
        return c0284e6.f340a.getLong("last_ts", 0L);
    }

    public final void a(long j) {
        C0284e6.a(this.f255a, "last_ts", j, false, 4, (Object) null);
    }

    public final void a() {
        this.f255a.b();
    }

    public final boolean b(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        C0284e6 c0284e6 = this.f255a;
        c0284e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        return c0284e6.f340a.contains(key);
    }
}
