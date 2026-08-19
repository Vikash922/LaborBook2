package com.inmobi.media;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.V5 */
/* JADX INFO: loaded from: classes6.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC3002V5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a */
    public final FrameLayout f1579a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f1580b;

    /* JADX INFO: renamed from: c */
    public int f1581c;

    /* JADX INFO: renamed from: d */
    public int f1582d;

    public ViewTreeObserverOnGlobalLayoutListenerC3002V5(FrameLayout view, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f1579a = view;
        this.f1580b = interfaceC3147f5;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f1580b;
            if (interfaceC3147f5 != null) {
                String str = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2147a(str, "close called");
            }
            this.f1581c = AbstractC3429y2.m2609b(this.f1579a.getWidth() / AbstractC2886N3.m1384b());
            this.f1582d = AbstractC3429y2.m2609b(this.f1579a.getHeight() / AbstractC2886N3.m1384b());
            this.f1579a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            Boolean bool = Boolean.FALSE;
            synchronized (bool) {
                bool.notify();
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1580b;
            if (interfaceC3147f52 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                ((C3162g5) interfaceC3147f52).m2151b(str2, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in JavaScriptBridge$1.onGlobalLayout(); ")));
            }
        }
    }
}
