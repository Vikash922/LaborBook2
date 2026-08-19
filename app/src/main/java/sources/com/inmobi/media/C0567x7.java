package com.inmobi.media;

import android.graphics.Rect;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0567x7 implements sd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f521a = new Rect();

    @Override // com.inmobi.media.sd
    public final boolean a(View rootView, View adView, int i) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(adView, "adView");
        return true;
    }

    @Override // com.inmobi.media.sd
    public final boolean a(View view, View view2, int i, Object obj) {
        C0319g8 mediaPlayer;
        if (!(obj instanceof C0511t7) || ((C0511t7) obj).t) {
            return false;
        }
        if (((view2 instanceof L8) && (mediaPlayer = ((L8) view2).getMediaPlayer()) != null && 3 != mediaPlayer.f360a) || view2 == null || !view2.isShown()) {
            return false;
        }
        if ((view != null ? view.getParent() : null) == null || !view2.getGlobalVisibleRect(this.f521a)) {
            return false;
        }
        long jHeight = ((long) this.f521a.height()) * ((long) this.f521a.width());
        long width = ((long) view.getWidth()) * ((long) view.getHeight());
        return width > 0 && ((long) 100) * jHeight >= ((long) i) * width;
    }
}
