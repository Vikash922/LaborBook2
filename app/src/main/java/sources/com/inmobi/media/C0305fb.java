package com.inmobi.media;

import android.os.SystemClock;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.fb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0305fb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0242bb f351a;
    public long b;
    public int c;
    public int d;
    public final AtomicInteger e;
    public final AtomicBoolean f;

    public C0305fb(C0242bb renderViewMetaData) {
        Intrinsics.checkNotNullParameter(renderViewMetaData, "renderViewMetaData");
        this.f351a = renderViewMetaData;
        this.e = new AtomicInteger(renderViewMetaData.j.f343a);
        this.f = new AtomicBoolean(false);
    }

    public final Map a() {
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("plType", String.valueOf(this.f351a.f313a.m())), TuplesKt.to("plId", String.valueOf(this.f351a.f313a.l())), TuplesKt.to("adType", String.valueOf(this.f351a.f313a.b())), TuplesKt.to("markupType", this.f351a.b), TuplesKt.to("networkType", E3.q()), TuplesKt.to("retryCount", String.valueOf(this.f351a.d)), TuplesKt.to("creativeType", this.f351a.e), TuplesKt.to("adPosition", String.valueOf(this.f351a.h)), TuplesKt.to("isRewarded", String.valueOf(this.f351a.g)));
        if (this.f351a.c.length() > 0) {
            mapMutableMapOf.put("metadataBlob", this.f351a.c);
        }
        return mapMutableMapOf;
    }

    public final void b() {
        this.b = SystemClock.elapsedRealtime();
        Map mapA = a();
        long j = this.f351a.i.f228a.c;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        mapA.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        mapA.put("creativeId", this.f351a.f);
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("WebViewLoadCalled", mapA, EnumC0415mc.f426a);
    }
}
