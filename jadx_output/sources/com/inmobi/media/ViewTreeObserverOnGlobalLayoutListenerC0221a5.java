package com.inmobi.media;

import android.view.ViewTreeObserver;
import com.inmobi.ads.InMobiBanner;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0221a5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f304a;

    public ViewTreeObserverOnGlobalLayoutListenerC0221a5(InMobiBanner inMobiBanner) {
        this.f304a = inMobiBanner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        InterfaceC0298f5 interfaceC0298f5P;
        try {
            this.f304a.i = AbstractC0576y2.b(r0.getMeasuredWidth() / N3.b());
            this.f304a.j = AbstractC0576y2.b(r0.getMeasuredHeight() / N3.b());
            if (this.f304a.b()) {
                this.f304a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        } catch (Exception e) {
            P1 mAdManager = this.f304a.getMAdManager();
            if (mAdManager == null || (interfaceC0298f5P = mAdManager.p()) == null) {
                return;
            }
            String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5P).a(strAccess$getTAG$cp, "InMobiBanner$1.onGlobalLayout() handler threw unexpected error: ", e);
        }
    }
}
