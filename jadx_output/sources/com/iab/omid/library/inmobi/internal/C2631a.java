package com.iab.omid.library.inmobi.internal;

import android.content.Context;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2634d;
import com.iab.omid.library.inmobi.utils.C2653f;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.a */
/* JADX INFO: loaded from: classes6.dex */
public class C2631a implements C2634d.a {

    /* JADX INFO: renamed from: f */
    private static C2631a f625f = new C2631a(new C2634d());

    /* JADX INFO: renamed from: a */
    protected C2653f f626a = new C2653f();

    /* JADX INFO: renamed from: b */
    private Date f627b;

    /* JADX INFO: renamed from: c */
    private boolean f628c;

    /* JADX INFO: renamed from: d */
    private C2634d f629d;

    /* JADX INFO: renamed from: e */
    private boolean f630e;

    private C2631a(C2634d c2634d) {
        this.f629d = c2634d;
    }

    /* JADX INFO: renamed from: a */
    public static C2631a m581a() {
        return f625f;
    }

    /* JADX INFO: renamed from: c */
    private void m582c() {
        if (!this.f628c || this.f627b == null) {
            return;
        }
        Iterator<C2623a> it = C2633c.m590c().m591a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().m669a(m585b());
        }
    }

    /* JADX INFO: renamed from: a */
    public void m583a(Context context) {
        if (this.f628c) {
            return;
        }
        this.f629d.m599a(context);
        this.f629d.m600a(this);
        this.f629d.m603e();
        this.f630e = this.f629d.m602c();
        this.f628c = true;
    }

    @Override // com.iab.omid.library.inmobi.internal.C2634d.a
    /* JADX INFO: renamed from: a */
    public void mo584a(boolean z) {
        if (!this.f630e && z) {
            m586d();
        }
        this.f630e = z;
    }

    /* JADX INFO: renamed from: b */
    public Date m585b() {
        Date date = this.f627b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public void m586d() {
        Date dateM719a = this.f626a.m719a();
        Date date = this.f627b;
        if (date == null || dateM719a.after(date)) {
            this.f627b = dateM719a;
            m582c();
        }
    }
}
