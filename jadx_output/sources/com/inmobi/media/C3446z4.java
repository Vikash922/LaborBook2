package com.inmobi.media;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: renamed from: com.inmobi.media.z4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3446z4 implements InterfaceC2752E4 {

    /* JADX INFO: renamed from: a */
    public long f2789a;

    @Override // com.inmobi.media.InterfaceC3350sd
    /* JADX INFO: renamed from: a */
    public final boolean mo2404a(View view, View view2, int i, Object obj) {
        if (view2 == null || view2.getVisibility() != 0) {
            return false;
        }
        if ((view != null ? view.getParent() : null) == null || !view2.isShown()) {
            return false;
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = view2 instanceof GestureDetectorOnGestureListenerC3049Ya ? (GestureDetectorOnGestureListenerC3049Ya) view2 : null;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            return false;
        }
        if (gestureDetectorOnGestureListenerC3049Ya.getPlacementType() != 1 && (gestureDetectorOnGestureListenerC3049Ya.getHeight() <= 0 || gestureDetectorOnGestureListenerC3049Ya.getWidth() <= 0)) {
            return false;
        }
        Rect rect = new Rect();
        if (!gestureDetectorOnGestureListenerC3049Ya.getGlobalVisibleRect(rect)) {
            return false;
        }
        this.f2789a = ((long) rect.height()) * ((long) rect.width());
        if (gestureDetectorOnGestureListenerC3049Ya.getPlacementType() == 1) {
            gestureDetectorOnGestureListenerC3049Ya.setConfiguredArea(gestureDetectorOnGestureListenerC3049Ya.getHeight() * gestureDetectorOnGestureListenerC3049Ya.getWidth());
        }
        if (gestureDetectorOnGestureListenerC3049Ya.getArea() > 0) {
            return ((long) 100) * this.f2789a >= gestureDetectorOnGestureListenerC3049Ya.getConfiguredArea() * ((long) i);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0119 A[SYNTHETIC] */
    @Override // com.inmobi.media.InterfaceC3350sd
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2403a(android.view.View r17, android.view.View r18, int r19) {
        /*
            Method dump skipped, instruction units count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3446z4.mo2403a(android.view.View, android.view.View, int):boolean");
    }
}
