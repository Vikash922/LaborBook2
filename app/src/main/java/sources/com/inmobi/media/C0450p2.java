package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0450p2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0465q2 f451a;
    public final InterfaceC0298f5 b;

    public C0450p2(InterfaceC0465q2 mEventHandler, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(mEventHandler, "mEventHandler");
        this.f451a = mEventHandler;
        this.b = interfaceC0298f5;
    }

    public final void a(C0343i2 click) {
        HashMap map;
        Intrinsics.checkNotNullParameter(click, "click");
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 != null) {
                String strF = C0520u2.f();
                Intrinsics.checkNotNullExpressionValue(strF, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).c(strF, "ping - " + click.f382a);
            }
            C0397l9 mRequest = new C0397l9(click.b, this.b);
            HashMap mapA = C0520u2.a(C0520u2.f496a, click);
            if (!mapA.isEmpty()) {
                mRequest.i.putAll(mapA);
            }
            mRequest.x = false;
            mRequest.t = false;
            mRequest.u = false;
            Map map2 = click.c;
            if (map2 != null && (map = mRequest.j) != null) {
                map.putAll(map2);
            }
            mRequest.r = click.d;
            AdConfig.ImaiConfig imaiConfig = C0520u2.g;
            if (imaiConfig != null) {
                mRequest.p = imaiConfig.getPingTimeout() * 1000;
                mRequest.q = imaiConfig.getPingTimeout() * 1000;
            }
            Intrinsics.checkNotNullParameter(mRequest, "mRequest");
            C0412m9 c0412m9B = mRequest.b();
            if (!c0412m9B.b()) {
                this.f451a.a(click);
                return;
            }
            C0350i9 c0350i9 = c0412m9B.c;
            EnumC0250c4 enumC0250c4 = c0350i9 != null ? c0350i9.f385a : EnumC0250c4.e;
            if (EnumC0250c4.k == enumC0250c4) {
                this.f451a.a(click);
                return;
            }
            if (!click.d && (EnumC0250c4.u == enumC0250c4 || EnumC0250c4.w == enumC0250c4)) {
                this.f451a.a(click);
                return;
            }
            boolean z = C0457p9.f457a;
            if (!C0457p9.f457a || (enumC0250c4 != EnumC0250c4.q && enumC0250c4 != EnumC0250c4.p && enumC0250c4 != EnumC0250c4.o && enumC0250c4 != EnumC0250c4.n && enumC0250c4 != EnumC0250c4.r)) {
                this.f451a.a(click, enumC0250c4);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
            InterfaceC0465q2 interfaceC0465q2 = this.f451a;
            EnumC0250c4 errorCode = EnumC0250c4.e;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            interfaceC0465q2.a(click, errorCode);
        }
    }
}
