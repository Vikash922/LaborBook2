package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0581y7 implements ud {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0597z7 f534a;

    public C0581y7(C0597z7 c0597z7) {
        this.f534a = c0597z7;
    }

    @Override // com.inmobi.media.ud
    public final void a(ArrayList visibleViews, ArrayList invisibleViews) {
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            rd rdVar = (rd) this.f534a.f.get(view);
            if (rdVar != null) {
                rdVar.a(view, true);
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            View view2 = (View) it2.next();
            rd rdVar2 = (rd) this.f534a.f.get(view2);
            if (rdVar2 != null) {
                rdVar2.a(view2, false);
            }
        }
    }
}
