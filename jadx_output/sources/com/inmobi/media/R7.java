package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class R7 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f233a;
    public final /* synthetic */ S7 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R7(S7 s7, String str) {
        super(0);
        this.f233a = str;
        this.b = s7;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C0356j c0356jB = Db.a().b(this.f233a);
        InterfaceC0536v4 interfaceC0536v4A = null;
        if (c0356jB == null) {
            return null;
        }
        S7 s7 = this.b;
        try {
            String str = c0356jB.c;
            if (str == null) {
                return null;
            }
            interfaceC0536v4A = S7.a(s7, str);
            Unit unit = Unit.INSTANCE;
            return interfaceC0536v4A;
        } catch (Exception e) {
            Intrinsics.checkNotNullExpressionValue(s7.x, "access$getTAG$p(...)");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            Unit unit2 = Unit.INSTANCE;
            return interfaceC0536v4A;
        }
    }
}
