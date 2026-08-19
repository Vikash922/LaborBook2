package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.R7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2948R7 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ String f1497a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2962S7 f1498b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2948R7(C2962S7 c2962s7, String str) {
        super(0);
        this.f1497a = str;
        this.f1498b = c2962s7;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3201j c3201jM2272b = AbstractC2744Db.m966a().m2272b(this.f1497a);
        InterfaceC3386v4 interfaceC3386v4M1798a = null;
        if (c3201jM2272b == null) {
            return null;
        }
        C2962S7 c2962s7 = this.f1498b;
        try {
            String str = c3201jM2272b.f2205c;
            if (str == null) {
                return null;
            }
            interfaceC3386v4M1798a = C2962S7.m1798a(c2962s7, str);
            Unit unit = Unit.INSTANCE;
            return interfaceC3386v4M1798a;
        } catch (Exception e) {
            Intrinsics.checkNotNullExpressionValue(c2962s7.f1537x, "access$getTAG$p(...)");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            Unit unit2 = Unit.INSTANCE;
            return interfaceC3386v4M1798a;
        }
    }
}
