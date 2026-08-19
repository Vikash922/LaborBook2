package com.iab.omid.library.inmobi;

import android.content.Context;
import com.iab.omid.library.inmobi.internal.C2631a;
import com.iab.omid.library.inmobi.internal.C2632b;
import com.iab.omid.library.inmobi.internal.C2637g;
import com.iab.omid.library.inmobi.internal.C2639i;
import com.iab.omid.library.inmobi.internal.C2640j;
import com.iab.omid.library.inmobi.utils.C2648a;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.utils.C2652e;
import com.iab.omid.library.inmobi.utils.C2654g;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.b */
/* JADX INFO: loaded from: classes6.dex */
public class C2624b {

    /* JADX INFO: renamed from: a */
    private boolean f612a;

    /* JADX INFO: renamed from: b */
    private void m560b(Context context) {
        C2654g.m723a(context, "Application Context cannot be null");
    }

    /* JADX INFO: renamed from: a */
    String m561a() {
        return "1.5.2-Inmobi";
    }

    /* JADX INFO: renamed from: a */
    void m562a(Context context) {
        m560b(context);
        if (m564b()) {
            return;
        }
        m563a(true);
        C2639i.m638c().m639a(context);
        C2632b.m587g().m599a(context);
        C2648a.m685a(context);
        C2650c.m693a(context);
        C2652e.m717a(context);
        C2637g.m616b().m618a(context);
        C2631a.m581a().m583a(context);
        C2640j.m645b().m647a(context);
    }

    /* JADX INFO: renamed from: a */
    void m563a(boolean z) {
        this.f612a = z;
    }

    /* JADX INFO: renamed from: b */
    boolean m564b() {
        return this.f612a;
    }

    /* JADX INFO: renamed from: c */
    void m565c() {
        C2654g.m720a();
        C2631a.m581a().m586d();
    }
}
