package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3284o7 implements InterfaceC3335rd {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3359t7 f2413a;

    public C3284o7(C3359t7 c3359t7) {
        this.f2413a = c3359t7;
    }

    @Override // com.inmobi.media.InterfaceC3335rd
    /* JADX INFO: renamed from: a */
    public final void mo1197a(View view, boolean z) {
        C3053Z0 c3053z0;
        Intrinsics.checkNotNullParameter(view, "view");
        C3359t7 c3359t7 = this.f2413a;
        if (z) {
            c3359t7.m2451p();
            return;
        }
        C3120d8 c3120d8M2447h = c3359t7.m2447h();
        if (c3120d8M2447h == null || (c3053z0 = c3120d8M2447h.f2011l) == null) {
            return;
        }
        c3053z0.m1998a();
    }
}
