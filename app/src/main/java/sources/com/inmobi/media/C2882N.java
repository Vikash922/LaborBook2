package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: renamed from: com.inmobi.media.N */
/* JADX INFO: loaded from: classes6.dex */
public final class C2882N {

    /* JADX INFO: renamed from: a */
    public final WeakReference f1282a;

    /* JADX INFO: renamed from: b */
    public final String f1283b;

    /* JADX INFO: renamed from: c */
    public final boolean f1284c;

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f1285d;

    /* JADX INFO: renamed from: e */
    public final String f1286e;

    /* JADX INFO: renamed from: f */
    public InterfaceC3147f5 f1287f;

    public C2882N(WeakReference adUnitEventListener, String adtype, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitEventListener, "adUnitEventListener");
        Intrinsics.checkNotNullParameter(adtype, "adtype");
        this.f1282a = adUnitEventListener;
        this.f1283b = adtype;
        this.f1284c = z;
        this.f1285d = new AtomicBoolean(false);
        this.f1286e = String.valueOf(Reflection.getOrCreateKotlinClass(C2882N.class).getSimpleName());
    }

    /* JADX INFO: renamed from: a */
    public final void m1375a(C3334rc c3334rc) {
        C3349sc c3349sc;
        AtomicBoolean atomicBoolean;
        if (this.f1285d.getAndSet(true)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1287f;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c(this.f1286e, "skipping as Impression is already Called");
            }
            if (c3334rc != null) {
                C2955S0 c2955s0 = c3334rc.f2512a;
                if (c2955s0 == null || (c3349sc = c2955s0.f1516b) == null || (atomicBoolean = c3349sc.f2538a) == null || !atomicBoolean.getAndSet(true)) {
                    c3334rc.m2382a().put("networkType", C2751E3.m1005q());
                    c3334rc.m2382a().put("errorCode", (short) 2179);
                    LinkedHashMap linkedHashMapM2382a = c3334rc.m2382a();
                    C3199ic c3199ic = C3199ic.f2193a;
                    C3199ic.m2248b("AdImpressionSuccessful", linkedHashMapM2382a, EnumC3259mc.f2349a);
                    return;
                }
                return;
            }
            return;
        }
        C2924Pb c2924Pb = C2924Pb.f1397a;
        String str = this.f1283b;
        Boolean boolValueOf = Boolean.valueOf(this.f1284c);
        c2924Pb.getClass();
        C2924Pb.m1527a(str, boolValueOf);
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1282a.get();
        if (abstractC2748E0 != null) {
            abstractC2748E0.mo976a(c3334rc);
        } else if (c3334rc != null) {
            c3334rc.m2384c();
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1287f;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a(this.f1286e, "==== CHECKPOINT REACHED - IMPRESSION FIRED ====");
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1287f;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2150b();
        }
    }
}
