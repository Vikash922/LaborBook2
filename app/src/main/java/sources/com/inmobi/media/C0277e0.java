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

/* JADX INFO: renamed from: com.inmobi.media.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0277e0 implements J2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ScheduledExecutorService f336a;
    public static ExecutorService b;
    public static final Lazy c;
    public static C0246c0 d;
    public static AdConfig e;

    static {
        C0277e0 c0277e0 = new C0277e0();
        c = LazyKt.lazy(C0262d0.f327a);
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("ads", Kb.b(), c0277e0);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        e = (AdConfig) configA;
    }

    public static void a(long j, final C0261d execute) {
        Intrinsics.checkNotNullParameter(execute, "execute");
        ScheduledExecutorService scheduledExecutorService = f336a;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(5, new ThreadFactoryC0453p5("AdQualityComponent-aqHandler"));
            Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
            f336a = scheduledExecutorServiceNewScheduledThreadPool;
        }
        ScheduledExecutorService scheduledExecutorService2 = f336a;
        if (scheduledExecutorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aqHandlerExecutor");
            scheduledExecutorService2 = null;
        }
        scheduledExecutorService2.schedule(new Runnable() { // from class: com.inmobi.media.e0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0277e0.b(execute);
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public static final void b(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public static void a(final C0245c execute) {
        Intrinsics.checkNotNullParameter(execute, "execute");
        ExecutorService executorService = b;
        if (executorService == null || executorService.isShutdown()) {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC0453p5("AdQualityComponent-aqBeacon"));
            Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
            b = executorServiceNewSingleThreadExecutor;
        }
        ExecutorService executorService2 = b;
        if (executorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aqBeaconExecutor");
            executorService2 = null;
        }
        executorService2.submit(new Runnable() { // from class: com.inmobi.media.e0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0277e0.a(execute);
            }
        });
    }

    public static final void a(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            AdConfig adConfig = (AdConfig) config;
            e = adConfig;
            C0246c0 c0246c0 = d;
            if (c0246c0 != null) {
                Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                c0246c0.f316a = adConfig;
                if (!c0246c0.b.get()) {
                    if (adConfig.getAdQuality().getEnabled()) {
                        c0246c0.a();
                        return;
                    }
                    return;
                }
                if (!c0246c0.b.get() || adConfig.getAdQuality().getEnabled()) {
                    return;
                }
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                Intrinsics.checkNotNullParameter("kill switch encountered. shut down.", "message");
                Log.i("AdQualityBeaconExecutor", "kill switch encountered. shut down.");
                c0246c0.b.set(false);
                ExecutorService executorService = b;
                if (executorService != null) {
                    executorService.shutdown();
                    try {
                        try {
                            executorService.shutdownNow();
                        } catch (InterruptedException unused) {
                            executorService.shutdownNow();
                            Thread.currentThread().interrupt();
                        }
                    } catch (Exception e2) {
                        Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
                        Intrinsics.checkNotNullParameter("shutdown fail", "message");
                        Log.e("AdQualityComponent", "shutdown fail", e2);
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    public static void a(Activity activity, Ya renderView, String beaconUrl, boolean z, JSONObject extras, La listener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C0418n0 adQualityManager = renderView.getAdQualityManager();
        adQualityManager.getClass();
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C0246c0 c0246c0 = null;
        if (extras.length() > 0 && beaconUrl.length() > 0) {
            adQualityManager.j = beaconUrl;
            adQualityManager.k = extras;
            adQualityManager.a("report ad starting");
            if (z) {
                adQualityManager.a("report ad capture");
                adQualityManager.a(activity, 0L, true, listener);
            } else {
                adQualityManager.a("report ad report");
                adQualityManager.a(new AdQualityResult("", null, beaconUrl, extras.toString()), false);
            }
        } else {
            listener.f170a.b("window.mraidview.broadcastEvent('AdReportFailed')");
            adQualityManager.a((Exception) null, "Incorrect parameters for reporting. url - " + beaconUrl + " , extras - " + extras);
        }
        C0246c0 c0246c02 = d;
        if (c0246c02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
        } else {
            c0246c0 = c0246c02;
        }
        c0246c0.getClass();
        Intrinsics.checkNotNullParameter(beaconUrl, "beaconUrl");
        Intrinsics.checkNotNullParameter(listener, "listener");
        c0246c0.d.put(beaconUrl, new WeakReference(listener));
        String creativeID = renderView.getCreativeID();
        if (creativeID.length() > 0) {
            Lazy lazy = c;
            if (((CopyOnWriteArrayList) lazy.getValue()).size() < e.getAdReport().getCridls()) {
                ((CopyOnWriteArrayList) lazy.getValue()).add(creativeID);
            }
        }
    }

    public static void a(Ya view, Ya renderView, String beaconUrl, boolean z, JSONObject extras, La listener) {
        Intrinsics.checkNotNullParameter(view, "adView");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C0418n0 adQualityManager = renderView.getAdQualityManager();
        adQualityManager.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C0246c0 c0246c0 = null;
        if (extras.length() > 0 && beaconUrl.length() > 0) {
            adQualityManager.j = beaconUrl;
            adQualityManager.k = extras;
            if (z) {
                adQualityManager.a(view, 0L, true, listener);
            } else {
                adQualityManager.a(new AdQualityResult("", null, beaconUrl, extras.toString()), false);
            }
        } else {
            listener.f170a.b("window.mraidview.broadcastEvent('AdReportFailed')");
            adQualityManager.a((Exception) null, "Incorrect parameters for reporting. url - " + beaconUrl + " , extras - " + extras);
        }
        C0246c0 c0246c02 = d;
        if (c0246c02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
        } else {
            c0246c0 = c0246c02;
        }
        c0246c0.getClass();
        Intrinsics.checkNotNullParameter(beaconUrl, "beaconUrl");
        Intrinsics.checkNotNullParameter(listener, "listener");
        c0246c0.d.put(beaconUrl, new WeakReference(listener));
        String creativeID = renderView.getCreativeID();
        if (creativeID.length() > 0) {
            Lazy lazy = c;
            if (((CopyOnWriteArrayList) lazy.getValue()).size() < e.getAdReport().getCridls()) {
                ((CopyOnWriteArrayList) lazy.getValue()).add(creativeID);
            }
        }
    }
}
