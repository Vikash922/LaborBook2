package com.inmobi.media;

import android.os.Handler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.O0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2898O0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2928Q0 f1326a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ WeakReference f1327b;

    public C2898O0(AbstractC2928Q0 abstractC2928Q0, WeakReference weakReference) {
        this.f1326a = abstractC2928Q0;
        this.f1327b = weakReference;
    }

    /* JADX INFO: renamed from: b */
    public static final void m1410b(AbstractC2928Q0 this$0, WeakReference listenerWeakReference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listenerWeakReference, "$listenerWeakReference");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "callback- onAdDisplayed");
        }
        this$0.mo910b((AbstractC2748E0) listenerWeakReference.get());
    }

    /* JADX INFO: renamed from: a */
    public final void m1411a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, AbstractC3208j6.m2261a(strM1558e, "<get-TAG>(...)", "Ad interaction for placement id: ").append(this.f1326a.m1570I()).toString());
        }
        if (this.f1326a.m1584Z()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "ad unit is destroyed");
                return;
            }
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1327b.get();
        if (abstractC2748E0 != null) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1326a.f1437j;
            if (interfaceC3147f53 != null) {
                String strM1558e3 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f53).m2147a(strM1558e3, "callback - onAdInteraction");
            }
            abstractC2748E0.mo978a(new HashMap());
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1326a.f1437j;
        if (interfaceC3147f54 != null) {
            String strM1558e4 = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e4, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f54).m2151b(strM1558e4, "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1413c() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "onAdDisplayFailed native interaction callback");
        }
        if (this.f1326a.m1584Z()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "callback onAdDisplayFailed failed. already destroyed.");
                return;
            }
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1327b.get();
        if (abstractC2748E0 != null) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1326a.f1437j;
            if (interfaceC3147f53 != null) {
                String strM1558e3 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f53).m2147a(strM1558e3, "callback - onAdShowFailed");
            }
            this.f1326a.m1601a(abstractC2748E0, (short) 91);
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1326a.f1437j;
        if (interfaceC3147f54 != null) {
            String strM1558e4 = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e4, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f54).m2151b(strM1558e4, "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1414d() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "onAdDisplay ");
        }
        this.f1326a.m1629b((byte) 4);
        if (this.f1326a.m1584Z()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "onAdDisplay callback failed. adunit destroyed.");
                return;
            }
            return;
        }
        Handler handlerM1565D = this.f1326a.m1565D();
        if (handlerM1565D != null) {
            final AbstractC2928Q0 abstractC2928Q0 = this.f1326a;
            final WeakReference weakReference = this.f1327b;
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.O0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C2898O0.m1410b(abstractC2928Q0, weakReference);
                }
            });
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1415e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "onAdFullScreenWillDisplay");
        }
        if (this.f1326a.m1584Z()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2147a(strM1558e2, "onAdFullScreenWillDisplay callback failed. adunit destroyed");
                return;
            }
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1327b.get();
        if (abstractC2748E0 != null) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1326a.f1437j;
            if (interfaceC3147f53 != null) {
                String strM1558e3 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f53).m2147a(strM1558e3, "callback - onAdScreenWillDisplay");
            }
            abstractC2748E0.mo985e();
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1326a.f1437j;
        if (interfaceC3147f54 != null) {
            String strM1558e4 = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e4, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f54).m2151b(strM1558e4, "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m1416f() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, AbstractC3208j6.m2261a(strM1558e, "<get-TAG>(...)", "Successfully impressed ad for placement id: ").append(this.f1326a.m1570I()).toString());
        }
        if (this.f1326a.m1584Z()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "ad unit is destroyed");
                return;
            }
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1327b.get();
        if (abstractC2748E0 != null) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1326a.f1437j;
            if (interfaceC3147f53 != null) {
                String strM1558e3 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f53).m2147a(strM1558e3, "callback - onAdImpressed");
            }
            abstractC2748E0.mo984c();
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1326a.f1437j;
        if (interfaceC3147f54 != null) {
            String strM1558e4 = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e4, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f54).m2151b(strM1558e4, "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m1417g() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "onUserLeftApplication");
        }
        if (this.f1326a.m1584Z()) {
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1327b.get();
        if (abstractC2748E0 != null) {
            abstractC2748E0.mo988h();
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2151b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m1418h() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "onUserSkippedMedia");
        }
        if (this.f1326a.m1584Z()) {
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1327b.get();
        if (abstractC2748E0 != null) {
            abstractC2748E0.mo989i();
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2151b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1412b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "onAdDismissed");
        }
        if (this.f1326a.m1584Z()) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1326a.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a("InMobi", "Ad dismissed for placement id: " + this.f1326a.m1570I());
        }
        Handler handlerM1565D = this.f1326a.m1565D();
        if (handlerM1565D != null) {
            final AbstractC2928Q0 abstractC2928Q0 = this.f1326a;
            final WeakReference weakReference = this.f1327b;
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.O0$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2898O0.m1409a(abstractC2928Q0, weakReference);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1409a(AbstractC2928Q0 this$0, WeakReference listenerWeakReference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listenerWeakReference, "$listenerWeakReference");
        this$0.mo904a((AbstractC2748E0) listenerWeakReference.get());
    }
}
