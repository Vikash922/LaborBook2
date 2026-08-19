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

/* JADX INFO: renamed from: com.inmobi.media.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0434o1 implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CountDownLatch f439a;
    public final String b;
    public final long c;
    public final String d;

    public C0434o1(CountDownLatch countDownLatch, String remoteUrl, long j, String assetAdType) {
        Intrinsics.checkNotNullParameter(countDownLatch, "countDownLatch");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        Intrinsics.checkNotNullParameter(assetAdType, "assetAdType");
        this.f439a = countDownLatch;
        this.b = remoteUrl;
        this.c = j;
        this.d = assetAdType;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object proxy, Method method, Object[] args) {
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(args, "args");
        C0477r1 c0477r1 = C0477r1.f467a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        Objects.toString(method);
        if (method == null) {
            return null;
        }
        if (!StringsKt.equals("onSuccess", method.getName(), true)) {
            if (!StringsKt.equals("onError", method.getName(), true)) {
                return null;
            }
            C0477r1.f467a.c(this.b);
            this.f439a.countDown();
            return null;
        }
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.c)), TuplesKt.to("size", 0), TuplesKt.to("assetType", "image"), TuplesKt.to("networkType", E3.q()), TuplesKt.to("adType", this.d));
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AssetDownloaded", mapHashMapOf, EnumC0415mc.f426a);
        C0477r1.f467a.d(this.b);
        this.f439a.countDown();
        return null;
    }
}
