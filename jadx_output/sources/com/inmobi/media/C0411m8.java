package com.inmobi.media;

import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0411m8 extends E7 {
    public int l;
    public final byte m;
    public String n;
    public ArrayList o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0411m8(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, int i9, byte b, String textColor, List textStyles, C0456p8 c0456p8) {
        super(i, i2, i3, i4, i5, i6, i7, i8, SvgConstants.Attributes.FILL, borderStrokeStyle, borderCornerStyle, borderColor, backgroundColor, c0456p8);
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(textStyles, "textStyles");
        this.l = i9;
        this.m = b;
        this.n = textColor.length() == 0 ? "#ff000000" : textColor;
        int iMin = Math.min(textStyles.size(), 4);
        this.o = new ArrayList();
        for (int i10 = 0; i10 < iMin; i10++) {
            this.o.add(textStyles.get(i10));
        }
    }

    @Override // com.inmobi.media.E7
    public final String a() {
        String str = this.j;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }
}
