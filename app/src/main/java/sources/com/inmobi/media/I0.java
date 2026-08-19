package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class I0 extends E1 {
    public final /* synthetic */ Q0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I0(Q0 q0) {
        super(q0);
        this.d = q0;
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        HashMap mapA;
        Q0 q0 = (Q0) this.b.get();
        if (q0 != null) {
            try {
                byte bJ = q0.J();
                JSONObject pubContent = new JSONObject(q0.L());
                AdConfig adConfig = q0.j();
                Intrinsics.checkNotNull(adConfig);
                if (q0.y() == null) {
                    mapA = null;
                } else {
                    boolean z = C0457p9.f457a;
                    C0560x0 c0560x0Y = q0.y();
                    mapA = C0457p9.a(c0560x0Y != null ? c0560x0Y.h() : null);
                }
                InterfaceC0298f5 interfaceC0298f5 = this.d.j;
                Intrinsics.checkNotNullParameter(pubContent, "pubContent");
                Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                final P7 p7 = new P7(bJ, pubContent, null, false, adConfig, mapA, null, interfaceC0298f5);
                Handler handlerD = this.d.D();
                if (handlerD != null) {
                    final Q0 q02 = this.d;
                    handlerD.post(new Runnable() { // from class: com.inmobi.media.I0$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            I0.a(p7, q02);
                        }
                    });
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f52 = this.d.j;
                if (interfaceC0298f52 != null) {
                    String strE = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f52).a(strE, "Exception for handleInterActive ", e);
                }
                q0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 76);
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        Q0 q0 = (Q0) this.b.get();
        if (q0 != null) {
            q0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), true, (short) 40);
        }
    }

    public static final void a(P7 dataModel, Q0 this$0) {
        Intrinsics.checkNotNullParameter(dataModel, "$dataModel");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            C0303f9 c0303f9 = dataModel.r;
            C0325h c0325hM = this$0.m();
            if (c0303f9 == null || this$0.t() == null || c0325hM == null) {
                return;
            }
            Context contextT = this$0.t();
            Intrinsics.checkNotNull(contextT);
            this$0.n = new Ya(contextT, this$0.J(), this$0.d(0), this$0.n(), false, null, 0L, null, null, 240);
            Ya yaX = this$0.x();
            if (yaX != null) {
                yaX.setAdType(this$0.I().b());
            }
            Ya yaX2 = this$0.x();
            if (yaX2 != null) {
                AbstractC0227ab abstractC0227ab = this$0.K;
                AdConfig adConfigJ = this$0.j();
                Intrinsics.checkNotNull(adConfigJ);
                yaX2.a(abstractC0227ab, adConfigJ);
            }
            Ya yaX3 = this$0.x();
            if (yaX3 != null) {
                InterfaceC0298f5 interfaceC0298f5 = yaX3.i;
                if (interfaceC0298f5 != null) {
                    String TAG = Ya.P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "disableUrlsToOpenInExternalApp " + yaX3);
                }
                yaX3.s = true;
            }
            Ya yaX4 = this$0.x();
            if (yaX4 != null) {
                yaX4.setBlobProvider(this$0);
            }
            Ya yaX5 = this$0.x();
            if (yaX5 != null) {
                yaX5.setPreloadView(true);
            }
            Ya yaX6 = this$0.x();
            if (yaX6 != null) {
                yaX6.setPlacementId(this$0.I().l());
            }
            Ya yaX7 = this$0.x();
            if (yaX7 != null) {
                yaX7.setCreativeId(c0325hM.o());
            }
            Ya yaX8 = this$0.x();
            if (yaX8 != null) {
                yaX8.setAllowAutoRedirection(this$0.b(0));
            }
            Q0.a(this$0, c0325hM, this$0.x());
            if (this$0.T() == 0) {
                this$0.a(true, this$0.x());
            }
            if (Intrinsics.areEqual("URL", c0303f9.y)) {
                Ya yaX9 = this$0.x();
                if (yaX9 != null) {
                    Object obj = c0303f9.e;
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    yaX9.d((String) obj);
                    return;
                }
                return;
            }
            Ya yaX10 = this$0.x();
            if (yaX10 != null) {
                Object obj2 = c0303f9.e;
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                yaX10.c((String) obj2);
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this$0.j;
            if (interfaceC0298f52 != null) {
                String strE = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).a(strE, "Exception for handleInterActive ", e);
            }
            this$0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 76);
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}
