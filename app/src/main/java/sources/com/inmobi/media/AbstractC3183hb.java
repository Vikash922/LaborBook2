package com.inmobi.media;

import android.graphics.Insets;
import android.view.DisplayCutout;
import android.view.RoundedCorner;
import android.view.WindowInsets;
import androidx.core.view.WindowInsetsCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.hb */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3183hb {

    /* JADX INFO: renamed from: a */
    public static final Lazy f2151a = LazyKt.lazy(C3168gb.f2113a);

    /* JADX INFO: renamed from: a */
    public static final C2896Nd m2222a(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        return m2223a(m2227e(windowInsets), m2225c(windowInsets), m2226d(windowInsets), (C2896Nd) f2151a.getValue());
    }

    /* JADX INFO: renamed from: b */
    public static final C2896Nd m2224b(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        C2896Nd c2896NdM2227e = m2227e(windowInsets);
        C2896Nd c2896NdM2225c = m2225c(windowInsets);
        C2896Nd c2896NdM2226d = m2226d(windowInsets);
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        return m2223a(c2896NdM2227e, c2896NdM2225c, c2896NdM2226d, new C2896Nd(insets.left, insets.top, insets.right, insets.bottom));
    }

    /* JADX INFO: renamed from: c */
    public static final C2896Nd m2225c(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        C2751E3 c2751e3 = C2751E3.f962a;
        if (c2751e3.m1040z()) {
            Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout());
            Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
            return new C2896Nd(insets.left, insets.top, insets.right, insets.bottom);
        }
        if (!c2751e3.m1038x()) {
            return (C2896Nd) f2151a.getValue();
        }
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        int safeInsetLeft = displayCutout != null ? displayCutout.getSafeInsetLeft() : 0;
        DisplayCutout displayCutout2 = windowInsets.getDisplayCutout();
        int safeInsetTop = displayCutout2 != null ? displayCutout2.getSafeInsetTop() : 0;
        DisplayCutout displayCutout3 = windowInsets.getDisplayCutout();
        int safeInsetRight = displayCutout3 != null ? displayCutout3.getSafeInsetRight() : 0;
        DisplayCutout displayCutout4 = windowInsets.getDisplayCutout();
        return new C2896Nd(safeInsetLeft, safeInsetTop, safeInsetRight, displayCutout4 != null ? displayCutout4.getSafeInsetBottom() : 0);
    }

    /* JADX INFO: renamed from: d */
    public static final C2896Nd m2226d(WindowInsets windowInsets) {
        int iSin;
        int iSin2;
        int iSin3;
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        if (!C2751E3.f962a.m1007A()) {
            return (C2896Nd) f2151a.getValue();
        }
        RoundedCorner roundedCorner = windowInsets.getRoundedCorner(3);
        int iSin4 = 0;
        RoundedCorner roundedCorner2 = windowInsets.getRoundedCorner(0);
        RoundedCorner roundedCorner3 = windowInsets.getRoundedCorner(1);
        RoundedCorner roundedCorner4 = windowInsets.getRoundedCorner(2);
        if (roundedCorner != null) {
            iSin = (int) (Math.sin(Math.toRadians(45.0d)) * ((double) roundedCorner.getRadius()));
        } else {
            iSin = 0;
        }
        if (roundedCorner2 != null) {
            iSin2 = (int) (Math.sin(Math.toRadians(45.0d)) * ((double) roundedCorner2.getRadius()));
        } else {
            iSin2 = 0;
        }
        if (roundedCorner3 != null) {
            iSin3 = (int) (Math.sin(Math.toRadians(45.0d)) * ((double) roundedCorner3.getRadius()));
        } else {
            iSin3 = 0;
        }
        if (roundedCorner4 != null) {
            iSin4 = (int) (Math.sin(Math.toRadians(45.0d)) * ((double) roundedCorner4.getRadius()));
        }
        return new C2896Nd(Math.max(iSin, iSin2), Math.max(iSin2, iSin3), Math.max(iSin4, iSin3), Math.max(iSin, iSin4));
    }

    /* JADX INFO: renamed from: e */
    public static final C2896Nd m2227e(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        C2751E3 c2751e3 = C2751E3.f962a;
        if (!c2751e3.m1040z()) {
            return c2751e3.m1039y() ? new C2896Nd(windowInsets.getSystemGestureInsets().left, windowInsets.getSystemGestureInsets().top, windowInsets.getSystemGestureInsets().right, windowInsets.getSystemGestureInsets().bottom) : (C2896Nd) f2151a.getValue();
        }
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemGestures());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        return new C2896Nd(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* JADX INFO: renamed from: a */
    public static final C2896Nd m2223a(C2896Nd area, C2896Nd display, C2896Nd roundedCorner, C2896Nd navigationBar) {
        Intrinsics.checkNotNullParameter(area, "area");
        Intrinsics.checkNotNullParameter(display, "display");
        Intrinsics.checkNotNullParameter(roundedCorner, "roundedCorner");
        Intrinsics.checkNotNullParameter(navigationBar, "navigationBar");
        return new C2896Nd(ComparisonsKt.maxOf(area.f1322a, display.f1322a, roundedCorner.f1322a, navigationBar.f1322a), ComparisonsKt.maxOf(area.f1323b, display.f1323b, roundedCorner.f1323b, navigationBar.f1323b), ComparisonsKt.maxOf(area.f1324c, display.f1324c, roundedCorner.f1324c, navigationBar.f1324c), ComparisonsKt.maxOf(area.f1325d, display.f1325d, roundedCorner.f1325d, navigationBar.f1325d));
    }
}
