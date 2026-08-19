package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0547w1 extends Ic {
    public final JSONObject d;
    public final InterfaceC0298f5 e;
    public final WeakReference f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0547w1(Q0 adUnit, JSONObject response, InterfaceC0298f5 interfaceC0298f5) {
        super(adUnit, (byte) 4);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(response, "response");
        this.d = response;
        this.e = interfaceC0298f5;
        this.f = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.Ic
    public final void a(Object obj) {
        E0 e0R;
        InMobiAdRequestStatus inMobiAdRequestStatus = (InMobiAdRequestStatus) obj;
        Q0 q0 = (Q0) this.f.get();
        if (q0 == null || (e0R = q0.r()) == null) {
            return;
        }
        if (inMobiAdRequestStatus != null) {
            q0.b(inMobiAdRequestStatus, true, (short) 2182);
            return;
        }
        q0.d((byte) 2);
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).d("AuctionCloseWorker", "AdUnit " + q0 + " state - AVAILABLE");
        }
        q0.e(e0R);
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        Q0 q0 = (Q0) this.f.get();
        if (q0 == null) {
            return;
        }
        q0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), true, (short) 2181);
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        C0560x0 c0560x0Y;
        Q0 q0 = (Q0) this.f.get();
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        if ((q0 != null ? q0.y() : null) == null) {
            b(inMobiAdRequestStatus);
            return;
        }
        try {
            AdConfig adConfigJ = q0.j();
            if (adConfigJ != null && (c0560x0Y = q0.y()) != null) {
                c0560x0Y.a(this.d, adConfigJ, this.e);
            }
            b(null);
        } catch (Exception unused) {
            Q0.e();
            b(inMobiAdRequestStatus);
        }
    }
}
