package com.inmobi.media;

import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.rc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3334rc {

    /* JADX INFO: renamed from: a */
    public final C2955S0 f2512a;

    /* JADX INFO: renamed from: b */
    public final String f2513b;

    /* JADX INFO: renamed from: c */
    public final String f2514c;

    /* JADX INFO: renamed from: d */
    public final String f2515d;

    /* JADX INFO: renamed from: e */
    public String f2516e;

    public C3334rc(C2955S0 c2955s0, String str, String str2, String markupType) {
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        this.f2512a = c2955s0;
        this.f2513b = str;
        this.f2514c = str2;
        this.f2515d = markupType;
    }

    /* JADX INFO: renamed from: a */
    public final LinkedHashMap m2382a() {
        String strM1939m;
        String strMo914q;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C2955S0 c2955s0 = this.f2512a;
        if (c2955s0 != null && (strMo914q = c2955s0.f1515a.mo914q()) != null) {
            linkedHashMap.put("adType", strMo914q);
        }
        C2955S0 c2955s02 = this.f2512a;
        if (c2955s02 != null) {
            linkedHashMap.put("plId", Long.valueOf(c2955s02.f1515a.m1570I().m1938l()));
        }
        C2955S0 c2955s03 = this.f2512a;
        if (c2955s03 != null && (strM1939m = c2955s03.f1515a.m1570I().m1939m()) != null) {
            linkedHashMap.put("plType", strM1939m);
        }
        C2955S0 c2955s04 = this.f2512a;
        String str = null;
        if (c2955s04 != null) {
            C3412x0 c3412x0M1709y = c2955s04.f1515a.m1709y();
            Boolean boolM2585o = c3412x0M1709y != null ? c3412x0M1709y.m2585o() : null;
            if (boolM2585o != null) {
                linkedHashMap.put("isRewarded", boolM2585o);
            }
        }
        String str2 = this.f2514c;
        if (str2 != null) {
            linkedHashMap.put("creativeId", str2);
        }
        String str3 = this.f2513b;
        if (str3 != null) {
            linkedHashMap.put("creativeType", str3);
        }
        linkedHashMap.put("markupType", this.f2515d);
        String str4 = this.f2516e;
        if (str4 != null) {
            str = str4;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("triggerSource");
        }
        linkedHashMap.put("trigger", str);
        C2955S0 c2955s05 = this.f2512a;
        if (c2955s05 != null && c2955s05.m1775a().length() > 0) {
            linkedHashMap.put("metadataBlob", this.f2512a.m1775a());
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: b */
    public final void m2383b() {
        C3349sc c3349sc;
        AtomicBoolean atomicBoolean;
        C2955S0 c2955s0 = this.f2512a;
        if (c2955s0 == null || (c3349sc = c2955s0.f1516b) == null || (atomicBoolean = c3349sc.f2538a) == null || !atomicBoolean.getAndSet(true)) {
            m2382a().put("networkType", C2751E3.m1005q());
            m2382a().put("errorCode", (short) 2180);
            LinkedHashMap linkedHashMapM2382a = m2382a();
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("AdImpressionSuccessful", linkedHashMapM2382a, EnumC3259mc.f2349a);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2384c() {
        C3349sc c3349sc;
        AtomicBoolean atomicBoolean;
        C2955S0 c2955s0 = this.f2512a;
        if (c2955s0 == null || (c3349sc = c2955s0.f1516b) == null || (atomicBoolean = c3349sc.f2538a) == null || !atomicBoolean.getAndSet(true)) {
            m2382a().put("networkType", C2751E3.m1005q());
            m2382a().put("errorCode", (short) 2177);
            LinkedHashMap linkedHashMapM2382a = m2382a();
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("AdImpressionSuccessful", linkedHashMapM2382a, EnumC3259mc.f2349a);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2385d() {
        C3349sc c3349sc;
        AtomicBoolean atomicBoolean;
        C2955S0 c2955s0 = this.f2512a;
        if (c2955s0 == null || (c3349sc = c2955s0.f1516b) == null || (atomicBoolean = c3349sc.f2538a) == null || !atomicBoolean.getAndSet(true)) {
            m2382a().put("networkType", C2751E3.m1005q());
            m2382a().put("errorCode", (short) 0);
            LinkedHashMap linkedHashMapM2382a = m2382a();
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("AdImpressionSuccessful", linkedHashMapM2382a, EnumC3259mc.f2349a);
        }
    }
}
