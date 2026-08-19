package com.inmobi.media;

import android.os.SystemClock;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.o1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3278o1 implements InvocationHandler {

    /* JADX INFO: renamed from: a */
    public final CountDownLatch f2392a;

    /* JADX INFO: renamed from: b */
    public final String f2393b;

    /* JADX INFO: renamed from: c */
    public final long f2394c;

    /* JADX INFO: renamed from: d */
    public final String f2395d;

    public C3278o1(CountDownLatch countDownLatch, String remoteUrl, long j, String assetAdType) {
        Intrinsics.checkNotNullParameter(countDownLatch, "countDownLatch");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        Intrinsics.checkNotNullParameter(assetAdType, "assetAdType");
        this.f2392a = countDownLatch;
        this.f2393b = remoteUrl;
        this.f2394c = j;
        this.f2395d = assetAdType;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object proxy, Method method, Object[] args) {
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(args, "args");
        C3323r1 c3323r1 = C3323r1.f2477a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        Objects.toString(method);
        if (method == null) {
            return null;
        }
        if (!StringsKt.equals("onSuccess", method.getName(), true)) {
            if (!StringsKt.equals("onError", method.getName(), true)) {
                return null;
            }
            C3323r1.f2477a.m2378c(this.f2393b);
            this.f2392a.countDown();
            return null;
        }
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f2394c)), TuplesKt.m2729to("size", 0), TuplesKt.m2729to("assetType", "image"), TuplesKt.m2729to("networkType", C2751E3.m1005q()), TuplesKt.m2729to("adType", this.f2395d));
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AssetDownloaded", mapHashMapOf, EnumC3259mc.f2349a);
        C3323r1.f2477a.m2379d(this.f2393b);
        this.f2392a.countDown();
        return null;
    }
}
