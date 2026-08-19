package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3434y7 implements InterfaceC3380ud {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3449z7 f2766a;

    public C3434y7(C3449z7 c3449z7) {
        this.f2766a = c3449z7;
    }

    @Override // com.inmobi.media.InterfaceC3380ud
    /* JADX INFO: renamed from: a */
    public final void mo867a(ArrayList visibleViews, ArrayList invisibleViews) {
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            InterfaceC3335rd interfaceC3335rd = (InterfaceC3335rd) this.f2766a.f2802f.get(view);
            if (interfaceC3335rd != null) {
                interfaceC3335rd.mo1197a(view, true);
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            View view2 = (View) it2.next();
            InterfaceC3335rd interfaceC3335rd2 = (InterfaceC3335rd) this.f2766a.f2802f.get(view2);
            if (interfaceC3335rd2 != null) {
                interfaceC3335rd2.mo1197a(view2, false);
            }
        }
    }
}
