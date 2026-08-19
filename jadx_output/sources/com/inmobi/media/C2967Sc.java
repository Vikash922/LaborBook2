package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.Sc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2967Sc implements InterfaceC3158g1 {
    /* JADX INFO: renamed from: b */
    public static final void m1805b(boolean z) {
        if (z) {
            C2981Tc.m1825a(C2981Tc.f1553a);
        } else {
            C2981Tc.m1824a();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1806a(final boolean z) {
        C2849Kb.m1247a(z);
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Sc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2967Sc.m1805b(z);
            }
        });
    }
}
