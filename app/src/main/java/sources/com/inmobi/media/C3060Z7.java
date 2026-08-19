package com.inmobi.media;

import com.google.common.base.Ascii;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Z7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3060Z7 implements InterfaceC2801H8 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3120d8 f1818a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2726C8 f1819b;

    public C3060Z7(C3120d8 c3120d8, C2726C8 c2726c8) {
        this.f1818a = c3120d8;
        this.f1819b = c2726c8;
    }

    /* JADX INFO: renamed from: a */
    public final void m2004a(byte b) {
        C3359t7 c3359t7 = this.f1818a.f2001b;
        if (c3359t7.f2594t || !(c3359t7 instanceof C2696A8)) {
            return;
        }
        C2696A8 c2696a8 = (C2696A8) c3359t7;
        C2726C8 videoAsset = this.f1819b;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (!c2696a8.f2594t) {
            if (b == 0) {
                videoAsset.m951a("firstQuartile", c2696a8.m858j(videoAsset), (C3239l7) null, c2696a8.f826W);
                InterfaceC3147f5 interfaceC3147f5 = c2696a8.f826W;
                if (interfaceC3147f5 != null) {
                    String TAG = c2696a8.f827X;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoQuartileEvent(Q1)");
                }
                AbstractC3245ld abstractC3245ld = c2696a8.f2590p;
                if (abstractC3245ld != null) {
                    abstractC3245ld.mo958a((byte) 9);
                }
            } else if (b == 1) {
                videoAsset.m951a("midpoint", c2696a8.m858j(videoAsset), (C3239l7) null, c2696a8.f826W);
                InterfaceC3147f5 interfaceC3147f52 = c2696a8.f826W;
                if (interfaceC3147f52 != null) {
                    String TAG2 = c2696a8.f827X;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2152c(TAG2, "onVideoQuartileEvent(Q2)");
                }
                AbstractC3245ld abstractC3245ld2 = c2696a8.f2590p;
                if (abstractC3245ld2 != null) {
                    abstractC3245ld2.mo958a((byte) 10);
                }
            } else if (b == 2) {
                videoAsset.m951a("thirdQuartile", c2696a8.m858j(videoAsset), (C3239l7) null, c2696a8.f826W);
                InterfaceC3147f5 interfaceC3147f53 = c2696a8.f826W;
                if (interfaceC3147f53 != null) {
                    String TAG3 = c2696a8.f827X;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f53).m2152c(TAG3, "onVideoQuartileEvent(Q3)");
                }
                AbstractC3245ld abstractC3245ld3 = c2696a8.f2590p;
                if (abstractC3245ld3 != null) {
                    abstractC3245ld3.mo958a(Ascii.f397VT);
                }
            } else if (b == 3) {
                Object obj = videoAsset.f938t.get("didQ4Fire");
                if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.FALSE)) {
                    c2696a8.m851d(videoAsset);
                }
            } else {
                InterfaceC3147f5 interfaceC3147f54 = c2696a8.f826W;
                if (interfaceC3147f54 != null) {
                    String TAG4 = c2696a8.f827X;
                    Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                    ((C3162g5) interfaceC3147f54).m2151b(TAG4, "Unhandled quartileEvent ( " + ((int) b) + " ) for Native Video");
                }
            }
        }
        if (3 == b) {
            try {
                ((C2696A8) this.f1818a.f2001b).m849c(this.f1819b);
            } catch (Exception e) {
                C3120d8 c3120d8 = this.f1818a;
                InterfaceC3147f5 interfaceC3147f55 = c3120d8.f2005f;
                if (interfaceC3147f55 != null) {
                    String str = c3120d8.f2006g;
                    ((C3162g5) interfaceC3147f55).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in handling the onVideoCompleted event; ")));
                }
            }
        }
    }
}
