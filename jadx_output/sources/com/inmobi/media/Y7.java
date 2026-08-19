package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Y7 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0270d8 f288a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ D7 c;

    public Y7(C0270d8 c0270d8, ArrayList arrayList, D7 d7) {
        this.f288a = c0270d8;
        this.b = arrayList;
        this.c = d7;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View v) {
        Intrinsics.checkNotNullParameter(v, "v");
        this.f288a.l.a(this.b);
        C0511t7 c0511t7 = this.f288a.b;
        D7 d7A = c0511t7.a(c0511t7.b, this.c);
        D7 d7 = this.c;
        C0511t7 c0511t72 = this.f288a.b;
        if (d7A == null) {
            d7A = d7;
        }
        d7.a("creativeView", c0511t72.a(d7A), (C0395l7) null, this.f288a.f);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View v) {
        Intrinsics.checkNotNullParameter(v, "v");
        v.removeOnAttachStateChangeListener(this);
        Z0 z0 = this.f288a.l;
        ArrayList arrayList = this.b;
        z0.getClass();
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Y0) it.next()).f284a.cancel();
        }
        z0.b.removeAll(arrayList);
    }
}
