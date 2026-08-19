package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0522u4 extends Ic {
    public final long d;
    public final InterfaceC0298f5 e;
    public final WeakReference f;
    public K g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0522u4(Q0 adUnit, long j, InterfaceC0298f5 interfaceC0298f5) {
        super(adUnit, (byte) 2);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.d = j;
        this.e = interfaceC0298f5;
        this.f = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.Ic
    public final void a(Object obj) {
        byte[] bArr = (byte[]) obj;
        Q0 q0 = (Q0) this.f.get();
        if (q0 == null) {
            return;
        }
        if (this.g != null) {
            InterfaceC0298f5 interfaceC0298f5 = this.e;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).d("GetSignalsWorker", "AdUnit " + q0 + " state - FAILED");
            }
            q0.d((byte) 3);
        }
        E0 e0R = q0.r();
        if (e0R == null) {
            return;
        }
        K k = this.g;
        if (k != null) {
            InterfaceC0298f5 interfaceC0298f52 = this.e;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("GetSignalsWorker", "get signals failed", k);
            }
            q0.a(k.b, this.d);
            e0R.b(new InMobiAdRequestStatus(k.f152a.getStatusCode()));
            return;
        }
        if (bArr != null) {
            q0.b(this.d);
            e0R.a(bArr);
            InterfaceC0298f5 interfaceC0298f53 = this.e;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).a("GetSignalsWorker", "callback - onRequestCreated");
                return;
            }
            return;
        }
        q0.d((byte) 3);
        InterfaceC0298f5 interfaceC0298f54 = this.e;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).d("GetSignalsWorker", "AdUnit " + this + " state - FAILED");
        }
        InterfaceC0298f5 interfaceC0298f55 = this.e;
        if (interfaceC0298f55 != null) {
            ((C0314g5) interfaceC0298f55).b("GetSignalsWorker", "no request created - fail");
        }
        q0.a(13, this.d);
        e0R.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        Q0 q0 = (Q0) this.f.get();
        if (q0 == null) {
            return;
        }
        E0 e0R = q0.r();
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("GetSignalsWorker", "onOOM");
        }
        if (e0R != null) {
            e0R.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
        }
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        Q0 q0 = (Q0) this.f.get();
        if ((q0 != null ? q0.H() : null) == null) {
            InterfaceC0298f5 interfaceC0298f5 = this.e;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("GetSignalsWorker", "OAManager is null");
            }
            b(null);
            return;
        }
        if (q0.r() == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.e;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("GetSignalsWorker", "listener is null");
            }
            b(null);
            return;
        }
        try {
            C0555w9 c0555w9H = q0.H();
            b(c0555w9H != null ? new C0569x9(c0555w9H.f515a).a() : null);
        } catch (K e) {
            this.g = e;
            b(null);
        }
    }
}
