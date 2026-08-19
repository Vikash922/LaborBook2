package com.inmobi.ads;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.AbstractC2886N3;
import com.inmobi.media.AbstractC3102c5;
import com.inmobi.media.AbstractC3180h8;
import com.inmobi.media.AbstractC3374u7;
import com.inmobi.media.C2725C7;
import com.inmobi.media.C2849Kb;
import com.inmobi.media.C2864Lb;
import com.inmobi.media.C3048Y9;
import com.inmobi.media.C3162g5;
import com.inmobi.media.C3334rc;
import com.inmobi.media.C3389v7;
import com.inmobi.media.C3390v8;
import com.inmobi.media.C3402w5;
import com.inmobi.media.InterfaceC3147f5;
import com.itextpdf.svg.SvgConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u0000 V2\u00020\u0001:\u0003VWXB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\f¢\u0006\u0004\b\u001f\u0010\u0015J\r\u0010 \u001a\u00020\f¢\u0006\u0004\b \u0010\u0015J\r\u0010!\u001a\u00020\f¢\u0006\u0004\b!\u0010\u0015J5\u0010(\u001a\u0004\u0018\u00010\"2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\r\u0010*\u001a\u00020\f¢\u0006\u0004\b*\u0010\u0015J\r\u0010+\u001a\u00020\n¢\u0006\u0004\b+\u0010,J#\u00100\u001a\u00020\f2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020.\u0018\u00010-¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\u00020\f2\b\u00102\u001a\u0004\u0018\u00010.¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\f2\b\u00105\u001a\u0004\u0018\u00010.¢\u0006\u0004\b6\u00104J\r\u00107\u001a\u00020\f¢\u0006\u0004\b7\u0010\u0015R$\u0010?\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0013\u0010C\u001a\u0004\u0018\u00010@8F¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0013\u0010F\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0013\u0010H\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\bG\u0010ER\u0013\u0010J\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\bI\u0010ER\u0013\u0010L\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\bK\u0010ER\u0013\u0010N\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\bM\u0010ER\u0011\u0010R\u001a\u00020O8F¢\u0006\u0006\u001a\u0004\bP\u0010QR\u0011\u0010S\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bS\u0010,R\u0013\u0010T\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bT\u0010U¨\u0006Y"}, m2722d2 = {"Lcom/inmobi/ads/InMobiNative;", "", "Landroid/content/Context;", "context", "", "placementId", "Lcom/inmobi/ads/listeners/NativeAdEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Landroid/content/Context;JLcom/inmobi/ads/listeners/NativeAdEventListener;)V", "", "mPrimaryViewReturned", "", "setPrimaryViewReturned", "(Z)V", InAppPurchaseConstants.METHOD_SET_LISTENER, "(Lcom/inmobi/ads/listeners/NativeAdEventListener;)V", "Lcom/inmobi/ads/listeners/VideoEventListener;", "setVideoEventListener", "(Lcom/inmobi/ads/listeners/VideoEventListener;)V", "getSignals", "()V", "", "response", "load", "([B)V", "(Landroid/content/Context;)V", "Lcom/inmobi/ads/InMobiNative$LockScreenListener;", "lockScreenListener", "showOnLockScreen", "(Lcom/inmobi/ads/InMobiNative$LockScreenListener;)V", "takeAction", "pause", "resume", "Landroid/view/View;", "convertView", "Landroid/view/ViewGroup;", "parent", "", "viewWidthInPixels", "getPrimaryViewOfWidth", "(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;", "reportAdClickAndOpenLandingPage", "isReady", "()Z", "", "", "extras", "setExtras", "(Ljava/util/Map;)V", "keywords", "setKeywords", "(Ljava/lang/String;)V", "contentUrl", "setContentUrl", "destroy", "Lcom/inmobi/media/u7;", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "Lcom/inmobi/media/u7;", "getMPubListener", "()Lcom/inmobi/media/u7;", "setMPubListener", "(Lcom/inmobi/media/u7;)V", "mPubListener", "Lorg/json/JSONObject;", "getCustomAdContent", "()Lorg/json/JSONObject;", "customAdContent", "getAdTitle", "()Ljava/lang/String;", "adTitle", "getAdDescription", "adDescription", "getAdIconUrl", "adIconUrl", "getAdLandingPageUrl", "adLandingPageUrl", "getAdCtaText", "adCtaText", "", "getAdRating", "()F", "adRating", "isAppDownload", "isVideo", "()Ljava/lang/Boolean;", "Companion", "LockScreenListener", "NativeCallbacks", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiNative {

    /* JADX INFO: renamed from: j */
    public static final String f768j = "InMobiNative";

    /* JADX INFO: renamed from: a */
    public final C3390v8 f769a;

    /* JADX INFO: renamed from: b */
    public final NativeCallbacks f770b;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public AbstractC3374u7 mPubListener;

    /* JADX INFO: renamed from: d */
    public VideoEventListener f772d;

    /* JADX INFO: renamed from: e */
    public WeakReference f773e;

    /* JADX INFO: renamed from: f */
    public boolean f774f;

    /* JADX INFO: renamed from: g */
    public final C3048Y9 f775g;

    /* JADX INFO: renamed from: h */
    public WeakReference f776h;

    /* JADX INFO: renamed from: i */
    public LockScreenListener f777i;

    @Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, m2722d2 = {"Lcom/inmobi/ads/InMobiNative$LockScreenListener;", "", "onActionRequired", "", "nativeAd", "Lcom/inmobi/ads/InMobiNative;", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public interface LockScreenListener {
        void onActionRequired(InMobiNative nativeAd);
    }

    @Metadata(m2721d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\bJ\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0014\u0010\fJ\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\bJ#\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\bJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\bJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\bJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\rH\u0016¢\u0006\u0004\b(\u0010\u0010J\u0019\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102¨\u00064"}, m2722d2 = {"Lcom/inmobi/ads/InMobiNative$NativeCallbacks;", "Lcom/inmobi/media/h8;", "Lcom/inmobi/ads/InMobiNative;", "inMobiNative", "<init>", "(Lcom/inmobi/ads/InMobiNative;)V", "", "resetHasGivenCallbackFlag", "()V", "Lcom/inmobi/ads/AdMetaInfo;", "info", "onAdFetchSuccessful", "(Lcom/inmobi/ads/AdMetaInfo;)V", "Lcom/inmobi/ads/InMobiAdRequestStatus;", "status", "onAdFetchFailed", "(Lcom/inmobi/ads/InMobiAdRequestStatus;)V", "onAdLoadSucceeded", "onAdLoadFailed", "onAdWillDisplay", "onAdDisplayed", "onAdDismissed", "", "", NativeProtocol.WEB_DIALOG_PARAMS, "onAdClicked", "(Ljava/util/Map;)V", "onUserLeftApplication", "onAdImpressed", "onVideoCompleted", "onVideoSkipped", "", "isMuted", "onAudioStateChanged", "(Z)V", "", "request", "onRequestPayloadCreated", "([B)V", "reason", "onRequestPayloadCreationFailed", "Lcom/inmobi/media/rc;", "telemetryOnAdImpression", "onAdImpression", "(Lcom/inmobi/media/rc;)V", SvgConstants.Attributes.PATH_DATA_REL_BEARING, SvgConstants.Attributes.PATH_DATA_CLOSE_PATH, "mHasGivenCallback", "", "getType", "()B", "type", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class NativeCallbacks extends AbstractC3180h8 {

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private boolean mHasGivenCallback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NativeCallbacks(InMobiNative inMobiNative) {
            super(inMobiNative);
            Intrinsics.checkNotNullParameter(inMobiNative, "inMobiNative");
            this.mHasGivenCallback = true;
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdClicked(Map<Object, ? extends Object> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            InMobiNative ad = getNativeRef().get();
            if (ad == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = ad.getMPubListener();
                if (mPubListener != null) {
                    Intrinsics.checkNotNullParameter(ad, "ad");
                    ((C3389v7) mPubListener).f2684a.onAdClicked(ad);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdDismissed() {
            InMobiNative ad = getNativeRef().get();
            if (ad == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = ad.getMPubListener();
                if (mPubListener != null) {
                    Intrinsics.checkNotNullParameter(ad, "ad");
                    ((C3389v7) mPubListener).f2684a.onAdFullScreenDismissed(ad);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdDisplayed(AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            InMobiNative ad = getNativeRef().get();
            if (ad == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = ad.getMPubListener();
                if (mPubListener != null) {
                    Intrinsics.checkNotNullParameter(ad, "ad");
                    ((C3389v7) mPubListener).f2684a.onAdFullScreenDisplayed(ad);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            onAdLoadFailed(status);
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    mPubListener.mo1134a(inMobiNative, info);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdImpressed() {
            InMobiNative ad = getNativeRef().get();
            if (ad == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = ad.getMPubListener();
                if (mPubListener != null) {
                    Intrinsics.checkNotNullParameter(ad, "ad");
                    ((C3389v7) mPubListener).f2684a.onAdImpressed(ad);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdImpression(C3334rc telemetryOnAdImpression) {
            InMobiNative inMobiNative = getNativeRef().get();
            AbstractC3374u7 mPubListener = inMobiNative != null ? inMobiNative.getMPubListener() : null;
            if (mPubListener != null) {
                mPubListener.mo1133a(inMobiNative);
                if (telemetryOnAdImpression != null) {
                    telemetryOnAdImpression.m2385d();
                    return;
                }
                return;
            }
            String str = InMobiNative.f768j;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            if (telemetryOnAdImpression != null) {
                telemetryOnAdImpression.m2384c();
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdLoadFailed(InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                if (this.mHasGivenCallback) {
                    return;
                }
                this.mHasGivenCallback = true;
                AbstractC3374u7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    mPubListener.mo1135a(inMobiNative, status);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdLoadSucceeded(AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                if (this.mHasGivenCallback) {
                    return;
                }
                this.mHasGivenCallback = true;
                AbstractC3374u7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    mPubListener.mo1138b(inMobiNative, info);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdWillDisplay() {
            InMobiNative ad = getNativeRef().get();
            if (ad == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            LockScreenListener lockScreenListener = ad.f777i;
            if (lockScreenListener != null) {
                lockScreenListener.onActionRequired(ad);
            }
            AbstractC3374u7 mPubListener = ad.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad, "ad");
                ((C3389v7) mPubListener).f2684a.onAdFullScreenWillDisplay(ad);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAudioStateChanged(boolean isMuted) {
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                VideoEventListener videoEventListener = inMobiNative.f772d;
                if (videoEventListener != null) {
                    videoEventListener.onAudioStateChanged(inMobiNative, isMuted);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onRequestPayloadCreated(byte[] request) {
            Intrinsics.checkNotNullParameter(request, "request");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    ((C3389v7) mPubListener).f2684a.onRequestPayloadCreated(request);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onRequestPayloadCreationFailed(InMobiAdRequestStatus reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                AbstractC3374u7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    Intrinsics.checkNotNullParameter(reason, "status");
                    ((C3389v7) mPubListener).f2684a.onRequestPayloadCreationFailed(reason);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onUserLeftApplication() {
            InMobiNative ad = getNativeRef().get();
            if (ad == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            LockScreenListener lockScreenListener = ad.f777i;
            if (lockScreenListener != null) {
                lockScreenListener.onActionRequired(ad);
            }
            AbstractC3374u7 mPubListener = ad.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad, "ad");
                ((C3389v7) mPubListener).f2684a.onUserWillLeaveApplication(ad);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onVideoCompleted() {
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                VideoEventListener videoEventListener = inMobiNative.f772d;
                if (videoEventListener != null) {
                    videoEventListener.onVideoCompleted(inMobiNative);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onVideoSkipped() {
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f768j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2814I6.m1170a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else {
                VideoEventListener videoEventListener = inMobiNative.f772d;
                if (videoEventListener != null) {
                    videoEventListener.onVideoSkipped(inMobiNative);
                }
            }
        }

        public final void resetHasGivenCallbackFlag() {
            this.mHasGivenCallback = false;
        }
    }

    public InMobiNative(Context context, long j, NativeAdEventListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3048Y9 c3048y9 = new C3048Y9();
        this.f775g = c3048y9;
        if (!C2849Kb.m1265q()) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            throw new SdkNotInitializedException(TAG);
        }
        c3048y9.f1688a = j;
        this.f776h = new WeakReference(context);
        this.mPubListener = new C3389v7(listener);
        NativeCallbacks nativeCallbacks = new NativeCallbacks(this);
        this.f770b = nativeCallbacks;
        this.f769a = new C3390v8(nativeCallbacks);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m813a(boolean z) {
        if (!z && this.mPubListener == null) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Listener supplied is null, your call is ignored.");
            return false;
        }
        if (this.f776h.get() != null) {
            return true;
        }
        String TAG2 = f768j;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        AbstractC2814I6.m1170a((byte) 1, TAG2, "Context supplied is null, your call is ignored.");
        return false;
    }

    public final void destroy() {
        View view;
        try {
            WeakReference weakReference = this.f773e;
            if (weakReference == null) {
                view = null;
            } else {
                Intrinsics.checkNotNull(weakReference);
                view = (View) weakReference.get();
            }
            if (view != null) {
                ((ViewGroup) view).removeAllViews();
            }
            this.f769a.m2532x();
            this.mPubListener = null;
            this.f772d = null;
            this.f774f = false;
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Failed to destroy ad; SDK encountered an unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    public final String getAdCtaText() {
        try {
            return this.f769a.m2533y();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get the ctaText; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final String getAdDescription() {
        try {
            return this.f769a.m2534z();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get the description; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final String getAdIconUrl() {
        try {
            return this.f769a.m2516A();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get the iconUrl; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final String getAdLandingPageUrl() {
        try {
            return this.f769a.m2517B();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get the adLandingPageUrl; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final float getAdRating() {
        try {
            return this.f769a.m2518C();
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Could not get rating; SDK encountered an unexpected error");
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return 0.0f;
        }
    }

    public final String getAdTitle() {
        try {
            return this.f769a.m2519D();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get the ad title; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final JSONObject getCustomAdContent() {
        try {
            return this.f769a.m2520E();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get the ad customJson ; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final AbstractC3374u7 getMPubListener() {
        return this.mPubListener;
    }

    public final View getPrimaryViewOfWidth(Context context, View convertView, ViewGroup parent, int viewWidthInPixels) {
        try {
            if (context == null) {
                String TAG = f768j;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                AbstractC2814I6.m1170a((byte) 1, TAG, "View can not be rendered using null context");
                return null;
            }
            C2725C7 c2725c7 = this.f769a.mo886j() == null ? null : (C2725C7) this.f769a.mo886j();
            if (c2725c7 == null) {
                String TAG2 = f768j;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                AbstractC2814I6.m1170a((byte) 1, TAG2, "InMobiNative is not initialized. Ignoring InMobiNative.getPrimaryView()");
                return null;
            }
            this.f776h = new WeakReference(context);
            c2725c7.mo903a(context);
            Intrinsics.checkNotNull(parent);
            WeakReference weakReference = new WeakReference(c2725c7.m901a(convertView, parent, viewWidthInPixels));
            this.f773e = weakReference;
            View view = (View) weakReference.get();
            if (view != null) {
                this.f774f = true;
                return view;
            }
            String TAG3 = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            return null;
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Could not pause ad; SDK encountered an unexpected error");
            String TAG4 = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            return null;
        }
    }

    @Deprecated(message = "Use [InMobiSdk.getToken] instead.")
    public final void getSignals() {
        if (m813a(false)) {
            this.f770b.resetHasGivenCallbackFlag();
            Context context = (Context) this.f776h.get();
            if (context != null) {
                this.f769a.m2531a(this.f775g, context, false, "getToken");
            }
            this.f769a.m1353a(this.f770b);
        }
    }

    public final boolean isAppDownload() {
        try {
            return this.f769a.m2522G();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get isAppDownload; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return false;
        }
    }

    public final boolean isReady() {
        return this.f769a.m2521F();
    }

    public final Boolean isVideo() {
        try {
            return this.f769a.m2524I();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not get isVideo; SDK encountered unexpected error");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    public final void load(byte[] response) {
        if (m813a(false)) {
            if (Build.VERSION.SDK_INT >= 29) {
                AbstractC2886N3.m1385b((Context) this.f776h.get());
            }
            this.f775g.f1692e = "AB";
            Context context = (Context) this.f776h.get();
            if (context != null) {
                this.f769a.m2531a(this.f775g, context, true, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE);
            }
            this.f770b.resetHasGivenCallbackFlag();
            this.f769a.mo880a(response, this.f770b);
        }
    }

    public final void pause() {
        try {
            this.f769a.m2526K();
        } catch (Exception unused) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not pause ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    public final void reportAdClickAndOpenLandingPage() {
        try {
            this.f769a.m2527L();
        } catch (Exception e) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "reportAdClickAndOpenLandingPage failed; SDK encountered unexpected error");
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    public final void resume() {
        try {
            this.f769a.m2528M();
        } catch (Exception unused) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "Could not resume ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    public final void setContentUrl(String contentUrl) {
        this.f775g.f1693f = contentUrl;
    }

    public final void setExtras(Map<String, String> extras) {
        if (extras != null) {
            C2864Lb.m1314a(extras.get("tp"));
            C2864Lb.m1316b(extras.get("tp-v"));
        }
        this.f775g.f1690c = extras;
    }

    public final void setKeywords(String keywords) {
        this.f775g.f1689b = keywords;
    }

    public final void setListener(NativeAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mPubListener = new C3389v7(listener);
    }

    public final void setMPubListener(AbstractC3374u7 abstractC3374u7) {
        this.mPubListener = abstractC3374u7;
    }

    public final void setPrimaryViewReturned(boolean mPrimaryViewReturned) {
        this.f774f = mPrimaryViewReturned;
    }

    public final void setVideoEventListener(VideoEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f772d = listener;
    }

    public final void showOnLockScreen(LockScreenListener lockScreenListener) {
        Intrinsics.checkNotNullParameter(lockScreenListener, "lockScreenListener");
        if (this.f776h.get() == null) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "InMobiNative is not initialized. Provided context is null. Ignoring showOnLockScreen");
            return;
        }
        try {
            C3390v8 c3390v8 = this.f769a;
            C3048Y9 c3048y9 = this.f775g;
            Object obj = this.f776h.get();
            Intrinsics.checkNotNull(obj);
            c3390v8.m2530a(c3048y9, (Context) obj);
            this.f777i = lockScreenListener;
        } catch (Exception unused) {
            String TAG2 = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG2, "SDK encountered unexpected error in showOnLockScreen");
        }
    }

    public final void takeAction() {
        try {
            this.f769a.m2529N();
        } catch (Exception unused) {
            String TAG = f768j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, "SDK encountered unexpected error in takeAction");
        }
    }

    public final void load() {
        try {
            if (m813a(true)) {
                this.f770b.resetHasGivenCallbackFlag();
                if (this.f774f) {
                    C3390v8 c3390v8 = this.f769a;
                    c3390v8.mo878a(c3390v8.mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
                    String TAG = f768j;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    AbstractC2814I6.m1170a((byte) 1, TAG, "You can call load() on an instance of InMobiNative only once if the ad request has been successful. Ignoring InMobiNative.load()");
                    return;
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    AbstractC2886N3.m1385b((Context) this.f776h.get());
                }
                this.f775g.f1692e = "NonAB";
                Context context = (Context) this.f776h.get();
                if (context != null) {
                    this.f769a.m2531a(this.f775g, context, true, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE);
                }
                this.f769a.m2525J();
            }
        } catch (Exception e) {
            this.f769a.mo879a((short) 2192);
            AbstractC3374u7 abstractC3374u7 = this.mPubListener;
            if (abstractC3374u7 != null) {
                abstractC3374u7.mo1135a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
            InterfaceC3147f5 interfaceC3147f5M1367p = this.f769a.m1367p();
            if (interfaceC3147f5M1367p != null) {
                String TAG2 = f768j;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f5M1367p).m2148a(TAG2, "Load failed with unexpected error: ", e);
            }
        }
    }

    public final void load(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (m813a(true)) {
            this.f776h = new WeakReference(context);
            load();
        }
    }
}
