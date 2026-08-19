package com.inmobi.media;

import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m8 */
/* JADX INFO: loaded from: classes6.dex */
public class C3255m8 extends C2755E7 {

    /* JADX INFO: renamed from: l */
    public int f2327l;

    /* JADX INFO: renamed from: m */
    public final byte f2328m;

    /* JADX INFO: renamed from: n */
    public String f2329n;

    /* JADX INFO: renamed from: o */
    public ArrayList f2330o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3255m8(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, int i9, byte b, String textColor, List textStyles, C3300p8 c3300p8) {
        super(i, i2, i3, i4, i5, i6, i7, i8, SvgConstants.Attributes.FILL, borderStrokeStyle, borderCornerStyle, borderColor, backgroundColor, c3300p8);
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(textStyles, "textStyles");
        this.f2327l = i9;
        this.f2328m = b;
        this.f2329n = textColor.length() == 0 ? "#ff000000" : textColor;
        int iMin = Math.min(textStyles.size(), 4);
        this.f2330o = new ArrayList();
        for (int i10 = 0; i10 < iMin; i10++) {
            this.f2330o.add(textStyles.get(i10));
        }
    }

    @Override // com.inmobi.media.C2755E7
    /* JADX INFO: renamed from: a */
    public final String mo1043a() {
        String str = this.f983j;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }
}
