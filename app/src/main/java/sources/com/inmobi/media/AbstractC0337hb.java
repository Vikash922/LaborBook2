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

/* JADX INFO: renamed from: com.inmobi.media.hb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0337hb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f376a = LazyKt.lazy(C0322gb.f363a);

    public static final Nd a(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        return a(e(windowInsets), c(windowInsets), d(windowInsets), (Nd) f376a.getValue());
    }

    public static final Nd b(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Nd ndE = e(windowInsets);
        Nd ndC = c(windowInsets);
        Nd ndD = d(windowInsets);
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        return a(ndE, ndC, ndD, new Nd(insets.left, insets.top, insets.right, insets.bottom));
    }

    public static final Nd c(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        E3 e3 = E3.f104a;
        if (e3.z()) {
            Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout());
            Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
            return new Nd(insets.left, insets.top, insets.right, insets.bottom);
        }
        if (!e3.x()) {
            return (Nd) f376a.getValue();
        }
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        int safeInsetLeft = displayCutout != null ? displayCutout.getSafeInsetLeft() : 0;
        DisplayCutout displayCutout2 = windowInsets.getDisplayCutout();
        int safeInsetTop = displayCutout2 != null ? displayCutout2.getSafeInsetTop() : 0;
        DisplayCutout displayCutout3 = windowInsets.getDisplayCutout();
        int safeInsetRight = displayCutout3 != null ? displayCutout3.getSafeInsetRight() : 0;
        DisplayCutout displayCutout4 = windowInsets.getDisplayCutout();
        return new Nd(safeInsetLeft, safeInsetTop, safeInsetRight, displayCutout4 != null ? displayCutout4.getSafeInsetBottom() : 0);
    }

    public static final Nd d(WindowInsets windowInsets) {
        int iSin;
        int iSin2;
        int iSin3;
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        if (!E3.f104a.A()) {
            return (Nd) f376a.getValue();
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
        return new Nd(Math.max(iSin, iSin2), Math.max(iSin2, iSin3), Math.max(iSin4, iSin3), Math.max(iSin, iSin4));
    }

    public static final Nd e(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<this>");
        E3 e3 = E3.f104a;
        if (!e3.z()) {
            return e3.y() ? new Nd(windowInsets.getSystemGestureInsets().left, windowInsets.getSystemGestureInsets().top, windowInsets.getSystemGestureInsets().right, windowInsets.getSystemGestureInsets().bottom) : (Nd) f376a.getValue();
        }
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemGestures());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        return new Nd(insets.left, insets.top, insets.right, insets.bottom);
    }

    public static final Nd a(Nd area, Nd display, Nd roundedCorner, Nd navigationBar) {
        Intrinsics.checkNotNullParameter(area, "area");
        Intrinsics.checkNotNullParameter(display, "display");
        Intrinsics.checkNotNullParameter(roundedCorner, "roundedCorner");
        Intrinsics.checkNotNullParameter(navigationBar, "navigationBar");
        return new Nd(ComparisonsKt.maxOf(area.f196a, display.f196a, roundedCorner.f196a, navigationBar.f196a), ComparisonsKt.maxOf(area.b, display.b, roundedCorner.b, navigationBar.b), ComparisonsKt.maxOf(area.c, display.c, roundedCorner.c, navigationBar.c), ComparisonsKt.maxOf(area.d, display.d, roundedCorner.d, navigationBar.d));
    }
}
