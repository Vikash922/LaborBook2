package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3442z0 implements InterfaceC3338s1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2688A0 f2786a;

    public C3442z0(C2688A0 c2688a0) {
        this.f2786a = c2688a0;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2630a(C2688A0 this$0, byte b) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f809a.m1603a(this$0.f811c, false, b == 1 ? (short) 78 : b == 2 ? (short) 79 : b == 3 ? (short) 80 : b == 4 ? (short) 81 : b == 5 ? (short) 5 : b == 6 ? (short) 77 : b == 7 ? (short) 31 : b == 8 ? (short) 27 : (short) 82);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2629a(C2688A0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f809a.m1603a(this$0.f811c, true, (short) 0);
    }

    @Override // com.inmobi.media.InterfaceC3338s1
    /* JADX INFO: renamed from: a */
    public final void mo1823a(C3216k assetBatch, final byte b) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        this.f2786a.f816h.mo1823a(assetBatch, b);
        C2688A0 c2688a0 = this.f2786a;
        InterfaceC3147f5 interfaceC3147f5 = c2688a0.f814f;
        if (interfaceC3147f5 != null) {
            String str = c2688a0.f812d;
            ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC3208j6.m2261a(str, "access$getTAG$p(...)", "Notifying failure  to ad unit with placement ID (").append(this.f2786a.f811c).append(')').toString());
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final C2688A0 c2688a02 = this.f2786a;
        handler.post(new Runnable() { // from class: com.inmobi.media.z0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3442z0.m2630a(c2688a02, b);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC3338s1
    /* JADX INFO: renamed from: a */
    public final void mo1822a(C3216k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        this.f2786a.f816h.mo1822a(assetBatch);
        C2688A0 c2688a0 = this.f2786a;
        InterfaceC3147f5 interfaceC3147f5 = c2688a0.f814f;
        if (interfaceC3147f5 != null) {
            String str = c2688a0.f812d;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3208j6.m2261a(str, "access$getTAG$p(...)", "Notifying ad unit with placement ID (").append(this.f2786a.f811c).append(')').toString());
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final C2688A0 c2688a02 = this.f2786a;
        handler.post(new Runnable() { // from class: com.inmobi.media.z0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3442z0.m2629a(c2688a02);
            }
        });
    }
}
