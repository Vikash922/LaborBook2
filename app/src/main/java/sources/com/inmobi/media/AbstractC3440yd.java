package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.yd */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3440yd {

    /* JADX INFO: renamed from: a */
    public final WeakHashMap f2773a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3350sd f2774b;

    /* JADX INFO: renamed from: c */
    public final Handler f2775c;

    /* JADX INFO: renamed from: d */
    public final byte f2776d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3147f5 f2777e;

    /* JADX INFO: renamed from: f */
    public final int f2778f;

    /* JADX INFO: renamed from: g */
    public final ArrayList f2779g;

    /* JADX INFO: renamed from: h */
    public long f2780h;

    /* JADX INFO: renamed from: i */
    public final AtomicBoolean f2781i;

    /* JADX INFO: renamed from: j */
    public InterfaceC3380ud f2782j;

    /* JADX INFO: renamed from: k */
    public final Lazy f2783k;

    /* JADX INFO: renamed from: l */
    public final Lazy f2784l;

    /* JADX INFO: renamed from: m */
    public boolean f2785m;

    public AbstractC3440yd(InterfaceC3350sd visibilityChecker, byte b, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        WeakHashMap weakHashMap = new WeakHashMap(10);
        Handler handler = new Handler(Looper.getMainLooper());
        this.f2773a = weakHashMap;
        this.f2774b = visibilityChecker;
        this.f2775c = handler;
        this.f2776d = b;
        this.f2777e = interfaceC3147f5;
        this.f2778f = 50;
        this.f2779g = new ArrayList(50);
        this.f2781i = new AtomicBoolean(true);
        this.f2783k = LazyKt.lazy(new C3410wd(this));
        this.f2784l = LazyKt.lazy(new C3425xd(this));
    }

    /* JADX INFO: renamed from: a */
    public final void m2627a(View view, Object obj, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(view, "rootView");
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3147f5 interfaceC3147f5 = this.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "add view to tracker - minPercent - " + i + "  " + this);
        }
        C3395vd c3395vd = (C3395vd) this.f2773a.get(view);
        if (c3395vd == null) {
            c3395vd = new C3395vd();
            this.f2773a.put(view, c3395vd);
            this.f2780h++;
        }
        c3395vd.f2692a = i;
        long j = this.f2780h;
        c3395vd.f2693b = j;
        c3395vd.f2694c = view;
        c3395vd.f2695d = obj;
        long j2 = this.f2778f;
        if (j % j2 == 0) {
            long j3 = j - j2;
            for (Map.Entry entry : this.f2773a.entrySet()) {
                View view2 = (View) entry.getKey();
                if (((C3395vd) entry.getValue()).f2693b < j3) {
                    this.f2779g.add(view2);
                }
            }
            for (View view3 : this.f2779g) {
                Intrinsics.checkNotNull(view3);
                m2626a(view3);
            }
            this.f2779g.clear();
        }
        if (this.f2773a.size() == 1) {
            mo2548f();
        }
    }

    /* JADX INFO: renamed from: b */
    public void mo2546b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "destroy " + this);
        }
        m2625a();
        this.f2782j = null;
        this.f2781i.set(true);
    }

    /* JADX INFO: renamed from: c */
    public abstract int mo1115c();

    /* JADX INFO: renamed from: d */
    public abstract void mo1821d();

    /* JADX INFO: renamed from: e */
    public void mo2547e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "pause " + this);
        }
        ((RunnableC3365td) this.f2783k.getValue()).run();
        this.f2775c.removeCallbacksAndMessages(null);
        this.f2785m = false;
        this.f2781i.set(true);
    }

    /* JADX INFO: renamed from: f */
    public void mo2548f() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "resume " + this);
        }
        this.f2781i.set(false);
        m2628g();
    }

    /* JADX INFO: renamed from: g */
    public final void m2628g() {
        if (this.f2785m || this.f2781i.get()) {
            return;
        }
        this.f2785m = true;
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue()).schedule((Runnable) this.f2784l.getValue(), mo1115c(), TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: a */
    public final void m2626a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3147f5 interfaceC3147f5 = this.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "removed view from tracker " + this);
        }
        if (((C3395vd) this.f2773a.remove(view)) != null) {
            this.f2780h--;
            if (this.f2773a.isEmpty()) {
                mo2547e();
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2625a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "clear " + this);
        }
        this.f2773a.clear();
        this.f2775c.removeMessages(0);
        this.f2785m = false;
    }
}
