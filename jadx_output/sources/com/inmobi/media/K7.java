package com.inmobi.media;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class K7 extends C0411m8 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K7(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, int i9, String textColor, ArrayList textStyles, C0456p8 nativeAnimationTimer) {
        super(i, i2, i3, i4, i5, i6, i7, i8, borderStrokeStyle, borderCornerStyle, borderColor, backgroundColor, 12, (byte) 0, "#ff000000", CollectionsKt.mutableListOf("none"), nativeAnimationTimer);
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(textStyles, "textStyles");
        Intrinsics.checkNotNullParameter(nativeAnimationTimer, "nativeAnimationTimer");
        this.l = i9;
        String str = textColor.length() == 0 ? "#ff000000" : textColor;
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.n = str;
        int iMin = Math.min(textStyles.size(), 1);
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.o = arrayList;
        if (iMin < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            this.o.add(textStyles.get(i10));
            if (i10 == iMin) {
                return;
            } else {
                i10++;
            }
        }
    }
}
