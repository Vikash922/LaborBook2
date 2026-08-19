package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.J5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2828J5 extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final WeakReference f1134d;

    /* JADX INFO: renamed from: e */
    public final WeakReference f1135e;

    /* JADX INFO: renamed from: f */
    public short f1136f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2828J5(C2933Q5 adUnit, AbstractC2748E0 eventListener) {
        super(adUnit, (byte) 5);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        this.f1134d = new WeakReference(adUnit);
        this.f1135e = new WeakReference(eventListener);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final void mo1177a(Object obj) {
        AbstractC2748E0 abstractC2748E0;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        C2933Q5 c2933q5 = (C2933Q5) this.f1134d.get();
        if (c2933q5 == null || (abstractC2748E0 = (AbstractC2748E0) this.f1135e.get()) == null) {
            return;
        }
        if (!zBooleanValue) {
            short s = this.f1136f;
            if (s != 0) {
                c2933q5.m1614a(this.f1135e, s, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                return;
            } else {
                c2933q5.m1742b(abstractC2748E0, (short) 85);
                return;
            }
        }
        InterfaceC3411x interfaceC3411xM1682k = c2933q5.m1682k();
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x = c2933q5.m1707x();
        if (gestureDetectorOnGestureListenerC3049YaM1707x != null) {
            if (interfaceC3411xM1682k instanceof C3359t7) {
                C3359t7 c3359t7 = (C3359t7) interfaceC3411xM1682k;
                c3359t7.f2562H = gestureDetectorOnGestureListenerC3049YaM1707x;
                c3359t7.f2565K = c2933q5.m1579T();
            } else {
                c2933q5.m1742b(abstractC2748E0, (short) 84);
            }
        }
        c2933q5.m1743h(abstractC2748E0);
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        C2933Q5 c2933q5 = (C2933Q5) this.f1134d.get();
        if (c2933q5 == null || ((AbstractC2748E0) this.f1135e.get()) == null) {
            return;
        }
        c2933q5.m1614a(this.f1135e, (short) 40, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        C2933Q5 c2933q5 = (C2933Q5) this.f1134d.get();
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1135e.get();
        if (c2933q5 != null && abstractC2748E0 != null) {
            if (c2933q5.m1732E0()) {
                short sM1646c = c2933q5.m1646c(abstractC2748E0);
                this.f1136f = sM1646c;
                m1178b(Boolean.valueOf(sM1646c == 0));
                return;
            }
            m1178b(Boolean.FALSE);
            return;
        }
        m1178b(Boolean.FALSE);
    }
}
