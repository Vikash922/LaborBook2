package com.inmobi.media;

import android.view.ViewTreeObserver;
import com.inmobi.ads.InMobiAudio;

/* JADX INFO: renamed from: com.inmobi.media.W4 */
/* JADX INFO: loaded from: classes6.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC3015W4 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InMobiAudio f1626a;

    public ViewTreeObserverOnGlobalLayoutListenerC3015W4(InMobiAudio inMobiAudio) {
        this.f1626a = inMobiAudio;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        try {
            this.f1626a.f740f = AbstractC3429y2.m2609b(r0.getMeasuredWidth() / AbstractC2886N3.m1384b());
            this.f1626a.f741g = AbstractC3429y2.m2609b(r0.getMeasuredHeight() / AbstractC2886N3.m1384b());
            if (this.f1626a.m802b()) {
                this.f1626a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "InMobiAudio$1.onGlobalLayout() handler threw unexpected error");
        }
    }
}
