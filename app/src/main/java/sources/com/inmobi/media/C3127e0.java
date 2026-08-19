package com.inmobi.media;

import android.app.Activity;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.e0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3127e0 implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static ScheduledExecutorService f2033a;

    /* JADX INFO: renamed from: b */
    public static ExecutorService f2034b;

    /* JADX INFO: renamed from: c */
    public static final Lazy f2035c;

    /* JADX INFO: renamed from: d */
    public static C3097c0 f2036d;

    /* JADX INFO: renamed from: e */
    public static AdConfig f2037e;

    static {
        C3127e0 c3127e0 = new C3127e0();
        f2035c = LazyKt.lazy(C3112d0.f1973a);
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("ads", C2849Kb.m1248b(), c3127e0);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        f2037e = (AdConfig) configM1161a;
    }

    /* JADX INFO: renamed from: a */
    public static void m2081a(long j, final C3111d execute) {
        Intrinsics.checkNotNullParameter(execute, "execute");
        ScheduledExecutorService scheduledExecutorService = f2033a;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(5, new ThreadFactoryC3297p5("AdQualityComponent-aqHandler"));
            Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
            f2033a = scheduledExecutorServiceNewScheduledThreadPool;
        }
        ScheduledExecutorService scheduledExecutorService2 = f2033a;
        if (scheduledExecutorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aqHandlerExecutor");
            scheduledExecutorService2 = null;
        }
        scheduledExecutorService2.schedule(new Runnable() { // from class: com.inmobi.media.e0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3127e0.m2086b(execute);
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: b */
    public static final void m2086b(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    /* JADX INFO: renamed from: a */
    public static void m2084a(final C3096c execute) {
        Intrinsics.checkNotNullParameter(execute, "execute");
        ExecutorService executorService = f2034b;
        if (executorService == null || executorService.isShutdown()) {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC3297p5("AdQualityComponent-aqBeacon"));
            Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
            f2034b = executorServiceNewSingleThreadExecutor;
        }
        ExecutorService executorService2 = f2034b;
        if (executorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aqBeaconExecutor");
            executorService2 = null;
        }
        executorService2.submit(new Runnable() { // from class: com.inmobi.media.e0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3127e0.m2085a(execute);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2085a(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            AdConfig adConfig = (AdConfig) config;
            f2037e = adConfig;
            C3097c0 c3097c0 = f2036d;
            if (c3097c0 != null) {
                Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                c3097c0.f1901a = adConfig;
                if (!c3097c0.f1902b.get()) {
                    if (adConfig.getAdQuality().getEnabled()) {
                        c3097c0.m2038a();
                        return;
                    }
                    return;
                }
                if (!c3097c0.f1902b.get() || adConfig.getAdQuality().getEnabled()) {
                    return;
                }
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                Intrinsics.checkNotNullParameter("kill switch encountered. shut down.", "message");
                Log.i("AdQualityBeaconExecutor", "kill switch encountered. shut down.");
                c3097c0.f1902b.set(false);
                ExecutorService executorService = f2034b;
                if (executorService != null) {
                    executorService.shutdown();
                    try {
                        try {
                            executorService.shutdownNow();
                        } catch (InterruptedException unused) {
                            executorService.shutdownNow();
                            Thread.currentThread().interrupt();
                        }
                    } catch (Exception e) {
                        Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
                        Intrinsics.checkNotNullParameter("shutdown fail", "message");
                        Log.e("AdQualityComponent", "shutdown fail", e);
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2082a(Activity activity, GestureDetectorOnGestureListenerC3049Ya renderView, String beaconUrl, boolean z, JSONObject extras, C2863La listener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3262n0 adQualityManager = renderView.getAdQualityManager();
        adQualityManager.getClass();
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3097c0 c3097c0 = null;
        if (extras.length() > 0 && beaconUrl.length() > 0) {
            adQualityManager.f2365j = beaconUrl;
            adQualityManager.f2366k = extras;
            adQualityManager.m2305a("report ad starting");
            if (z) {
                adQualityManager.m2305a("report ad capture");
                adQualityManager.m2301a(activity, 0L, true, listener);
            } else {
                adQualityManager.m2305a("report ad report");
                adQualityManager.m2302a(new AdQualityResult("", null, beaconUrl, extras.toString()), false);
            }
        } else {
            listener.f1236a.m1960b("window.mraidview.broadcastEvent('AdReportFailed')");
            adQualityManager.m2304a((Exception) null, "Incorrect parameters for reporting. url - " + beaconUrl + " , extras - " + extras);
        }
        C3097c0 c3097c02 = f2036d;
        if (c3097c02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
        } else {
            c3097c0 = c3097c02;
        }
        c3097c0.getClass();
        Intrinsics.checkNotNullParameter(beaconUrl, "beaconUrl");
        Intrinsics.checkNotNullParameter(listener, "listener");
        c3097c0.f1904d.put(beaconUrl, new WeakReference(listener));
        String creativeID = renderView.getCreativeID();
        if (creativeID.length() > 0) {
            Lazy lazy = f2035c;
            if (((CopyOnWriteArrayList) lazy.getValue()).size() < f2037e.getAdReport().getCridls()) {
                ((CopyOnWriteArrayList) lazy.getValue()).add(creativeID);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2083a(GestureDetectorOnGestureListenerC3049Ya view, GestureDetectorOnGestureListenerC3049Ya renderView, String beaconUrl, boolean z, JSONObject extras, C2863La listener) {
        Intrinsics.checkNotNullParameter(view, "adView");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3262n0 adQualityManager = renderView.getAdQualityManager();
        adQualityManager.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3097c0 c3097c0 = null;
        if (extras.length() > 0 && beaconUrl.length() > 0) {
            adQualityManager.f2365j = beaconUrl;
            adQualityManager.f2366k = extras;
            if (z) {
                adQualityManager.m2303a(view, 0L, true, listener);
            } else {
                adQualityManager.m2302a(new AdQualityResult("", null, beaconUrl, extras.toString()), false);
            }
        } else {
            listener.f1236a.m1960b("window.mraidview.broadcastEvent('AdReportFailed')");
            adQualityManager.m2304a((Exception) null, "Incorrect parameters for reporting. url - " + beaconUrl + " , extras - " + extras);
        }
        C3097c0 c3097c02 = f2036d;
        if (c3097c02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
        } else {
            c3097c0 = c3097c02;
        }
        c3097c0.getClass();
        Intrinsics.checkNotNullParameter(beaconUrl, "beaconUrl");
        Intrinsics.checkNotNullParameter(listener, "listener");
        c3097c0.f1904d.put(beaconUrl, new WeakReference(listener));
        String creativeID = renderView.getCreativeID();
        if (creativeID.length() > 0) {
            Lazy lazy = f2035c;
            if (((CopyOnWriteArrayList) lazy.getValue()).size() < f2037e.getAdReport().getCridls()) {
                ((CopyOnWriteArrayList) lazy.getValue()).add(creativeID);
            }
        }
    }
}
