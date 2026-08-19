package com.inmobi.media;

import android.content.Context;
import android.media.AudioManager;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.s */
/* JADX INFO: loaded from: classes6.dex */
public final class C3336s {

    /* JADX INFO: renamed from: b */
    public static AudioManager f2518b;

    /* JADX INFO: renamed from: c */
    public static C3261n f2519c;

    /* JADX INFO: renamed from: f */
    public static ScheduledFuture f2522f;

    /* JADX INFO: renamed from: h */
    public static C3306q f2524h;

    /* JADX INFO: renamed from: a */
    public static final C3336s f2517a = new C3336s();

    /* JADX INFO: renamed from: d */
    public static final AtomicBoolean f2520d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e */
    public static final AtomicReference f2521e = new AtomicReference(null);

    /* JADX INFO: renamed from: g */
    public static final Set f2523g = Collections.synchronizedSet(new LinkedHashSet());

    /* JADX INFO: renamed from: a */
    public static void m2387a(final InterfaceC3147f5 interfaceC3147f5, final C2848Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3336s.m2389b(interfaceC3147f5, listener);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public static final void m2389b(InterfaceC3147f5 interfaceC3147f5, C2848Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Adding audio volume change listener. Existing listeners - " + f2523g.size());
        }
        Set<WeakReference> listeners = f2523g;
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        for (WeakReference weakReference : listeners) {
            if (weakReference.get() == null) {
                f2523g.remove(weakReference);
            }
        }
        Set set = f2523g;
        boolean zIsEmpty = set.isEmpty();
        set.add(new WeakReference(listener));
        Float f = (Float) f2521e.get();
        listener.f1170a.m1960b("window.mraidview.broadcastEvent('audioVolumeChange', " + (f != null ? Float.valueOf(AbstractC3429y2.m2601a(f.floatValue() * 100.0f)) : null) + ");");
        if (!zIsEmpty) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Resuming audio volume change listener");
                return;
            }
            return;
        }
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Starting audio volume change listener");
        }
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("AdAudioTracker", "Context is null. Cannot start audio volume tracking");
            }
            m2388a((Float) null);
            return;
        }
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(AbstractC3444z2.m2631a(new C3321r(interfaceC3147f5, contextM1254d, ((AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getMraid3().getMuteChangeInterval())));
        if (thM3328exceptionOrNullimpl != null) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("AdAudioTracker", "Error starting audio volume tracking - " + thM3328exceptionOrNullimpl.getMessage());
            }
            m2388a((Float) null);
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m2392c(final InterfaceC3147f5 interfaceC3147f5, final C2848Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3336s.m2394d(interfaceC3147f5, listener);
            }
        });
    }

    /* JADX INFO: renamed from: d */
    public static final void m2394d(InterfaceC3147f5 interfaceC3147f5, C2848Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Removing audio volume change listener");
        }
        Set<WeakReference> listeners = f2523g;
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        for (WeakReference weakReference : listeners) {
            if (Intrinsics.areEqual(weakReference.get(), listener)) {
                f2523g.remove(weakReference);
            }
        }
        if (f2523g.isEmpty()) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Stopping audio volume change listener");
            }
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d == null) {
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2151b("AdAudioTracker", "Context is null. Cannot stop audio volume tracking");
                }
                m2388a((Float) null);
            } else {
                if (!f2520d.compareAndSet(true, false)) {
                    if (interfaceC3147f5 != null) {
                        ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Audio volume tracking is already stopped");
                        return;
                    }
                    return;
                }
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Stopping audio volume tracking");
                }
                Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(AbstractC3444z2.m2631a(new C3291p(contextM1254d)));
                if (thM3328exceptionOrNullimpl == null || interfaceC3147f5 == null) {
                    return;
                }
                ((C3162g5) interfaceC3147f5).m2151b("AdAudioTracker", "Error cleaning up audio volume tracker - " + thM3328exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public static final void m2395e() {
        if (f2520d.get() && m2390b()) {
            m2388a(Float.valueOf(0.0f));
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2386a(long j) {
        f2522f = ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue()).scheduleWithFixedDelay(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3336s.m2395e();
            }
        }, 0L, j, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: c */
    public static void m2391c() {
        if (!C2751E3.f962a.m1013H()) {
            m2388a((Float) null);
        } else {
            ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    C3336s.m2393d();
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0026  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized float m2396a() {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = m2390b()     // Catch: java.lang.Throwable -> L2d
            android.media.AudioManager r1 = com.inmobi.media.C3336s.f2518b     // Catch: java.lang.Throwable -> L2d
            r2 = 3
            r3 = 0
            if (r1 == 0) goto L10
            int r1 = r1.getStreamVolume(r2)     // Catch: java.lang.Throwable -> L2d
            goto L11
        L10:
            r1 = r3
        L11:
            android.media.AudioManager r4 = com.inmobi.media.C3336s.f2518b     // Catch: java.lang.Throwable -> L2d
            if (r4 == 0) goto L19
            int r3 = r4.getStreamMaxVolume(r2)     // Catch: java.lang.Throwable -> L2d
        L19:
            if (r0 == 0) goto L1c
            goto L26
        L1c:
            if (r1 >= 0) goto L1f
            goto L26
        L1f:
            if (r1 <= r3) goto L24
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L2b
        L24:
            if (r3 != 0) goto L28
        L26:
            r0 = 0
            goto L2b
        L28:
            float r0 = (float) r1
            float r1 = (float) r3
            float r0 = r0 / r1
        L2b:
            monitor-exit(r5)
            return r0
        L2d:
            r0 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L2d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3336s.m2396a():float");
    }

    /* JADX INFO: renamed from: a */
    public static void m2388a(Float f) {
        if (Intrinsics.areEqual((Float) f2521e.getAndSet(f), f)) {
            return;
        }
        Iterator it = f2523g.iterator();
        while (it.hasNext()) {
            C2848Ka c2848Ka = (C2848Ka) ((WeakReference) it.next()).get();
            if (c2848Ka != null) {
                c2848Ka.f1170a.m1960b("window.mraidview.broadcastEvent('audioVolumeChange', " + (f != null ? Float.valueOf(AbstractC3429y2.m2601a(f.floatValue() * 100.0f)) : null) + ");");
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static final void m2393d() {
        m2388a(Float.valueOf(f2517a.m2396a()));
    }

    /* JADX INFO: renamed from: b */
    public static boolean m2390b() {
        if (C2751E3.f962a.m1013H()) {
            AudioManager audioManager = f2518b;
            if (audioManager != null && audioManager.isStreamMute(3)) {
                return true;
            }
        } else {
            AudioManager audioManager2 = f2518b;
            if (audioManager2 != null && audioManager2.getStreamVolume(3) == 0) {
                return true;
            }
        }
        return C2849Kb.m1263o();
    }
}
