package com.inmobi.media;

import android.content.Context;
import android.graphics.Point;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import androidx.viewpager.widget.ViewPager;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Ib extends AbstractC0380k8 implements ViewPager.OnPageChangeListener {
    public final String b;
    public final ViewPager c;
    public final Point d;
    public final Point e;
    public boolean f;
    public C0270d8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ib(Context context) {
        super(context, (byte) 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.b = "Ib";
        this.d = new Point();
        this.e = new Point();
        setClipChildren(false);
        setLayerType(1, null);
        ViewPager viewPager = new ViewPager(getContext());
        this.c = viewPager;
        viewPager.addOnPageChangeListener(this);
        addView(viewPager);
    }

    @Override // com.inmobi.media.AbstractC0380k8
    public final void a(H7 scrollableContainerAsset, InterfaceC0396l8 dataSource, int i, int i2, C0270d8 c0270d8) {
        FrameLayout.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(scrollableContainerAsset, "scrollableContainerAsset");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        D7 d7 = scrollableContainerAsset.B > 0 ? (D7) scrollableContainerAsset.A.get(0) : null;
        if (d7 != null) {
            HashMap map = C0271d9.c;
            ViewGroup.LayoutParams layoutParamsA = N8.a(d7, this);
            Intrinsics.checkNotNull(layoutParamsA, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            layoutParams = (FrameLayout.LayoutParams) layoutParamsA;
            layoutParams.setMarginStart(20);
            layoutParams.setMarginEnd(20);
            layoutParams.gravity = i2;
        } else {
            layoutParams = null;
        }
        ViewPager viewPager = this.c;
        if (viewPager != null) {
            viewPager.setLayoutParams(layoutParams);
            viewPager.setAdapter(dataSource instanceof Q7 ? (Q7) dataSource : null);
            viewPager.setOffscreenPageLimit(2);
            viewPager.setPageMargin(16);
            viewPager.setCurrentItem(i);
        }
        this.g = c0270d8;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
        this.f = i != 0;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
        if (this.f) {
            invalidate();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        Intrinsics.checkNotNullExpressionValue(this.b, "TAG");
        ViewPager viewPager = this.c;
        ViewGroup.LayoutParams layoutParams = viewPager != null ? viewPager.getLayoutParams() : null;
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        C0270d8 c0270d8 = this.g;
        if (c0270d8 != null) {
            if (layoutParams2 != null) {
                c0270d8.k = i;
                H7 asset = c0270d8.c.b(i);
                if (asset != null) {
                    W7 w7 = c0270d8.d;
                    Intrinsics.checkNotNullParameter(asset, "asset");
                    X7 x7 = w7.f272a;
                    if (!x7.f279a) {
                        C0511t7 c0511t7 = x7.b;
                        c0511t7.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        if (!c0511t7.n.contains(Integer.valueOf(i)) && !c0511t7.t) {
                            c0511t7.m();
                            if (!c0511t7.t) {
                                c0511t7.n.add(Integer.valueOf(i));
                                asset.y = System.currentTimeMillis();
                                if (c0511t7.r) {
                                    HashMap mapA = c0511t7.a(asset);
                                    InterfaceC0298f5 interfaceC0298f5 = c0511t7.j;
                                    if (interfaceC0298f5 != null) {
                                        String TAG = c0511t7.m;
                                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                                        ((C0314g5) interfaceC0298f5).a(TAG, "Page-view impression record request");
                                    }
                                    asset.a("page_view", mapA, (C0395l7) null, c0511t7.j);
                                } else {
                                    c0511t7.o.add(asset);
                                }
                            }
                        }
                    }
                }
                int i2 = c0270d8.k;
                layoutParams2.gravity = i2 == 0 ? GravityCompat.START : i2 == c0270d8.c.d() - 1 ? GravityCompat.END : 1;
            }
            ViewPager viewPager2 = this.c;
            if (viewPager2 != null) {
                viewPager2.requestLayout();
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        Point point = this.d;
        point.x = i / 2;
        point.y = i2 / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ib.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
