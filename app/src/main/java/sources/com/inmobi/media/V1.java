package com.inmobi.media;

import android.content.Context;
import android.webkit.WebView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class V1 extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f259a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V1(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f259a = LazyKt.lazy(new U1(this));
    }

    public abstract C0439o6 f();

    public final C0439o6 getLandingPageHandler() {
        return (C0439o6) this.f259a.getValue();
    }
}
