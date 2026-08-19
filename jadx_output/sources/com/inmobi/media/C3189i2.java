package com.inmobi.media;

import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.i2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3189i2 {

    /* JADX INFO: renamed from: a */
    public final int f2168a;

    /* JADX INFO: renamed from: b */
    public final String f2169b;

    /* JADX INFO: renamed from: c */
    public final Map f2170c;

    /* JADX INFO: renamed from: d */
    public final boolean f2171d;

    /* JADX INFO: renamed from: e */
    public final boolean f2172e;

    /* JADX INFO: renamed from: f */
    public int f2173f;

    /* JADX INFO: renamed from: g */
    public long f2174g;

    /* JADX INFO: renamed from: h */
    public final long f2175h;

    /* JADX INFO: renamed from: i */
    public final AtomicBoolean f2176i;

    public C3189i2(int i, String url, Map map, boolean z, boolean z2, int i2, long j, long j2) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f2168a = i;
        this.f2169b = url;
        this.f2170c = map;
        this.f2171d = z;
        this.f2172e = z2;
        this.f2173f = i2;
        this.f2174g = j;
        this.f2175h = j2;
        this.f2176i = new AtomicBoolean(false);
    }

    public /* synthetic */ C3189i2(String str, Map map, boolean z, boolean z2, int i, int i2) {
        this(new Random().nextInt() & Integer.MAX_VALUE, str, (i2 & 4) != 0 ? null : map, z, z2, i, System.currentTimeMillis(), System.currentTimeMillis());
    }
}
