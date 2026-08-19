package com.inmobi.media;

import android.content.Context;
import android.webkit.WebView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.V1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2998V1 extends WebView {

    /* JADX INFO: renamed from: a */
    public final Lazy f1577a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC2998V1(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f1577a = LazyKt.lazy(new C2984U1(this));
    }

    /* JADX INFO: renamed from: f */
    public abstract C3283o6 mo1872f();

    public final C3283o6 getLandingPageHandler() {
        return (C3283o6) this.f1577a.getValue();
    }
}
