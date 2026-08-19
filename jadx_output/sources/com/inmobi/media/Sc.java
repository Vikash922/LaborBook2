package com.inmobi.media;

/* JADX INFO: loaded from: classes6.dex */
public final class Sc implements InterfaceC0310g1 {
    public static final void b(boolean z) {
        if (z) {
            Tc.a(Tc.f249a);
        } else {
            Tc.a();
        }
    }

    public final void a(final boolean z) {
        Kb.a(z);
        Kb.a(new Runnable() { // from class: com.inmobi.media.Sc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Sc.b(z);
            }
        });
    }
}
