package com.inmobi.media;

import android.view.ViewParent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.W3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3014W3 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3042Y3 f1625a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3014W3(C3042Y3 c3042y3) {
        super(0);
        this.f1625a = c3042y3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        InterfaceC2972T3 interfaceC2972T3;
        ViewParent parent = this.f1625a.getParent();
        C2931Q3 c2931q3 = parent instanceof C2931Q3 ? (C2931Q3) parent : null;
        if (c2931q3 != null && (interfaceC2972T3 = c2931q3.f1464d) != null) {
            InterfaceC3411x interfaceC3411x = ((C2902O4) interfaceC2972T3).f1333a.f1364b;
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya ? (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x : null;
            if (gestureDetectorOnGestureListenerC3049Ya != null) {
                gestureDetectorOnGestureListenerC3049Ya.m1978m();
            }
        }
        return Unit.INSTANCE;
    }
}
