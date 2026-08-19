package com.inmobi.media;

import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class T4 extends Md {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout.LayoutParams f247a;

    public T4(RelativeLayout.LayoutParams layoutParams) {
        this.f247a = layoutParams;
    }

    @Override // com.inmobi.media.Md
    public final void a(I9 orientation, Od finalInsets) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
        AbstractC0576y2.a(finalInsets, this.f247a, orientation);
    }
}
