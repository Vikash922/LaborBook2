package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: renamed from: com.inmobi.media.i5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0346i5 {
    public static void a() {
        try {
            Iterator it = AbstractC0362j5.f392a.iterator();
            while (it.hasNext()) {
                G6 g6 = (G6) ((WeakReference) it.next()).get();
                if (g6 != null) {
                    g6.a();
                }
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}
