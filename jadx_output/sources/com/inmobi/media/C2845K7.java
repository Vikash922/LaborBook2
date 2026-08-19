package com.inmobi.media;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.K7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2845K7 extends C3255m8 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2845K7(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, int i9, String textColor, ArrayList textStyles, C3300p8 nativeAnimationTimer) {
        super(i, i2, i3, i4, i5, i6, i7, i8, borderStrokeStyle, borderCornerStyle, borderColor, backgroundColor, 12, (byte) 0, "#ff000000", CollectionsKt.mutableListOf("none"), nativeAnimationTimer);
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(textStyles, "textStyles");
        Intrinsics.checkNotNullParameter(nativeAnimationTimer, "nativeAnimationTimer");
        this.f2327l = i9;
        String str = textColor.length() == 0 ? "#ff000000" : textColor;
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f2329n = str;
        int iMin = Math.min(textStyles.size(), 1);
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.f2330o = arrayList;
        if (iMin < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            this.f2330o.add(textStyles.get(i10));
            if (i10 == iMin) {
                return;
            } else {
                i10++;
            }
        }
    }
}
