package com.inmobi.media;

import android.content.Context;
import android.webkit.WebView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Gd */
/* JADX INFO: loaded from: classes6.dex */
public final class C2791Gd extends WebView {

    /* JADX INFO: renamed from: a */
    public boolean f1063a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791Gd(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.webkit.WebView
    public final void destroy() {
        this.f1063a = true;
        super.destroy();
    }
}
