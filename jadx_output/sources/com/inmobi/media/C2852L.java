package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.L */
/* JADX INFO: loaded from: classes6.dex */
public final class C2852L extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final InterfaceC3147f5 f1181d;

    /* JADX INFO: renamed from: e */
    public final WeakReference f1182e;

    /* JADX INFO: renamed from: f */
    public C2837K f1183f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2852L(AbstractC2928Q0 adUnit, InterfaceC3147f5 interfaceC3147f5) {
        super(adUnit, (byte) 0);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f1181d = interfaceC3147f5;
        this.f1182e = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final void mo1177a(Object obj) {
        C3412x0 c3412x0 = (C3412x0) obj;
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f1182e.get();
        if (abstractC2928Q0 == null) {
            return;
        }
        abstractC2928Q0.m1629b((byte) 0);
        if (this.f1183f == null) {
            if (c3412x0 == null) {
                abstractC2928Q0.m1602a(abstractC2928Q0.m1570I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
                return;
            } else if (c3412x0.m2583m()) {
                abstractC2928Q0.m1650c(c3412x0);
                return;
            } else {
                abstractC2928Q0.m1660d(c3412x0);
                return;
            }
        }
        C3038Y c3038yM1570I = abstractC2928Q0.m1570I();
        C2837K c2837k = this.f1183f;
        Intrinsics.checkNotNull(c2837k);
        InMobiAdRequestStatus inMobiAdRequestStatus = c2837k.f1142a;
        C2837K c2837k2 = this.f1183f;
        Intrinsics.checkNotNull(c2837k2);
        abstractC2928Q0.m1602a(c3038yM1570I, inMobiAdRequestStatus, c2837k2.f1143b);
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f1182e.get();
        if (abstractC2928Q0 == null) {
            return;
        }
        abstractC2928Q0.m1629b((byte) 0);
        abstractC2928Q0.m1602a(abstractC2928Q0.m1570I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2117);
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1181d;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("AdFetcherTask", "executeTask " + this);
        }
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f1182e.get();
        if (abstractC2928Q0 == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1181d;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("AdFetcherTask", "adUnit is null. fail");
            }
            this.f1183f = new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 2111);
            m1178b(null);
            return;
        }
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        if (!((RootConfig) AbstractC3001V4.m1873a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null)).getMonetizationDisabled()) {
            C2955S0 c2955s0M1698s = abstractC2928Q0.m1698s();
            c2955s0M1698s.getClass();
            c2955s0M1698s.f1520f = SystemClock.elapsedRealtime();
            try {
                InterfaceC3147f5 interfaceC3147f53 = this.f1181d;
                if (interfaceC3147f53 != null) {
                    ((C3162g5) interfaceC3147f53).m2147a("AdFetcherTask", "getting ad from store");
                }
                m1178b(abstractC2928Q0.m1694p().m829a(abstractC2928Q0.m1677h0(), abstractC2928Q0.mo1567F()));
                return;
            } catch (C2837K e) {
                Intrinsics.checkNotNullExpressionValue(AbstractC2928Q0.m1558e(), "<get-TAG>(...)");
                this.f1183f = e;
                m1178b(null);
                return;
            }
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1181d;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2151b("AdFetcherTask", "SDK will not perform this load operation as monetization has been disabled. Please contact InMobi for further info.");
        }
        this.f1183f = new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), (short) 2012);
        m1178b(null);
    }
}
