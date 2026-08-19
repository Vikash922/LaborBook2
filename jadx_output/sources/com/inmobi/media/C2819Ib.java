package com.inmobi.media;

import android.content.Context;
import android.graphics.Point;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import androidx.viewpager.widget.ViewPager;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Ib */
/* JADX INFO: loaded from: classes6.dex */
public final class C2819Ib extends AbstractC3225k8 implements ViewPager.OnPageChangeListener {

    /* JADX INFO: renamed from: b */
    public final String f1120b;

    /* JADX INFO: renamed from: c */
    public final ViewPager f1121c;

    /* JADX INFO: renamed from: d */
    public final Point f1122d;

    /* JADX INFO: renamed from: e */
    public final Point f1123e;

    /* JADX INFO: renamed from: f */
    public boolean f1124f;

    /* JADX INFO: renamed from: g */
    public C3120d8 f1125g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2819Ib(Context context) {
        super(context, (byte) 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f1120b = "Ib";
        this.f1122d = new Point();
        this.f1123e = new Point();
        setClipChildren(false);
        setLayerType(1, null);
        ViewPager viewPager = new ViewPager(getContext());
        this.f1121c = viewPager;
        viewPager.addOnPageChangeListener(this);
        addView(viewPager);
    }

    @Override // com.inmobi.media.AbstractC3225k8
    /* JADX INFO: renamed from: a */
    public final void mo1152a(C2800H7 scrollableContainerAsset, InterfaceC3240l8 dataSource, int i, int i2, C3120d8 c3120d8) {
        FrameLayout.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(scrollableContainerAsset, "scrollableContainerAsset");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        C2740D7 c2740d7 = scrollableContainerAsset.f1075B > 0 ? (C2740D7) scrollableContainerAsset.f1074A.get(0) : null;
        if (c2740d7 != null) {
            HashMap map = C3121d9.f2016c;
            ViewGroup.LayoutParams layoutParamsM1397a = C2891N8.m1397a(c2740d7, this);
            Intrinsics.checkNotNull(layoutParamsM1397a, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            layoutParams = (FrameLayout.LayoutParams) layoutParamsM1397a;
            layoutParams.setMarginStart(20);
            layoutParams.setMarginEnd(20);
            layoutParams.gravity = i2;
        } else {
            layoutParams = null;
        }
        ViewPager viewPager = this.f1121c;
        if (viewPager != null) {
            viewPager.setLayoutParams(layoutParams);
            viewPager.setAdapter(dataSource instanceof C2935Q7 ? (C2935Q7) dataSource : null);
            viewPager.setOffscreenPageLimit(2);
            viewPager.setPageMargin(16);
            viewPager.setCurrentItem(i);
        }
        this.f1125g = c3120d8;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
        this.f1124f = i != 0;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
        if (this.f1124f) {
            invalidate();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        Intrinsics.checkNotNullExpressionValue(this.f1120b, "TAG");
        ViewPager viewPager = this.f1121c;
        ViewGroup.LayoutParams layoutParams = viewPager != null ? viewPager.getLayoutParams() : null;
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        C3120d8 c3120d8 = this.f1125g;
        if (c3120d8 != null) {
            if (layoutParams2 != null) {
                c3120d8.f2010k = i;
                C2800H7 asset = c3120d8.f2002c.m1491b(i);
                if (asset != null) {
                    C3018W7 c3018w7 = c3120d8.f2003d;
                    Intrinsics.checkNotNullParameter(asset, "asset");
                    C3032X7 c3032x7 = c3018w7.f1628a;
                    if (!c3032x7.f1645a) {
                        C3359t7 c3359t7 = c3032x7.f1646b;
                        c3359t7.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        if (!c3359t7.f2588n.contains(Integer.valueOf(i)) && !c3359t7.f2594t) {
                            c3359t7.m2449m();
                            if (!c3359t7.f2594t) {
                                c3359t7.f2588n.add(Integer.valueOf(i));
                                asset.f1079y = System.currentTimeMillis();
                                if (c3359t7.f2592r) {
                                    HashMap mapM2435a = c3359t7.m2435a(asset);
                                    InterfaceC3147f5 interfaceC3147f5 = c3359t7.f2584j;
                                    if (interfaceC3147f5 != null) {
                                        String TAG = c3359t7.f2587m;
                                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                                        ((C3162g5) interfaceC3147f5).m2147a(TAG, "Page-view impression record request");
                                    }
                                    asset.m951a("page_view", mapM2435a, (C3239l7) null, c3359t7.f2584j);
                                } else {
                                    c3359t7.f2589o.add(asset);
                                }
                            }
                        }
                    }
                }
                int i2 = c3120d8.f2010k;
                layoutParams2.gravity = i2 == 0 ? GravityCompat.START : i2 == c3120d8.f2002c.m1498d() - 1 ? GravityCompat.END : 1;
            }
            ViewPager viewPager2 = this.f1121c;
            if (viewPager2 != null) {
                viewPager2.requestLayout();
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        Point point = this.f1122d;
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2819Ib.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
