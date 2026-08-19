package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3135e8 extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final WeakReference f2047d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135e8(C2725C7 adUnit) {
        super(adUnit, (byte) 6);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f2047d = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final void mo1177a(Object obj) {
        short sShortValue = ((Number) obj).shortValue();
        AbstractC2928Q0 abstractC2928Q0 = (C2725C7) this.f2047d.get();
        if (abstractC2928Q0 == null) {
            return;
        }
        if (sShortValue != 0) {
            abstractC2928Q0.m1614a(new WeakReference<>(abstractC2928Q0.m1697r()), sShortValue, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        if (2 == abstractC2928Q0.m1577Q()) {
            abstractC2928Q0.m1658d((byte) 4);
            InterfaceC3411x interfaceC3411xM1682k = abstractC2928Q0.m1682k();
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x = abstractC2928Q0.m1707x();
            AbstractC2748E0 abstractC2748E0M1697r = abstractC2928Q0.m1697r();
            if (!(interfaceC3411xM1682k instanceof C3359t7)) {
                if (abstractC2748E0M1697r != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    abstractC2748E0M1697r.mo878a(abstractC2928Q0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    return;
                }
                return;
            }
            C3359t7 c3359t7 = (C3359t7) interfaceC3411xM1682k;
            c3359t7.f2562H = gestureDetectorOnGestureListenerC3049YaM1707x;
            c3359t7.f2565K = abstractC2928Q0.m1579T();
            C2955S0 c2955s0M1698s = abstractC2928Q0.m1698s();
            c2955s0M1698s.getClass();
            c2955s0M1698s.f1523i = SystemClock.elapsedRealtime();
            abstractC2928Q0.m1703u0();
            abstractC2928Q0.m1712z0();
            if (abstractC2748E0M1697r != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                abstractC2928Q0.m1671f(abstractC2748E0M1697r);
            }
        }
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        AbstractC2748E0 abstractC2748E0M1697r;
        super.mo993c();
        AbstractC2928Q0 abstractC2928Q0 = (C2725C7) this.f2047d.get();
        if (abstractC2928Q0 == null || (abstractC2748E0M1697r = abstractC2928Q0.m1697r()) == null) {
            return;
        }
        abstractC2748E0M1697r.mo878a(abstractC2928Q0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        C2725C7 c2725c7 = (C2725C7) this.f2047d.get();
        if (c2725c7 == null) {
            m1178b((short) 13);
            return;
        }
        AbstractC2748E0 abstractC2748E0M1697r = c2725c7.m1697r();
        if (abstractC2748E0M1697r != null) {
            m1178b(Short.valueOf(c2725c7.m1646c(abstractC2748E0M1697r)));
        }
    }
}
