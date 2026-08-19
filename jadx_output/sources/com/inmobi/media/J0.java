package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class J0 extends AbstractC0227ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q0 f145a;

    public J0(Q0 q0) {
        this.f145a = q0;
    }

    public static final void a(Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 43);
    }

    public static final void b(Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q = true;
        this$0.f();
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void f(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (2 == this.f145a.Q()) {
            this.f145a.q0();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void g(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Handler handler = new Handler(Looper.getMainLooper());
        final Q0 q0 = this.f145a;
        handler.post(new Runnable() { // from class: com.inmobi.media.J0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                J0.a(q0);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void h(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (2 == this.f145a.Q()) {
            Handler handler = new Handler(Looper.getMainLooper());
            final Q0 q0 = this.f145a;
            handler.post(new Runnable() { // from class: com.inmobi.media.J0$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    J0.b(q0);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public final void a(C0488rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        this.f145a.a(telemetryOnAdImpression);
    }
}
