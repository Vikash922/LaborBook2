package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.J7 */
/* JADX INFO: loaded from: classes6.dex */
public class C2830J7 extends ViewGroup {
    public C2830J7(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return p instanceof C2815I7;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return new C2815I7(p);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.inmobi.ads.viewsv2.NativeContainerLayout.LayoutParams");
                C2815I7 c2815i7 = (C2815I7) layoutParams;
                int i6 = c2815i7.f1111a;
                childAt.layout(i6, c2815i7.f1112b, childAt.getMeasuredWidth() + i6, childAt.getMeasuredHeight() + c2815i7.f1112b);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        measureChildren(i, i2);
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.inmobi.ads.viewsv2.NativeContainerLayout.LayoutParams");
                C2815I7 c2815i7 = (C2815I7) layoutParams;
                int measuredWidth = childAt.getMeasuredWidth() + c2815i7.f1111a;
                int measuredHeight = childAt.getMeasuredHeight() + c2815i7.f1112b;
                iMax2 = Math.max(iMax2, measuredWidth);
                iMax = Math.max(iMax, measuredHeight);
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(iMax2, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(iMax, getSuggestedMinimumHeight()), i2));
    }
}
