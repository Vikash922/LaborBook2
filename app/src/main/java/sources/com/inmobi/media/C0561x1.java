package com.inmobi.media;

import android.content.Context;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0561x1 extends K1 {
    public final C0591z1 R;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0561x1(Context context, Y placement, E0 e0) {
        super(context, placement, e0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.R = new C0591z1();
    }

    @Override // com.inmobi.media.K1
    public final boolean D0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "canProceedToLoad");
        }
        if (f0()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "Some of the dependency libraries for Banner not found");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        if (1 == Q() || 2 == Q()) {
            String strE3 = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
            I6.a((byte) 1, strE3, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                String strE4 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE4, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f53).b(strE4, "ad load in progress. ignore load");
            }
            a((short) 53);
            return false;
        }
        if (7 == Q()) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 15);
            I6.a((byte) 1, "InMobi", Mc.j + I().l());
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                String strE5 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE5, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f54).b(strE5, "Ad is active. ignore load");
            }
            return false;
        }
        if (Q() == 4) {
            if (!W()) {
                InterfaceC0298f5 interfaceC0298f55 = this.j;
                if (interfaceC0298f55 != null) {
                    String strE6 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE6, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f55).c(strE6, "signalCanShowForStateReady");
                }
                InterfaceC0298f5 interfaceC0298f56 = this.j;
                if (interfaceC0298f56 != null) {
                    String strE7 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE7, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f56).a(strE7, "An ad is ready with the ad unit. Signaling ad load success ...");
                }
                E0 e0R = r();
                if (e0R == null) {
                    I6.a((byte) 2, "InMobi", "Listener was garbage collected. Unable to give callback");
                    InterfaceC0298f5 interfaceC0298f57 = this.j;
                    if (interfaceC0298f57 != null) {
                        String strE8 = Q0.e();
                        Intrinsics.checkNotNullExpressionValue(strE8, "<get-TAG>(...)");
                        ((C0314g5) interfaceC0298f57).b(strE8, "listener is null. load show callback missed");
                    }
                } else {
                    InterfaceC0298f5 interfaceC0298f58 = this.j;
                    if (interfaceC0298f58 != null) {
                        String strE9 = Q0.e();
                        Intrinsics.checkNotNullExpressionValue(strE9, "<get-TAG>(...)");
                        ((C0314g5) interfaceC0298f58).a(strE9, "callback - onLoadSuccess");
                    }
                    f(e0R);
                }
                return false;
            }
            InterfaceC0298f5 interfaceC0298f59 = this.j;
            if (interfaceC0298f59 != null) {
                String strE10 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE10, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f59).b(strE10, "ad is expired, clearing");
            }
            g();
        }
        e0();
        return true;
    }

    @Override // com.inmobi.media.K1, com.inmobi.media.AbstractC0227ab
    public final void a(B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        E0 e0R = r();
        if (e0R != null) {
            e0R.a(audioStatusInternal);
        }
        C0591z1 c0591z1 = this.R;
        c0591z1.getClass();
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        if (!c0591z1.f542a && audioStatusInternal == B1.e) {
            c0591z1.f542a = true;
            X4 x4 = X4.c;
            x4.f220a = System.currentTimeMillis();
            x4.b++;
        }
    }

    public final void d(short s) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "onShowFailure");
        }
        E0 e0R = r();
        if (e0R == null) {
            I6.a((byte) 2, "InMobi", "Listener was garbage collected. Unable to give callback");
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "listener is null. show fail callback missed. ");
            }
        } else {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                String strE3 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f53).b(strE3, "callback - onAdShowFailed");
            }
            e0R.d();
        }
        if (s != 0) {
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                String strE4 = Q0.e();
                ((C0314g5) interfaceC0298f54).b(strE4, AbstractC0568x8.a(strE4, "<get-TAG>(...)", "show failed - ", s));
            }
            c(s);
        }
    }

    @Override // com.inmobi.media.K1, com.inmobi.media.Q0, com.inmobi.media.AbstractC0227ab
    public final void i(Ya renderView) {
        E0 e0R;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "onRenderViewVisible");
        }
        if (Q() == 4 && (e0R = r()) != null) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).a(strE2, "callback - onAdDisplayed");
            }
            d(e0R);
        }
        super.i(renderView);
    }

    @Override // com.inmobi.media.K1, com.inmobi.media.Q0
    public final String q() {
        return "audio";
    }

    @Override // com.inmobi.media.K1, com.inmobi.media.AbstractC0227ab
    public final void a(boolean z) {
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "audio_pref_file");
        Intrinsics.checkNotNullParameter("user_mute_count", "key");
        int i = c0284e6A.f340a.getInt("user_mute_count", 0);
        C0284e6.a(c0284e6A, "user_mute_count", z ? Math.max(0, i - 1) : i + 1, false, 4, (Object) null);
    }
}
