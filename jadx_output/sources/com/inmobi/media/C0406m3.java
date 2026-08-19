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

/* JADX INFO: renamed from: com.inmobi.media.m3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0406m3 implements J2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AdConfig.CustomNetworkValidation f420a;
    public static volatile Network b;
    public static volatile boolean c;
    public static long d;
    public static long e;
    public static final AtomicBoolean f;

    static {
        C0406m3 c0406m3 = new C0406m3();
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("ads", Kb.b(), c0406m3);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        f420a = ((AdConfig) configA).getCustomNwValidation();
        c = true;
        f = new AtomicBoolean(false);
    }

    public static void a(final Network network) {
        long nonValidatedExpiry;
        long j = e;
        if (j != 0) {
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
            AdConfig.CustomNetworkValidation customNetworkValidation = f420a;
            if (jElapsedRealtime < (customNetworkValidation != null ? customNetworkValidation.getRefreshDebounceTime() : 1000L)) {
                return;
            }
        }
        e = SystemClock.elapsedRealtime();
        if (Intrinsics.areEqual(b, network)) {
            long j2 = d;
            ScheduledExecutorService scheduledExecutorService2 = Xc.f282a;
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - j2;
            if (c) {
                AdConfig.CustomNetworkValidation customNetworkValidation2 = f420a;
                nonValidatedExpiry = customNetworkValidation2 != null ? customNetworkValidation2.getValidatedExpiry() : 120000L;
            } else {
                AdConfig.CustomNetworkValidation customNetworkValidation3 = f420a;
                nonValidatedExpiry = customNetworkValidation3 != null ? customNetworkValidation3.getNonValidatedExpiry() : 30000L;
            }
            if (jElapsedRealtime2 <= nonValidatedExpiry) {
                return;
            }
        }
        if (f.compareAndSet(false, true)) {
            ((ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.m3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0406m3.b(network);
                }
            });
        }
    }

    public static final void b(Network network) {
        AdConfig.CustomNetworkValidation customNetworkValidation;
        String urlDomain;
        Intrinsics.checkNotNullParameter(network, "$network");
        try {
            try {
                customNetworkValidation = f420a;
            } finally {
                f.set(false);
            }
        } catch (Exception unused) {
        }
        boolean z = (customNetworkValidation == null || (urlDomain = customNetworkValidation.getUrlDomain()) == null) ? false : !Intrinsics.areEqual(InetAddress.getByName(urlDomain).toString(), "");
        try {
            c = z;
            b = network;
            d = SystemClock.elapsedRealtime();
        } catch (Exception e2) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
    }

    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            f420a = ((AdConfig) config).getCustomNwValidation();
        }
    }
}
