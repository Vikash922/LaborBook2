package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3371u4 extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final long f2641d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3147f5 f2642e;

    /* JADX INFO: renamed from: f */
    public final WeakReference f2643f;

    /* JADX INFO: renamed from: g */
    public C2837K f2644g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3371u4(AbstractC2928Q0 adUnit, long j, InterfaceC3147f5 interfaceC3147f5) {
        super(adUnit, (byte) 2);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f2641d = j;
        this.f2642e = interfaceC3147f5;
        this.f2643f = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final void mo1177a(Object obj) {
        byte[] bArr = (byte[]) obj;
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f2643f.get();
        if (abstractC2928Q0 == null) {
            return;
        }
        if (this.f2644g != null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2642e;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2153d("GetSignalsWorker", "AdUnit " + abstractC2928Q0 + " state - FAILED");
            }
            abstractC2928Q0.m1658d((byte) 3);
        }
        AbstractC2748E0 abstractC2748E0M1697r = abstractC2928Q0.m1697r();
        if (abstractC2748E0M1697r == null) {
            return;
        }
        C2837K c2837k = this.f2644g;
        if (c2837k != null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2642e;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2148a("GetSignalsWorker", "get signals failed", c2837k);
            }
            abstractC2928Q0.m1592a(c2837k.f1143b, this.f2641d);
            abstractC2748E0M1697r.mo982b(new InMobiAdRequestStatus(c2837k.f1142a.getStatusCode()));
            return;
        }
        if (bArr != null) {
            abstractC2928Q0.m1631b(this.f2641d);
            abstractC2748E0M1697r.mo980a(bArr);
            InterfaceC3147f5 interfaceC3147f53 = this.f2642e;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2147a("GetSignalsWorker", "callback - onRequestCreated");
                return;
            }
            return;
        }
        abstractC2928Q0.m1658d((byte) 3);
        InterfaceC3147f5 interfaceC3147f54 = this.f2642e;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2153d("GetSignalsWorker", "AdUnit " + this + " state - FAILED");
        }
        InterfaceC3147f5 interfaceC3147f55 = this.f2642e;
        if (interfaceC3147f55 != null) {
            ((C3162g5) interfaceC3147f55).m2151b("GetSignalsWorker", "no request created - fail");
        }
        abstractC2928Q0.m1592a(13, this.f2641d);
        abstractC2748E0M1697r.mo982b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f2643f.get();
        if (abstractC2928Q0 == null) {
            return;
        }
        AbstractC2748E0 abstractC2748E0M1697r = abstractC2928Q0.m1697r();
        InterfaceC3147f5 interfaceC3147f5 = this.f2642e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("GetSignalsWorker", "onOOM");
        }
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo982b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
        }
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f2643f.get();
        if ((abstractC2928Q0 != null ? abstractC2928Q0.m1569H() : null) == null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2642e;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("GetSignalsWorker", "OAManager is null");
            }
            m1178b(null);
            return;
        }
        if (abstractC2928Q0.m1697r() == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2642e;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("GetSignalsWorker", "listener is null");
            }
            m1178b(null);
            return;
        }
        try {
            C3406w9 c3406w9M1569H = abstractC2928Q0.m1569H();
            m1178b(c3406w9M1569H != null ? new C3421x9(c3406w9M1569H.f2724a).m2596a() : null);
        } catch (C2837K e) {
            this.f2644g = e;
            m1178b(null);
        }
    }
}
