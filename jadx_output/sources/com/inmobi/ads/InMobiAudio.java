package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.WindowInsets;
import android.widget.RelativeLayout;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.AudioAdEventListener;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.AbstractC2734D1;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.AbstractC2886N3;
import com.inmobi.media.AbstractC3001V4;
import com.inmobi.media.AbstractC3154fc;
import com.inmobi.media.AbstractC3428y1;
import com.inmobi.media.AbstractC3429y2;
import com.inmobi.media.C2719C1;
import com.inmobi.media.C2751E3;
import com.inmobi.media.C2758Ea;
import com.inmobi.media.C2810I2;
import com.inmobi.media.C2840K2;
import com.inmobi.media.C2849Kb;
import com.inmobi.media.C2864Lb;
import com.inmobi.media.C2901O3;
import com.inmobi.media.C3010W;
import com.inmobi.media.C3038Y;
import com.inmobi.media.C3048Y9;
import com.inmobi.media.C3162g5;
import com.inmobi.media.C3413x1;
import com.inmobi.media.EnumC2709B6;
import com.inmobi.media.InterfaceC3147f5;
import com.inmobi.media.ViewTreeObserverOnGlobalLayoutListenerC3015W4;
import com.itextpdf.svg.SvgConstants;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001)B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\rJ#\u0010\u0012\u001a\u00020\u000b2\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0010¢\u0006\u0004\b\u0018\u0010\u0016J\u0015\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u000b¢\u0006\u0004\b\u001d\u0010\rJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001e\u0010\rJ\u000f\u0010\u001f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001f\u0010\rJ!\u0010#\u001a\u00020\u000b2\b\b\u0001\u0010!\u001a\u00020 2\b\b\u0001\u0010\"\u001a\u00020 ¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0007¢\u0006\u0004\b%\u0010\rJ\r\u0010&\u001a\u00020\u000b¢\u0006\u0004\b&\u0010\rJ\r\u0010'\u001a\u00020\u000b¢\u0006\u0004\b'\u0010\rJ\u000f\u0010(\u001a\u00020\u000bH\u0007¢\u0006\u0004\b(\u0010\rR$\u0010.\u001a\u0004\u0018\u00010\u00198\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010\u001cR$\u00106\u001a\u0004\u0018\u00010/8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0014\u00109\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00108¨\u0006:"}, m2722d2 = {"Lcom/inmobi/ads/InMobiAudio;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "placementId", "(Landroid/content/Context;J)V", "", "load", "()V", "show", "", "", "extras", "setExtras", "(Ljava/util/Map;)V", "keywords", "setKeywords", "(Ljava/lang/String;)V", "contentUrl", "setContentUrl", "Lcom/inmobi/ads/listeners/AudioAdEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, InAppPurchaseConstants.METHOD_SET_LISTENER, "(Lcom/inmobi/ads/listeners/AudioAdEventListener;)V", "disableHardwareAcceleration", "onAttachedToWindow", "onDetachedFromWindow", "", "widthInDp", "heightInDp", "setAudioSize", "(II)V", "setupViewSizeObserver", "resume", "pause", "destroy", "a", "Lcom/inmobi/ads/listeners/AudioAdEventListener;", "getMPubListener$media_release", "()Lcom/inmobi/ads/listeners/AudioAdEventListener;", "setMPubListener$media_release", "mPubListener", "Lcom/inmobi/media/C1;", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "Lcom/inmobi/media/C1;", "getMAdManager$media_release", "()Lcom/inmobi/media/C1;", "setMAdManager$media_release", "(Lcom/inmobi/media/C1;)V", "mAdManager", "getFrameSizeString", "()Ljava/lang/String;", "frameSizeString", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiAudio extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public AudioAdEventListener mPubListener;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C2719C1 mAdManager;

    /* JADX INFO: renamed from: c */
    public final WeakReference f737c;

    /* JADX INFO: renamed from: d */
    public final C3048Y9 f738d;

    /* JADX INFO: renamed from: e */
    public long f739e;

    /* JADX INFO: renamed from: f */
    public int f740f;

    /* JADX INFO: renamed from: g */
    public int f741g;

    /* JADX INFO: renamed from: com.inmobi.ads.InMobiAudio$a */
    @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m2722d2 = {"Lcom/inmobi/ads/InMobiAudio$a;", "Lcom/inmobi/media/y1;", "Lcom/inmobi/ads/InMobiAudio;", "audio", "<init>", "(Lcom/inmobi/ads/InMobiAudio;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", "", "onAdFetchSuccessful", "(Lcom/inmobi/ads/AdMetaInfo;)V", "Lcom/inmobi/ads/InMobiAdRequestStatus;", "status", "onAdFetchFailed", "(Lcom/inmobi/ads/InMobiAdRequestStatus;)V", "", "getType", "()B", "type", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class C2671a extends AbstractC3428y1 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2671a(InMobiAudio audio) {
            super(audio);
            Intrinsics.checkNotNullParameter(audio, "audio");
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(InMobiAdRequestStatus status) {
            AudioAdEventListener mPubListener;
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiAudio inMobiAudio = m2599a().get();
            if (inMobiAudio == null || (mPubListener = inMobiAudio.getMPubListener()) == null) {
                return;
            }
            mPubListener.onAdLoadFailed(inMobiAudio, status);
        }

        @Override // com.inmobi.media.AbstractC3428y1, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            super.onAdFetchSuccessful(info);
            InMobiAudio inMobiAudio = m2599a().get();
            if (inMobiAudio == null) {
                return;
            }
            try {
                C2719C1 mAdManager = inMobiAudio.getMAdManager();
                if (mAdManager != null) {
                    mAdManager.m889y();
                }
            } catch (IllegalStateException e) {
                AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", e.getMessage());
                AudioAdEventListener mPubListener = inMobiAudio.getMPubListener();
                if (mPubListener != null) {
                    mPubListener.onAdLoadFailed(inMobiAudio, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InMobiAudio(android.content.Context r13, android.util.AttributeSet r14) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.InMobiAudio.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* JADX INFO: renamed from: a */
    public static final void m799a(InMobiAudio this$0) {
        C2719C1 c2719c1;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.m802b()) {
                if (!this$0.m801a() || (c2719c1 = this$0.mAdManager) == null) {
                    return;
                }
                c2719c1.m883b(this$0.getFrameSizeString());
                return;
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "The height or width of the audio ad can not be determined");
            C2719C1 c2719c12 = this$0.mAdManager;
            if (c2719c12 != null) {
                c2719c12.mo879a((short) 108);
            }
            C2719C1 c2719c13 = this$0.mAdManager;
            if (c2719c13 != null) {
                c2719c13.mo878a(c2719c13.mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        } catch (Exception unused) {
            C2719C1 c2719c14 = this$0.mAdManager;
            if (c2719c14 != null) {
                c2719c14.mo879a((short) 105);
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "SDK encountered unexpected error while loading an ad");
        }
    }

    private final String getFrameSizeString() {
        return new StringBuilder().append(this.f740f).append('x').append(this.f741g).toString();
    }

    /* JADX INFO: renamed from: b */
    public final boolean m802b() {
        return this.f740f > 0 && this.f741g > 0;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m803c() {
        if (!m802b()) {
            if (getLayoutParams() == null) {
                AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "The layout params of the audio ad view must be set before calling load or call setAudioSize(int widthInDp, int heightInDp) before load");
                return false;
            }
            if (getLayoutParams().width == -2 || getLayoutParams().height == -2) {
                AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "The height or width of a Audio ad can't be WRAP_CONTENT or call setAudioSize(int widthInDp, int heightInDp) before load");
                return false;
            }
            if (getLayoutParams() != null) {
                this.f740f = AbstractC3429y2.m2609b(getLayoutParams().width / AbstractC2886N3.m1384b());
                this.f741g = AbstractC3429y2.m2609b(getLayoutParams().height / AbstractC2886N3.m1384b());
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: d */
    public final void m804d() {
        C2719C1 c2719c1;
        try {
            LinkedHashMap linkedHashMap = C2840K2.f1150a;
            Config configM1161a = C2810I2.m1161a("ads", C2849Kb.m1248b(), null);
            Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            if (!((AdConfig) configM1161a).getAudio().getIsAudioEnabled()) {
                C2719C1 c2719c12 = this.mAdManager;
                if (c2719c12 != null) {
                    c2719c12.mo879a((short) 107);
                }
                C2719C1 c2719c13 = this.mAdManager;
                if (c2719c13 != null) {
                    c2719c13.mo878a(c2719c13.mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.FEATURE_DISABLED));
                }
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "");
                return;
            }
            this.f738d.f1692e = "NonAB";
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            m800a(context);
            C2719C1 c2719c14 = this.mAdManager;
            if (c2719c14 != null) {
                C3413x1 c3413x1 = c2719c14.f867q;
                if (c3413x1 != null ? c3413x1.m1215E0() : false) {
                    C2719C1 c2719c15 = this.mAdManager;
                    if (c2719c15 != null) {
                        InterfaceC3147f5 interfaceC3147f5M1367p = c2719c15.m1367p();
                        if (interfaceC3147f5M1367p != null) {
                            String str = AbstractC2734D1.f908a;
                            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                            ((C3162g5) interfaceC3147f5M1367p).m2151b(str, "submitAdLoadFailed " + c2719c15);
                        }
                        C3413x1 c3413x12 = c2719c15.f868r;
                        if (c3413x12 != null) {
                            c3413x12.m1639b((short) 15);
                        }
                    }
                    AudioAdEventListener audioAdEventListener = this.mPubListener;
                    if (audioAdEventListener != null) {
                        audioAdEventListener.onAdLoadFailed(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
                    }
                    AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
                    return;
                }
            }
            if (!m803c()) {
                C2719C1 c2719c16 = this.mAdManager;
                if (c2719c16 != null) {
                    c2719c16.mo879a((short) 108);
                }
                C2719C1 c2719c17 = this.mAdManager;
                if (c2719c17 != null) {
                    c2719c17.mo878a(c2719c17.mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID));
                    return;
                }
                return;
            }
            Config configM1161a2 = C2810I2.m1161a("ads", C2849Kb.m1248b(), null);
            Intrinsics.checkNotNull(configM1161a2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            if (((AdConfig) configM1161a2).getAudio().getMinDeviceVolume() > C2751E3.f962a.m1015a(C2849Kb.m1254d(), C2849Kb.m1263o())) {
                C2719C1 c2719c18 = this.mAdManager;
                if (c2719c18 != null) {
                    c2719c18.mo879a((short) 106);
                }
                C2719C1 c2719c19 = this.mAdManager;
                if (c2719c19 != null) {
                    c2719c19.mo878a(c2719c19.mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.DEVICE_AUDIO_LEVEL_LOW));
                    return;
                }
                return;
            }
            if (!m802b()) {
                AbstractC3154fc.m2141a(new Runnable() { // from class: com.inmobi.ads.InMobiAudio$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        InMobiAudio.m799a(this.f$0);
                    }
                }, 200L);
            } else {
                if (!m801a() || (c2719c1 = this.mAdManager) == null) {
                    return;
                }
                c2719c1.m883b(getFrameSizeString());
            }
        } catch (Exception unused) {
            C2719C1 c2719c110 = this.mAdManager;
            if (c2719c110 != null) {
                c2719c110.mo879a((short) 105);
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "Unable to load ad; SDK encountered an unexpected error");
        }
    }

    public final void destroy() {
        removeAllViews();
        C2719C1 c2719c1 = this.mAdManager;
        if (c2719c1 != null) {
            InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
            if (interfaceC3147f5M1367p != null) {
                String str = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "clear " + c2719c1);
            }
            InterfaceC3147f5 interfaceC3147f5M1367p2 = c2719c1.m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String str2 = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p2).m2152c(str2, "unregisterLifecycleCallbacks " + c2719c1);
            }
            C3413x1 c3413x1 = c2719c1.f865o;
            if (c3413x1 != null) {
                c3413x1.m1220J0();
            }
            C3413x1 c3413x12 = c2719c1.f866p;
            if (c3413x12 != null) {
                c3413x12.m1220J0();
            }
            C3413x1 c3413x13 = c2719c1.f865o;
            if (c3413x13 != null) {
                c3413x13.mo1231g();
            }
            c2719c1.f865o = null;
            C3413x1 c3413x14 = c2719c1.f866p;
            if (c3413x14 != null) {
                c3413x14.mo1231g();
            }
            c2719c1.f866p = null;
            c2719c1.f867q = null;
            c2719c1.f868r = null;
            c2719c1.m1355a((Boolean) null);
        }
        this.mPubListener = null;
    }

    public final void disableHardwareAcceleration() {
        this.f738d.f1691d = true;
    }

    /* JADX INFO: renamed from: getMAdManager$media_release, reason: from getter */
    public final C2719C1 getMAdManager() {
        return this.mAdManager;
    }

    /* JADX INFO: renamed from: getMPubListener$media_release, reason: from getter */
    public final AudioAdEventListener getMPubListener() {
        return this.mPubListener;
    }

    public final void load() {
        C2719C1 c2719c1 = this.mAdManager;
        if (c2719c1 != null) {
            c2719c1.mo887w();
        }
        m804d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            C2719C1 c2719c1 = this.mAdManager;
            if (c2719c1 != null) {
                c2719c1.m888x();
            }
            if (getLayoutParams() != null) {
                this.f740f = AbstractC3429y2.m2609b(getLayoutParams().width / AbstractC2886N3.m1384b());
                this.f741g = AbstractC3429y2.m2609b(getLayoutParams().height / AbstractC2886N3.m1384b());
            }
            if (!m802b()) {
                setupViewSizeObserver();
            }
            if (Build.VERSION.SDK_INT >= 29) {
                C2901O3 c2901o3 = AbstractC2886N3.f1293a;
                Context context = getContext();
                WindowInsets rootWindowInsets = getRootWindowInsets();
                Intrinsics.checkNotNullExpressionValue(rootWindowInsets, "getRootWindowInsets(...)");
                AbstractC2886N3.m1379a(rootWindowInsets, context);
            }
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "InMobiAudio#onAttachedToWindow() handler threw unexpected error");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
            C2719C1 c2719c1 = this.mAdManager;
            if (c2719c1 != null) {
                InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
                if (interfaceC3147f5M1367p != null) {
                    String str = AbstractC2734D1.f908a;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f5M1367p).m2152c(str, "unregisterLifecycleCallbacks " + c2719c1);
                }
                C3413x1 c3413x1 = c2719c1.f865o;
                if (c3413x1 != null) {
                    c3413x1.m1220J0();
                }
                C3413x1 c3413x12 = c2719c1.f866p;
                if (c3413x12 != null) {
                    c3413x12.m1220J0();
                }
            }
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 1, "InMobiAudio", "InMobiAudio.onDetachedFromWindow() handler threw unexpected error");
        }
    }

    public final void pause() {
        C2719C1 c2719c1;
        try {
            if (this.f737c != null || (c2719c1 = this.mAdManager) == null) {
                return;
            }
            InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
            if (interfaceC3147f5M1367p != null) {
                String str = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "pause " + c2719c1);
            }
            C3413x1 c3413x1 = c2719c1.f867q;
            if (c3413x1 != null) {
                c3413x1.m1216F0();
            }
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Could not pause ad; SDK encountered an unexpected error");
        }
    }

    public final void resume() {
        C2719C1 c2719c1;
        try {
            if (this.f737c != null || (c2719c1 = this.mAdManager) == null) {
                return;
            }
            InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
            if (interfaceC3147f5M1367p != null) {
                String str = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "resume " + c2719c1);
            }
            C3413x1 c3413x1 = c2719c1.f867q;
            if (c3413x1 != null) {
                c3413x1.m1217G0();
            }
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Could not resume ad; SDK encountered an unexpected error");
        }
    }

    public final void setAudioSize(int widthInDp, int heightInDp) {
        this.f740f = widthInDp;
        this.f741g = heightInDp;
    }

    public final void setContentUrl(String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        this.f738d.f1693f = contentUrl;
    }

    public final void setExtras(Map<String, String> extras) {
        if (extras != null) {
            String str = extras.get("tp");
            if (str != null) {
                C2864Lb.m1314a(str);
            }
            String str2 = extras.get("tp-v");
            if (str2 != null) {
                C2864Lb.m1316b(str2);
            }
        }
        this.f738d.f1690c = extras;
    }

    public final void setKeywords(String keywords) {
        this.f738d.f1689b = keywords;
    }

    public final void setListener(AudioAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mPubListener = listener;
    }

    public final void setMAdManager$media_release(C2719C1 c2719c1) {
        this.mAdManager = c2719c1;
    }

    public final void setMPubListener$media_release(AudioAdEventListener audioAdEventListener) {
        this.mPubListener = audioAdEventListener;
    }

    public final void setupViewSizeObserver() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC3015W4(this));
    }

    public final void show() {
        C2719C1 c2719c1 = this.mAdManager;
        if (c2719c1 != null) {
            InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
            if (interfaceC3147f5M1367p != null) {
                String str = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "submitAdShowCalled " + c2719c1);
            }
            C3413x1 c3413x1 = c2719c1.f868r;
            if (c3413x1 != null) {
                c3413x1.m1706w0();
            }
        }
        C2719C1 c2719c12 = this.mAdManager;
        if (c2719c12 != null) {
            c2719c12.m877a(this);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m801a() {
        C2719C1 c2719c1;
        long j = this.f739e;
        if (j != 0 && (c2719c1 = this.mAdManager) != null) {
            InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
            if (interfaceC3147f5M1367p != null) {
                String str = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p).m2152c(str, "checkForRefreshRate " + c2719c1);
            }
            if (c2719c1.f868r == null) {
                return false;
            }
            LinkedHashMap linkedHashMap = C2840K2.f1150a;
            int minRefreshInterval = ((AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getAudio().getMinRefreshInterval();
            if (SystemClock.elapsedRealtime() - j < minRefreshInterval * 1000) {
                c2719c1.mo879a((short) 2175);
                c2719c1.m1360b(c2719c1.f868r, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST).setCustomMessage("Ad cannot be refreshed before " + minRefreshInterval + " seconds"));
                String str2 = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                StringBuilder sbAppend = new StringBuilder("Ad cannot be refreshed before ").append(minRefreshInterval).append(" seconds (AdPlacement Id = ");
                C3413x1 c3413x1 = c2719c1.f868r;
                AbstractC2814I6.m1170a((byte) 1, str2, sbAppend.append(c3413x1 != null ? c3413x1.m1570I() : null).append(')').toString());
                InterfaceC3147f5 interfaceC3147f5M1367p2 = c2719c1.m1367p();
                if (interfaceC3147f5M1367p2 == null) {
                    return false;
                }
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                StringBuilder sbAppend2 = new StringBuilder("Ad cannot be refreshed before ").append(minRefreshInterval).append(" seconds (AdPlacement Id = ");
                C3413x1 c3413x12 = c2719c1.f868r;
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(str2, sbAppend2.append(c3413x12 != null ? c3413x12.m1570I() : null).append(')').toString());
                return false;
            }
        }
        this.f739e = SystemClock.elapsedRealtime();
        return true;
    }

    /* JADX INFO: renamed from: a */
    public final void m800a(Context context) {
        String str;
        C2719C1 c2719c1 = this.mAdManager;
        if (c2719c1 != null) {
            C3048Y9 pubSettings = this.f738d;
            String adSize = getFrameSizeString();
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
            Intrinsics.checkNotNullParameter(adSize, "adSize");
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            C3010W c3010w = new C3010W("audio");
            Intrinsics.checkNotNullParameter(context, "context");
            if (context instanceof Activity) {
                str = "activity";
            } else {
                str = "others";
            }
            C3038Y c3038yM1884a = c3010w.m1887d(str).m1879a(pubSettings.f1688a).m1886c(pubSettings.f1689b).m1882a(pubSettings.f1690c).m1881a(adSize).m1883a(pubSettings.f1691d).m1888e(pubSettings.f1692e).m1885b(pubSettings.f1693f).m1884a();
            C3413x1 c3413x1 = c2719c1.f865o;
            if (c3413x1 != null && c2719c1.f866p != null) {
                c3413x1.m1595a(context, c3038yM1884a, c2719c1);
                C3413x1 c3413x12 = c2719c1.f866p;
                if (c3413x12 != null) {
                    c3413x12.m1595a(context, c3038yM1884a, c2719c1);
                }
            } else {
                c2719c1.f865o = new C3413x1(context, c3038yM1884a, c2719c1);
                c2719c1.f866p = new C3413x1(context, c3038yM1884a, c2719c1);
                c2719c1.f868r = c2719c1.f865o;
            }
            String str3 = pubSettings.f1692e;
            if (str3 != null) {
                InterfaceC3147f5 interfaceC3147f5M1367p = c2719c1.m1367p();
                if (interfaceC3147f5M1367p != null) {
                    ((C3162g5) interfaceC3147f5M1367p).m2146a();
                }
                EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
                c2719c1.m1354a(C2758Ea.m1051a("audio", str3, false));
                InterfaceC3147f5 interfaceC3147f5M1367p2 = c2719c1.m1367p();
                if (interfaceC3147f5M1367p2 != null) {
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f5M1367p2).m2147a(str2, "adding audioAdUnit1 to reference tracker");
                }
                C3413x1 c3413x13 = c2719c1.f865o;
                Intrinsics.checkNotNull(c3413x13);
                C2758Ea.m1053a(c3413x13, c2719c1.m1367p());
                InterfaceC3147f5 interfaceC3147f5M1367p3 = c2719c1.m1367p();
                if (interfaceC3147f5M1367p3 != null) {
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f5M1367p3).m2147a(str2, "adding audioAdUnit2 to reference tracker");
                }
                C3413x1 c3413x14 = c2719c1.f866p;
                Intrinsics.checkNotNull(c3413x14);
                C2758Ea.m1053a(c3413x14, c2719c1.m1367p());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InMobiAudio(Context context, long j) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        C2671a c2671a = new C2671a(this);
        C3048Y9 c3048y9 = new C3048Y9();
        this.f738d = c3048y9;
        if (C2849Kb.m1265q()) {
            if (context instanceof Activity) {
                this.f737c = new WeakReference(context);
            }
            this.mAdManager = new C2719C1(c2671a);
            c3048y9.f1688a = j;
            m800a(context);
            return;
        }
        throw new SdkNotInitializedException("InMobiAudio");
    }
}
