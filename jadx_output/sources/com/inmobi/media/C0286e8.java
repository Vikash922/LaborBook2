package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0286e8 extends Ic {
    public final WeakReference d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0286e8(C7 adUnit) {
        super(adUnit, (byte) 6);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.d = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.Ic
    public final void a(Object obj) {
        short sShortValue = ((Number) obj).shortValue();
        Q0 q0 = (C7) this.d.get();
        if (q0 == null) {
            return;
        }
        if (sShortValue != 0) {
            q0.a(new WeakReference<>(q0.r()), sShortValue, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        if (2 == q0.Q()) {
            q0.d((byte) 4);
            InterfaceC0559x interfaceC0559xK = q0.k();
            Ya yaX = q0.x();
            E0 e0R = q0.r();
            if (!(interfaceC0559xK instanceof C0511t7)) {
                if (e0R != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    e0R.a(q0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    return;
                }
                return;
            }
            C0511t7 c0511t7 = (C0511t7) interfaceC0559xK;
            c0511t7.H = yaX;
            c0511t7.K = q0.T();
            S0 s0S = q0.s();
            s0S.getClass();
            s0S.i = SystemClock.elapsedRealtime();
            q0.u0();
            q0.z0();
            if (e0R != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                q0.f(e0R);
            }
        }
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        E0 e0R;
        super.c();
        Q0 q0 = (C7) this.d.get();
        if (q0 == null || (e0R = q0.r()) == null) {
            return;
        }
        e0R.a(q0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        C7 c7 = (C7) this.d.get();
        if (c7 == null) {
            b((short) 13);
            return;
        }
        E0 e0R = c7.r();
        if (e0R != null) {
            b(Short.valueOf(c7.c(e0R)));
        }
    }
}
