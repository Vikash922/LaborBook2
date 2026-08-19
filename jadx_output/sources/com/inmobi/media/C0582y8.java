package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0582y8 implements rd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A8 f535a;

    public C0582y8(A8 a8) {
        this.f535a = a8;
    }

    @Override // com.inmobi.media.rd
    public final void a(View view, boolean z) {
        Z0 z0;
        Intrinsics.checkNotNullParameter(view, "view");
        A8 a8 = this.f535a;
        if (z) {
            a8.p();
        } else {
            C0270d8 c0270d8H = a8.h();
            if (c0270d8H != null && (z0 = c0270d8H.l) != null) {
                z0.a();
            }
        }
        this.f535a.a(view, z);
    }
}
