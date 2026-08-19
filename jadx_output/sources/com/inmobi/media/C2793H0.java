package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.H0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2793H0 extends AbstractRunnableC2749E1 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AbstractC2928Q0 f1065d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ String f1066e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ InterfaceC3069a2 f1067f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ String f1068g;

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ String f1069h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2793H0(AbstractC2928Q0 abstractC2928Q0, String str, InterfaceC3069a2 interfaceC3069a2, String str2, String str3) {
        super(abstractC2928Q0);
        this.f1065d = abstractC2928Q0;
        this.f1066e = str;
        this.f1067f = interfaceC3069a2;
        this.f1068g = str2;
        this.f1069h = str3;
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f956b.get();
        if (abstractC2928Q0 != null) {
            try {
                C3171h c3171hM1688m = abstractC2928Q0.m1688m();
                if (c3171hM1688m == null || !Intrinsics.areEqual(c3171hM1688m.m2202s(), this.f1066e)) {
                    InterfaceC3147f5 interfaceC3147f5 = this.f1065d.f1437j;
                    if (interfaceC3147f5 != null) {
                        String strM1558e = AbstractC2928Q0.m1558e();
                        Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                        ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "Returning blob as empty string");
                    }
                    InterfaceC3069a2 interfaceC3069a2 = this.f1067f;
                    String jsCallbackNamespace = this.f1068g;
                    String callback = this.f1069h;
                    GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) interfaceC3069a2;
                    gestureDetectorOnGestureListenerC3049Ya.getClass();
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    Intrinsics.checkNotNullParameter(callback, "callback");
                    Intrinsics.checkNotNullParameter("", "blob");
                    InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                    if (interfaceC3147f52 != null) {
                        String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C3162g5) interfaceC3147f52).m2147a(TAG, "retrievedBlob");
                    }
                    gestureDetectorOnGestureListenerC3049Ya.m1953a(jsCallbackNamespace, callback + "();");
                    return;
                }
                String blob = c3171hM1688m.m2172F();
                InterfaceC3069a2 interfaceC3069a22 = this.f1067f;
                String jsCallbackNamespace2 = this.f1068g;
                String callback2 = this.f1069h;
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = (GestureDetectorOnGestureListenerC3049Ya) interfaceC3069a22;
                gestureDetectorOnGestureListenerC3049Ya2.getClass();
                Intrinsics.checkNotNullParameter(jsCallbackNamespace2, "jsCallbackNamespace");
                Intrinsics.checkNotNullParameter(callback2, "callback");
                Intrinsics.checkNotNullParameter(blob, "blob");
                InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya2.f1749i;
                if (interfaceC3147f53 != null) {
                    String TAG2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f53).m2147a(TAG2, "retrievedBlob");
                }
                gestureDetectorOnGestureListenerC3049Ya2.m1953a(jsCallbackNamespace2, callback2 + '(' + blob + ");");
                InterfaceC3147f5 interfaceC3147f54 = this.f1065d.f1437j;
                if (interfaceC3147f54 != null) {
                    String strM1558e2 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f54).m2152c(strM1558e2, "Returning blob " + blob);
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f55 = this.f1065d.f1437j;
                if (interfaceC3147f55 != null) {
                    String strM1558e3 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f55).m2148a(strM1558e3, "Exception while getBlob", e);
                }
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
    }
}
