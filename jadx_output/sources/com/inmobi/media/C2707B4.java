package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.B4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2707B4 implements InterfaceC3380ud {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2722C4 f849a;

    public C2707B4(C2722C4 c2722c4) {
        this.f849a = c2722c4;
    }

    @Override // com.inmobi.media.InterfaceC3380ud
    /* JADX INFO: renamed from: a */
    public final void mo867a(ArrayList visibleViews, ArrayList invisibleViews) {
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            InterfaceC3335rd interfaceC3335rd = (InterfaceC3335rd) this.f849a.f879i.get(view);
            if (interfaceC3335rd != null) {
                interfaceC3335rd.mo1197a(view, true);
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            View view2 = (View) it2.next();
            InterfaceC3335rd interfaceC3335rd2 = (InterfaceC3335rd) this.f849a.f879i.get(view2);
            if (interfaceC3335rd2 != null) {
                interfaceC3335rd2.mo1197a(view2, false);
            }
        }
    }
}
