package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.exceptions.VastException;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: renamed from: com.inmobi.media.hd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0339hd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0339hd f378a = new C0339hd();
    public static final Lazy b = LazyKt.lazy(C0324gd.f365a);
    public static final Lazy c = LazyKt.lazy(C0307fd.f353a);

    public static void a(final C0325h ad, final AdConfig adConfig, final InterfaceC0355id interfaceC0355id, final InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        ((ExecutorService) b.getValue()).execute(new Runnable() { // from class: com.inmobi.media.hd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0339hd.b(ad, adConfig, interfaceC0355id, interfaceC0298f5);
            }
        });
    }

    public static final void b(C0325h ad, AdConfig adConfig, InterfaceC0355id interfaceC0355id, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(ad, "$ad");
        Intrinsics.checkNotNullParameter(adConfig, "$adConfig");
        C0339hd c0339hd = f378a;
        try {
            if (c0339hd.a(ad.s(), interfaceC0355id)) {
                C0325h c0325hA = J.a(ad, adConfig, interfaceC0298f5);
                if (c0325hA == null) {
                    c0339hd.a(ad, false, (short) 75);
                } else {
                    c0339hd.a(c0325hA, true, (short) 0);
                }
            }
        } catch (VastException e) {
            c0339hd.a(ad, false, e.getTelemetryErrorCode());
        } catch (JSONException unused) {
            c0339hd.a(ad, false, (short) 58);
        }
    }

    public final synchronized boolean a(String str, InterfaceC0355id interfaceC0355id) {
        Lazy lazy = c;
        List list = (List) ((HashMap) lazy.getValue()).get(str);
        if (list != null) {
            list.add(new WeakReference(interfaceC0355id));
            return false;
        }
        ((HashMap) lazy.getValue()).put(str, CollectionsKt.mutableListOf(new WeakReference(interfaceC0355id)));
        return true;
    }

    public final synchronized void a(final C0325h c0325h, final boolean z, final short s) {
        Unit unit;
        List list = (List) ((HashMap) c.getValue()).remove(c0325h.s());
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final InterfaceC0355id interfaceC0355id = (InterfaceC0355id) ((WeakReference) it.next()).get();
                if (interfaceC0355id != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.hd$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            C0339hd.a(interfaceC0355id, c0325h, z, s);
                        }
                    });
                } else {
                    Intrinsics.checkNotNullExpressionValue("hd", "TAG");
                }
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            Intrinsics.checkNotNullExpressionValue("hd", "TAG");
        }
    }

    public static final void a(InterfaceC0355id interfaceC0355id, C0325h ad, boolean z, short s) {
        Intrinsics.checkNotNullParameter(ad, "$ad");
        interfaceC0355id.a(ad, z, s);
    }
}
