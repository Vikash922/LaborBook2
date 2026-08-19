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

/* JADX INFO: renamed from: com.inmobi.media.Pd */
/* JADX INFO: loaded from: classes6.dex */
public final class C2926Pd implements InterfaceC2851Kd {

    /* JADX INFO: renamed from: g */
    public static final WeakHashMap f1409g = new WeakHashMap();

    /* JADX INFO: renamed from: a */
    public final AbstractC2881Md f1410a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f1411b;

    /* JADX INFO: renamed from: c */
    public View f1412c;

    /* JADX INFO: renamed from: d */
    public final ConcurrentHashMap f1413d;

    /* JADX INFO: renamed from: e */
    public final WeakReference f1414e;

    /* JADX INFO: renamed from: f */
    public EnumC2817I9 f1415f;

    public C2926Pd(Activity activity, AbstractC2881Md windowInsetListener, InterfaceC3147f5 interfaceC3147f5) {
        Window window;
        Intrinsics.checkNotNullParameter(windowInsetListener, "windowInsetListener");
        this.f1410a = windowInsetListener;
        this.f1411b = interfaceC3147f5;
        this.f1413d = new ConcurrentHashMap();
        WeakReference weakReference = new WeakReference(activity);
        this.f1414e = weakReference;
        if (!C2751E3.f962a.m1012F()) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler", "WindowInsetsHandler is not supported for this version");
                return;
            }
            return;
        }
        Activity activity2 = (Activity) weakReference.get();
        View decorView = (activity2 == null || (window = activity2.getWindow()) == null) ? null : window.getDecorView();
        if (decorView != null) {
            this.f1412c = decorView;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler", "startListeningToInsets");
            }
            WeakHashMap weakHashMap = f1409g;
            Object c2866Ld = weakHashMap.get(decorView);
            if (c2866Ld == null) {
                c2866Ld = new C2866Ld(decorView);
                weakHashMap.put(decorView, c2866Ld);
            }
            Intrinsics.checkNotNullParameter(this, "listener");
            ((C2866Ld) c2866Ld).f1240a.add(this);
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler_INSTANCE", this + " created - " + weakHashMap.size());
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1536a(C2896Nd insets, int i) {
        EnumC2817I9 orientation = AbstractC2832J9.m1195a(AbstractC2886N3.m1391g());
        C2911Od c2911Od = (C2911Od) this.f1413d.get(Integer.valueOf(i));
        if (c2911Od == null) {
            c2911Od = new C2911Od();
            this.f1413d.put(Integer.valueOf(i), c2911Od);
        }
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        C2896Nd c2896Nd = (C2896Nd) c2911Od.f1345a.get(orientation);
        if (c2896Nd == null || !Intrinsics.areEqual(insets, c2896Nd)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1411b;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler", "safeArea - New value, updating to KV store");
            }
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            Intrinsics.checkNotNullParameter(insets, "insets");
            c2911Od.f1345a.put(orientation, insets);
            ConcurrentHashMap concurrentHashMap = this.f1413d;
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap.size()));
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                linkedHashMap.put(entry.getKey(), ((C2911Od) entry.getValue()).m1424a());
            }
            AbstractC2886N3.m1382a(linkedHashMap);
        } else {
            InterfaceC3147f5 interfaceC3147f52 = this.f1411b;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("WindowInsetsHandler", "SafeArea - Same value, no need to update");
            }
        }
        if (this.f1415f != orientation) {
            this.f1415f = orientation;
            AbstractC2881Md abstractC2881Md = this.f1410a;
            Object obj = this.f1413d.get(Integer.valueOf(i));
            Intrinsics.checkNotNull(obj);
            abstractC2881Md.mo1373a(orientation, (C2911Od) obj);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1535a() {
        View view = this.f1412c;
        if (view != null) {
            WeakHashMap weakHashMap = f1409g;
            C2866Ld c2866Ld = (C2866Ld) weakHashMap.get(view);
            if (c2866Ld != null) {
                Intrinsics.checkNotNullParameter(this, "listener");
                c2866Ld.f1240a.remove(this);
                if (c2866Ld.f1240a.isEmpty()) {
                    c2866Ld.m1327a();
                    weakHashMap.remove(view);
                }
            }
            InterfaceC3147f5 interfaceC3147f5 = this.f1411b;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler_INSTANCE", this + " destroy - " + weakHashMap.size());
            }
        }
    }
}
