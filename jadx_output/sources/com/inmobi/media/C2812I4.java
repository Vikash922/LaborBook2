package com.inmobi.media;

import android.os.SystemClock;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.I4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2812I4 implements InterfaceC3380ud {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2872M4 f1107a;

    public C2812I4(C2872M4 c2872m4) {
        this.f1107a = c2872m4;
    }

    @Override // com.inmobi.media.InterfaceC3380ud
    /* JADX INFO: renamed from: a */
    public final void mo867a(ArrayList visibleViews, ArrayList invisibleViews) {
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Intrinsics.checkNotNullExpressionValue(this.f1107a.f1251d, "access$getTAG$p(...)");
        Objects.toString(visibleViews);
        Objects.toString(invisibleViews);
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            C2842K4 c2842k4 = (C2842K4) this.f1107a.f1248a.get(view);
            if (c2842k4 == null) {
                this.f1107a.m1334a(view);
            } else {
                C2842K4 c2842k42 = (C2842K4) this.f1107a.f1249b.get(view);
                if (!Intrinsics.areEqual(c2842k4.f1157a, c2842k42 != null ? c2842k42.f1157a : null)) {
                    c2842k4.f1160d = SystemClock.uptimeMillis();
                    this.f1107a.f1249b.put(view, c2842k4);
                }
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            this.f1107a.f1249b.remove((View) it2.next());
        }
        C2872M4 c2872m4 = this.f1107a;
        if (c2872m4.f1252e.hasMessages(0)) {
            return;
        }
        c2872m4.f1252e.postDelayed(c2872m4.f1253f, c2872m4.f1254g);
    }
}
