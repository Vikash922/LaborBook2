package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3435y8 implements InterfaceC3335rd {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2696A8 f2767a;

    public C3435y8(C2696A8 c2696a8) {
        this.f2767a = c2696a8;
    }

    @Override // com.inmobi.media.InterfaceC3335rd
    /* JADX INFO: renamed from: a */
    public final void mo1197a(View view, boolean z) {
        C3053Z0 c3053z0;
        Intrinsics.checkNotNullParameter(view, "view");
        C2696A8 c2696a8 = this.f2767a;
        if (z) {
            c2696a8.m2451p();
        } else {
            C3120d8 c3120d8M2447h = c2696a8.m2447h();
            if (c3120d8M2447h != null && (c3053z0 = c3120d8M2447h.f2011l) != null) {
                c3053z0.m1998a();
            }
        }
        this.f2767a.m841a(view, z);
    }
}
