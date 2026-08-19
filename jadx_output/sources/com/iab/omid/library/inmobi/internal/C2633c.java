package com.iab.omid.library.inmobi.internal;

import com.iab.omid.library.inmobi.adsession.C2623a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.c */
/* JADX INFO: loaded from: classes6.dex */
public class C2633c {

    /* JADX INFO: renamed from: c */
    private static C2633c f632c = new C2633c();

    /* JADX INFO: renamed from: a */
    private final ArrayList<C2623a> f633a = new ArrayList<>();

    /* JADX INFO: renamed from: b */
    private final ArrayList<C2623a> f634b = new ArrayList<>();

    private C2633c() {
    }

    /* JADX INFO: renamed from: c */
    public static C2633c m590c() {
        return f632c;
    }

    /* JADX INFO: renamed from: a */
    public Collection<C2623a> m591a() {
        return Collections.unmodifiableCollection(this.f634b);
    }

    /* JADX INFO: renamed from: a */
    public void m592a(C2623a c2623a) {
        this.f633a.add(c2623a);
    }

    /* JADX INFO: renamed from: b */
    public Collection<C2623a> m593b() {
        return Collections.unmodifiableCollection(this.f633a);
    }

    /* JADX INFO: renamed from: b */
    public void m594b(C2623a c2623a) {
        boolean zM596d = m596d();
        this.f633a.remove(c2623a);
        this.f634b.remove(c2623a);
        if (!zM596d || m596d()) {
            return;
        }
        C2639i.m638c().m642e();
    }

    /* JADX INFO: renamed from: c */
    public void m595c(C2623a c2623a) {
        boolean zM596d = m596d();
        this.f634b.add(c2623a);
        if (zM596d) {
            return;
        }
        C2639i.m638c().m641d();
    }

    /* JADX INFO: renamed from: d */
    public boolean m596d() {
        return this.f634b.size() > 0;
    }
}
