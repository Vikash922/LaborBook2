package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class L extends Ic {
    public final InterfaceC0298f5 d;
    public final WeakReference e;
    public K f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(Q0 adUnit, InterfaceC0298f5 interfaceC0298f5) {
        super(adUnit, (byte) 0);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.d = interfaceC0298f5;
        this.e = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.Ic
    public final void a(Object obj) {
        C0560x0 c0560x0 = (C0560x0) obj;
        Q0 q0 = (Q0) this.e.get();
        if (q0 == null) {
            return;
        }
        q0.b((byte) 0);
        if (this.f == null) {
            if (c0560x0 == null) {
                q0.a(q0.I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
                return;
            } else if (c0560x0.m()) {
                q0.c(c0560x0);
                return;
            } else {
                q0.d(c0560x0);
                return;
            }
        }
        Y yI = q0.I();
        K k = this.f;
        Intrinsics.checkNotNull(k);
        InMobiAdRequestStatus inMobiAdRequestStatus = k.f152a;
        K k2 = this.f;
        Intrinsics.checkNotNull(k2);
        q0.a(yI, inMobiAdRequestStatus, k2.b);
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        Q0 q0 = (Q0) this.e.get();
        if (q0 == null) {
            return;
        }
        q0.b((byte) 0);
        q0.a(q0.I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2117);
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.d;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("AdFetcherTask", "executeTask " + this);
        }
        Q0 q0 = (Q0) this.e.get();
        if (q0 == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.d;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("AdFetcherTask", "adUnit is null. fail");
            }
            this.f = new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 2111);
            b(null);
            return;
        }
        LinkedHashMap linkedHashMap = K2.f154a;
        if (!((RootConfig) V4.a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null)).getMonetizationDisabled()) {
            S0 s0S = q0.s();
            s0S.getClass();
            s0S.f = SystemClock.elapsedRealtime();
            try {
                InterfaceC0298f5 interfaceC0298f53 = this.d;
                if (interfaceC0298f53 != null) {
                    ((C0314g5) interfaceC0298f53).a("AdFetcherTask", "getting ad from store");
                }
                b(q0.p().a(q0.h0(), q0.F()));
                return;
            } catch (K e) {
                Intrinsics.checkNotNullExpressionValue(Q0.e(), "<get-TAG>(...)");
                this.f = e;
                b(null);
                return;
            }
        }
        InterfaceC0298f5 interfaceC0298f54 = this.d;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).b("AdFetcherTask", "SDK will not perform this load operation as monetization has been disabled. Please contact InMobi for further info.");
        }
        this.f = new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), (short) 2012);
        b(null);
    }
}
