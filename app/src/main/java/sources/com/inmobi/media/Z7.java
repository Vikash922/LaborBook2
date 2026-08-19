package com.inmobi.media;

import com.google.common.base.Ascii;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Z7 implements H8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0270d8 f297a;
    public final /* synthetic */ C8 b;

    public Z7(C0270d8 c0270d8, C8 c8) {
        this.f297a = c0270d8;
        this.b = c8;
    }

    public final void a(byte b) {
        C0511t7 c0511t7 = this.f297a.b;
        if (c0511t7.t || !(c0511t7 instanceof A8)) {
            return;
        }
        A8 a8 = (A8) c0511t7;
        C8 videoAsset = this.b;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (!a8.t) {
            if (b == 0) {
                videoAsset.a("firstQuartile", a8.j(videoAsset), (C0395l7) null, a8.W);
                InterfaceC0298f5 interfaceC0298f5 = a8.W;
                if (interfaceC0298f5 != null) {
                    String TAG = a8.X;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).c(TAG, "onVideoQuartileEvent(Q1)");
                }
                AbstractC0401ld abstractC0401ld = a8.p;
                if (abstractC0401ld != null) {
                    abstractC0401ld.a((byte) 9);
                }
            } else if (b == 1) {
                videoAsset.a("midpoint", a8.j(videoAsset), (C0395l7) null, a8.W);
                InterfaceC0298f5 interfaceC0298f52 = a8.W;
                if (interfaceC0298f52 != null) {
                    String TAG2 = a8.X;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).c(TAG2, "onVideoQuartileEvent(Q2)");
                }
                AbstractC0401ld abstractC0401ld2 = a8.p;
                if (abstractC0401ld2 != null) {
                    abstractC0401ld2.a((byte) 10);
                }
            } else if (b == 2) {
                videoAsset.a("thirdQuartile", a8.j(videoAsset), (C0395l7) null, a8.W);
                InterfaceC0298f5 interfaceC0298f53 = a8.W;
                if (interfaceC0298f53 != null) {
                    String TAG3 = a8.X;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f53).c(TAG3, "onVideoQuartileEvent(Q3)");
                }
                AbstractC0401ld abstractC0401ld3 = a8.p;
                if (abstractC0401ld3 != null) {
                    abstractC0401ld3.a(Ascii.VT);
                }
            } else if (b == 3) {
                Object obj = videoAsset.t.get("didQ4Fire");
                if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.FALSE)) {
                    a8.d(videoAsset);
                }
            } else {
                InterfaceC0298f5 interfaceC0298f54 = a8.W;
                if (interfaceC0298f54 != null) {
                    String TAG4 = a8.X;
                    Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                    ((C0314g5) interfaceC0298f54).b(TAG4, "Unhandled quartileEvent ( " + ((int) b) + " ) for Native Video");
                }
            }
        }
        if (3 == b) {
            try {
                ((A8) this.f297a.b).c(this.b);
            } catch (Exception e) {
                C0270d8 c0270d8 = this.f297a;
                InterfaceC0298f5 interfaceC0298f55 = c0270d8.f;
                if (interfaceC0298f55 != null) {
                    String str = c0270d8.g;
                    ((C0314g5) interfaceC0298f55).b(str, Ed.a(e, AbstractC0363j6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in handling the onVideoCompleted event; ")));
                }
            }
        }
    }
}
