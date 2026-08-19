package com.inmobi.media;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class V5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameLayout f261a;
    public final InterfaceC0298f5 b;
    public int c;
    public int d;

    public V5(FrameLayout view, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f261a = view;
        this.b = interfaceC0298f5;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 != null) {
                String str = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).a(str, "close called");
            }
            this.c = AbstractC0576y2.b(this.f261a.getWidth() / N3.b());
            this.d = AbstractC0576y2.b(this.f261a.getHeight() / N3.b());
            this.f261a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            Boolean bool = Boolean.FALSE;
            synchronized (bool) {
                bool.notify();
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.b;
            if (interfaceC0298f52 != null) {
                String str2 = Y5.f286a;
                ((C0314g5) interfaceC0298f52).b(str2, Ed.a(e, AbstractC0363j6.a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in JavaScriptBridge$1.onGlobalLayout(); ")));
            }
        }
    }
}
