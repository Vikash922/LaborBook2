package com.inmobi.media;

import android.graphics.Point;
import com.itextpdf.svg.SvgConstants;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public class E7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Point f107a;
    public final Point b;
    public final Point c;
    public final Point d;
    public final String e;
    public final String f;
    public final String g;
    public final float h;
    public final String i;
    public final String j;
    public final C0456p8 k;

    public E7() {
        this.f107a = new Point(0, 0);
        this.c = new Point(0, 0);
        this.b = new Point(0, 0);
        this.d = new Point(0, 0);
        this.e = "none";
        this.f = "straight";
        this.h = 10.0f;
        this.i = "#ff000000";
        this.j = "#00000000";
        this.g = SvgConstants.Attributes.FILL;
        this.k = null;
    }

    public String a() {
        String str = this.j;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public E7(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String contentMode, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, C0456p8 c0456p8) {
        Intrinsics.checkNotNullParameter(contentMode, "contentMode");
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        this.f107a = new Point(i3, i4);
        this.b = new Point(i7, i8);
        this.c = new Point(i, i2);
        this.d = new Point(i5, i6);
        this.e = borderStrokeStyle;
        this.f = borderCornerStyle;
        this.h = 10.0f;
        this.g = contentMode;
        this.i = borderColor.length() == 0 ? "#ff000000" : borderColor;
        this.j = backgroundColor.length() == 0 ? "#00000000" : backgroundColor;
        this.k = c0456p8;
    }
}
