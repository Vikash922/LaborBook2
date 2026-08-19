package com.inmobi.media;

import android.content.Context;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3413x1 extends C2839K1 {

    /* JADX INFO: renamed from: R */
    public final C3443z1 f2732R;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3413x1(Context context, C3038Y placement, AbstractC2748E0 abstractC2748E0) {
        super(context, placement, abstractC2748E0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.f2732R = new C3443z1();
    }

    @Override // com.inmobi.media.C2839K1
    /* JADX INFO: renamed from: D0 */
    public final boolean mo1214D0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "canProceedToLoad");
        }
        if (mo1230f0()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "Some of the dependency libraries for Banner not found");
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        if (1 == m1577Q() || 2 == m1577Q()) {
            String strM1558e3 = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
            AbstractC2814I6.m1170a((byte) 1, strM1558e3, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                String strM1558e4 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e4, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f53).m2151b(strM1558e4, "ad load in progress. ignore load");
            }
            m1620a((short) 53);
            return false;
        }
        if (7 == m1577Q()) {
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 15);
            AbstractC2814I6.m1170a((byte) 1, "InMobi", AbstractC2880Mc.f1270j + m1570I().m1938l());
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                String strM1558e5 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e5, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f54).m2151b(strM1558e5, "Ad is active. ignore load");
            }
            return false;
        }
        if (m1577Q() == 4) {
            if (!m1581W()) {
                InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                if (interfaceC3147f55 != null) {
                    String strM1558e6 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e6, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f55).m2152c(strM1558e6, "signalCanShowForStateReady");
                }
                InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
                if (interfaceC3147f56 != null) {
                    String strM1558e7 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e7, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f56).m2147a(strM1558e7, "An ad is ready with the ad unit. Signaling ad load success ...");
                }
                AbstractC2748E0 abstractC2748E0M1697r = m1697r();
                if (abstractC2748E0M1697r == null) {
                    AbstractC2814I6.m1170a((byte) 2, "InMobi", "Listener was garbage collected. Unable to give callback");
                    InterfaceC3147f5 interfaceC3147f57 = this.f1437j;
                    if (interfaceC3147f57 != null) {
                        String strM1558e8 = AbstractC2928Q0.m1558e();
                        Intrinsics.checkNotNullExpressionValue(strM1558e8, "<get-TAG>(...)");
                        ((C3162g5) interfaceC3147f57).m2151b(strM1558e8, "listener is null. load show callback missed");
                    }
                } else {
                    InterfaceC3147f5 interfaceC3147f58 = this.f1437j;
                    if (interfaceC3147f58 != null) {
                        String strM1558e9 = AbstractC2928Q0.m1558e();
                        Intrinsics.checkNotNullExpressionValue(strM1558e9, "<get-TAG>(...)");
                        ((C3162g5) interfaceC3147f58).m2147a(strM1558e9, "callback - onLoadSuccess");
                    }
                    m1671f(abstractC2748E0M1697r);
                }
                return false;
            }
            InterfaceC3147f5 interfaceC3147f59 = this.f1437j;
            if (interfaceC3147f59 != null) {
                String strM1558e10 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e10, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f59).m2151b(strM1558e10, "ad is expired, clearing");
            }
            mo1231g();
        }
        m1668e0();
        return true;
    }

    @Override // com.inmobi.media.C2839K1, com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public final void mo1222a(EnumC2704B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo974a(audioStatusInternal);
        }
        C3443z1 c3443z1 = this.f2732R;
        c3443z1.getClass();
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        if (!c3443z1.f2787a && audioStatusInternal == EnumC2704B1.f842e) {
            c3443z1.f2787a = true;
            C3029X4 c3029x4 = C3029X4.f1640c;
            c3029x4.f1454a = System.currentTimeMillis();
            c3029x4.f1455b++;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2587d(short s) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "onShowFailure");
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r == null) {
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "Listener was garbage collected. Unable to give callback");
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "listener is null. show fail callback missed. ");
            }
        } else {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                String strM1558e3 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f53).m2151b(strM1558e3, "callback - onAdShowFailed");
            }
            abstractC2748E0M1697r.mo885d();
        }
        if (s != 0) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                String strM1558e4 = AbstractC2928Q0.m1558e();
                ((C3162g5) interfaceC3147f54).m2151b(strM1558e4, AbstractC3420x8.m2595a(strM1558e4, "<get-TAG>(...)", "show failed - ", s));
            }
            m1655c(s);
        }
    }

    @Override // com.inmobi.media.C2839K1, com.inmobi.media.AbstractC2928Q0, com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: i */
    public final void mo1232i(GestureDetectorOnGestureListenerC3049Ya renderView) {
        AbstractC2748E0 abstractC2748E0M1697r;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "onRenderViewVisible");
        }
        if (m1577Q() == 4 && (abstractC2748E0M1697r = m1697r()) != null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2147a(strM1558e2, "callback - onAdDisplayed");
            }
            m1659d(abstractC2748E0M1697r);
        }
        super.mo1232i(renderView);
    }

    @Override // com.inmobi.media.C2839K1, com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: q */
    public final String mo914q() {
        return "audio";
    }

    @Override // com.inmobi.media.C2839K1, com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public final void mo1225a(boolean z) {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "audio_pref_file");
        Intrinsics.checkNotNullParameter("user_mute_count", "key");
        int i = c3133e6M2058a.f2045a.getInt("user_mute_count", 0);
        C3133e6.m2099a(c3133e6M2058a, "user_mute_count", z ? Math.max(0, i - 1) : i + 1, false, 4, (Object) null);
    }
}
