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

/* JADX INFO: loaded from: classes6.dex */
public abstract class yd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakHashMap f540a;
    public final sd b;
    public final Handler c;
    public final byte d;
    public final InterfaceC0298f5 e;
    public final int f;
    public final ArrayList g;
    public long h;
    public final AtomicBoolean i;
    public ud j;
    public final Lazy k;
    public final Lazy l;
    public boolean m;

    public yd(sd visibilityChecker, byte b, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        WeakHashMap weakHashMap = new WeakHashMap(10);
        Handler handler = new Handler(Looper.getMainLooper());
        this.f540a = weakHashMap;
        this.b = visibilityChecker;
        this.c = handler;
        this.d = b;
        this.e = interfaceC0298f5;
        this.f = 50;
        this.g = new ArrayList(50);
        this.i = new AtomicBoolean(true);
        this.k = LazyKt.lazy(new wd(this));
        this.l = LazyKt.lazy(new xd(this));
    }

    public final void a(View view, Object obj, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(view, "rootView");
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "add view to tracker - minPercent - " + i + "  " + this);
        }
        vd vdVar = (vd) this.f540a.get(view);
        if (vdVar == null) {
            vdVar = new vd();
            this.f540a.put(view, vdVar);
            this.h++;
        }
        vdVar.f510a = i;
        long j = this.h;
        vdVar.b = j;
        vdVar.c = view;
        vdVar.d = obj;
        long j2 = this.f;
        if (j % j2 == 0) {
            long j3 = j - j2;
            for (Map.Entry entry : this.f540a.entrySet()) {
                View view2 = (View) entry.getKey();
                if (((vd) entry.getValue()).b < j3) {
                    this.g.add(view2);
                }
            }
            for (View view3 : this.g) {
                Intrinsics.checkNotNull(view3);
                a(view3);
            }
            this.g.clear();
        }
        if (this.f540a.size() == 1) {
            f();
        }
    }

    public void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "destroy " + this);
        }
        a();
        this.j = null;
        this.i.set(true);
    }

    public abstract int c();

    public abstract void d();

    public void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "pause " + this);
        }
        ((td) this.k.getValue()).run();
        this.c.removeCallbacksAndMessages(null);
        this.m = false;
        this.i.set(true);
    }

    public void f() {
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "resume " + this);
        }
        this.i.set(false);
        g();
    }

    public final void g() {
        if (this.m || this.i.get()) {
            return;
        }
        this.m = true;
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue()).schedule((Runnable) this.l.getValue(), c(), TimeUnit.MILLISECONDS);
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "removed view from tracker " + this);
        }
        if (((vd) this.f540a.remove(view)) != null) {
            this.h--;
            if (this.f540a.isEmpty()) {
                e();
            }
        }
    }

    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "clear " + this);
        }
        this.f540a.clear();
        this.c.removeMessages(0);
        this.m = false;
    }
}
