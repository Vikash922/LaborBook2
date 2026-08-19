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

/* JADX INFO: renamed from: com.inmobi.media.A8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2696A8 extends C3359t7 {

    /* JADX INFO: renamed from: U */
    public final String f824U;

    /* JADX INFO: renamed from: V */
    public final String f825V;

    /* JADX INFO: renamed from: W */
    public final InterfaceC3147f5 f826W;

    /* JADX INFO: renamed from: X */
    public final String f827X;

    /* JADX INFO: renamed from: Y */
    public final String f828Y;

    /* JADX INFO: renamed from: Z */
    public WeakReference f829Z;

    /* JADX INFO: renamed from: a0 */
    public final C3450z8 f830a0;

    /* JADX INFO: renamed from: b0 */
    public final C3435y8 f831b0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2696A8(Context context, byte b, C2920P7 dataModel, String impressionId, Set set, AdConfig adConfig, long j, boolean z, String creativeId, C3055Z2 c3055z2, C3373u6 c3373u6, InterfaceC3147f5 interfaceC3147f5) {
        super(context, b, dataModel, impressionId, set, adConfig, j, z, creativeId, c3055z2, c3373u6, interfaceC3147f5);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.f824U = impressionId;
        this.f825V = creativeId;
        this.f826W = interfaceC3147f5;
        this.f827X = "A8";
        this.f828Y = "InMobi";
        this.f830a0 = new C3450z8(this);
        this.f831b0 = new C3435y8(this);
    }

    /* JADX INFO: renamed from: a */
    public final void m841a(View view, final boolean z) {
        final C2861L8 c2861l8 = (C2861L8) view.findViewById(Integer.MAX_VALUE);
        if (c2861l8 != null) {
            Object tag = c2861l8.getTag();
            final C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (c2726c8 != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.A8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2696A8.m840a(c2726c8, z, this, c2861l8);
                    }
                });
            }
        }
    }

    @Override // com.inmobi.media.C3359t7
    /* JADX INFO: renamed from: b */
    public final void mo846b(View view) {
        if (this.f2592r || this.f2594t || !(view instanceof C2861L8)) {
            return;
        }
        this.f2592r = true;
        C3055Z2 c3055z2 = this.f2582h;
        if (c3055z2 != null) {
            c3055z2.m2001a();
        }
        Object tag = ((C2861L8) view).getTag();
        if (tag instanceof C2726C8) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            C2726C8 c2726c8 = (C2726C8) tag;
            Object obj = c2726c8.f938t.get("didImpressionFire");
            if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE)) {
                return;
            }
            ArrayList<C3375u8> arrayList = c2726c8.f937s;
            HashMap mapM858j = m858j(c2726c8);
            List list = null;
            for (C3375u8 c3375u8 : arrayList) {
                if (Intrinsics.areEqual("VideoImpression", c3375u8.f2662b)) {
                    if (StringsKt.startsWith$default(c3375u8.f2664d, ProxyConfig.MATCH_HTTP, false, 2, (Object) null)) {
                        C2740D7.m944a(c3375u8, mapM858j, (C3239l7) null, this.f826W);
                    }
                    HashMap map = c3375u8.f2665e;
                    Object obj2 = map != null ? map.get("referencedEvents") : null;
                    list = obj2 instanceof List ? (List) obj2 : null;
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            c2726c8.m951a((String) it.next(), mapM858j, (C3239l7) null, this.f826W);
                        }
                    }
                }
            }
            if (list == null || list.isEmpty()) {
                c2726c8.m951a("start", mapM858j, (C3239l7) null, this.f826W);
                c2726c8.m951a("Impression", mapM858j, this.f2569O, this.f826W);
            }
            C2800H7 c2800h7 = this.f2576b.f1380e;
            if (c2800h7 != null) {
                c2800h7.m951a("Impression", m858j(c2726c8), this.f2569O, this.f826W);
            }
            c2726c8.f938t.put("didImpressionFire", Boolean.TRUE);
            AbstractC3245ld abstractC3245ld = this.f2590p;
            if (abstractC3245ld != null) {
                abstractC3245ld.mo958a((byte) 0);
            }
            C2898O0 c2898o0 = this.f2597w;
            if (c2898o0 != null) {
                c2898o0.m1416f();
            }
        }
    }

    @Override // com.inmobi.media.C3359t7
    /* JADX INFO: renamed from: c */
    public final void mo850c(C2740D7 asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        byte b = asset.f929k;
        if (b != 0) {
            if (b == 2) {
                try {
                    if (1 != this.f2575a) {
                        C2898O0 c2898o0 = this.f2597w;
                        if (c2898o0 != null) {
                            c2898o0.m1418h();
                        }
                        m862r();
                        return;
                    }
                    super.mo850c(asset);
                    if (Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.f921c)) {
                        View videoContainerView = getVideoContainerView();
                        C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
                        if (c2876m8 != null) {
                            c2876m8.getVideoView().m1303c();
                            c2876m8.getVideoView().m1310j();
                        }
                        m862r();
                        return;
                    }
                    InterfaceC3147f5 interfaceC3147f5 = this.f826W;
                    if (interfaceC3147f5 != null) {
                        String TAG = this.f827X;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C3162g5) interfaceC3147f5).m2151b(TAG, "Action 2 not valid for asset of type: " + asset.f921c);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    InterfaceC3147f5 interfaceC3147f52 = this.f826W;
                    if (interfaceC3147f52 != null) {
                        String str = this.f827X;
                        ((C3162g5) interfaceC3147f52).m2151b(str, AbstractC3208j6.m2261a(str, "TAG", "Action 2 not valid for asset of type: ").append(asset.f921c).toString());
                    }
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                    return;
                }
            }
            if (b == 3) {
                try {
                    if (!Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.f921c)) {
                        InterfaceC3147f5 interfaceC3147f53 = this.f826W;
                        if (interfaceC3147f53 != null) {
                            String TAG2 = this.f827X;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((C3162g5) interfaceC3147f53).m2151b(TAG2, "Action 3 not valid for asset of type: " + asset.f921c);
                            return;
                        }
                        return;
                    }
                    GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f2562H;
                    if (gestureDetectorOnGestureListenerC3049Ya != null) {
                        InterfaceC3147f5 interfaceC3147f54 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                        if (interfaceC3147f54 != null) {
                            String TAG3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                            ((C3162g5) interfaceC3147f54).m2147a(TAG3, "replayToInterActive");
                        }
                        gestureDetectorOnGestureListenerC3049Ya.m1960b("window.imraid.broadcastEvent('replay');");
                    }
                    View viewM2446g = m2446g();
                    if (viewM2446g != null) {
                        C3360t8 c3360t8M2427a = C3359t7.m2427a(viewM2446g);
                        if (c3360t8M2427a != null) {
                            c3360t8M2427a.m2456d();
                        }
                        ViewParent parent = viewM2446g.getParent();
                        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                        if (viewGroup != null) {
                            viewGroup.removeView(viewM2446g);
                        }
                    }
                    View videoContainerView2 = getVideoContainerView();
                    C2876M8 c2876m82 = videoContainerView2 instanceof C2876M8 ? (C2876M8) videoContainerView2 : null;
                    if (c2876m82 != null) {
                        c2876m82.getVideoView().m1311k();
                        c2876m82.getVideoView().start();
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    InterfaceC3147f5 interfaceC3147f55 = this.f826W;
                    if (interfaceC3147f55 != null) {
                        String str2 = this.f827X;
                        ((C3162g5) interfaceC3147f55).m2151b(str2, AbstractC2761Ed.m1111a(e2, AbstractC3208j6.m2261a(str2, "TAG", "Encountered unexpected error in handling replay action on video: ")));
                    }
                    AbstractC2814I6.m1170a((byte) 2, this.f828Y, "SDK encountered unexpected error in replaying video");
                    C3402w5 c3402w52 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e2, "event"));
                    return;
                }
            }
            if (b == 1) {
                super.mo850c(asset);
                return;
            }
            if (b == 4) {
                try {
                    if (this.f2575a != 0) {
                        InterfaceC3147f5 interfaceC3147f56 = this.f826W;
                        if (interfaceC3147f56 != null) {
                            String TAG4 = this.f827X;
                            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                            ((C3162g5) interfaceC3147f56).m2151b(TAG4, "Invalid action! Online inline videos can be expanded to fullscreen!");
                            return;
                        }
                        return;
                    }
                    View videoContainerView3 = getVideoContainerView();
                    C2876M8 c2876m83 = videoContainerView3 instanceof C2876M8 ? (C2876M8) videoContainerView3 : null;
                    if (c2876m83 != null) {
                        C2861L8 videoView = c2876m83.getVideoView();
                        Object tag = videoView.getTag();
                        C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
                        if (videoView.getState() == 1 || c2726c8 == null) {
                            return;
                        }
                        try {
                            m843a(c2726c8, videoView);
                            return;
                        } catch (Exception e3) {
                            InterfaceC3147f5 interfaceC3147f57 = this.f826W;
                            if (interfaceC3147f57 != null) {
                                String TAG5 = this.f827X;
                                Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                                ((C3162g5) interfaceC3147f57).m2151b(TAG5, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; " + e3.getMessage());
                            }
                            C3402w5 c3402w53 = C3402w5.f2709a;
                            C3114d2 event = new C3114d2(e3);
                            Intrinsics.checkNotNullParameter(event, "event");
                            C3402w5.f2712d.m2158a(event);
                            return;
                        }
                    }
                    return;
                } catch (Exception e4) {
                    InterfaceC3147f5 interfaceC3147f58 = this.f826W;
                    if (interfaceC3147f58 != null) {
                        String str3 = this.f827X;
                        ((C3162g5) interfaceC3147f58).m2151b(str3, AbstractC2761Ed.m1111a(e4, AbstractC3208j6.m2261a(str3, "TAG", "Encountered unexpected error in handling fullscreen action on video: ")));
                    }
                    AbstractC2814I6.m1170a((byte) 2, this.f828Y, "SDK encountered unexpected error in expanding video to fullscreen");
                    C3402w5 c3402w54 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e4, "event"));
                    return;
                }
            }
            if (b == 5) {
                try {
                    View videoContainerView4 = getVideoContainerView();
                    C2876M8 c2876m84 = videoContainerView4 instanceof C2876M8 ? (C2876M8) videoContainerView4 : null;
                    if (c2876m84 != null) {
                        Object tag2 = c2876m84.getVideoView().getTag();
                        C2726C8 c2726c82 = tag2 instanceof C2726C8 ? (C2726C8) tag2 : null;
                        if (c2726c82 != null) {
                            HashMap map = c2726c82.f938t;
                            Boolean bool = Boolean.TRUE;
                            map.put("shouldAutoPlay", bool);
                            C2740D7 c2740d7 = c2726c82.f941w;
                            if (c2740d7 != null) {
                                c2740d7.f938t.put("shouldAutoPlay", bool);
                            }
                        }
                        c2876m84.getVideoView().start();
                        return;
                    }
                    return;
                } catch (Exception e5) {
                    InterfaceC3147f5 interfaceC3147f59 = this.f826W;
                    if (interfaceC3147f59 != null) {
                        String str4 = this.f827X;
                        ((C3162g5) interfaceC3147f59).m2151b(str4, AbstractC2761Ed.m1111a(e5, AbstractC3208j6.m2261a(str4, "TAG", "Encountered unexpected error in handling play action on video: ")));
                    }
                    AbstractC2814I6.m1170a((byte) 2, this.f828Y, "SDK encountered unexpected error in playing video");
                    C3402w5 c3402w55 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e5, "event"));
                    return;
                }
            }
            try {
                if (1 != this.f2575a) {
                    C2898O0 c2898o02 = this.f2597w;
                    if (c2898o02 != null) {
                        c2898o02.m1418h();
                    }
                    m862r();
                    return;
                }
                super.mo850c(asset);
                if (Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.f921c)) {
                    View videoContainerView5 = getVideoContainerView();
                    C2876M8 c2876m85 = videoContainerView5 instanceof C2876M8 ? (C2876M8) videoContainerView5 : null;
                    if (c2876m85 != null) {
                        c2876m85.getVideoView().m1303c();
                        c2876m85.getVideoView().m1310j();
                    }
                    m862r();
                    return;
                }
                InterfaceC3147f5 interfaceC3147f510 = this.f826W;
                if (interfaceC3147f510 != null) {
                    String TAG6 = this.f827X;
                    Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                    ((C3162g5) interfaceC3147f510).m2151b(TAG6, "Action 2 not valid for asset of type: " + asset.f921c);
                }
            } catch (Exception e6) {
                InterfaceC3147f5 interfaceC3147f511 = this.f826W;
                if (interfaceC3147f511 != null) {
                    String str5 = this.f827X;
                    ((C3162g5) interfaceC3147f511).m2151b(str5, AbstractC3208j6.m2261a(str5, "TAG", "Action 2 not valid for asset of type: ").append(asset.f921c).toString());
                }
                C3402w5 c3402w56 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e6, "event"));
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m851d(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String str = this.f827X;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3208j6.m2261a(str, "TAG", "Firing Q4 beacons for completion at ").append(videoAsset.f888D).toString());
        }
        videoAsset.f938t.put("didQ4Fire", Boolean.TRUE);
        videoAsset.m951a("complete", m858j(videoAsset), (C3239l7) null, this.f826W);
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a(Ascii.f386FF);
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f826W;
        if (interfaceC3147f52 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2152c(TAG, "onVideoQuartileEvent(Q4)");
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m852e(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        videoAsset.f938t.put("lastMediaVolume", 0);
        videoAsset.m951a("mute", m858j(videoAsset), (C3239l7) null, this.f826W);
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoMuted");
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a(Ascii.f384CR);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m853f(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        C3360t8 c3360t8M2427a = C3359t7.m2427a(m2446g());
        if (c3360t8M2427a != null) {
            c3360t8M2427a.m2454b();
        }
        videoAsset.m951a("pause", m858j(videoAsset), (C3239l7) null, this.f826W);
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoPaused");
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a((byte) 7);
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m854g(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoPlayed");
        }
        if (this.f2575a == 0) {
            Object obj = videoAsset.f938t.get("currentMediaVolume");
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 0;
            Object obj2 = videoAsset.f938t.get("lastMediaVolume");
            Integer num2 = obj2 instanceof Integer ? (Integer) obj2 : null;
            int iIntValue2 = num2 != null ? num2.intValue() : 0;
            if (iIntValue > 0 && iIntValue2 == 0) {
                m857i(videoAsset);
            }
            Object obj3 = videoAsset.f938t.get("currentMediaVolume");
            Integer num3 = obj3 instanceof Integer ? (Integer) obj3 : null;
            int iIntValue3 = num3 != null ? num3.intValue() : 0;
            Object obj4 = videoAsset.f938t.get("lastMediaVolume");
            Integer num4 = obj4 instanceof Integer ? (Integer) obj4 : null;
            int iIntValue4 = num4 != null ? num4.intValue() : 0;
            if (iIntValue3 == 0 && iIntValue4 > 0) {
                m852e(videoAsset);
            }
        }
        Object obj5 = videoAsset.f938t.get("didStartPlaying");
        if (Intrinsics.areEqual(obj5 instanceof Boolean ? (Boolean) obj5 : null, Boolean.FALSE)) {
            videoAsset.f938t.put("didStartPlaying", Boolean.TRUE);
            AbstractC3260md viewableAd = getViewableAd();
            if (viewableAd != null) {
                viewableAd.mo958a((byte) 6);
            }
        }
    }

    @Override // com.inmobi.media.C3359t7, com.inmobi.media.InterfaceC3411x
    public final String getCreativeId() {
        return this.f825V;
    }

    @Override // com.inmobi.media.C3359t7, com.inmobi.media.InterfaceC3411x
    public final InterfaceC3396w getFullScreenEventsListener() {
        return this.f830a0;
    }

    @Override // com.inmobi.media.C3359t7, com.inmobi.media.InterfaceC3411x
    public final String getImpressionId() {
        return this.f824U;
    }

    @Override // com.inmobi.media.C3359t7, com.inmobi.media.InterfaceC3411x
    public final View getVideoContainerView() {
        WeakReference weakReference = this.f829Z;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // com.inmobi.media.C3359t7, com.inmobi.media.InterfaceC3411x
    public final AbstractC3260md getViewableAd() {
        Context contextM2448j = m2448j();
        if (this.f2590p == null && contextM2448j != null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
            if (interfaceC3147f5 != null) {
                String TAG = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "fireLoadedAndServedBeacons");
            }
            C2800H7 c2800h7 = this.f2576b.f1380e;
            if (c2800h7 != null) {
                HashMap mapM2435a = m2435a(c2800h7);
                mo1951a((byte) 1, mapM2435a);
                mo1951a((byte) 2, mapM2435a);
            }
            this.f2590p = new C3342s5(this, new C3305pd(this, this.f826W), this.f826W);
            Set<C2805Hc> set = this.f2578d;
            if (set != null) {
                for (C2805Hc c2805Hc : set) {
                    try {
                        if (c2805Hc.f1084a == 3) {
                            Object obj = c2805Hc.f1085b.get("omidAdSession");
                            C3451z9 c3451z9 = obj instanceof C3451z9 ? (C3451z9) obj : null;
                            Object obj2 = c2805Hc.f1085b.get("videoAutoPlay");
                            Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                            Object obj3 = c2805Hc.f1085b.get("videoSkippable");
                            Boolean bool2 = obj3 instanceof Boolean ? (Boolean) obj3 : null;
                            boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                            Object obj4 = c2805Hc.f1085b.get("videoSkipOffset");
                            VastProperties vastPropertiesCreateVastPropertiesForSkippableMedia = zBooleanValue2 ? VastProperties.createVastPropertiesForSkippableMedia((obj4 instanceof Integer ? (Integer) obj4 : null) != null ? r3.intValue() : 0, zBooleanValue, Position.STANDALONE) : VastProperties.createVastPropertiesForNonSkippableMedia(zBooleanValue, Position.STANDALONE);
                            AbstractC3245ld abstractC3245ld = this.f2590p;
                            if (c3451z9 == null || abstractC3245ld == null) {
                                InterfaceC3147f5 interfaceC3147f52 = this.f826W;
                                if (interfaceC3147f52 != null) {
                                    String TAG2 = this.f827X;
                                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                    ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Did not find a OMID video ad session; the OMID decorator will not be applied.");
                                }
                            } else {
                                Intrinsics.checkNotNull(vastPropertiesCreateVastPropertiesForSkippableMedia);
                                this.f2590p = new C2772F9(contextM2448j, abstractC3245ld, this, c3451z9, vastPropertiesCreateVastPropertiesForSkippableMedia, this.f826W);
                            }
                        }
                    } catch (Exception e) {
                        InterfaceC3147f5 interfaceC3147f53 = this.f826W;
                        if (interfaceC3147f53 != null) {
                            String str = this.f827X;
                            ((C3162g5) interfaceC3147f53).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "Exception occurred while creating the video viewable ad : ")));
                        }
                        C3402w5 c3402w5 = C3402w5.f2709a;
                        C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                    }
                }
            }
        }
        return this.f2590p;
    }

    /* JADX INFO: renamed from: h */
    public final void m855h(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        C3360t8 c3360t8M2427a = C3359t7.m2427a(m2446g());
        if (c3360t8M2427a != null) {
            c3360t8M2427a.m2455c();
        }
        videoAsset.m951a("resume", m858j(videoAsset), (C3239l7) null, this.f826W);
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoResumed");
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a((byte) 8);
        }
    }

    @Override // com.inmobi.media.C3359t7
    /* JADX INFO: renamed from: i */
    public final InterfaceC3335rd mo856i() {
        return this.f831b0;
    }

    /* JADX INFO: renamed from: j */
    public final HashMap m858j(C2726C8 c2726c8) {
        String strM2268b;
        C2861L8 videoView;
        C2800H7 c2800h7 = c2726c8.f936r;
        if (!(c2800h7 instanceof C2800H7)) {
            c2800h7 = null;
        }
        HashMap map = new HashMap();
        WeakReference weakReference = this.f829Z;
        View view = weakReference != null ? (View) weakReference.get() : null;
        C2876M8 c2876m8 = view instanceof C2876M8 ? (C2876M8) view : null;
        if (c2876m8 != null && (videoView = c2876m8.getVideoView()) != null) {
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
        InterfaceC3230kd interfaceC3230kdM921d = c2726c8.m921d();
        if (interfaceC3230kdM921d != null && (strM2268b = ((C3215jd) interfaceC3230kdM921d).m2268b()) != null) {
        }
        map.put("$TS", String.valueOf(System.currentTimeMillis()));
        Object obj = c2726c8.f938t.get("seekPosition");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 0;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j = iIntValue;
        String str = String.format(locale, "%02d:%02d:%02d.%03d", Arrays.copyOf(new Object[]{Long.valueOf(timeUnit.toHours(j)), Long.valueOf(timeUnit.toMinutes(j) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(j))), Long.valueOf(timeUnit.toSeconds(j) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(j))), Long.valueOf(j - (timeUnit.toSeconds(j) * ((long) 1000)))}, 4));
        Intrinsics.checkNotNullExpressionValue(str, "format(locale, format, *args)");
        map.put("[CONTENTPLAYHEAD]", str);
        if (c2800h7 != null) {
        }
        Object map2 = this.f2576b.f1395t;
        if (map2 == null) {
            map2 = new HashMap();
        }
        map.putAll(map2);
        return map;
    }

    @Override // com.inmobi.media.C3359t7
    /* JADX INFO: renamed from: k */
    public final boolean mo859k() {
        return this.f2575a == 0 && m2445f() != null;
    }

    @Override // com.inmobi.media.C3359t7
    /* JADX INFO: renamed from: l */
    public final void mo860l() {
        super.mo860l();
        View videoContainerView = getVideoContainerView();
        C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
        if (c2876m8 != null) {
            C2861L8 videoView = c2876m8.getVideoView();
            if (this.f2575a == 0 && !mo859k() && videoView.getVideoVolume() > 0) {
                videoView.setLastVolume(-2);
                m844a(true);
            }
            videoView.pause();
        }
    }

    @Override // com.inmobi.media.C3359t7
    /* JADX INFO: renamed from: n */
    public final boolean mo861n() {
        return !this.f2555A;
    }

    /* JADX INFO: renamed from: r */
    public final void m862r() {
        C3055Z2 c3055z2 = this.f2582h;
        if (c3055z2 != null) {
            if (!c3055z2.f1799g.get()) {
                c3055z2.f1796d.f1983h = 1;
                Intrinsics.checkNotNull(c3055z2.f1795c);
            }
            this.f2582h.m2002b();
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a(Ascii.f393SI);
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m857i(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        videoAsset.f938t.put("lastMediaVolume", 15);
        videoAsset.m951a("unmute", m858j(videoAsset), (C3239l7) null, this.f826W);
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoUnMuted");
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a(Ascii.f394SO);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m840a(C2726C8 c2726c8, boolean z, C2696A8 this$0, C2861L8 c2861l8) {
        int videoVolume;
        int lastVolume;
        int videoVolume2;
        int lastVolume2;
        int videoVolume3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        c2726c8.f938t.put(CommonCssConstants.VISIBLE, Boolean.valueOf(z));
        if (z && !this$0.f2595u) {
            c2726c8.f938t.put("lastVisibleTimestamp", Long.valueOf(SystemClock.uptimeMillis()));
            if (c2861l8.getPauseScheduled() && c2861l8.getMediaPlayer() != null) {
                if (c2726c8.m920c()) {
                    c2861l8.m1311k();
                } else {
                    c2861l8.m1303c();
                }
            }
            Handler handler = c2861l8.f1228s;
            if (handler != null) {
                handler.removeMessages(0);
            }
            c2861l8.f1229t = false;
            Intrinsics.checkNotNull(c2861l8);
            if (this$0.f2575a == 0 && !this$0.mo859k() && (videoVolume3 = c2861l8.getVideoVolume()) != c2861l8.getLastVolume() && c2861l8.isPlaying()) {
                this$0.m844a(videoVolume3 <= 0);
                c2861l8.setLastVolume(videoVolume3);
            }
            if (this$0.f2575a == 0 && !this$0.mo859k() && !c2726c8.f886B && !c2861l8.isPlaying() && c2861l8.getState() == 5 && (videoVolume2 = c2861l8.getVideoVolume()) != (lastVolume2 = c2861l8.getLastVolume()) && lastVolume2 > 0) {
                this$0.m844a(true);
                c2861l8.setLastVolume(videoVolume2);
            }
            if (1 == c2861l8.getState()) {
                C3165g8 mediaPlayer = c2861l8.getMediaPlayer();
                if (mediaPlayer == null) {
                    return;
                }
                mediaPlayer.f2108b = 3;
                return;
            }
            if (2 == c2861l8.getState() || 4 == c2861l8.getState() || (5 == c2861l8.getState() && c2726c8.f886B)) {
                c2861l8.start();
                return;
            }
            return;
        }
        Intrinsics.checkNotNull(c2861l8);
        if (this$0.f2575a == 0 && !this$0.mo859k() && !this$0.f2595u && (videoVolume = c2861l8.getVideoVolume()) != (lastVolume = c2861l8.getLastVolume()) && lastVolume > 0) {
            this$0.m844a(true);
            c2861l8.setLastVolume(videoVolume);
        }
        c2861l8.m1299a(c2726c8.f889E);
    }

    /* JADX INFO: renamed from: a */
    public final void m844a(boolean z) {
        C2898O0 c2898o0;
        if (this.f2575a != 0 || mo859k() || (c2898o0 = this.f2597w) == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = c2898o0.f1326a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "onAudioStateChanged");
        }
        if (c2898o0.f1326a.m1584Z()) {
            return;
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) c2898o0.f1327b.get();
        if (abstractC2748E0 != null) {
            abstractC2748E0.mo979a(z);
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = c2898o0.f1326a.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2151b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m842a(C2726C8 videoAsset, int i) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String str = this.f827X;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3420x8.m2595a(str, "TAG", "Moat onVideoError + ", i));
        }
        videoAsset.m951a("error", m858j(videoAsset), (C3239l7) null, this.f826W);
        InterfaceC3147f5 interfaceC3147f52 = this.f826W;
        if (interfaceC3147f52 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2152c(TAG, "onVideoError");
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a((byte) 17);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m843a(com.inmobi.media.C2726C8 r7, com.inmobi.media.C2861L8 r8) {
        /*
            r6 = this;
            boolean r0 = r6.f2594t
            if (r0 != 0) goto Lc0
            java.lang.ref.WeakReference r0 = r6.f2598x
            java.lang.Object r0 = r0.get()
            if (r0 != 0) goto Le
            goto Lc0
        Le:
            java.util.HashMap r0 = r7.f938t
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
            java.util.HashMap r0 = r7.f938t
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
            r0.m1117a()
        L6b:
            com.inmobi.media.g8 r0 = r8.getMediaPlayer()
            if (r0 != 0) goto L72
            goto L75
        L72:
            r1 = 4
            r0.f2107a = r1
        L75:
            java.util.HashMap r0 = r7.f938t
            java.lang.String r1 = "isFullScreen"
            r0.put(r1, r3)
            java.util.HashMap r7 = r7.f938t
            com.inmobi.media.g8 r8 = r8.getMediaPlayer()
            if (r8 == 0) goto L88
            int r2 = r8.getCurrentPosition()
        L88:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)
            r7.put(r4, r8)
            com.inmobi.media.f5 r7 = r6.f2584j
            if (r7 == 0) goto La1
            java.lang.String r8 = r6.f2587m
            java.lang.String r0 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r0)
            com.inmobi.media.g5 r7 = (com.inmobi.media.C3162g5) r7
            java.lang.String r0 = "launchFullscreen"
            r7.m2152c(r8, r0)
        La1:
            com.inmobi.media.t7 r7 = com.inmobi.media.C3359t7.m2430c(r6)
            if (r7 != 0) goto La8
            goto Lc0
        La8:
            com.inmobi.media.O0 r8 = r7.f2597w
            if (r8 == 0) goto Laf
            r8.m1415e()
        Laf:
            com.inmobi.media.A r8 = r6.f2567M
            int r0 = r6.hashCode()
            com.inmobi.media.m7 r1 = new com.inmobi.media.m7
            r1.<init>(r6, r7)
            r8.getClass()
            com.inmobi.media.C2687A.m825a(r0, r1)
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2696A8.m843a(com.inmobi.media.C8, com.inmobi.media.L8):void");
    }

    /* JADX INFO: renamed from: b */
    public final void m848b(C2726C8 videoAsset, C2861L8 videoView) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onVideoViewCreated");
        }
        videoView.setIsLockScreen(this.f2558D);
        ViewParent parent = videoView.getParent();
        C2876M8 c2876m8 = parent instanceof C2876M8 ? (C2876M8) parent : null;
        if (c2876m8 != null) {
            this.f829Z = new WeakReference(c2876m8);
            C2756E8 mediaController = c2876m8.getVideoView().getMediaController();
            if (mediaController != null) {
                mediaController.setVideoAd(this);
            }
        }
    }

    @Override // com.inmobi.media.C3359t7, com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: b */
    public final void mo845b() {
        C2861L8 videoView;
        if (this.f2594t) {
            return;
        }
        View videoContainerView = getVideoContainerView();
        C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
        if (c2876m8 != null && (videoView = c2876m8.getVideoView()) != null) {
            videoView.m1307g();
        }
        super.mo845b();
    }

    /* JADX INFO: renamed from: b */
    public final void m847b(C2726C8 videoAsset) {
        HashMap map;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f2594t) {
            return;
        }
        Object obj = videoAsset.f938t.get("didRequestFullScreen");
        if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE)) {
            HashMap map2 = videoAsset.f938t;
            Boolean bool = Boolean.FALSE;
            map2.put("didRequestFullScreen", bool);
            C2740D7 c2740d7 = videoAsset.f941w;
            if (c2740d7 != null && (map = c2740d7.f938t) != null) {
                map.put("didRequestFullScreen", bool);
            }
            mo1950a();
            videoAsset.f938t.put("isFullScreen", bool);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m849c(C2726C8 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        InterfaceC3147f5 interfaceC3147f5 = this.f826W;
        if (interfaceC3147f5 != null) {
            String TAG = this.f827X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "Video completed; rewards, if any, will be unlocked and end-card displayed");
        }
        Object obj = videoAsset.f938t.get("didSignalVideoCompleted");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        C3055Z2 c3055z2 = this.f2582h;
        if (c3055z2 != null) {
            if (!c3055z2.f1799g.get()) {
                c3055z2.f1796d.f1984i = 1;
                Intrinsics.checkNotNull(c3055z2.f1795c);
            }
            this.f2582h.m2002b();
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            InterfaceC3147f5 interfaceC3147f52 = this.f826W;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f827X;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2152c(TAG2, "Ignoring callback onAdRewardsUnlocked(), as it is only fired after first time video is played.");
            }
        } else {
            m2452q();
            C2898O0 c2898o0 = this.f2597w;
            if (c2898o0 != null) {
                InterfaceC3147f5 interfaceC3147f53 = c2898o0.f1326a.f1437j;
                if (interfaceC3147f53 != null) {
                    String strM1558e = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f53).m2147a(strM1558e, "onMediaPlaybackComplete");
                }
                if (!c2898o0.f1326a.m1584Z()) {
                    AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) c2898o0.f1327b.get();
                    if (abstractC2748E0 != null) {
                        abstractC2748E0.mo986f();
                    } else {
                        InterfaceC3147f5 interfaceC3147f54 = c2898o0.f1326a.f1437j;
                        if (interfaceC3147f54 != null) {
                            ((C3162g5) interfaceC3147f54).m2151b("InMobi", "Listener was garbage collected.Unable to give callback");
                        }
                    }
                }
            }
        }
        if (1 == this.f2575a) {
            m2443b((C2740D7) videoAsset);
        }
    }
}
