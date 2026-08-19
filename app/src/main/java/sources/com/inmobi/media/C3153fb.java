package com.inmobi.media;

import android.os.SystemClock;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.fb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3153fb {

    /* JADX INFO: renamed from: a */
    public final C3093bb f2076a;

    /* JADX INFO: renamed from: b */
    public long f2077b;

    /* JADX INFO: renamed from: c */
    public int f2078c;

    /* JADX INFO: renamed from: d */
    public int f2079d;

    /* JADX INFO: renamed from: e */
    public final AtomicInteger f2080e;

    /* JADX INFO: renamed from: f */
    public final AtomicBoolean f2081f;

    public C3153fb(C3093bb renderViewMetaData) {
        Intrinsics.checkNotNullParameter(renderViewMetaData, "renderViewMetaData");
        this.f2076a = renderViewMetaData;
        this.f2080e = new AtomicInteger(renderViewMetaData.f1896j.f2049a);
        this.f2081f = new AtomicBoolean(false);
    }

    /* JADX INFO: renamed from: a */
    public final Map m2138a() {
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("plType", String.valueOf(this.f2076a.f1887a.m1939m())), TuplesKt.m2729to("plId", String.valueOf(this.f2076a.f1887a.m1938l())), TuplesKt.m2729to("adType", String.valueOf(this.f2076a.f1887a.m1929b())), TuplesKt.m2729to("markupType", this.f2076a.f1888b), TuplesKt.m2729to("networkType", C2751E3.m1005q()), TuplesKt.m2729to("retryCount", String.valueOf(this.f2076a.f1890d)), TuplesKt.m2729to("creativeType", this.f2076a.f1891e), TuplesKt.m2729to("adPosition", String.valueOf(this.f2076a.f1894h)), TuplesKt.m2729to("isRewarded", String.valueOf(this.f2076a.f1893g)));
        if (this.f2076a.f1889c.length() > 0) {
            mapMutableMapOf.put("metadataBlob", this.f2076a.f1889c);
        }
        return mapMutableMapOf;
    }

    /* JADX INFO: renamed from: b */
    public final void m2139b() {
        this.f2077b = SystemClock.elapsedRealtime();
        Map mapM2138a = m2138a();
        long j = this.f2076a.f1895i.f1488a.f1517c;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        mapM2138a.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        mapM2138a.put("creativeId", this.f2076a.f1892f);
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("WebViewLoadCalled", mapM2138a, EnumC3259mc.f2349a);
    }
}
