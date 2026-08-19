package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3450z8 implements InterfaceC3396w {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2696A8 f2806a;

    public C3450z8(C2696A8 c2696a8) {
        this.f2806a = c2696a8;
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: a */
    public final void mo1802a() {
        Intrinsics.checkNotNullExpressionValue(this.f2806a.f827X, "access$getTAG$p(...)");
        C2898O0 c2898o0 = this.f2806a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1413c();
        }
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: b */
    public final void mo1804b(Object obj) {
        AbstractC3260md viewableAd;
        Intrinsics.checkNotNullExpressionValue(this.f2806a.f827X, "access$getTAG$p(...)");
        C2726C8 c2726c8 = obj instanceof C2726C8 ? (C2726C8) obj : null;
        if (c2726c8 != null) {
            HashMap map = c2726c8.f938t;
            Boolean bool = Boolean.FALSE;
            map.put("didRequestFullScreen", bool);
            map.put("isFullScreen", bool);
            c2726c8.f941w = null;
            HashMap map2 = c2726c8.f938t;
            map2.put("didRequestFullScreen", bool);
            map2.put("isFullScreen", bool);
            c2726c8.f941w = null;
        }
        C2696A8 c2696a8 = this.f2806a;
        if (c2696a8.f2575a == 0) {
            AbstractC3260md viewableAd2 = c2696a8.getViewableAd();
            if (viewableAd2 != null) {
                viewableAd2.mo958a((byte) 2);
            }
            C3359t7 c3359t7 = this.f2806a.f2596v;
            if (c3359t7 != null && (viewableAd = c3359t7.getViewableAd()) != null) {
                viewableAd.mo958a((byte) 16);
            }
            if (c2726c8 != null) {
                c2726c8.m951a("exitFullscreen", this.f2806a.m858j(c2726c8), (C3239l7) null, this.f2806a.f826W);
            }
        } else {
            AbstractC3260md viewableAd3 = c2696a8.getViewableAd();
            if (viewableAd3 != null) {
                viewableAd3.mo958a((byte) 3);
            }
        }
        C2898O0 c2898o0 = this.f2806a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1412b();
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f2806a.f826W;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2146a();
        }
    }

    @Override // com.inmobi.media.InterfaceC3396w
    /* JADX INFO: renamed from: a */
    public final void mo1803a(Object obj) {
        if (this.f2806a.m2445f() == null) {
            return;
        }
        C2726C8 c2726c8 = obj instanceof C2726C8 ? (C2726C8) obj : null;
        Intrinsics.checkNotNullExpressionValue(this.f2806a.f827X, "access$getTAG$p(...)");
        if (c2726c8 != null) {
            HashMap map = c2726c8.f938t;
            Boolean bool = Boolean.TRUE;
            map.put("didRequestFullScreen", bool);
            map.put("isFullScreen", bool);
            map.put("shouldAutoPlay", bool);
            C2740D7 c2740d7 = c2726c8.f941w;
            if (c2740d7 != null) {
                HashMap map2 = c2740d7.f938t;
                map2.put("didRequestFullScreen", bool);
                map2.put("isFullScreen", bool);
                map2.put("shouldAutoPlay", bool);
            }
        }
        C2696A8 c2696a8 = this.f2806a;
        if (c2696a8.f2575a == 0) {
            AbstractC3260md viewableAd = c2696a8.getViewableAd();
            if (viewableAd != null) {
                viewableAd.mo958a((byte) 1);
            }
            if (c2726c8 != null) {
                c2726c8.m951a("fullscreen", this.f2806a.m858j(c2726c8), (C3239l7) null, this.f2806a.f826W);
            }
        }
        C2898O0 c2898o0 = this.f2806a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1414d();
        }
    }
}
