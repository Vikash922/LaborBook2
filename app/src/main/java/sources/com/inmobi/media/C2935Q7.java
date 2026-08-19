package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.PagerAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Q7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2935Q7 extends PagerAdapter implements InterfaceC3240l8 {

    /* JADX INFO: renamed from: a */
    public final C2920P7 f1474a;

    /* JADX INFO: renamed from: b */
    public final C3120d8 f1475b;

    /* JADX INFO: renamed from: c */
    public final String f1476c;

    /* JADX INFO: renamed from: d */
    public final int f1477d;

    /* JADX INFO: renamed from: e */
    public final Handler f1478e;

    /* JADX INFO: renamed from: f */
    public boolean f1479f;

    /* JADX INFO: renamed from: g */
    public final SparseArray f1480g;

    public C2935Q7(C2920P7 mNativeDataModel, C3120d8 mNativeLayoutInflater) {
        Intrinsics.checkNotNullParameter(mNativeDataModel, "mNativeDataModel");
        Intrinsics.checkNotNullParameter(mNativeLayoutInflater, "mNativeLayoutInflater");
        this.f1474a = mNativeDataModel;
        this.f1475b = mNativeLayoutInflater;
        this.f1476c = "Q7";
        this.f1477d = 50;
        this.f1478e = new Handler(Looper.getMainLooper());
        this.f1480g = new SparseArray();
    }

    /* JADX INFO: renamed from: a */
    public static final void m1747a(Object item, C2935Q7 this$0) {
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (item instanceof View) {
            C3120d8 c3120d8 = this$0.f1475b;
            View view = (View) item;
            c3120d8.getClass();
            Intrinsics.checkNotNullParameter(view, "view");
            c3120d8.f2012m.m2076a(view);
        }
    }

    @Override // com.inmobi.media.InterfaceC3240l8
    public final void destroy() {
        this.f1479f = true;
        int size = this.f1480g.size();
        for (int i = 0; i < size; i++) {
            this.f1478e.removeCallbacks((Runnable) this.f1480g.get(this.f1480g.keyAt(i)));
        }
        this.f1480g.clear();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup container, int i, final Object item) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof View) {
            container.removeView((View) item);
        }
        Runnable runnable = (Runnable) this.f1480g.get(i);
        if (runnable != null) {
            this.f1478e.removeCallbacks(runnable);
            String TAG = this.f1476c;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        this.f1478e.post(new Runnable() { // from class: com.inmobi.media.Q7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2935Q7.m1747a(item, this);
            }
        });
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.f1474a.m1498d();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getItemPosition(Object item) {
        Intrinsics.checkNotNullParameter(item, "item");
        View view = item instanceof View ? (View) item : null;
        Object tag = view != null ? view.getTag() : null;
        if (tag instanceof Integer) {
            return ((Number) tag).intValue();
        }
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup container, int i) {
        View relativeLayout;
        Intrinsics.checkNotNullParameter(container, "container");
        String TAG = this.f1476c;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        C2800H7 c2800h7M1491b = this.f1474a.m1491b(i);
        if (c2800h7M1491b == null || (relativeLayout = m1748a(i, container, c2800h7M1491b)) == null) {
            relativeLayout = new RelativeLayout(container.getContext());
        }
        relativeLayout.setTag(Integer.valueOf(i));
        container.addView(relativeLayout);
        return relativeLayout;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(obj, "obj");
        return Intrinsics.areEqual(view, obj);
    }

    /* JADX INFO: renamed from: a */
    public final ViewGroup m1748a(final int i, final ViewGroup parent, final C2800H7 pageContainerAsset) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(pageContainerAsset, "pageContainerAsset");
        final ViewGroup viewGroupM2064a = this.f1475b.m2064a(parent, pageContainerAsset);
        if (viewGroupM2064a != null) {
            int iAbs = Math.abs(this.f1475b.f2010k - i);
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Q7$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2935Q7.m1746a(this.f$0, i, viewGroupM2064a, parent, pageContainerAsset);
                }
            };
            this.f1480g.put(i, runnable);
            this.f1478e.postDelayed(runnable, iAbs * this.f1477d);
        }
        return viewGroupM2064a;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1746a(C2935Q7 this$0, int i, ViewGroup container, ViewGroup parent, C2800H7 root) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(container, "$it");
        Intrinsics.checkNotNullParameter(parent, "$parent");
        Intrinsics.checkNotNullParameter(root, "$pageContainerAsset");
        if (this$0.f1479f) {
            return;
        }
        this$0.f1480g.remove(i);
        C3120d8 c3120d8 = this$0.f1475b;
        c3120d8.getClass();
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(root, "root");
        c3120d8.m2068b(container, root);
    }
}
