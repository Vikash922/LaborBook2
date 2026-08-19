package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: renamed from: com.inmobi.media.i5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3192i5 {
    /* JADX INFO: renamed from: a */
    public static void m2244a() {
        try {
            Iterator it = AbstractC3207j5.f2221a.iterator();
            while (it.hasNext()) {
                C2784G6 c2784g6 = (C2784G6) ((WeakReference) it.next()).get();
                if (c2784g6 != null) {
                    c2784g6.m1142a();
                }
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
