package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Pd implements Kd {
    public static final WeakHashMap g = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Md f218a;
    public final InterfaceC0298f5 b;
    public View c;
    public final ConcurrentHashMap d;
    public final WeakReference e;
    public I9 f;

    public Pd(Activity activity, Md windowInsetListener, InterfaceC0298f5 interfaceC0298f5) {
        Window window;
        Intrinsics.checkNotNullParameter(windowInsetListener, "windowInsetListener");
        this.f218a = windowInsetListener;
        this.b = interfaceC0298f5;
        this.d = new ConcurrentHashMap();
        WeakReference weakReference = new WeakReference(activity);
        this.e = weakReference;
        if (!E3.f104a.F()) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler", "WindowInsetsHandler is not supported for this version");
                return;
            }
            return;
        }
        Activity activity2 = (Activity) weakReference.get();
        View decorView = (activity2 == null || (window = activity2.getWindow()) == null) ? null : window.getDecorView();
        if (decorView != null) {
            this.c = decorView;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler", "startListeningToInsets");
            }
            WeakHashMap weakHashMap = g;
            Object ld = weakHashMap.get(decorView);
            if (ld == null) {
                ld = new Ld(decorView);
                weakHashMap.put(decorView, ld);
            }
            Intrinsics.checkNotNullParameter(this, "listener");
            ((Ld) ld).f172a.add(this);
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler_INSTANCE", this + " created - " + weakHashMap.size());
            }
        }
    }

    public final void a(Nd insets, int i) {
        I9 orientation = J9.a(N3.g());
        Od od = (Od) this.d.get(Integer.valueOf(i));
        if (od == null) {
            od = new Od();
            this.d.put(Integer.valueOf(i), od);
        }
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Nd nd = (Nd) od.f208a.get(orientation);
        if (nd == null || !Intrinsics.areEqual(insets, nd)) {
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler", "safeArea - New value, updating to KV store");
            }
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            Intrinsics.checkNotNullParameter(insets, "insets");
            od.f208a.put(orientation, insets);
            ConcurrentHashMap concurrentHashMap = this.d;
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap.size()));
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                linkedHashMap.put(entry.getKey(), ((Od) entry.getValue()).a());
            }
            N3.a(linkedHashMap);
        } else {
            InterfaceC0298f5 interfaceC0298f52 = this.b;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("WindowInsetsHandler", "SafeArea - Same value, no need to update");
            }
        }
        if (this.f != orientation) {
            this.f = orientation;
            Md md = this.f218a;
            Object obj = this.d.get(Integer.valueOf(i));
            Intrinsics.checkNotNull(obj);
            md.a(orientation, (Od) obj);
        }
    }

    public final void a() {
        View view = this.c;
        if (view != null) {
            WeakHashMap weakHashMap = g;
            Ld ld = (Ld) weakHashMap.get(view);
            if (ld != null) {
                Intrinsics.checkNotNullParameter(this, "listener");
                ld.f172a.remove(this);
                if (ld.f172a.isEmpty()) {
                    ld.a();
                    weakHashMap.remove(view);
                }
            }
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler_INSTANCE", this + " destroy - " + weakHashMap.size());
            }
        }
    }
}
