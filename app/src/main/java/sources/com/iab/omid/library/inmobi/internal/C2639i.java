package com.iab.omid.library.inmobi.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.devicevolume.C2627b;
import com.iab.omid.library.inmobi.devicevolume.C2629d;
import com.iab.omid.library.inmobi.devicevolume.C2630e;
import com.iab.omid.library.inmobi.devicevolume.InterfaceC2628c;
import com.iab.omid.library.inmobi.internal.C2634d;
import com.iab.omid.library.inmobi.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.i */
/* JADX INFO: loaded from: classes6.dex */
public class C2639i implements C2634d.a, InterfaceC2628c {

    /* JADX INFO: renamed from: f */
    private static C2639i f650f;

    /* JADX INFO: renamed from: a */
    private float f651a = 0.0f;

    /* JADX INFO: renamed from: b */
    private final C2630e f652b;

    /* JADX INFO: renamed from: c */
    private final C2627b f653c;

    /* JADX INFO: renamed from: d */
    private C2629d f654d;

    /* JADX INFO: renamed from: e */
    private C2633c f655e;

    public C2639i(C2630e c2630e, C2627b c2627b) {
        this.f652b = c2630e;
        this.f653c = c2627b;
    }

    /* JADX INFO: renamed from: a */
    private C2633c m637a() {
        if (this.f655e == null) {
            this.f655e = C2633c.m590c();
        }
        return this.f655e;
    }

    /* JADX INFO: renamed from: c */
    public static C2639i m638c() {
        if (f650f == null) {
            f650f = new C2639i(new C2630e(), new C2627b());
        }
        return f650f;
    }

    @Override // com.iab.omid.library.inmobi.devicevolume.InterfaceC2628c
    /* JADX INFO: renamed from: a */
    public void mo574a(float f) {
        this.f651a = f;
        Iterator<C2623a> it = m637a().m591a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().m658a(f);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m639a(Context context) {
        this.f654d = this.f652b.m580a(new Handler(), context, this.f653c.m573a(), this);
    }

    @Override // com.iab.omid.library.inmobi.internal.C2634d.a
    /* JADX INFO: renamed from: a */
    public void mo584a(boolean z) {
        if (z) {
            TreeWalker.getInstance().m759h();
        } else {
            TreeWalker.getInstance().m758g();
        }
    }

    /* JADX INFO: renamed from: b */
    public float m640b() {
        return this.f651a;
    }

    /* JADX INFO: renamed from: d */
    public void m641d() {
        C2632b.m587g().m600a(this);
        C2632b.m587g().m603e();
        TreeWalker.getInstance().m759h();
        this.f654d.m578c();
    }

    /* JADX INFO: renamed from: e */
    public void m642e() {
        TreeWalker.getInstance().m760j();
        C2632b.m587g().m604f();
        this.f654d.m579d();
    }
}
