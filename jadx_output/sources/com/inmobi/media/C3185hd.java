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

/* JADX INFO: renamed from: com.inmobi.media.hd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3185hd {

    /* JADX INFO: renamed from: a */
    public static final C3185hd f2153a = new C3185hd();

    /* JADX INFO: renamed from: b */
    public static final Lazy f2154b = LazyKt.lazy(C3170gd.f2116a);

    /* JADX INFO: renamed from: c */
    public static final Lazy f2155c = LazyKt.lazy(C3155fd.f2083a);

    /* JADX INFO: renamed from: a */
    public static void m2228a(final C3171h ad, final AdConfig adConfig, final InterfaceC3200id interfaceC3200id, final InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        ((ExecutorService) f2154b.getValue()).execute(new Runnable() { // from class: com.inmobi.media.hd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3185hd.m2230b(ad, adConfig, interfaceC3200id, interfaceC3147f5);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public static final void m2230b(C3171h ad, AdConfig adConfig, InterfaceC3200id interfaceC3200id, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(ad, "$ad");
        Intrinsics.checkNotNullParameter(adConfig, "$adConfig");
        C3185hd c3185hd = f2153a;
        try {
            if (c3185hd.m2232a(ad.m2202s(), interfaceC3200id)) {
                C3171h c3171hM1179a = AbstractC2822J.m1179a(ad, adConfig, interfaceC3147f5);
                if (c3171hM1179a == null) {
                    c3185hd.m2231a(ad, false, (short) 75);
                } else {
                    c3185hd.m2231a(c3171hM1179a, true, (short) 0);
                }
            }
        } catch (VastException e) {
            c3185hd.m2231a(ad, false, e.getTelemetryErrorCode());
        } catch (JSONException unused) {
            c3185hd.m2231a(ad, false, (short) 58);
        }
    }

    /* JADX INFO: renamed from: a */
    public final synchronized boolean m2232a(String str, InterfaceC3200id interfaceC3200id) {
        Lazy lazy = f2155c;
        List list = (List) ((HashMap) lazy.getValue()).get(str);
        if (list != null) {
            list.add(new WeakReference(interfaceC3200id));
            return false;
        }
        ((HashMap) lazy.getValue()).put(str, CollectionsKt.mutableListOf(new WeakReference(interfaceC3200id)));
        return true;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2231a(final C3171h c3171h, final boolean z, final short s) {
        Unit unit;
        List list = (List) ((HashMap) f2155c.getValue()).remove(c3171h.m2202s());
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final InterfaceC3200id interfaceC3200id = (InterfaceC3200id) ((WeakReference) it.next()).get();
                if (interfaceC3200id != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.hd$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3185hd.m2229a(interfaceC3200id, c3171h, z, s);
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

    /* JADX INFO: renamed from: a */
    public static final void m2229a(InterfaceC3200id interfaceC3200id, C3171h ad, boolean z, short s) {
        Intrinsics.checkNotNullParameter(ad, "$ad");
        interfaceC3200id.mo906a(ad, z, s);
    }
}
