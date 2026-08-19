package com.iab.omid.library.inmobi.internal;

import android.view.View;
import com.iab.omid.library.inmobi.adsession.C2623a;
import java.util.Iterator;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.b */
/* JADX INFO: loaded from: classes6.dex */
public class C2632b extends C2634d {

    /* JADX INFO: renamed from: d */
    private static C2632b f631d = new C2632b();

    private C2632b() {
    }

    /* JADX INFO: renamed from: g */
    public static C2632b m587g() {
        return f631d;
    }

    @Override // com.iab.omid.library.inmobi.internal.C2634d
    /* JADX INFO: renamed from: b */
    public void mo588b(boolean z) {
        Iterator<C2623a> it = C2633c.m590c().m593b().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().m671a(z);
        }
    }

    @Override // com.iab.omid.library.inmobi.internal.C2634d
    /* JADX INFO: renamed from: d */
    public boolean mo589d() {
        Iterator<C2623a> it = C2633c.m590c().m591a().iterator();
        while (it.hasNext()) {
            View viewM549c = it.next().m549c();
            if (viewM549c != null && viewM549c.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
