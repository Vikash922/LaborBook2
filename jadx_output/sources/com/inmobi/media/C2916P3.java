package com.inmobi.media;

import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.P3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2916P3 extends AbstractC2881Md {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ RelativeLayout.LayoutParams f1362a;

    public C2916P3(RelativeLayout.LayoutParams layoutParams) {
        this.f1362a = layoutParams;
    }

    @Override // com.inmobi.media.AbstractC2881Md
    /* JADX INFO: renamed from: a */
    public final void mo1373a(EnumC2817I9 orientation, C2911Od finalInsets) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
        AbstractC3429y2.m2605a(finalInsets, this.f1362a, orientation);
    }
}
