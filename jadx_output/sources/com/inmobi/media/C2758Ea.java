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

/* JADX INFO: renamed from: com.inmobi.media.Ea */
/* JADX INFO: loaded from: classes6.dex */
public final class C2758Ea implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static final EnumC2709B6 f1001a;

    /* JADX INFO: renamed from: b */
    public static C2784G6 f1002b;

    /* JADX INFO: renamed from: c */
    public static final AtomicBoolean f1003c;

    /* JADX INFO: renamed from: d */
    public static TelemetryConfig f1004d;

    /* JADX INFO: renamed from: e */
    public static CrashConfig f1005e;

    /* JADX INFO: renamed from: f */
    public static final ReentrantLock f1006f;

    /* JADX INFO: renamed from: g */
    public static final C2743Da f1007g;

    /* JADX INFO: renamed from: h */
    public static final ReferenceQueue f1008h;

    /* JADX INFO: renamed from: i */
    public static final ConcurrentHashMap f1009i;

    /* JADX INFO: renamed from: j */
    public static final AtomicBoolean f1010j;

    static {
        C2758Ea c2758Ea = new C2758Ea();
        f1001a = EnumC2709B6.f853c;
        f1003c = new AtomicBoolean(false);
        f1006f = new ReentrantLock();
        f1007g = C2743Da.f947a;
        f1008h = new ReferenceQueue();
        f1009i = new ConcurrentHashMap();
        f1010j = new AtomicBoolean(false);
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("telemetry", C2849Kb.m1248b(), c2758Ea);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        f1004d = (TelemetryConfig) configM1161a;
        Config configM1161a2 = C2810I2.m1161a("crashReporting", C2849Kb.m1248b(), c2758Ea);
        Intrinsics.checkNotNull(configM1161a2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig");
        f1005e = (CrashConfig) configM1161a2;
    }

    /* JADX INFO: renamed from: a */
    public static C3162g5 m1051a(String logType, String placementType, boolean z) {
        Intrinsics.checkNotNullParameter(logType, "logType");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Context context = C2849Kb.m1254d();
        if (context == null) {
            return null;
        }
        try {
            m1055b();
            TelemetryConfig.LoggingConfig loggingConfig = f1004d.getLoggingConfig();
            double dM1054b = m1054b(logType, placementType, loggingConfig);
            EnumC2709B6 logLevel = m1050a(logType, placementType, loggingConfig);
            boolean z2 = !loggingConfig.getEnabled();
            long expiry = loggingConfig.getExpiry() * ((long) 1000);
            int maxNoOfEntries = loggingConfig.getMaxNoOfEntries();
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            return new C3162g5(context, dM1054b, logLevel, z2, z, maxNoOfEntries, expiry, false);
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1055b() {
        if (f1002b != null) {
            return;
        }
        ReentrantLock reentrantLock = f1006f;
        if (reentrantLock.tryLock()) {
            try {
                if (f1002b == null && f1003c.get()) {
                    Context contextM1254d = C2849Kb.m1254d();
                    if (contextM1254d != null) {
                        TelemetryConfig.LoggingConfig loggingConfig = f1004d.getLoggingConfig();
                        f1002b = new C2784G6(contextM1254d, loggingConfig.getLoggingUrl(), loggingConfig.getRetryInterval() * ((long) 1000), loggingConfig.getExpiry(), loggingConfig.getMaxRetries(), loggingConfig.getMaxNoOfEntries());
                    }
                    C2784G6 c2784g6 = f1002b;
                    if (c2784g6 != null) {
                        AbstractC3207j5.m2258a(c2784g6);
                    }
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                f1006f.unlock();
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m1056c() throws InterruptedException {
        WeakReference weakReference;
        InterfaceC3147f5 interfaceC3147f5;
        while (f1003c.get()) {
            Reference referenceRemove = f1008h.remove();
            ConcurrentHashMap concurrentHashMap = f1009i;
            if (CollectionsKt.contains(concurrentHashMap.keySet(), referenceRemove)) {
                Pair pair = (Pair) concurrentHashMap.get(referenceRemove);
                if (pair != null && (weakReference = (WeakReference) pair.getSecond()) != null && (interfaceC3147f5 = (InterfaceC3147f5) weakReference.get()) != null) {
                    ((C3162g5) interfaceC3147f5).m2147a("ReferenceTracker", " reference " + ((String) pair.getFirst()) + " reference is GCed.");
                }
                TypeIntrinsics.asMutableMap(concurrentHashMap).remove(referenceRemove);
            }
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (((WeakReference) ((Pair) entry.getValue()).getSecond()).get() == null) {
                    f1009i.remove(entry.getKey());
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: a */
    public static EnumC2709B6 m1050a(String str, String str2, TelemetryConfig.LoggingConfig loggingConfig) {
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2724C6.m896a(loggingConfig.getBanner().getAb().getLogLevel());
                    }
                    return AbstractC2724C6.m896a(loggingConfig.getBanner().getNonAb().getLogLevel());
                }
                break;
            case -1052618729:
                if (str.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2724C6.m896a(loggingConfig.getNative().getAb().getLogLevel());
                    }
                    return AbstractC2724C6.m896a(loggingConfig.getNative().getNonAb().getLogLevel());
                }
                break;
            case -171121434:
                if (str.equals("intNative")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2724C6.m896a(loggingConfig.getInt_native().getAb().getLogLevel());
                    }
                    return AbstractC2724C6.m896a(loggingConfig.getInt_native().getNonAb().getLogLevel());
                }
                break;
            case 93166550:
                if (str.equals("audio")) {
                    return AbstractC2724C6.m896a(loggingConfig.getAudio().getNonAb().getLogLevel());
                }
                break;
            case 1957200954:
                if (str.equals("intHtml")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2724C6.m896a(loggingConfig.getInt_html().getAb().getLogLevel());
                    }
                    return AbstractC2724C6.m896a(loggingConfig.getInt_html().getNonAb().getLogLevel());
                }
                break;
            case 1966366787:
                if (str.equals("getToken")) {
                    return AbstractC2724C6.m896a(loggingConfig.getGetToken().getLogLevel());
                }
                break;
        }
        return f1001a;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: b */
    public static double m1054b(String str, String str2, TelemetryConfig.LoggingConfig loggingConfig) {
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

    /* JADX INFO: renamed from: a */
    public static void m1053a(Object obj, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        try {
            if (f1004d.getLoggingConfig().getEnabled()) {
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2147a("RemoteLoggerComponent", "starting to track reference of " + obj);
                }
                if (interfaceC3147f5 != null) {
                    f1009i.put(new PhantomReference(obj, f1008h), new Pair(obj.toString(), new WeakReference(interfaceC3147f5)));
                    if (f1010j.getAndSet(true)) {
                        return;
                    }
                    ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
                    Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ea$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() throws InterruptedException {
                            C2758Ea.m1056c();
                        }
                    };
                    Intrinsics.checkNotNullParameter("RemoteLoggerComponent", "tag");
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    try {
                        AbstractC2874M6.f1258b.submit(runnable);
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            f1004d = (TelemetryConfig) config;
            C2784G6 c2784g6 = f1002b;
            if (c2784g6 != null) {
                c2784g6.f1053g.set(true);
            }
            f1002b = null;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ea$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2758Ea.m1052a();
                }
            };
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC3037Xc.f1652a.execute(runnable);
            return;
        }
        if (config instanceof CrashConfig) {
            f1005e = (CrashConfig) config;
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1052a() {
        m1055b();
    }
}
