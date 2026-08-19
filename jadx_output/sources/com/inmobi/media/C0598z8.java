package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0598z8 implements InterfaceC0545w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A8 f548a;

    public C0598z8(A8 a8) {
        this.f548a = a8;
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void a() {
        Intrinsics.checkNotNullExpressionValue(this.f548a.X, "access$getTAG$p(...)");
        O0 o0 = this.f548a.w;
        if (o0 != null) {
            o0.c();
        }
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void b(Object obj) {
        AbstractC0416md viewableAd;
        Intrinsics.checkNotNullExpressionValue(this.f548a.X, "access$getTAG$p(...)");
        C8 c8 = obj instanceof C8 ? (C8) obj : null;
        if (c8 != null) {
            HashMap map = c8.t;
            Boolean bool = Boolean.FALSE;
            map.put("didRequestFullScreen", bool);
            map.put("isFullScreen", bool);
            c8.w = null;
            HashMap map2 = c8.t;
            map2.put("didRequestFullScreen", bool);
            map2.put("isFullScreen", bool);
            c8.w = null;
        }
        A8 a8 = this.f548a;
        if (a8.f490a == 0) {
            AbstractC0416md viewableAd2 = a8.getViewableAd();
            if (viewableAd2 != null) {
                viewableAd2.a((byte) 2);
            }
            C0511t7 c0511t7 = this.f548a.v;
            if (c0511t7 != null && (viewableAd = c0511t7.getViewableAd()) != null) {
                viewableAd.a((byte) 16);
            }
            if (c8 != null) {
                c8.a("exitFullscreen", this.f548a.j(c8), (C0395l7) null, this.f548a.W);
            }
        } else {
            AbstractC0416md viewableAd3 = a8.getViewableAd();
            if (viewableAd3 != null) {
                viewableAd3.a((byte) 3);
            }
        }
        O0 o0 = this.f548a.w;
        if (o0 != null) {
            o0.b();
        }
        InterfaceC0298f5 interfaceC0298f5 = this.f548a.W;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a();
        }
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void a(Object obj) {
        if (this.f548a.f() == null) {
            return;
        }
        C8 c8 = obj instanceof C8 ? (C8) obj : null;
        Intrinsics.checkNotNullExpressionValue(this.f548a.X, "access$getTAG$p(...)");
        if (c8 != null) {
            HashMap map = c8.t;
            Boolean bool = Boolean.TRUE;
            map.put("didRequestFullScreen", bool);
            map.put("isFullScreen", bool);
            map.put("shouldAutoPlay", bool);
            D7 d7 = c8.w;
            if (d7 != null) {
                HashMap map2 = d7.t;
                map2.put("didRequestFullScreen", bool);
                map2.put("isFullScreen", bool);
                map2.put("shouldAutoPlay", bool);
            }
        }
        A8 a8 = this.f548a;
        if (a8.f490a == 0) {
            AbstractC0416md viewableAd = a8.getViewableAd();
            if (viewableAd != null) {
                viewableAd.a((byte) 1);
            }
            if (c8 != null) {
                c8.a("fullscreen", this.f548a.j(c8), (C0395l7) null, this.f548a.W);
            }
        }
        O0 o0 = this.f548a.w;
        if (o0 != null) {
            o0.d();
        }
    }
}
