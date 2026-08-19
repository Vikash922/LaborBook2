package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.J0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2823J0 extends AbstractC3078ab {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2928Q0 f1127a;

    public C2823J0(AbstractC2928Q0 abstractC2928Q0) {
        this.f1127a = abstractC2928Q0;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1186a(AbstractC2928Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 43);
    }

    /* JADX INFO: renamed from: b */
    public static final void m1187b(AbstractC2928Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1444q = true;
        this$0.m1669f();
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: f */
    public final void mo1188f(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (2 == this.f1127a.m1577Q()) {
            this.f1127a.mo1696q0();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: g */
    public final void mo1189g(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Handler handler = new Handler(Looper.getMainLooper());
        final AbstractC2928Q0 abstractC2928Q0 = this.f1127a;
        handler.post(new Runnable() { // from class: com.inmobi.media.J0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2823J0.m1186a(abstractC2928Q0);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: h */
    public final void mo1190h(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (2 == this.f1127a.m1577Q()) {
            Handler handler = new Handler(Looper.getMainLooper());
            final AbstractC2928Q0 abstractC2928Q0 = this.f1127a;
            handler.post(new Runnable() { // from class: com.inmobi.media.J0$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2823J0.m1187b(abstractC2928Q0);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public final void mo1144a(C3334rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        this.f1127a.mo1144a(telemetryOnAdImpression);
    }
}
