package com.inmobi.media;

import android.view.ViewTreeObserver;
import com.inmobi.ads.InMobiBanner;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a5 */
/* JADX INFO: loaded from: classes6.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC3072a5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InMobiBanner f1837a;

    public ViewTreeObserverOnGlobalLayoutListenerC3072a5(InMobiBanner inMobiBanner) {
        this.f1837a = inMobiBanner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        try {
            this.f1837a.f750i = AbstractC3429y2.m2609b(r0.getMeasuredWidth() / AbstractC2886N3.m1384b());
            this.f1837a.f751j = AbstractC3429y2.m2609b(r0.getMeasuredHeight() / AbstractC2886N3.m1384b());
            if (this.f1837a.m812b()) {
                this.f1837a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        } catch (Exception e) {
            C2914P1 mAdManager = this.f1837a.getMAdManager();
            if (mAdManager == null || (interfaceC3147f5M1367p = mAdManager.m1367p()) == null) {
                return;
            }
            String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2148a(strAccess$getTAG$cp, "InMobiBanner$1.onGlobalLayout() handler threw unexpected error: ", e);
        }
    }
}
