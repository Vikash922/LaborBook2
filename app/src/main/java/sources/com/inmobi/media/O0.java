package com.inmobi.media;

import android.os.Handler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class O0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q0 f197a;
    public final /* synthetic */ WeakReference b;

    public O0(Q0 q0, WeakReference weakReference) {
        this.f197a = q0;
        this.b = weakReference;
    }

    public static final void b(Q0 this$0, WeakReference listenerWeakReference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listenerWeakReference, "$listenerWeakReference");
        InterfaceC0298f5 interfaceC0298f5 = this$0.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).a(strE, "callback- onAdDisplayed");
        }
        this$0.b((E0) listenerWeakReference.get());
    }

    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            ((C0314g5) interfaceC0298f5).a(strE, AbstractC0363j6.a(strE, "<get-TAG>(...)", "Ad interaction for placement id: ").append(this.f197a.I()).toString());
        }
        if (this.f197a.Z()) {
            InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "ad unit is destroyed");
                return;
            }
            return;
        }
        E0 e0 = (E0) this.b.get();
        if (e0 != null) {
            InterfaceC0298f5 interfaceC0298f53 = this.f197a.j;
            if (interfaceC0298f53 != null) {
                String strE3 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f53).a(strE3, "callback - onAdInteraction");
            }
            e0.a(new HashMap());
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.f197a.j;
        if (interfaceC0298f54 != null) {
            String strE4 = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE4, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f54).b(strE4, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void c() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).a(strE, "onAdDisplayFailed native interaction callback");
        }
        if (this.f197a.Z()) {
            InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "callback onAdDisplayFailed failed. already destroyed.");
                return;
            }
            return;
        }
        E0 e0 = (E0) this.b.get();
        if (e0 != null) {
            InterfaceC0298f5 interfaceC0298f53 = this.f197a.j;
            if (interfaceC0298f53 != null) {
                String strE3 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f53).a(strE3, "callback - onAdShowFailed");
            }
            this.f197a.a(e0, (short) 91);
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.f197a.j;
        if (interfaceC0298f54 != null) {
            String strE4 = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE4, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f54).b(strE4, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void d() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "onAdDisplay ");
        }
        this.f197a.b((byte) 4);
        if (this.f197a.Z()) {
            InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "onAdDisplay callback failed. adunit destroyed.");
                return;
            }
            return;
        }
        Handler handlerD = this.f197a.D();
        if (handlerD != null) {
            final Q0 q0 = this.f197a;
            final WeakReference weakReference = this.b;
            handlerD.post(new Runnable() { // from class: com.inmobi.media.O0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    O0.b(q0, weakReference);
                }
            });
        }
    }

    public final void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "onAdFullScreenWillDisplay");
        }
        if (this.f197a.Z()) {
            InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).a(strE2, "onAdFullScreenWillDisplay callback failed. adunit destroyed");
                return;
            }
            return;
        }
        E0 e0 = (E0) this.b.get();
        if (e0 != null) {
            InterfaceC0298f5 interfaceC0298f53 = this.f197a.j;
            if (interfaceC0298f53 != null) {
                String strE3 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f53).a(strE3, "callback - onAdScreenWillDisplay");
            }
            e0.e();
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.f197a.j;
        if (interfaceC0298f54 != null) {
            String strE4 = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE4, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f54).b(strE4, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void f() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            ((C0314g5) interfaceC0298f5).a(strE, AbstractC0363j6.a(strE, "<get-TAG>(...)", "Successfully impressed ad for placement id: ").append(this.f197a.I()).toString());
        }
        if (this.f197a.Z()) {
            InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "ad unit is destroyed");
                return;
            }
            return;
        }
        E0 e0 = (E0) this.b.get();
        if (e0 != null) {
            InterfaceC0298f5 interfaceC0298f53 = this.f197a.j;
            if (interfaceC0298f53 != null) {
                String strE3 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f53).a(strE3, "callback - onAdImpressed");
            }
            e0.c();
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.f197a.j;
        if (interfaceC0298f54 != null) {
            String strE4 = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE4, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f54).b(strE4, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void g() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).a(strE, "onUserLeftApplication");
        }
        if (this.f197a.Z()) {
            return;
        }
        E0 e0 = (E0) this.b.get();
        if (e0 != null) {
            e0.h();
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void h() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).a(strE, "onUserSkippedMedia");
        }
        if (this.f197a.Z()) {
            return;
        }
        E0 e0 = (E0) this.b.get();
        if (e0 != null) {
            e0.i();
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).a(strE, "onAdDismissed");
        }
        if (this.f197a.Z()) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f197a.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a("InMobi", "Ad dismissed for placement id: " + this.f197a.I());
        }
        Handler handlerD = this.f197a.D();
        if (handlerD != null) {
            final Q0 q0 = this.f197a;
            final WeakReference weakReference = this.b;
            handlerD.post(new Runnable() { // from class: com.inmobi.media.O0$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    O0.a(q0, weakReference);
                }
            });
        }
    }

    public static final void a(Q0 this$0, WeakReference listenerWeakReference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listenerWeakReference, "$listenerWeakReference");
        this$0.a((E0) listenerWeakReference.get());
    }
}
