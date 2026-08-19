package com.inmobi.media;

import android.net.Network;
import android.os.SystemClock;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.net.InetAddress;
import java.util.LinkedHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3250m3 implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static AdConfig.CustomNetworkValidation f2312a;

    /* JADX INFO: renamed from: b */
    public static volatile Network f2313b;

    /* JADX INFO: renamed from: c */
    public static volatile boolean f2314c;

    /* JADX INFO: renamed from: d */
    public static long f2315d;

    /* JADX INFO: renamed from: e */
    public static long f2316e;

    /* JADX INFO: renamed from: f */
    public static final AtomicBoolean f2317f;

    static {
        C3250m3 c3250m3 = new C3250m3();
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("ads", C2849Kb.m1248b(), c3250m3);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        f2312a = ((AdConfig) configM1161a).getCustomNwValidation();
        f2314c = true;
        f2317f = new AtomicBoolean(false);
    }

    /* JADX INFO: renamed from: a */
    public static void m2294a(final Network network) {
        long nonValidatedExpiry;
        long j = f2316e;
        if (j != 0) {
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
            AdConfig.CustomNetworkValidation customNetworkValidation = f2312a;
            if (jElapsedRealtime < (customNetworkValidation != null ? customNetworkValidation.getRefreshDebounceTime() : 1000L)) {
                return;
            }
        }
        f2316e = SystemClock.elapsedRealtime();
        if (Intrinsics.areEqual(f2313b, network)) {
            long j2 = f2315d;
            ScheduledExecutorService scheduledExecutorService2 = AbstractC3037Xc.f1652a;
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - j2;
            if (f2314c) {
                AdConfig.CustomNetworkValidation customNetworkValidation2 = f2312a;
                nonValidatedExpiry = customNetworkValidation2 != null ? customNetworkValidation2.getValidatedExpiry() : 120000L;
            } else {
                AdConfig.CustomNetworkValidation customNetworkValidation3 = f2312a;
                nonValidatedExpiry = customNetworkValidation3 != null ? customNetworkValidation3.getNonValidatedExpiry() : 30000L;
            }
            if (jElapsedRealtime2 <= nonValidatedExpiry) {
                return;
            }
        }
        if (f2317f.compareAndSet(false, true)) {
            ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.m3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3250m3.m2295b(network);
                }
            });
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2295b(Network network) {
        AdConfig.CustomNetworkValidation customNetworkValidation;
        String urlDomain;
        Intrinsics.checkNotNullParameter(network, "$network");
        try {
            try {
                customNetworkValidation = f2312a;
            } finally {
                f2317f.set(false);
            }
        } catch (Exception unused) {
        }
        boolean z = (customNetworkValidation == null || (urlDomain = customNetworkValidation.getUrlDomain()) == null) ? false : !Intrinsics.areEqual(InetAddress.getByName(urlDomain).toString(), "");
        try {
            f2314c = z;
            f2313b = network;
            f2315d = SystemClock.elapsedRealtime();
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            f2312a = ((AdConfig) config).getCustomNwValidation();
        }
    }
}
