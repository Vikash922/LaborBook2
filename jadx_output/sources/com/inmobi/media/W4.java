package com.inmobi.media;

import android.view.ViewTreeObserver;
import com.inmobi.ads.InMobiAudio;

/* JADX INFO: loaded from: classes6.dex */
public final class W4 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InMobiAudio f270a;

    public W4(InMobiAudio inMobiAudio) {
        this.f270a = inMobiAudio;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        try {
            this.f270a.f = AbstractC0576y2.b(r0.getMeasuredWidth() / N3.b());
            this.f270a.g = AbstractC0576y2.b(r0.getMeasuredHeight() / N3.b());
            if (this.f270a.b()) {
                this.f270a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        } catch (Exception unused) {
            I6.a((byte) 1, "InMobiAudio", "InMobiAudio$1.onGlobalLayout() handler threw unexpected error");
        }
    }
}
