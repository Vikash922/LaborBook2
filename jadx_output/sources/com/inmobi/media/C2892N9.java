package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.N9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2892N9 extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final C3171h f1312d;

    /* JADX INFO: renamed from: e */
    public final C3412x0 f1313e;

    /* JADX INFO: renamed from: f */
    public InMobiAdRequestStatus f1314f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f1315g;

    /* JADX INFO: renamed from: h */
    public final WeakReference f1316h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2892N9(AbstractC2928Q0 adUnit, C3171h ad, C3412x0 adSet, InMobiAdRequestStatus status, InterfaceC3147f5 interfaceC3147f5) {
        super(adUnit, (byte) 1);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f1312d = ad;
        this.f1313e = adSet;
        this.f1314f = status;
        this.f1315g = interfaceC3147f5;
        this.f1316h = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ void mo1177a(Object obj) {
        m1402a(((Boolean) obj).booleanValue());
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        this.f1314f = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY);
        m1402a(false);
    }

    /* JADX INFO: renamed from: a */
    public final void m1402a(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1315g;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("ParseAdResponseWorker", "onComplete result - " + z);
        }
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f1316h.get();
        if (abstractC2928Q0 != null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1315g;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c("ParseAdResponseWorker", "updating vitals in logger");
            }
            abstractC2928Q0.mo908a(z, this.f1314f);
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1315g;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2151b("ParseAdResponseWorker", "onComplete - adunit is null");
        }
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1315g;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("ParseAdResponseWorker", "execute task");
        }
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f1316h.get();
        if (abstractC2928Q0 == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1315g;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("ParseAdResponseWorker", "adUnit is null. fail.");
            }
            m1178b(Boolean.FALSE);
            return;
        }
        if (this.f1313e.m2584n()) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1315g;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2152c("ParseAdResponseWorker", "parsing for ad pods");
            }
            LinkedList<C3171h> linkedListM2576f = this.f1313e.m2576f();
            C3171h first = linkedListM2576f.getFirst();
            Intrinsics.checkNotNull(first);
            if (abstractC2928Q0.m1626a(first, 0, true)) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1315g;
                if (interfaceC3147f54 != null) {
                    ((C3162g5) interfaceC3147f54).m2152c("ParseAdResponseWorker", "parse success for ad index 0");
                }
                ListIterator<C3171h> listIterator = linkedListM2576f.listIterator(1);
                Intrinsics.checkNotNullExpressionValue(listIterator, "listIterator(...)");
                while (listIterator.hasNext()) {
                    C3171h next = listIterator.next();
                    if (!abstractC2928Q0.m1626a(next, linkedListM2576f.indexOf(next), false)) {
                        InterfaceC3147f5 interfaceC3147f55 = this.f1315g;
                        if (interfaceC3147f55 != null) {
                            ((C3162g5) interfaceC3147f55).m2151b("ParseAdResponseWorker", "parseAdResponse fail for index - " + linkedListM2576f.indexOf(next));
                        }
                        listIterator.remove();
                    } else {
                        InterfaceC3147f5 interfaceC3147f56 = this.f1315g;
                        if (interfaceC3147f56 != null) {
                            ((C3162g5) interfaceC3147f56).m2152c("ParseAdResponseWorker", "parseAdResponse success for index - " + linkedListM2576f.indexOf(next));
                        }
                    }
                }
                m1178b(Boolean.TRUE);
                return;
            }
            InterfaceC3147f5 interfaceC3147f57 = this.f1315g;
            if (interfaceC3147f57 != null) {
                ((C3162g5) interfaceC3147f57).m2151b("ParseAdResponseWorker", "didParseAdResponseAndExtractData failed");
            }
            m1178b(Boolean.FALSE);
            return;
        }
        InterfaceC3147f5 interfaceC3147f58 = this.f1315g;
        if (interfaceC3147f58 != null) {
            ((C3162g5) interfaceC3147f58).m2152c("ParseAdResponseWorker", "parsing for single ad");
        }
        m1178b(Boolean.valueOf(abstractC2928Q0.m1626a(this.f1312d, 0, true)));
    }
}
