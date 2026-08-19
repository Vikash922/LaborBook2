package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class J5 extends Ic {
    public final WeakReference d;
    public final WeakReference e;
    public short f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J5(Q5 adUnit, E0 eventListener) {
        super(adUnit, (byte) 5);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        this.d = new WeakReference(adUnit);
        this.e = new WeakReference(eventListener);
    }

    @Override // com.inmobi.media.Ic
    public final void a(Object obj) {
        E0 e0;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        Q5 q5 = (Q5) this.d.get();
        if (q5 == null || (e0 = (E0) this.e.get()) == null) {
            return;
        }
        if (!zBooleanValue) {
            short s = this.f;
            if (s != 0) {
                q5.a(this.e, s, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                return;
            } else {
                q5.b(e0, (short) 85);
                return;
            }
        }
        InterfaceC0559x interfaceC0559xK = q5.k();
        Ya yaX = q5.x();
        if (yaX != null) {
            if (interfaceC0559xK instanceof C0511t7) {
                C0511t7 c0511t7 = (C0511t7) interfaceC0559xK;
                c0511t7.H = yaX;
                c0511t7.K = q5.T();
            } else {
                q5.b(e0, (short) 84);
            }
        }
        q5.h(e0);
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        Q5 q5 = (Q5) this.d.get();
        if (q5 == null || ((E0) this.e.get()) == null) {
            return;
        }
        q5.a(this.e, (short) 40, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        Q5 q5 = (Q5) this.d.get();
        E0 e0 = (E0) this.e.get();
        if (q5 != null && e0 != null) {
            if (q5.E0()) {
                short sC = q5.c(e0);
                this.f = sC;
                b(Boolean.valueOf(sC == 0));
                return;
            }
            b(Boolean.FALSE);
            return;
        }
        b(Boolean.FALSE);
    }
}
