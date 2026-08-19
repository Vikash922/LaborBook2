package com.inmobi.media;

import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.rc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0488rc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0 f475a;
    public final String b;
    public final String c;
    public final String d;
    public String e;

    public C0488rc(S0 s0, String str, String str2, String markupType) {
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        this.f475a = s0;
        this.b = str;
        this.c = str2;
        this.d = markupType;
    }

    public final LinkedHashMap a() {
        String strM;
        String strQ;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        S0 s0 = this.f475a;
        if (s0 != null && (strQ = s0.f237a.q()) != null) {
            linkedHashMap.put("adType", strQ);
        }
        S0 s02 = this.f475a;
        if (s02 != null) {
            linkedHashMap.put("plId", Long.valueOf(s02.f237a.I().l()));
        }
        S0 s03 = this.f475a;
        if (s03 != null && (strM = s03.f237a.I().m()) != null) {
            linkedHashMap.put("plType", strM);
        }
        S0 s04 = this.f475a;
        String str = null;
        if (s04 != null) {
            C0560x0 c0560x0Y = s04.f237a.y();
            Boolean boolO = c0560x0Y != null ? c0560x0Y.o() : null;
            if (boolO != null) {
                linkedHashMap.put("isRewarded", boolO);
            }
        }
        String str2 = this.c;
        if (str2 != null) {
            linkedHashMap.put("creativeId", str2);
        }
        String str3 = this.b;
        if (str3 != null) {
            linkedHashMap.put("creativeType", str3);
        }
        linkedHashMap.put("markupType", this.d);
        String str4 = this.e;
        if (str4 != null) {
            str = str4;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("triggerSource");
        }
        linkedHashMap.put("trigger", str);
        S0 s05 = this.f475a;
        if (s05 != null && s05.a().length() > 0) {
            linkedHashMap.put("metadataBlob", this.f475a.a());
        }
        return linkedHashMap;
    }

    public final void b() {
        C0502sc c0502sc;
        AtomicBoolean atomicBoolean;
        S0 s0 = this.f475a;
        if (s0 == null || (c0502sc = s0.b) == null || (atomicBoolean = c0502sc.f484a) == null || !atomicBoolean.getAndSet(true)) {
            a().put("networkType", E3.q());
            a().put("errorCode", (short) 2180);
            LinkedHashMap linkedHashMapA = a();
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("AdImpressionSuccessful", linkedHashMapA, EnumC0415mc.f426a);
        }
    }

    public final void c() {
        C0502sc c0502sc;
        AtomicBoolean atomicBoolean;
        S0 s0 = this.f475a;
        if (s0 == null || (c0502sc = s0.b) == null || (atomicBoolean = c0502sc.f484a) == null || !atomicBoolean.getAndSet(true)) {
            a().put("networkType", E3.q());
            a().put("errorCode", (short) 2177);
            LinkedHashMap linkedHashMapA = a();
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("AdImpressionSuccessful", linkedHashMapA, EnumC0415mc.f426a);
        }
    }

    public final void d() {
        C0502sc c0502sc;
        AtomicBoolean atomicBoolean;
        S0 s0 = this.f475a;
        if (s0 == null || (c0502sc = s0.b) == null || (atomicBoolean = c0502sc.f484a) == null || !atomicBoolean.getAndSet(true)) {
            a().put("networkType", E3.q());
            a().put("errorCode", (short) 0);
            LinkedHashMap linkedHashMapA = a();
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("AdImpressionSuccessful", linkedHashMapA, EnumC0415mc.f426a);
        }
    }
}
