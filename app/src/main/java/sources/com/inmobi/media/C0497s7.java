package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.s7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0497s7 extends AbstractC0227ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0511t7 f481a;

    public C0497s7(C0511t7 c0511t7) {
        this.f481a = c0511t7;
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void a(HashMap params) {
        Intrinsics.checkNotNullParameter(params, "params");
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            o0.a();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void c() {
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            o0.c();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void d(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            o0.b();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void e(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            o0.d();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab, com.inmobi.media.Vc
    public final void a() {
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            o0.g();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void d() {
        O0 o0;
        C0511t7 c0511t7 = this.f481a;
        if (c0511t7.f490a != 0 || (o0 = c0511t7.w) == null) {
            return;
        }
        o0.e();
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void a(C0488rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
            telemetryOnAdImpression.getClass();
            Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
            telemetryOnAdImpression.e = "nativeBeacon";
            if (o0.f197a.Z()) {
                telemetryOnAdImpression.b();
            } else {
                o0.f197a.D.a(telemetryOnAdImpression);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void a(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        O0 o0 = this.f481a.w;
        if (o0 != null) {
            Intrinsics.checkNotNullParameter(log, "log");
            InterfaceC0298f5 interfaceC0298f5 = o0.f197a.j;
            if (interfaceC0298f5 != null) {
                String strE = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f5).a(strE, "onImraidLog");
            }
            if (o0.f197a.Z()) {
                return;
            }
            E0 e0 = (E0) o0.b.get();
            if (e0 != null) {
                e0.a(log);
                return;
            }
            InterfaceC0298f5 interfaceC0298f52 = o0.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).b(strE2, "listener is null");
            }
        }
    }
}
