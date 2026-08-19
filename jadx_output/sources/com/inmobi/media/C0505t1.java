package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.t1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0505t1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0519u1 f485a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0505t1(C0519u1 c0519u1) {
        super(1);
        this.f485a = c0519u1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0412m9 response = (C0412m9) obj;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.b()) {
            InterfaceC0298f5 interfaceC0298f5 = this.f485a.f495a.f271a.d;
            if (interfaceC0298f5 != null) {
                String str = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).b(str, "asyncPing Failed");
            }
        } else {
            InterfaceC0298f5 interfaceC0298f52 = this.f485a.f495a.f271a.d;
            if (interfaceC0298f52 != null) {
                String str2 = Y5.f286a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f52).a(str2, "asyncPing Successful");
            }
        }
        return Unit.INSTANCE;
    }
}
