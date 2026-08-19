package com.inmobi.media;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: renamed from: com.inmobi.media.z4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0594z4 implements E4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f544a;

    @Override // com.inmobi.media.sd
    public final boolean a(View view, View view2, int i, Object obj) {
        if (view2 == null || view2.getVisibility() != 0) {
            return false;
        }
        if ((view != null ? view.getParent() : null) == null || !view2.isShown()) {
            return false;
        }
        Ya ya = view2 instanceof Ya ? (Ya) view2 : null;
        if (ya == null) {
            return false;
        }
        if (ya.getPlacementType() != 1 && (ya.getHeight() <= 0 || ya.getWidth() <= 0)) {
            return false;
        }
        Rect rect = new Rect();
        if (!ya.getGlobalVisibleRect(rect)) {
            return false;
        }
        this.f544a = ((long) rect.height()) * ((long) rect.width());
        if (ya.getPlacementType() == 1) {
            ya.setConfiguredArea(ya.getHeight() * ya.getWidth());
        }
        if (ya.getArea() > 0) {
            return ((long) 100) * this.f544a >= ya.getConfiguredArea() * ((long) i);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0119 A[SYNTHETIC] */
    @Override // com.inmobi.media.sd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.View r17, android.view.View r18, int r19) {
        /*
            Method dump skipped, instruction units count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0594z4.a(android.view.View, android.view.View, int):boolean");
    }
}
