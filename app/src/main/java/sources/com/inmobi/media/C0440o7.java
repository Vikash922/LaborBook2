package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0440o7 implements rd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0511t7 f445a;

    public C0440o7(C0511t7 c0511t7) {
        this.f445a = c0511t7;
    }

    @Override // com.inmobi.media.rd
    public final void a(View view, boolean z) {
        Z0 z0;
        Intrinsics.checkNotNullParameter(view, "view");
        C0511t7 c0511t7 = this.f445a;
        if (z) {
            c0511t7.p();
            return;
        }
        C0270d8 c0270d8H = c0511t7.h();
        if (c0270d8H == null || (z0 = c0270d8H.l) == null) {
            return;
        }
        z0.a();
    }
}
