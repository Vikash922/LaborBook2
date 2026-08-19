package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public class J7 extends ViewGroup {
    public J7(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return p instanceof I7;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return new I7(p);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.inmobi.ads.viewsv2.NativeContainerLayout.LayoutParams");
                I7 i7 = (I7) layoutParams;
                int i6 = i7.f140a;
                childAt.layout(i6, i7.b, childAt.getMeasuredWidth() + i6, childAt.getMeasuredHeight() + i7.b);
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
                I7 i7 = (I7) layoutParams;
                int measuredWidth = childAt.getMeasuredWidth() + i7.f140a;
                int measuredHeight = childAt.getMeasuredHeight() + i7.b;
                iMax2 = Math.max(iMax2, measuredWidth);
                iMax = Math.max(iMax, measuredHeight);
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(iMax2, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(iMax, getSuggestedMinimumHeight()), i2));
    }
}
