package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes6.dex */
public final class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f185a;
    public final String b;
    public final boolean c;
    public final AtomicBoolean d;
    public final String e;
    public InterfaceC0298f5 f;

    public N(WeakReference adUnitEventListener, String adtype, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitEventListener, "adUnitEventListener");
        Intrinsics.checkNotNullParameter(adtype, "adtype");
        this.f185a = adUnitEventListener;
        this.b = adtype;
        this.c = z;
        this.d = new AtomicBoolean(false);
        this.e = String.valueOf(Reflection.getOrCreateKotlinClass(N.class).getSimpleName());
    }

    public final void a(C0488rc c0488rc) {
        C0502sc c0502sc;
        AtomicBoolean atomicBoolean;
        if (this.d.getAndSet(true)) {
            InterfaceC0298f5 interfaceC0298f5 = this.f;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c(this.e, "skipping as Impression is already Called");
            }
            if (c0488rc != null) {
                S0 s0 = c0488rc.f475a;
                if (s0 == null || (c0502sc = s0.b) == null || (atomicBoolean = c0502sc.f484a) == null || !atomicBoolean.getAndSet(true)) {
                    c0488rc.a().put("networkType", E3.q());
                    c0488rc.a().put("errorCode", (short) 2179);
                    LinkedHashMap linkedHashMapA = c0488rc.a();
                    C0353ic c0353ic = C0353ic.f388a;
                    C0353ic.b("AdImpressionSuccessful", linkedHashMapA, EnumC0415mc.f426a);
                    return;
                }
                return;
            }
            return;
        }
        Pb pb = Pb.f217a;
        String str = this.b;
        Boolean boolValueOf = Boolean.valueOf(this.c);
        pb.getClass();
        Pb.a(str, boolValueOf);
        E0 e0 = (E0) this.f185a.get();
        if (e0 != null) {
            e0.a(c0488rc);
        } else if (c0488rc != null) {
            c0488rc.c();
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a(this.e, "==== CHECKPOINT REACHED - IMPRESSION FIRED ====");
        }
        InterfaceC0298f5 interfaceC0298f53 = this.f;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).b();
        }
    }
}
