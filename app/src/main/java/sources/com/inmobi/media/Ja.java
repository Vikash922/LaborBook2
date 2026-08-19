package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Ja implements rd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f149a;

    public Ja(Ya ya) {
        this.f149a = ya;
    }

    @Override // com.inmobi.media.rd
    public final void a(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof Ya) {
            if (this.f149a.hasWindowFocus()) {
                this.f149a.c(z);
            } else {
                this.f149a.c(false);
            }
        }
    }
}
