package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.w1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3398w1 extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final JSONObject f2696d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3147f5 f2697e;

    /* JADX INFO: renamed from: f */
    public final WeakReference f2698f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3398w1(AbstractC2928Q0 adUnit, JSONObject response, InterfaceC3147f5 interfaceC3147f5) {
        super(adUnit, (byte) 4);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(response, "response");
        this.f2696d = response;
        this.f2697e = interfaceC3147f5;
        this.f2698f = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final void mo1177a(Object obj) {
        AbstractC2748E0 abstractC2748E0M1697r;
        InMobiAdRequestStatus inMobiAdRequestStatus = (InMobiAdRequestStatus) obj;
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f2698f.get();
        if (abstractC2928Q0 == null || (abstractC2748E0M1697r = abstractC2928Q0.m1697r()) == null) {
            return;
        }
        if (inMobiAdRequestStatus != null) {
            abstractC2928Q0.m1632b(inMobiAdRequestStatus, true, (short) 2182);
            return;
        }
        abstractC2928Q0.m1658d((byte) 2);
        InterfaceC3147f5 interfaceC3147f5 = this.f2697e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2153d("AuctionCloseWorker", "AdUnit " + abstractC2928Q0 + " state - AVAILABLE");
        }
        abstractC2928Q0.m1665e(abstractC2748E0M1697r);
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f2698f.get();
        if (abstractC2928Q0 == null) {
            return;
        }
        abstractC2928Q0.m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), true, (short) 2181);
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        C3412x0 c3412x0M1709y;
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f2698f.get();
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        if ((abstractC2928Q0 != null ? abstractC2928Q0.m1709y() : null) == null) {
            m1178b(inMobiAdRequestStatus);
            return;
        }
        try {
            AdConfig adConfigM1680j = abstractC2928Q0.m1680j();
            if (adConfigM1680j != null && (c3412x0M1709y = abstractC2928Q0.m1709y()) != null) {
                c3412x0M1709y.m2572a(this.f2696d, adConfigM1680j, this.f2697e);
            }
            m1178b(null);
        } catch (Exception unused) {
            AbstractC2928Q0.m1558e();
            m1178b(inMobiAdRequestStatus);
        }
    }
}
