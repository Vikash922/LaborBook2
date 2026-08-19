package com.inmobi.ads;

import android.content.Context;
import android.os.Build;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.AbstractC2858L5;
import com.inmobi.media.AbstractC2886N3;
import com.inmobi.media.AbstractC3102c5;
import com.inmobi.media.C2849Kb;
import com.inmobi.media.C2864Lb;
import com.inmobi.media.C2873M5;
import com.inmobi.media.C2946R5;
import com.inmobi.media.C2960S5;
import com.inmobi.media.C3048Y9;
import com.inmobi.media.C3117d5;
import com.inmobi.media.C3402w5;
import com.itextpdf.forms.xfdf.XfdfConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 <2\u00020\u0001:\u0002=>B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0015\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0015\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0018\u0010\u0012J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ#\u0010\u001e\u001a\u00020\n2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\r¢\u0006\u0004\b!\u0010\u0010J\u0015\u0010$\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\n¢\u0006\u0004\b&\u0010\u0012R\"\u0010(\u001a\u00020'8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010/\u001a\u00020.8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R \u0010;\u001a\u0002058\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b6\u00107\u0012\u0004\b:\u0010\u0012\u001a\u0004\b8\u00109¨\u0006?"}, m2722d2 = {"Lcom/inmobi/ads/InMobiInterstitial;", "", "Landroid/content/Context;", "context", "", "placementId", "Lcom/inmobi/ads/listeners/InterstitialAdEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Landroid/content/Context;JLcom/inmobi/ads/listeners/InterstitialAdEventListener;)V", "", InAppPurchaseConstants.METHOD_SET_LISTENER, "(Lcom/inmobi/ads/listeners/InterstitialAdEventListener;)V", "", "keywords", "setKeywords", "(Ljava/lang/String;)V", "getSignals", "()V", "", "response", "load", "([B)V", "loadAdUnit", "show", "", "isReady", "()Z", "", "extras", "setExtras", "(Ljava/util/Map;)V", "contentUrl", "setContentUrl", "Lcom/inmobi/ads/WatermarkData;", "watermarkData", "setWatermarkData", "(Lcom/inmobi/ads/WatermarkData;)V", "disableHardwareAcceleration", "Lcom/inmobi/media/L5;", "mPubListener", "Lcom/inmobi/media/L5;", "getMPubListener$media_release", "()Lcom/inmobi/media/L5;", "setMPubListener$media_release", "(Lcom/inmobi/media/L5;)V", "Lcom/inmobi/media/S5;", "mAdManager", "Lcom/inmobi/media/S5;", "getMAdManager$media_release", "()Lcom/inmobi/media/S5;", "setMAdManager$media_release", "(Lcom/inmobi/media/S5;)V", "Lcom/inmobi/ads/PreloadManager;", XfdfConstants.f2852F, "Lcom/inmobi/ads/PreloadManager;", "getPreloadManager", "()Lcom/inmobi/ads/PreloadManager;", "getPreloadManager$annotations", "preloadManager", "Companion", "com/inmobi/media/d5", "a", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiInterstitial {
    public static final C3117d5 Companion = new C3117d5();

    /* JADX INFO: renamed from: a */
    public final Context f757a;

    /* JADX INFO: renamed from: b */
    public boolean f758b;

    /* JADX INFO: renamed from: c */
    public final WeakReference f759c;

    /* JADX INFO: renamed from: d */
    public final C3048Y9 f760d;

    /* JADX INFO: renamed from: e */
    public final C2673a f761e;

    /* JADX INFO: renamed from: f */
    public final C2680f f762f;
    public C2960S5 mAdManager;
    public AbstractC2858L5 mPubListener;

    /* JADX INFO: renamed from: com.inmobi.ads.InMobiInterstitial$a */
    @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m2722d2 = {"Lcom/inmobi/ads/InMobiInterstitial$a;", "Lcom/inmobi/media/R5;", "Lcom/inmobi/ads/InMobiInterstitial;", "interstitial", "<init>", "(Lcom/inmobi/ads/InMobiInterstitial;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", "", "onAdFetchSuccessful", "(Lcom/inmobi/ads/AdMetaInfo;)V", "Lcom/inmobi/ads/InMobiAdRequestStatus;", "status", "onAdFetchFailed", "(Lcom/inmobi/ads/InMobiAdRequestStatus;)V", "", "getType", "()B", "type", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class C2673a extends C2946R5 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2673a(InMobiInterstitial interstitial) {
            super(interstitial);
            Intrinsics.checkNotNullParameter(interstitial, "interstitial");
        }

        @Override // com.inmobi.media.C2946R5, com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.media.C2946R5, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(InMobiAdRequestStatus status) {
            AbstractC2858L5 mPubListener$media_release;
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiInterstitial inMobiInterstitial = this.f1496a.get();
            if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
                return;
            }
            mPubListener$media_release.mo1135a(inMobiInterstitial, status);
        }

        @Override // com.inmobi.media.C2946R5, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            super.onAdFetchSuccessful(info);
            InMobiInterstitial inMobiInterstitial = this.f1496a.get();
            if (inMobiInterstitial != null) {
                try {
                    inMobiInterstitial.getMAdManager$media_release().m1791D();
                } catch (IllegalStateException e) {
                    String strAccess$getTAG$cp = InMobiInterstitial.access$getTAG$cp();
                    Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
                    AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$cp, e.getMessage());
                    inMobiInterstitial.getMPubListener$media_release().mo1135a(inMobiInterstitial, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                }
            }
        }
    }

    public InMobiInterstitial(Context context, long j, InterstitialAdEventListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3048Y9 c3048y9 = new C3048Y9();
        this.f760d = c3048y9;
        this.f761e = new C2673a(this);
        this.f762f = new C2680f(this);
        if (!C2849Kb.m1265q()) {
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            throw new SdkNotInitializedException("InMobiInterstitial");
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.f757a = applicationContext;
        c3048y9.f1688a = j;
        this.f759c = new WeakReference(context);
        setMPubListener$media_release(new C2873M5(listener));
        setMAdManager$media_release(new C2960S5());
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        return "InMobiInterstitial";
    }

    @Deprecated(message = "Preload Flow is deprecated. Use load() instead")
    public static /* synthetic */ void getPreloadManager$annotations() {
    }

    public final void disableHardwareAcceleration() {
        this.f760d.f1691d = true;
    }

    public final C2960S5 getMAdManager$media_release() {
        C2960S5 c2960s5 = this.mAdManager;
        if (c2960s5 != null) {
            return c2960s5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAdManager");
        return null;
    }

    public final AbstractC2858L5 getMPubListener$media_release() {
        AbstractC2858L5 abstractC2858L5 = this.mPubListener;
        if (abstractC2858L5 != null) {
            return abstractC2858L5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mPubListener");
        return null;
    }

    public final PreloadManager getPreloadManager() {
        return this.f762f;
    }

    @Deprecated(message = "Use [InMobiSdk.getToken] instead")
    public final void getSignals() {
        this.f760d.f1692e = "AB";
        C2960S5 mAdManager$media_release = getMAdManager$media_release();
        C3048Y9 c3048y9 = this.f760d;
        Context context = this.f757a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        mAdManager$media_release.m1795a(c3048y9, context, false, "getToken");
        getMAdManager$media_release().m1353a(this.f761e);
    }

    public final boolean isReady() {
        boolean zM1789B = getMAdManager$media_release().m1789B();
        if (!zM1789B) {
            getMAdManager$media_release().m1792E();
        }
        return zM1789B;
    }

    public final void load(byte[] response) {
        this.f758b = true;
        this.f760d.f1692e = "AB";
        C2960S5 mAdManager$media_release = getMAdManager$media_release();
        C3048Y9 c3048y9 = this.f760d;
        Context context = this.f757a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        C2960S5.m1780a(mAdManager$media_release, c3048y9, context, false, null, 12, null);
        if (Build.VERSION.SDK_INT >= 29) {
            AbstractC2886N3.m1385b((Context) this.f759c.get());
        }
        getMAdManager$media_release().mo880a(response, this.f761e);
    }

    public final void loadAdUnit() {
        getMAdManager$media_release().m1796c(this.f761e);
    }

    public final void setContentUrl(String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        this.f760d.f1693f = contentUrl;
    }

    public final void setExtras(Map<String, String> extras) {
        if (extras != null) {
            C2864Lb.m1314a(extras.get("tp"));
            C2864Lb.m1316b(extras.get("tp-v"));
        }
        this.f760d.f1690c = extras;
    }

    public final void setKeywords(String keywords) {
        this.f760d.f1689b = keywords;
    }

    public final void setListener(InterstitialAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        setMPubListener$media_release(new C2873M5(listener));
    }

    public final void setMAdManager$media_release(C2960S5 c2960s5) {
        Intrinsics.checkNotNullParameter(c2960s5, "<set-?>");
        this.mAdManager = c2960s5;
    }

    public final void setMPubListener$media_release(AbstractC2858L5 abstractC2858L5) {
        Intrinsics.checkNotNullParameter(abstractC2858L5, "<set-?>");
        this.mPubListener = abstractC2858L5;
    }

    public final void setWatermarkData(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        getMAdManager$media_release().mo1352a(watermarkData);
    }

    public final void show() {
        try {
            if (this.f758b) {
                getMAdManager$media_release().m1793F();
            } else {
                Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
                AbstractC2814I6.m1170a((byte) 1, "InMobiInterstitial", "load() must be called before trying to show the ad");
            }
        } catch (Exception e) {
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "InMobiInterstitial", "Unable to show ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    public final void load() {
        try {
            this.f758b = true;
            this.f760d.f1692e = "NonAB";
            C2960S5 mAdManager$media_release = getMAdManager$media_release();
            C3048Y9 c3048y9 = this.f760d;
            Context context = this.f757a;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContext");
                context = null;
            }
            C2960S5.m1780a(mAdManager$media_release, c3048y9, context, false, null, 12, null);
            if (Build.VERSION.SDK_INT >= 29) {
                AbstractC2886N3.m1385b((Context) this.f759c.get());
            }
            loadAdUnit();
        } catch (Exception e) {
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "InMobiInterstitial", "Unable to load ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue("InMobiInterstitial", "TAG");
            getMAdManager$media_release().mo879a((short) 2000);
            getMAdManager$media_release().mo878a(getMAdManager$media_release().mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
