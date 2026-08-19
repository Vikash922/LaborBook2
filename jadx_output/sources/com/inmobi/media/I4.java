package com.inmobi.media;

import android.os.SystemClock;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class I4 implements ud {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ M4 f137a;

    public I4(M4 m4) {
        this.f137a = m4;
    }

    @Override // com.inmobi.media.ud
    public final void a(ArrayList visibleViews, ArrayList invisibleViews) {
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Intrinsics.checkNotNullExpressionValue(this.f137a.d, "access$getTAG$p(...)");
        Objects.toString(visibleViews);
        Objects.toString(invisibleViews);
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            K4 k4 = (K4) this.f137a.f177a.get(view);
            if (k4 == null) {
                this.f137a.a(view);
            } else {
                K4 k42 = (K4) this.f137a.b.get(view);
                if (!Intrinsics.areEqual(k4.f156a, k42 != null ? k42.f156a : null)) {
                    k4.d = SystemClock.uptimeMillis();
                    this.f137a.b.put(view, k4);
                }
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            this.f137a.b.remove((View) it2.next());
        }
        M4 m4 = this.f137a;
        if (m4.e.hasMessages(0)) {
            return;
        }
        m4.e.postDelayed(m4.f, m4.g);
    }
}
