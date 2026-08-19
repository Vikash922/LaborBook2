package com.inmobi.media;

import android.graphics.Point;
import com.itextpdf.svg.SvgConstants;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.E7 */
/* JADX INFO: loaded from: classes6.dex */
public class C2755E7 {

    /* JADX INFO: renamed from: a */
    public final Point f974a;

    /* JADX INFO: renamed from: b */
    public final Point f975b;

    /* JADX INFO: renamed from: c */
    public final Point f976c;

    /* JADX INFO: renamed from: d */
    public final Point f977d;

    /* JADX INFO: renamed from: e */
    public final String f978e;

    /* JADX INFO: renamed from: f */
    public final String f979f;

    /* JADX INFO: renamed from: g */
    public final String f980g;

    /* JADX INFO: renamed from: h */
    public final float f981h;

    /* JADX INFO: renamed from: i */
    public final String f982i;

    /* JADX INFO: renamed from: j */
    public final String f983j;

    /* JADX INFO: renamed from: k */
    public final C3300p8 f984k;

    public C2755E7() {
        this.f974a = new Point(0, 0);
        this.f976c = new Point(0, 0);
        this.f975b = new Point(0, 0);
        this.f977d = new Point(0, 0);
        this.f978e = "none";
        this.f979f = "straight";
        this.f981h = 10.0f;
        this.f982i = "#ff000000";
        this.f983j = "#00000000";
        this.f980g = SvgConstants.Attributes.FILL;
        this.f984k = null;
    }

    /* JADX INFO: renamed from: a */
    public String mo1043a() {
        String str = this.f983j;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public C2755E7(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String contentMode, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, C3300p8 c3300p8) {
        Intrinsics.checkNotNullParameter(contentMode, "contentMode");
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        this.f974a = new Point(i3, i4);
        this.f975b = new Point(i7, i8);
        this.f976c = new Point(i, i2);
        this.f977d = new Point(i5, i6);
        this.f978e = borderStrokeStyle;
        this.f979f = borderCornerStyle;
        this.f981h = 10.0f;
        this.f980g = contentMode;
        this.f982i = borderColor.length() == 0 ? "#ff000000" : borderColor;
        this.f983j = backgroundColor.length() == 0 ? "#00000000" : backgroundColor;
        this.f984k = c3300p8;
    }
}
