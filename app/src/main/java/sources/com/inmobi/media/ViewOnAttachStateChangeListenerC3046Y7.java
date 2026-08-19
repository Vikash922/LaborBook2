package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Y7 */
/* JADX INFO: loaded from: classes6.dex */
public final class ViewOnAttachStateChangeListenerC3046Y7 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3120d8 f1684a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ArrayList f1685b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2740D7 f1686c;

    public ViewOnAttachStateChangeListenerC3046Y7(C3120d8 c3120d8, ArrayList arrayList, C2740D7 c2740d7) {
        this.f1684a = c3120d8;
        this.f1685b = arrayList;
        this.f1686c = c2740d7;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View v) {
        Intrinsics.checkNotNullParameter(v, "v");
        this.f1684a.f2011l.m1999a(this.f1685b);
        C3359t7 c3359t7 = this.f1684a.f2001b;
        C2740D7 c2740d7M2433a = c3359t7.m2433a(c3359t7.f2576b, this.f1686c);
        C2740D7 c2740d7 = this.f1686c;
        C3359t7 c3359t72 = this.f1684a.f2001b;
        if (c2740d7M2433a == null) {
            c2740d7M2433a = c2740d7;
        }
        c2740d7.m951a("creativeView", c3359t72.m2435a(c2740d7M2433a), (C3239l7) null, this.f1684a.f2005f);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View v) {
        Intrinsics.checkNotNullParameter(v, "v");
        v.removeOnAttachStateChangeListener(this);
        C3053Z0 c3053z0 = this.f1684a.f2011l;
        ArrayList arrayList = this.f1685b;
        c3053z0.getClass();
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((C3039Y0) it.next()).f1664a.cancel();
        }
        c3053z0.f1791b.removeAll(arrayList);
    }
}
