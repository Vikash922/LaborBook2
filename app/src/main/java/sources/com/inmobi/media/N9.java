package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class N9 extends Ic {
    public final C0325h d;
    public final C0560x0 e;
    public InMobiAdRequestStatus f;
    public final InterfaceC0298f5 g;
    public final WeakReference h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N9(Q0 adUnit, C0325h ad, C0560x0 adSet, InMobiAdRequestStatus status, InterfaceC0298f5 interfaceC0298f5) {
        super(adUnit, (byte) 1);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        Intrinsics.checkNotNullParameter(status, "status");
        this.d = ad;
        this.e = adSet;
        this.f = status;
        this.g = interfaceC0298f5;
        this.h = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.Ic
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        a(((Boolean) obj).booleanValue());
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        this.f = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY);
        a(false);
    }

    public final void a(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("ParseAdResponseWorker", "onComplete result - " + z);
        }
        Q0 q0 = (Q0) this.h.get();
        if (q0 != null) {
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c("ParseAdResponseWorker", "updating vitals in logger");
            }
            q0.a(z, this.f);
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.g;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).b("ParseAdResponseWorker", "onComplete - adunit is null");
        }
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("ParseAdResponseWorker", "execute task");
        }
        Q0 q0 = (Q0) this.h.get();
        if (q0 == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("ParseAdResponseWorker", "adUnit is null. fail.");
            }
            b(Boolean.FALSE);
            return;
        }
        if (this.e.n()) {
            InterfaceC0298f5 interfaceC0298f53 = this.g;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).c("ParseAdResponseWorker", "parsing for ad pods");
            }
            LinkedList<C0325h> linkedListF = this.e.f();
            C0325h first = linkedListF.getFirst();
            Intrinsics.checkNotNull(first);
            if (q0.a(first, 0, true)) {
                InterfaceC0298f5 interfaceC0298f54 = this.g;
                if (interfaceC0298f54 != null) {
                    ((C0314g5) interfaceC0298f54).c("ParseAdResponseWorker", "parse success for ad index 0");
                }
                ListIterator<C0325h> listIterator = linkedListF.listIterator(1);
                Intrinsics.checkNotNullExpressionValue(listIterator, "listIterator(...)");
                while (listIterator.hasNext()) {
                    C0325h next = listIterator.next();
                    if (!q0.a(next, linkedListF.indexOf(next), false)) {
                        InterfaceC0298f5 interfaceC0298f55 = this.g;
                        if (interfaceC0298f55 != null) {
                            ((C0314g5) interfaceC0298f55).b("ParseAdResponseWorker", "parseAdResponse fail for index - " + linkedListF.indexOf(next));
                        }
                        listIterator.remove();
                    } else {
                        InterfaceC0298f5 interfaceC0298f56 = this.g;
                        if (interfaceC0298f56 != null) {
                            ((C0314g5) interfaceC0298f56).c("ParseAdResponseWorker", "parseAdResponse success for index - " + linkedListF.indexOf(next));
                        }
                    }
                }
                b(Boolean.TRUE);
                return;
            }
            InterfaceC0298f5 interfaceC0298f57 = this.g;
            if (interfaceC0298f57 != null) {
                ((C0314g5) interfaceC0298f57).b("ParseAdResponseWorker", "didParseAdResponseAndExtractData failed");
            }
            b(Boolean.FALSE);
            return;
        }
        InterfaceC0298f5 interfaceC0298f58 = this.g;
        if (interfaceC0298f58 != null) {
            ((C0314g5) interfaceC0298f58).c("ParseAdResponseWorker", "parsing for single ad");
        }
        b(Boolean.valueOf(q0.a(this.d, 0, true)));
    }
}
