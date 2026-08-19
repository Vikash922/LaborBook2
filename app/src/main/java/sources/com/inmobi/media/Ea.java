package com.inmobi.media;

import android.content.Context;
import com.facebook.internal.AnalyticsEvents;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.CrashConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Ea implements J2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B6 f109a;
    public static G6 b;
    public static final AtomicBoolean c;
    public static TelemetryConfig d;
    public static CrashConfig e;
    public static final ReentrantLock f;
    public static final Da g;
    public static final ReferenceQueue h;
    public static final ConcurrentHashMap i;
    public static final AtomicBoolean j;

    static {
        Ea ea = new Ea();
        f109a = B6.c;
        c = new AtomicBoolean(false);
        f = new ReentrantLock();
        g = Da.f100a;
        h = new ReferenceQueue();
        i = new ConcurrentHashMap();
        j = new AtomicBoolean(false);
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("telemetry", Kb.b(), ea);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        d = (TelemetryConfig) configA;
        Config configA2 = I2.a("crashReporting", Kb.b(), ea);
        Intrinsics.checkNotNull(configA2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig");
        e = (CrashConfig) configA2;
    }

    public static C0314g5 a(String logType, String placementType, boolean z) {
        Intrinsics.checkNotNullParameter(logType, "logType");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Context context = Kb.d();
        if (context == null) {
            return null;
        }
        try {
            b();
            TelemetryConfig.LoggingConfig loggingConfig = d.getLoggingConfig();
            double dB = b(logType, placementType, loggingConfig);
            B6 logLevel = a(logType, placementType, loggingConfig);
            boolean z2 = !loggingConfig.getEnabled();
            long expiry = loggingConfig.getExpiry() * ((long) 1000);
            int maxNoOfEntries = loggingConfig.getMaxNoOfEntries();
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            return new C0314g5(context, dB, logLevel, z2, z, maxNoOfEntries, expiry, false);
        } catch (Exception e2) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
            return null;
        }
    }

    public static void b() {
        if (b != null) {
            return;
        }
        ReentrantLock reentrantLock = f;
        if (reentrantLock.tryLock()) {
            try {
                if (b == null && c.get()) {
                    Context contextD = Kb.d();
                    if (contextD != null) {
                        TelemetryConfig.LoggingConfig loggingConfig = d.getLoggingConfig();
                        b = new G6(contextD, loggingConfig.getLoggingUrl(), loggingConfig.getRetryInterval() * ((long) 1000), loggingConfig.getExpiry(), loggingConfig.getMaxRetries(), loggingConfig.getMaxNoOfEntries());
                    }
                    G6 g6 = b;
                    if (g6 != null) {
                        AbstractC0362j5.a(g6);
                    }
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                f.unlock();
                throw th;
            }
        }
    }

    public static final void c() throws InterruptedException {
        WeakReference weakReference;
        InterfaceC0298f5 interfaceC0298f5;
        while (c.get()) {
            Reference referenceRemove = h.remove();
            ConcurrentHashMap concurrentHashMap = i;
            if (CollectionsKt.contains(concurrentHashMap.keySet(), referenceRemove)) {
                Pair pair = (Pair) concurrentHashMap.get(referenceRemove);
                if (pair != null && (weakReference = (WeakReference) pair.getSecond()) != null && (interfaceC0298f5 = (InterfaceC0298f5) weakReference.get()) != null) {
                    ((C0314g5) interfaceC0298f5).a("ReferenceTracker", " reference " + ((String) pair.getFirst()) + " reference is GCed.");
                }
                TypeIntrinsics.asMutableMap(concurrentHashMap).remove(referenceRemove);
            }
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (((WeakReference) ((Pair) entry.getValue()).getSecond()).get() == null) {
                    i.remove(entry.getKey());
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static B6 a(String str, String str2, TelemetryConfig.LoggingConfig loggingConfig) {
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return C6.a(loggingConfig.getBanner().getAb().getLogLevel());
                    }
                    return C6.a(loggingConfig.getBanner().getNonAb().getLogLevel());
                }
                break;
            case -1052618729:
                if (str.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return C6.a(loggingConfig.getNative().getAb().getLogLevel());
                    }
                    return C6.a(loggingConfig.getNative().getNonAb().getLogLevel());
                }
                break;
            case -171121434:
                if (str.equals("intNative")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return C6.a(loggingConfig.getInt_native().getAb().getLogLevel());
                    }
                    return C6.a(loggingConfig.getInt_native().getNonAb().getLogLevel());
                }
                break;
            case 93166550:
                if (str.equals("audio")) {
                    return C6.a(loggingConfig.getAudio().getNonAb().getLogLevel());
                }
                break;
            case 1957200954:
                if (str.equals("intHtml")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return C6.a(loggingConfig.getInt_html().getAb().getLogLevel());
                    }
                    return C6.a(loggingConfig.getInt_html().getNonAb().getLogLevel());
                }
                break;
            case 1966366787:
                if (str.equals("getToken")) {
                    return C6.a(loggingConfig.getGetToken().getLogLevel());
                }
                break;
        }
        return f109a;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static double b(String str, String str2, TelemetryConfig.LoggingConfig loggingConfig) {
        switch (str.hashCode()) {
            case -1396342996:
                if (!str.equals("banner")) {
                    return 0.01d;
                }
                if (Intrinsics.areEqual(str2, "AB")) {
                    return loggingConfig.getBanner().getAb().getSamplePercent();
                }
                return loggingConfig.getBanner().getNonAb().getSamplePercent();
            case -1052618729:
                if (!str.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
                    return 0.01d;
                }
                if (Intrinsics.areEqual(str2, "AB")) {
                    return loggingConfig.getNative().getAb().getSamplePercent();
                }
                return loggingConfig.getNative().getNonAb().getSamplePercent();
            case -171121434:
                if (!str.equals("intNative")) {
                    return 0.01d;
                }
                if (Intrinsics.areEqual(str2, "AB")) {
                    return loggingConfig.getInt_native().getAb().getSamplePercent();
                }
                return loggingConfig.getInt_native().getNonAb().getSamplePercent();
            case 93166550:
                if (str.equals("audio")) {
                    return loggingConfig.getAudio().getNonAb().getSamplePercent();
                }
                return 0.01d;
            case 1957200954:
                if (!str.equals("intHtml")) {
                    return 0.01d;
                }
                if (Intrinsics.areEqual(str2, "AB")) {
                    return loggingConfig.getInt_html().getAb().getSamplePercent();
                }
                return loggingConfig.getInt_html().getNonAb().getSamplePercent();
            case 1966366787:
                if (str.equals("getToken")) {
                    return loggingConfig.getGetToken().getSamplePercent();
                }
                return 0.01d;
            default:
                return 0.01d;
        }
    }

    public static void a(Object obj, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        try {
            if (d.getLoggingConfig().getEnabled()) {
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).a("RemoteLoggerComponent", "starting to track reference of " + obj);
                }
                if (interfaceC0298f5 != null) {
                    i.put(new PhantomReference(obj, h), new Pair(obj.toString(), new WeakReference(interfaceC0298f5)));
                    if (j.getAndSet(true)) {
                        return;
                    }
                    ScheduledExecutorService scheduledExecutorService = M6.f179a;
                    Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ea$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() throws InterruptedException {
                            Ea.c();
                        }
                    };
                    Intrinsics.checkNotNullParameter("RemoteLoggerComponent", "tag");
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    try {
                        M6.b.submit(runnable);
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e2) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
        }
    }

    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            d = (TelemetryConfig) config;
            G6 g6 = b;
            if (g6 != null) {
                g6.g.set(true);
            }
            b = null;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ea$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ea.a();
                }
            };
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            Xc.f282a.execute(runnable);
            return;
        }
        if (config instanceof CrashConfig) {
            e = (CrashConfig) config;
        }
    }

    public static final void a() {
        b();
    }
}
