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

/* JADX INFO: renamed from: com.inmobi.media.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0489s {
    public static AudioManager b;
    public static C0417n c;
    public static ScheduledFuture f;
    public static C0462q h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0489s f476a = new C0489s();
    public static final AtomicBoolean d = new AtomicBoolean(false);
    public static final AtomicReference e = new AtomicReference(null);
    public static final Set g = Collections.synchronizedSet(new LinkedHashSet());

    public static void a(final InterfaceC0298f5 interfaceC0298f5, final Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0489s.b(interfaceC0298f5, listener);
            }
        });
    }

    public static final void b(InterfaceC0298f5 interfaceC0298f5, Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Adding audio volume change listener. Existing listeners - " + g.size());
        }
        Set<WeakReference> listeners = g;
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        for (WeakReference weakReference : listeners) {
            if (weakReference.get() == null) {
                g.remove(weakReference);
            }
        }
        Set set = g;
        boolean zIsEmpty = set.isEmpty();
        set.add(new WeakReference(listener));
        Float f2 = (Float) e.get();
        listener.f161a.b("window.mraidview.broadcastEvent('audioVolumeChange', " + (f2 != null ? Float.valueOf(AbstractC0576y2.a(f2.floatValue() * 100.0f)) : null) + ");");
        if (!zIsEmpty) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Resuming audio volume change listener");
                return;
            }
            return;
        }
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Starting audio volume change listener");
        }
        Context contextD = Kb.d();
        if (contextD == null) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("AdAudioTracker", "Context is null. Cannot start audio volume tracking");
            }
            a((Float) null);
            return;
        }
        LinkedHashMap linkedHashMap = K2.f154a;
        Throwable thM599exceptionOrNullimpl = Result.m599exceptionOrNullimpl(AbstractC0592z2.a(new r(interfaceC0298f5, contextD, ((AdConfig) V4.a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getMraid3().getMuteChangeInterval())));
        if (thM599exceptionOrNullimpl != null) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("AdAudioTracker", "Error starting audio volume tracking - " + thM599exceptionOrNullimpl.getMessage());
            }
            a((Float) null);
        }
    }

    public static void c(final InterfaceC0298f5 interfaceC0298f5, final Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0489s.d(interfaceC0298f5, listener);
            }
        });
    }

    public static final void d(InterfaceC0298f5 interfaceC0298f5, Ka listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Removing audio volume change listener");
        }
        Set<WeakReference> listeners = g;
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        for (WeakReference weakReference : listeners) {
            if (Intrinsics.areEqual(weakReference.get(), listener)) {
                g.remove(weakReference);
            }
        }
        if (g.isEmpty()) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Stopping audio volume change listener");
            }
            Context contextD = Kb.d();
            if (contextD == null) {
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).b("AdAudioTracker", "Context is null. Cannot stop audio volume tracking");
                }
                a((Float) null);
            } else {
                if (!d.compareAndSet(true, false)) {
                    if (interfaceC0298f5 != null) {
                        ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Audio volume tracking is already stopped");
                        return;
                    }
                    return;
                }
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Stopping audio volume tracking");
                }
                Throwable thM599exceptionOrNullimpl = Result.m599exceptionOrNullimpl(AbstractC0592z2.a(new C0447p(contextD)));
                if (thM599exceptionOrNullimpl == null || interfaceC0298f5 == null) {
                    return;
                }
                ((C0314g5) interfaceC0298f5).b("AdAudioTracker", "Error cleaning up audio volume tracker - " + thM599exceptionOrNullimpl.getMessage());
            }
        }
    }

    public static final void e() {
        if (d.get() && b()) {
            a(Float.valueOf(0.0f));
        }
    }

    public static void a(long j) {
        f = ((ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue()).scheduleWithFixedDelay(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0489s.e();
            }
        }, 0L, j, TimeUnit.MILLISECONDS);
    }

    public static void c() {
        if (!E3.f104a.H()) {
            a((Float) null);
        } else {
            ((ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue()).execute(new Runnable() { // from class: com.inmobi.media.s$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    C0489s.d();
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized float a() {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = b()     // Catch: java.lang.Throwable -> L2d
            android.media.AudioManager r1 = com.inmobi.media.C0489s.b     // Catch: java.lang.Throwable -> L2d
            r2 = 3
            r3 = 0
            if (r1 == 0) goto L10
            int r1 = r1.getStreamVolume(r2)     // Catch: java.lang.Throwable -> L2d
            goto L11
        L10:
            r1 = r3
        L11:
            android.media.AudioManager r4 = com.inmobi.media.C0489s.b     // Catch: java.lang.Throwable -> L2d
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0489s.a():float");
    }

    public static void a(Float f2) {
        if (Intrinsics.areEqual((Float) e.getAndSet(f2), f2)) {
            return;
        }
        Iterator it = g.iterator();
        while (it.hasNext()) {
            Ka ka = (Ka) ((WeakReference) it.next()).get();
            if (ka != null) {
                ka.f161a.b("window.mraidview.broadcastEvent('audioVolumeChange', " + (f2 != null ? Float.valueOf(AbstractC0576y2.a(f2.floatValue() * 100.0f)) : null) + ");");
            }
        }
    }

    public static final void d() {
        a(Float.valueOf(f476a.a()));
    }

    public static boolean b() {
        if (E3.f104a.H()) {
            AudioManager audioManager = b;
            if (audioManager != null && audioManager.isStreamMute(3)) {
                return true;
            }
        } else {
            AudioManager audioManager2 = b;
            if (audioManager2 != null && audioManager2.getStreamVolume(3) == 0) {
                return true;
            }
        }
        return Kb.o();
    }
}
