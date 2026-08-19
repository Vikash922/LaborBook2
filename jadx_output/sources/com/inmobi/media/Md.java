package com.inmobi.media;

import android.view.WindowInsets;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Md {
    public void a(I9 orientation, Od finalInsets) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
    }

    public boolean a() {
        return true;
    }

    public void a(WindowInsets insets) {
        Intrinsics.checkNotNullParameter(insets, "insets");
    }
}
