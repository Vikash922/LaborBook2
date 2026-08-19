package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Oa */
/* JADX INFO: loaded from: classes6.dex */
public final class C2908Oa extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1341a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908Oa(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        super(1);
        this.f1341a = gestureDetectorOnGestureListenerC3049Ya;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1341a;
        InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onRenderProcessGone");
        }
        gestureDetectorOnGestureListenerC3049Ya.getListener().mo1224a(gestureDetectorOnGestureListenerC3049Ya, zBooleanValue);
        return Unit.INSTANCE;
    }
}
