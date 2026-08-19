package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.webkit.ProxyConfig;
import com.facebook.share.internal.ShareConstants;
import com.google.common.base.Ascii;
import com.iab.omid.library.inmobi.adsession.media.Position;
import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import com.inmobi.commons.core.configs.AdConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class A8 extends C0511t7 {
    public final String U;
    public final String V;
    public final InterfaceC0298f5 W;
    public final String X;
    public final String Y;
    public WeakReference Z;
    public final C0598z8 a0;
    public final C0582y8 b0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A8(Context context, byte b, P7 dataModel, String impressionId, Set set, AdConfig adConfig, long j, boolean z, String creativeId, Z2 z2, C0524u6 c0524u6, InterfaceC0298f5 interfaceC0298f5) {
        super(context, b, dataModel, impressionId, set, adConfig, j, z, creativeId, z2, c0524u6, interfaceC0298f5);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.U = impressionId;
        this.V = creativeId;
        this.W = interfaceC0298f5;
        this.X = "A8";
        this.Y = "InMobi";
        this.a0 = new C0598z8(this);
        this.b0 = new C0582y8(this);
    }

    public final void a(View view, final boolean z) {
        final L8 l8 = (L8) view.findViewById(Integer.MAX_VALUE);
        if (l8 != null) {
            Object tag = l8.getTag();
            final C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (c8 != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.A8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        A8.a(c8, z, this, l8);
                    }
                });
            }
        }
    }

    @Override // com.inmobi.media.C0511t7
    public final void b(View view) {
        if (this.r || this.t || !(view instanceof L8)) {
            return;
        }
        this.r = true;
        Z2 z2 = this.h;
        if (z2 != null) {
            z2.a();
        }
        Object tag = ((L8) view).getTag();
        if (tag instanceof C8) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            C8 c8 = (C8) tag;
            Object obj = c8.t.get("didImpressionFire");
            if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE)) {
                return;
            }
            ArrayList<C0526u8> arrayList = c8.s;
            HashMap mapJ = j(c8);
            List list = null;
            for (C0526u8 c0526u8 : arrayList) {
                if (Intrinsics.areEqual("VideoImpression", c0526u8.b)) {
                    if (StringsKt.startsWith$default(c0526u8.d, ProxyConfig.MATCH_HTTP, false, 2, (Object) null)) {
                        D7.a(c0526u8, mapJ, (C0395l7) null, this.W);
                    }
                    HashMap map = c0526u8.e;
                    Object obj2 = map != null ? map.get("referencedEvents") : null;
                    list = obj2 instanceof List ? (List) obj2 : null;
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            c8.a((String) it.next(), mapJ, (C0395l7) null, this.W);
                        }
                    }
                }
            }
            if (list == null || list.isEmpty()) {
                c8.a("start", mapJ, (C0395l7) null, this.W);
                c8.a("Impression", mapJ, this.O, this.W);
            }
            H7 h7 = this.b.e;
            if (h7 != null) {
                h7.a("Impression", j(c8), this.O, this.W);
            }
            c8.t.put("didImpressionFire", Boolean.TRUE);
            AbstractC0401ld abstractC0401ld = this.p;
            if (abstractC0401ld != null) {
                abstractC0401ld.a((byte) 0);
            }
            O0 o0 = this.w;
            if (o0 != null) {
                o0.f();
            }
        }
    }

    @Override // com.inmobi.media.C0511t7
    public final void c(D7 asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        byte b = asset.k;
        if (b != 0) {
            if (b == 2) {
                try {
                    if (1 != this.f490a) {
                        O0 o0 = this.w;
                        if (o0 != null) {
                            o0.h();
                        }
                        r();
                        return;
                    }
                    super.c(asset);
                    if (Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.c)) {
                        View videoContainerView = getVideoContainerView();
                        M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                        if (m8 != null) {
                            m8.getVideoView().c();
                            m8.getVideoView().j();
                        }
                        r();
                        return;
                    }
                    InterfaceC0298f5 interfaceC0298f5 = this.W;
                    if (interfaceC0298f5 != null) {
                        String TAG = this.X;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C0314g5) interfaceC0298f5).b(TAG, "Action 2 not valid for asset of type: " + asset.c);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    InterfaceC0298f5 interfaceC0298f52 = this.W;
                    if (interfaceC0298f52 != null) {
                        String str = this.X;
                        ((C0314g5) interfaceC0298f52).b(str, AbstractC0363j6.a(str, "TAG", "Action 2 not valid for asset of type: ").append(asset.c).toString());
                    }
                    C0551w5 c0551w5 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                    return;
                }
            }
            if (b == 3) {
                try {
                    if (!Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.c)) {
                        InterfaceC0298f5 interfaceC0298f53 = this.W;
                        if (interfaceC0298f53 != null) {
                            String TAG2 = this.X;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((C0314g5) interfaceC0298f53).b(TAG2, "Action 3 not valid for asset of type: " + asset.c);
                            return;
                        }
                        return;
                    }
                    Ya ya = this.H;
                    if (ya != null) {
                        InterfaceC0298f5 interfaceC0298f54 = ya.i;
                        if (interfaceC0298f54 != null) {
                            String TAG3 = Ya.P0;
                            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                            ((C0314g5) interfaceC0298f54).a(TAG3, "replayToInterActive");
                        }
                        ya.b("window.imraid.broadcastEvent('replay');");
                    }
                    View viewG = g();
                    if (viewG != null) {
                        C0512t8 c0512t8A = C0511t7.a(viewG);
                        if (c0512t8A != null) {
                            c0512t8A.d();
                        }
                        ViewParent parent = viewG.getParent();
                        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                        if (viewGroup != null) {
                            viewGroup.removeView(viewG);
                        }
                    }
                    View videoContainerView2 = getVideoContainerView();
                    M8 m82 = videoContainerView2 instanceof M8 ? (M8) videoContainerView2 : null;
                    if (m82 != null) {
                        m82.getVideoView().k();
                        m82.getVideoView().start();
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    InterfaceC0298f5 interfaceC0298f55 = this.W;
                    if (interfaceC0298f55 != null) {
                        String str2 = this.X;
                        ((C0314g5) interfaceC0298f55).b(str2, Ed.a(e2, AbstractC0363j6.a(str2, "TAG", "Encountered unexpected error in handling replay action on video: ")));
                    }
                    I6.a((byte) 2, this.Y, "SDK encountered unexpected error in replaying video");
                    C0551w5 c0551w52 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
                    return;
                }
            }
            if (b == 1) {
                super.c(asset);
                return;
            }
            if (b == 4) {
                try {
                    if (this.f490a != 0) {
                        InterfaceC0298f5 interfaceC0298f56 = this.W;
                        if (interfaceC0298f56 != null) {
                            String TAG4 = this.X;
                            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                            ((C0314g5) interfaceC0298f56).b(TAG4, "Invalid action! Online inline videos can be expanded to fullscreen!");
                            return;
                        }
                        return;
                    }
                    View videoContainerView3 = getVideoContainerView();
                    M8 m83 = videoContainerView3 instanceof M8 ? (M8) videoContainerView3 : null;
                    if (m83 != null) {
                        L8 videoView = m83.getVideoView();
                        Object tag = videoView.getTag();
                        C8 c8 = tag instanceof C8 ? (C8) tag : null;
                        if (videoView.getState() == 1 || c8 == null) {
                            return;
                        }
                        try {
                            a(c8, videoView);
                            return;
                        } catch (Exception e3) {
                            InterfaceC0298f5 interfaceC0298f57 = this.W;
                            if (interfaceC0298f57 != null) {
                                String TAG5 = this.X;
                                Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                                ((C0314g5) interfaceC0298f57).b(TAG5, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; " + e3.getMessage());
                            }
                            C0551w5 c0551w53 = C0551w5.f513a;
                            C0264d2 event = new C0264d2(e3);
                            Intrinsics.checkNotNullParameter(event, "event");
                            C0551w5.d.a(event);
                            return;
                        }
                    }
                    return;
                } catch (Exception e4) {
                    InterfaceC0298f5 interfaceC0298f58 = this.W;
                    if (interfaceC0298f58 != null) {
                        String str3 = this.X;
                        ((C0314g5) interfaceC0298f58).b(str3, Ed.a(e4, AbstractC0363j6.a(str3, "TAG", "Encountered unexpected error in handling fullscreen action on video: ")));
                    }
                    I6.a((byte) 2, this.Y, "SDK encountered unexpected error in expanding video to fullscreen");
                    C0551w5 c0551w54 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e4, "event"));
                    return;
                }
            }
            if (b == 5) {
                try {
                    View videoContainerView4 = getVideoContainerView();
                    M8 m84 = videoContainerView4 instanceof M8 ? (M8) videoContainerView4 : null;
                    if (m84 != null) {
                        Object tag2 = m84.getVideoView().getTag();
                        C8 c82 = tag2 instanceof C8 ? (C8) tag2 : null;
                        if (c82 != null) {
                            HashMap map = c82.t;
                            Boolean bool = Boolean.TRUE;
                            map.put("shouldAutoPlay", bool);
                            D7 d7 = c82.w;
                            if (d7 != null) {
                                d7.t.put("shouldAutoPlay", bool);
                            }
                        }
                        m84.getVideoView().start();
                        return;
                    }
                    return;
                } catch (Exception e5) {
                    InterfaceC0298f5 interfaceC0298f59 = this.W;
                    if (interfaceC0298f59 != null) {
                        String str4 = this.X;
                        ((C0314g5) interfaceC0298f59).b(str4, Ed.a(e5, AbstractC0363j6.a(str4, "TAG", "Encountered unexpected error in handling play action on video: ")));
                    }
                    I6.a((byte) 2, this.Y, "SDK encountered unexpected error in playing video");
                    C0551w5 c0551w55 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e5, "event"));
                    return;
                }
            }
            try {
                if (1 != this.f490a) {
                    O0 o02 = this.w;
                    if (o02 != null) {
                        o02.h();
                    }
                    r();
                    return;
                }
                super.c(asset);
                if (Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.c)) {
                    View videoContainerView5 = getVideoContainerView();
                    M8 m85 = videoContainerView5 instanceof M8 ? (M8) videoContainerView5 : null;
                    if (m85 != null) {
                        m85.getVideoView().c();
                        m85.getVideoView().j();
                    }
                    r();
                    return;
                }
                InterfaceC0298f5 interfaceC0298f510 = this.W;
                if (interfaceC0298f510 != null) {
                    String TAG6 = this.X;
                    Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                    ((C0314g5) interfaceC0298f510).b(TAG6, "Action 2 not valid for asset of type: " + asset.c);
                }
            } catch (Exception e6) {
                InterfaceC0298f5 interfaceC0298f511 = this.W;
                if (interfaceC0298f511 != null) {
                    String str5 = this.X;
                    ((C0314g5) interfaceC0298f511).b(str5, AbstractC0363j6.a(str5, "TAG", "Action 2 not valid for asset of type: ").append(asset.c).toString());
                }
                C0551w5 c0551w56 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e6, "event"));
            }
        }
    }

    public final void d(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String str = this.X;
            ((C0314g5) interfaceC0298f5).c(str, AbstractC0363j6.a(str, "TAG", "Firing Q4 beacons for completion at ").append(videoAsset.D).toString());
        }
        videoAsset.t.put("didQ4Fire", Boolean.TRUE);
        videoAsset.a("complete", j(videoAsset), (C0395l7) null, this.W);
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a(Ascii.FF);
        }
        InterfaceC0298f5 interfaceC0298f52 = this.W;
        if (interfaceC0298f52 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).c(TAG, "onVideoQuartileEvent(Q4)");
        }
    }

    public final void e(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        videoAsset.t.put("lastMediaVolume", 0);
        videoAsset.a("mute", j(videoAsset), (C0395l7) null, this.W);
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onVideoMuted");
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a(Ascii.CR);
        }
    }

    public final void f(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        C0512t8 c0512t8A = C0511t7.a(g());
        if (c0512t8A != null) {
            c0512t8A.b();
        }
        videoAsset.a("pause", j(videoAsset), (C0395l7) null, this.W);
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onVideoPaused");
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a((byte) 7);
        }
    }

    public final void g(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onVideoPlayed");
        }
        if (this.f490a == 0) {
            Object obj = videoAsset.t.get("currentMediaVolume");
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 0;
            Object obj2 = videoAsset.t.get("lastMediaVolume");
            Integer num2 = obj2 instanceof Integer ? (Integer) obj2 : null;
            int iIntValue2 = num2 != null ? num2.intValue() : 0;
            if (iIntValue > 0 && iIntValue2 == 0) {
                i(videoAsset);
            }
            Object obj3 = videoAsset.t.get("currentMediaVolume");
            Integer num3 = obj3 instanceof Integer ? (Integer) obj3 : null;
            int iIntValue3 = num3 != null ? num3.intValue() : 0;
            Object obj4 = videoAsset.t.get("lastMediaVolume");
            Integer num4 = obj4 instanceof Integer ? (Integer) obj4 : null;
            int iIntValue4 = num4 != null ? num4.intValue() : 0;
            if (iIntValue3 == 0 && iIntValue4 > 0) {
                e(videoAsset);
            }
        }
        Object obj5 = videoAsset.t.get("didStartPlaying");
        if (Intrinsics.areEqual(obj5 instanceof Boolean ? (Boolean) obj5 : null, Boolean.FALSE)) {
            videoAsset.t.put("didStartPlaying", Boolean.TRUE);
            AbstractC0416md viewableAd = getViewableAd();
            if (viewableAd != null) {
                viewableAd.a((byte) 6);
            }
        }
    }

    @Override // com.inmobi.media.C0511t7, com.inmobi.media.InterfaceC0559x
    public final String getCreativeId() {
        return this.V;
    }

    @Override // com.inmobi.media.C0511t7, com.inmobi.media.InterfaceC0559x
    public final InterfaceC0545w getFullScreenEventsListener() {
        return this.a0;
    }

    @Override // com.inmobi.media.C0511t7, com.inmobi.media.InterfaceC0559x
    public final String getImpressionId() {
        return this.U;
    }

    @Override // com.inmobi.media.C0511t7, com.inmobi.media.InterfaceC0559x
    public final View getVideoContainerView() {
        WeakReference weakReference = this.Z;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // com.inmobi.media.C0511t7, com.inmobi.media.InterfaceC0559x
    public final AbstractC0416md getViewableAd() {
        Context contextJ = j();
        if (this.p == null && contextJ != null) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                String TAG = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "fireLoadedAndServedBeacons");
            }
            H7 h7 = this.b.e;
            if (h7 != null) {
                HashMap mapA = a(h7);
                a((byte) 1, mapA);
                a((byte) 2, mapA);
            }
            this.p = new C0495s5(this, new C0461pd(this, this.W), this.W);
            Set<Hc> set = this.d;
            if (set != null) {
                for (Hc hc : set) {
                    try {
                        if (hc.f132a == 3) {
                            Object obj = hc.b.get("omidAdSession");
                            C0599z9 c0599z9 = obj instanceof C0599z9 ? (C0599z9) obj : null;
                            Object obj2 = hc.b.get("videoAutoPlay");
                            Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                            Object obj3 = hc.b.get("videoSkippable");
                            Boolean bool2 = obj3 instanceof Boolean ? (Boolean) obj3 : null;
                            boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                            Object obj4 = hc.b.get("videoSkipOffset");
                            VastProperties vastPropertiesCreateVastPropertiesForSkippableMedia = zBooleanValue2 ? VastProperties.createVastPropertiesForSkippableMedia((obj4 instanceof Integer ? (Integer) obj4 : null) != null ? r3.intValue() : 0, zBooleanValue, Position.STANDALONE) : VastProperties.createVastPropertiesForNonSkippableMedia(zBooleanValue, Position.STANDALONE);
                            AbstractC0401ld abstractC0401ld = this.p;
                            if (c0599z9 == null || abstractC0401ld == null) {
                                InterfaceC0298f5 interfaceC0298f52 = this.W;
                                if (interfaceC0298f52 != null) {
                                    String TAG2 = this.X;
                                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                    ((C0314g5) interfaceC0298f52).b(TAG2, "Did not find a OMID video ad session; the OMID decorator will not be applied.");
                                }
                            } else {
                                Intrinsics.checkNotNull(vastPropertiesCreateVastPropertiesForSkippableMedia);
                                this.p = new F9(contextJ, abstractC0401ld, this, c0599z9, vastPropertiesCreateVastPropertiesForSkippableMedia, this.W);
                            }
                        }
                    } catch (Exception e) {
                        InterfaceC0298f5 interfaceC0298f53 = this.W;
                        if (interfaceC0298f53 != null) {
                            String str = this.X;
                            ((C0314g5) interfaceC0298f53).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "Exception occurred while creating the video viewable ad : ")));
                        }
                        C0551w5 c0551w5 = C0551w5.f513a;
                        C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                    }
                }
            }
        }
        return this.p;
    }

    public final void h(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        C0512t8 c0512t8A = C0511t7.a(g());
        if (c0512t8A != null) {
            c0512t8A.c();
        }
        videoAsset.a("resume", j(videoAsset), (C0395l7) null, this.W);
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onVideoResumed");
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a((byte) 8);
        }
    }

    @Override // com.inmobi.media.C0511t7
    public final rd i() {
        return this.b0;
    }

    public final HashMap j(C8 c8) {
        String strB;
        L8 videoView;
        H7 h7 = c8.r;
        if (!(h7 instanceof H7)) {
            h7 = null;
        }
        HashMap map = new HashMap();
        WeakReference weakReference = this.Z;
        View view = weakReference != null ? (View) weakReference.get() : null;
        M8 m8 = view instanceof M8 ? (M8) view : null;
        if (m8 != null && (videoView = m8.getVideoView()) != null) {
        }
        map.put("[ERRORCODE]", "405");
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder();
        int iNextInt = 0;
        while (iNextInt == 0) {
            iNextInt = (secureRandom.nextInt() & Integer.MAX_VALUE) % 10;
        }
        sb.append(iNextInt);
        for (int i = 1; i < 8; i++) {
            sb.append((secureRandom.nextInt() & Integer.MAX_VALUE) % 10);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        map.put("[CACHEBUSTING]", string);
        InterfaceC0385kd interfaceC0385kdD = c8.d();
        if (interfaceC0385kdD != null && (strB = ((C0370jd) interfaceC0385kdD).b()) != null) {
        }
        map.put("$TS", String.valueOf(System.currentTimeMillis()));
        Object obj = c8.t.get("seekPosition");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 0;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j = iIntValue;
        String str = String.format(locale, "%02d:%02d:%02d.%03d", Arrays.copyOf(new Object[]{Long.valueOf(timeUnit.toHours(j)), Long.valueOf(timeUnit.toMinutes(j) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(j))), Long.valueOf(timeUnit.toSeconds(j) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(j))), Long.valueOf(j - (timeUnit.toSeconds(j) * ((long) 1000)))}, 4));
        Intrinsics.checkNotNullExpressionValue(str, "format(locale, format, *args)");
        map.put("[CONTENTPLAYHEAD]", str);
        if (h7 != null) {
        }
        Object map2 = this.b.t;
        if (map2 == null) {
            map2 = new HashMap();
        }
        map.putAll(map2);
        return map;
    }

    @Override // com.inmobi.media.C0511t7
    public final boolean k() {
        return this.f490a == 0 && f() != null;
    }

    @Override // com.inmobi.media.C0511t7
    public final void l() {
        super.l();
        View videoContainerView = getVideoContainerView();
        M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
        if (m8 != null) {
            L8 videoView = m8.getVideoView();
            if (this.f490a == 0 && !k() && videoView.getVideoVolume() > 0) {
                videoView.setLastVolume(-2);
                a(true);
            }
            videoView.pause();
        }
    }

    @Override // com.inmobi.media.C0511t7
    public final boolean n() {
        return !this.A;
    }

    public final void r() {
        Z2 z2 = this.h;
        if (z2 != null) {
            if (!z2.g.get()) {
                z2.d.h = 1;
                Intrinsics.checkNotNull(z2.c);
            }
            this.h.b();
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a(Ascii.SI);
        }
    }

    public final void i(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        videoAsset.t.put("lastMediaVolume", 15);
        videoAsset.a("unmute", j(videoAsset), (C0395l7) null, this.W);
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onVideoUnMuted");
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a(Ascii.SO);
        }
    }

    public static final void a(C8 c8, boolean z, A8 this$0, L8 l8) {
        int videoVolume;
        int lastVolume;
        int videoVolume2;
        int lastVolume2;
        int videoVolume3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        c8.t.put(CommonCssConstants.VISIBLE, Boolean.valueOf(z));
        if (z && !this$0.u) {
            c8.t.put("lastVisibleTimestamp", Long.valueOf(SystemClock.uptimeMillis()));
            if (l8.getPauseScheduled() && l8.getMediaPlayer() != null) {
                if (c8.c()) {
                    l8.k();
                } else {
                    l8.c();
                }
            }
            Handler handler = l8.s;
            if (handler != null) {
                handler.removeMessages(0);
            }
            l8.t = false;
            Intrinsics.checkNotNull(l8);
            if (this$0.f490a == 0 && !this$0.k() && (videoVolume3 = l8.getVideoVolume()) != l8.getLastVolume() && l8.isPlaying()) {
                this$0.a(videoVolume3 <= 0);
                l8.setLastVolume(videoVolume3);
            }
            if (this$0.f490a == 0 && !this$0.k() && !c8.B && !l8.isPlaying() && l8.getState() == 5 && (videoVolume2 = l8.getVideoVolume()) != (lastVolume2 = l8.getLastVolume()) && lastVolume2 > 0) {
                this$0.a(true);
                l8.setLastVolume(videoVolume2);
            }
            if (1 == l8.getState()) {
                C0319g8 mediaPlayer = l8.getMediaPlayer();
                if (mediaPlayer == null) {
                    return;
                }
                mediaPlayer.b = 3;
                return;
            }
            if (2 == l8.getState() || 4 == l8.getState() || (5 == l8.getState() && c8.B)) {
                l8.start();
                return;
            }
            return;
        }
        Intrinsics.checkNotNull(l8);
        if (this$0.f490a == 0 && !this$0.k() && !this$0.u && (videoVolume = l8.getVideoVolume()) != (lastVolume = l8.getLastVolume()) && lastVolume > 0) {
            this$0.a(true);
            l8.setLastVolume(videoVolume);
        }
        l8.a(c8.E);
    }

    public final void a(boolean z) {
        O0 o0;
        if (this.f490a != 0 || k() || (o0 = this.w) == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = o0.f197a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).a(strE, "onAudioStateChanged");
        }
        if (o0.f197a.Z()) {
            return;
        }
        E0 e0 = (E0) o0.b.get();
        if (e0 != null) {
            e0.a(z);
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = o0.f197a.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void a(C8 videoAsset, int i) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String str = this.X;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0568x8.a(str, "TAG", "Moat onVideoError + ", i));
        }
        videoAsset.a("error", j(videoAsset), (C0395l7) null, this.W);
        InterfaceC0298f5 interfaceC0298f52 = this.W;
        if (interfaceC0298f52 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).c(TAG, "onVideoError");
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a((byte) 17);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.inmobi.media.C8 r7, com.inmobi.media.L8 r8) {
        /*
            r6 = this;
            boolean r0 = r6.t
            if (r0 != 0) goto Lc0
            java.lang.ref.WeakReference r0 = r6.x
            java.lang.Object r0 = r0.get()
            if (r0 != 0) goto Le
            goto Lc0
        Le:
            java.util.HashMap r0 = r7.t
            java.lang.String r1 = "didRequestFullScreen"
            java.lang.Object r0 = r0.get(r1)
            boolean r2 = r0 instanceof java.lang.Boolean
            if (r2 == 0) goto L1d
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            goto L1e
        L1d:
            r0 = 0
        L1e:
            r2 = 0
            if (r0 == 0) goto L26
            boolean r0 = r0.booleanValue()
            goto L27
        L26:
            r0 = r2
        L27:
            if (r0 != 0) goto Lc0
            java.util.HashMap r0 = r7.t
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            r0.put(r1, r3)
            int r1 = r8.getCurrentPosition()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r4 = "seekPosition"
            r0.put(r4, r1)
            int r1 = r8.getVolume()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r5 = "lastMediaVolume"
            r0.put(r5, r1)
            com.inmobi.media.g8 r0 = r8.getMediaPlayer()
            if (r0 == 0) goto L58
            boolean r0 = r0.isPlaying()
            r1 = 1
            if (r0 != r1) goto L58
            goto L59
        L58:
            r1 = r2
        L59:
            if (r1 == 0) goto L6b
            com.inmobi.media.g8 r0 = r8.getMediaPlayer()
            if (r0 == 0) goto L64
            r0.pause()
        L64:
            com.inmobi.media.F7 r0 = r8.getAudioFocusManager$media_release()
            r0.a()
        L6b:
            com.inmobi.media.g8 r0 = r8.getMediaPlayer()
            if (r0 != 0) goto L72
            goto L75
        L72:
            r1 = 4
            r0.f360a = r1
        L75:
            java.util.HashMap r0 = r7.t
            java.lang.String r1 = "isFullScreen"
            r0.put(r1, r3)
            java.util.HashMap r7 = r7.t
            com.inmobi.media.g8 r8 = r8.getMediaPlayer()
            if (r8 == 0) goto L88
            int r2 = r8.getCurrentPosition()
        L88:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)
            r7.put(r4, r8)
            com.inmobi.media.f5 r7 = r6.j
            if (r7 == 0) goto La1
            java.lang.String r8 = r6.m
            java.lang.String r0 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r0)
            com.inmobi.media.g5 r7 = (com.inmobi.media.C0314g5) r7
            java.lang.String r0 = "launchFullscreen"
            r7.c(r8, r0)
        La1:
            com.inmobi.media.t7 r7 = com.inmobi.media.C0511t7.c(r6)
            if (r7 != 0) goto La8
            goto Lc0
        La8:
            com.inmobi.media.O0 r8 = r7.w
            if (r8 == 0) goto Laf
            r8.e()
        Laf:
            com.inmobi.media.A r8 = r6.M
            int r0 = r6.hashCode()
            com.inmobi.media.m7 r1 = new com.inmobi.media.m7
            r1.<init>(r6, r7)
            r8.getClass()
            com.inmobi.media.A.a(r0, r1)
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.A8.a(com.inmobi.media.C8, com.inmobi.media.L8):void");
    }

    public final void b(C8 videoAsset, L8 videoView) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onVideoViewCreated");
        }
        videoView.setIsLockScreen(this.D);
        ViewParent parent = videoView.getParent();
        M8 m8 = parent instanceof M8 ? (M8) parent : null;
        if (m8 != null) {
            this.Z = new WeakReference(m8);
            E8 mediaController = m8.getVideoView().getMediaController();
            if (mediaController != null) {
                mediaController.setVideoAd(this);
            }
        }
    }

    @Override // com.inmobi.media.C0511t7, com.inmobi.media.InterfaceC0559x
    public final void b() {
        L8 videoView;
        if (this.t) {
            return;
        }
        View videoContainerView = getVideoContainerView();
        M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
        if (m8 != null && (videoView = m8.getVideoView()) != null) {
            videoView.g();
        }
        super.b();
    }

    public final void b(C8 videoAsset) {
        HashMap map;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.t) {
            return;
        }
        Object obj = videoAsset.t.get("didRequestFullScreen");
        if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE)) {
            HashMap map2 = videoAsset.t;
            Boolean bool = Boolean.FALSE;
            map2.put("didRequestFullScreen", bool);
            D7 d7 = videoAsset.w;
            if (d7 != null && (map = d7.t) != null) {
                map.put("didRequestFullScreen", bool);
            }
            a();
            videoAsset.t.put("isFullScreen", bool);
        }
    }

    public final void c(C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        InterfaceC0298f5 interfaceC0298f5 = this.W;
        if (interfaceC0298f5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "Video completed; rewards, if any, will be unlocked and end-card displayed");
        }
        Object obj = videoAsset.t.get("didSignalVideoCompleted");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        Z2 z2 = this.h;
        if (z2 != null) {
            if (!z2.g.get()) {
                z2.d.i = 1;
                Intrinsics.checkNotNull(z2.c);
            }
            this.h.b();
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            InterfaceC0298f5 interfaceC0298f52 = this.W;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.X;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).c(TAG2, "Ignoring callback onAdRewardsUnlocked(), as it is only fired after first time video is played.");
            }
        } else {
            q();
            O0 o0 = this.w;
            if (o0 != null) {
                InterfaceC0298f5 interfaceC0298f53 = o0.f197a.j;
                if (interfaceC0298f53 != null) {
                    String strE = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f53).a(strE, "onMediaPlaybackComplete");
                }
                if (!o0.f197a.Z()) {
                    E0 e0 = (E0) o0.b.get();
                    if (e0 != null) {
                        e0.f();
                    } else {
                        InterfaceC0298f5 interfaceC0298f54 = o0.f197a.j;
                        if (interfaceC0298f54 != null) {
                            ((C0314g5) interfaceC0298f54).b("InMobi", "Listener was garbage collected.Unable to give callback");
                        }
                    }
                }
            }
        }
        if (1 == this.f490a) {
            b((D7) videoAsset);
        }
    }
}
