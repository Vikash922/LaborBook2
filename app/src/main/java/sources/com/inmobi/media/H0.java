package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class H0 extends E1 {
    public final /* synthetic */ Q0 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ InterfaceC0218a2 f;
    public final /* synthetic */ String g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H0(Q0 q0, String str, InterfaceC0218a2 interfaceC0218a2, String str2, String str3) {
        super(q0);
        this.d = q0;
        this.e = str;
        this.f = interfaceC0218a2;
        this.g = str2;
        this.h = str3;
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        Q0 q0 = (Q0) this.b.get();
        if (q0 != null) {
            try {
                C0325h c0325hM = q0.m();
                if (c0325hM == null || !Intrinsics.areEqual(c0325hM.s(), this.e)) {
                    InterfaceC0298f5 interfaceC0298f5 = this.d.j;
                    if (interfaceC0298f5 != null) {
                        String strE = Q0.e();
                        Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                        ((C0314g5) interfaceC0298f5).c(strE, "Returning blob as empty string");
                    }
                    InterfaceC0218a2 interfaceC0218a2 = this.f;
                    String jsCallbackNamespace = this.g;
                    String callback = this.h;
                    Ya ya = (Ya) interfaceC0218a2;
                    ya.getClass();
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    Intrinsics.checkNotNullParameter(callback, "callback");
                    Intrinsics.checkNotNullParameter("", "blob");
                    InterfaceC0298f5 interfaceC0298f52 = ya.i;
                    if (interfaceC0298f52 != null) {
                        String TAG = Ya.P0;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C0314g5) interfaceC0298f52).a(TAG, "retrievedBlob");
                    }
                    ya.a(jsCallbackNamespace, callback + "();");
                    return;
                }
                String blob = c0325hM.F();
                InterfaceC0218a2 interfaceC0218a22 = this.f;
                String jsCallbackNamespace2 = this.g;
                String callback2 = this.h;
                Ya ya2 = (Ya) interfaceC0218a22;
                ya2.getClass();
                Intrinsics.checkNotNullParameter(jsCallbackNamespace2, "jsCallbackNamespace");
                Intrinsics.checkNotNullParameter(callback2, "callback");
                Intrinsics.checkNotNullParameter(blob, "blob");
                InterfaceC0298f5 interfaceC0298f53 = ya2.i;
                if (interfaceC0298f53 != null) {
                    String TAG2 = Ya.P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f53).a(TAG2, "retrievedBlob");
                }
                ya2.a(jsCallbackNamespace2, callback2 + '(' + blob + ");");
                InterfaceC0298f5 interfaceC0298f54 = this.d.j;
                if (interfaceC0298f54 != null) {
                    String strE2 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f54).c(strE2, "Returning blob " + blob);
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f55 = this.d.j;
                if (interfaceC0298f55 != null) {
                    String strE3 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f55).a(strE3, "Exception while getBlob", e);
                }
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
    }
}
