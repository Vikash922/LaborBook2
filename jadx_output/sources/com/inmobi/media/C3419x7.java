package com.inmobi.media;

import android.graphics.Rect;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3419x7 implements InterfaceC3350sd {

    /* JADX INFO: renamed from: a */
    public final Rect f2743a = new Rect();

    @Override // com.inmobi.media.InterfaceC3350sd
    /* JADX INFO: renamed from: a */
    public final boolean mo2403a(View rootView, View adView, int i) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(adView, "adView");
        return true;
    }

    @Override // com.inmobi.media.InterfaceC3350sd
    /* JADX INFO: renamed from: a */
    public final boolean mo2404a(View view, View view2, int i, Object obj) {
        C3165g8 mediaPlayer;
        if (!(obj instanceof C3359t7) || ((C3359t7) obj).f2594t) {
            return false;
        }
        if (((view2 instanceof C2861L8) && (mediaPlayer = ((C2861L8) view2).getMediaPlayer()) != null && 3 != mediaPlayer.f2107a) || view2 == null || !view2.isShown()) {
            return false;
        }
        if ((view != null ? view.getParent() : null) == null || !view2.getGlobalVisibleRect(this.f2743a)) {
            return false;
        }
        long jHeight = ((long) this.f2743a.height()) * ((long) this.f2743a.width());
        long width = ((long) view.getWidth()) * ((long) view.getHeight());
        return width > 0 && ((long) 100) * jHeight >= ((long) i) * width;
    }
}
