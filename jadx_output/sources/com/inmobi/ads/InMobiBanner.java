package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.WindowInsets;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.banner.AudioListener;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.BannerAdEventListener;
import com.inmobi.media.AbstractC2764F1;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.AbstractC2886N3;
import com.inmobi.media.AbstractC3154fc;
import com.inmobi.media.AbstractC3429y2;
import com.inmobi.media.C2779G1;
import com.inmobi.media.C2849Kb;
import com.inmobi.media.C2864Lb;
import com.inmobi.media.C2869M1;
import com.inmobi.media.C2901O3;
import com.inmobi.media.C2914P1;
import com.inmobi.media.C3043Y4;
import com.inmobi.media.C3048Y9;
import com.inmobi.media.C3057Z4;
import com.inmobi.media.C3162g5;
import com.inmobi.media.EnumC2704B1;
import com.inmobi.media.HandlerC2884N1;
import com.inmobi.media.InterfaceC3147f5;
import com.inmobi.media.ViewTreeObserverOnGlobalLayoutListenerC3072a5;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u007f2\u00020\u0001:\u0005\u0080\u0001R\u0081\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0010\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0010\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0000¢\u0006\u0004\b\u0012\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0010\u0010\u0014J#\u0010\u0018\u001a\u00020\u000b2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u000b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u0015\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010%\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0015\u0010)\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u0015\u0010-\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.J\r\u0010/\u001a\u00020\u000b¢\u0006\u0004\b/\u0010\rJ\u000f\u00100\u001a\u00020\u000bH\u0014¢\u0006\u0004\b0\u0010\rJ\u000f\u00101\u001a\u00020\u000bH\u0014¢\u0006\u0004\b1\u0010\rJ\u0015\u00104\u001a\u00020\u000b2\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105J!\u00108\u001a\u00020\u000b2\b\b\u0001\u00106\u001a\u00020'2\b\b\u0001\u00107\u001a\u00020'¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u000bH\u0007¢\u0006\u0004\b:\u0010\rJ\u001f\u0010>\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020'H\u0014¢\u0006\u0004\b>\u0010?J\u0017\u0010A\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020#H\u0016¢\u0006\u0004\bA\u0010&J\u000f\u0010C\u001a\u00020\u000bH\u0000¢\u0006\u0004\bB\u0010\rJ\u000f\u0010E\u001a\u00020\u000bH\u0001¢\u0006\u0004\bD\u0010\rJ\r\u0010F\u001a\u00020\u000b¢\u0006\u0004\bF\u0010\rJ\r\u0010G\u001a\u00020\u000b¢\u0006\u0004\bG\u0010\rJ\r\u0010H\u001a\u00020\b¢\u0006\u0004\bH\u0010IJ\u0015\u0010L\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020J¢\u0006\u0004\bL\u0010MJ\r\u0010N\u001a\u00020#¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u000bH\u0007¢\u0006\u0004\bP\u0010\rR$\u0010X\u001a\u0004\u0018\u00010Q8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR$\u0010^\u001a\u0004\u0018\u00010J8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010MR\"\u0010f\u001a\u00020_8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR$\u0010n\u001a\u0004\u0018\u00010g8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u001a\u0010t\u001a\u00020o8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bp\u0010q\u001a\u0004\br\u0010sR \u0010{\u001a\u00020u8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bv\u0010w\u0012\u0004\bz\u0010\r\u001a\u0004\bx\u0010yR\u0014\u0010~\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b|\u0010}¨\u0006\u0082\u0001"}, m2722d2 = {"Lcom/inmobi/ads/InMobiBanner;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "placementId", "(Landroid/content/Context;J)V", "", "getSignals", "()V", "", "response", "load", "([B)V", "refreshBanner$media_release", "refreshBanner", "(Landroid/content/Context;)V", "", "", "extras", "setExtras", "(Ljava/util/Map;)V", "keywords", "setKeywords", "(Ljava/lang/String;)V", "contentUrl", "setContentUrl", "Lcom/inmobi/ads/listeners/BannerAdEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, InAppPurchaseConstants.METHOD_SET_LISTENER, "(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V", "", CommonCssConstants.ENABLED, "setEnableAutoRefresh", "(Z)V", "", "refreshInterval", "setRefreshInterval", "(I)V", "Lcom/inmobi/ads/InMobiBanner$AnimationType;", "animationType", "setAnimationType", "(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V", "disableHardwareAcceleration", "onAttachedToWindow", "onDetachedFromWindow", "Lcom/inmobi/ads/WatermarkData;", "watermarkData", "setWatermarkData", "(Lcom/inmobi/ads/WatermarkData;)V", "widthInDp", "heightInDp", "setBannerSize", "(II)V", "setupBannerSizeObserver", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "hasWindowFocus", "onWindowFocusChanged", "scheduleRefresh$media_release", "scheduleRefresh", "swapAdUnitsAndDisplayAd$media_release", "swapAdUnitsAndDisplayAd", "resume", "pause", "getPlacementId", "()J", "Lcom/inmobi/ads/banner/AudioListener;", "audioListener", "setAudioListener", "(Lcom/inmobi/ads/banner/AudioListener;)V", "isAudioAd", "()Z", "destroy", "Lcom/inmobi/media/F1;", "a", "Lcom/inmobi/media/F1;", "getMPubListener$media_release", "()Lcom/inmobi/media/F1;", "setMPubListener$media_release", "(Lcom/inmobi/media/F1;)V", "mPubListener", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "Lcom/inmobi/ads/banner/AudioListener;", "getMAudioListener$media_release", "()Lcom/inmobi/ads/banner/AudioListener;", "setMAudioListener$media_release", "mAudioListener", "Lcom/inmobi/media/B1;", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "Lcom/inmobi/media/B1;", "getAudioStatusInternal$media_release", "()Lcom/inmobi/media/B1;", "setAudioStatusInternal$media_release", "(Lcom/inmobi/media/B1;)V", "audioStatusInternal", "Lcom/inmobi/media/P1;", SvgConstants.Attributes.f3323D, "Lcom/inmobi/media/P1;", "getMAdManager$media_release", "()Lcom/inmobi/media/P1;", "setMAdManager$media_release", "(Lcom/inmobi/media/P1;)V", "mAdManager", "Lcom/inmobi/media/Y9;", "n", "Lcom/inmobi/media/Y9;", "getMPubSettings$media_release", "()Lcom/inmobi/media/Y9;", "mPubSettings", "Lcom/inmobi/ads/PreloadManager;", "o", "Lcom/inmobi/ads/PreloadManager;", "getPreloadManager", "()Lcom/inmobi/ads/PreloadManager;", "getPreloadManager$annotations", "preloadManager", "getFrameSizeString", "()Ljava/lang/String;", "frameSizeString", "Companion", "AnimationType", "com/inmobi/media/Y4", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiBanner extends RelativeLayout {
    public static final C3043Y4 Companion = new C3043Y4();

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public AbstractC2764F1 mPubListener;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public AudioListener mAudioListener;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public EnumC2704B1 audioStatusInternal;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public C2914P1 mAdManager;

    /* JADX INFO: renamed from: e */
    public final C2672a f746e;

    /* JADX INFO: renamed from: f */
    public int f747f;

    /* JADX INFO: renamed from: g */
    public boolean f748g;

    /* JADX INFO: renamed from: h */
    public final HandlerC2884N1 f749h;

    /* JADX INFO: renamed from: i */
    public int f750i;

    /* JADX INFO: renamed from: j */
    public int f751j;

    /* JADX INFO: renamed from: k */
    public AnimationType f752k;

    /* JADX INFO: renamed from: l */
    public long f753l;

    /* JADX INFO: renamed from: m */
    public WeakReference f754m;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    public final C3048Y9 mPubSettings;

    /* JADX INFO: renamed from: o */
    public final C2679e f756o;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/inmobi/ads/InMobiBanner$AnimationType;", "", "(Ljava/lang/String;I)V", "ANIMATION_OFF", "ROTATE_HORIZONTAL_AXIS", "ANIMATION_ALPHA", "ROTATE_VERTICAL_AXIS", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class AnimationType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AnimationType[] $VALUES;
        public static final AnimationType ANIMATION_OFF = new AnimationType("ANIMATION_OFF", 0);
        public static final AnimationType ROTATE_HORIZONTAL_AXIS = new AnimationType("ROTATE_HORIZONTAL_AXIS", 1);
        public static final AnimationType ANIMATION_ALPHA = new AnimationType("ANIMATION_ALPHA", 2);
        public static final AnimationType ROTATE_VERTICAL_AXIS = new AnimationType("ROTATE_VERTICAL_AXIS", 3);

        private static final /* synthetic */ AnimationType[] $values() {
            return new AnimationType[]{ANIMATION_OFF, ROTATE_HORIZONTAL_AXIS, ANIMATION_ALPHA, ROTATE_VERTICAL_AXIS};
        }

        static {
            AnimationType[] animationTypeArr$values = $values();
            $VALUES = animationTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(animationTypeArr$values);
        }

        private AnimationType(String str, int i) {
        }

        public static EnumEntries<AnimationType> getEntries() {
            return $ENTRIES;
        }

        public static AnimationType valueOf(String str) {
            return (AnimationType) Enum.valueOf(AnimationType.class, str);
        }

        public static AnimationType[] values() {
            return (AnimationType[]) $VALUES.clone();
        }
    }

    /* JADX INFO: renamed from: com.inmobi.ads.InMobiBanner$a */
    @Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m2722d2 = {"Lcom/inmobi/ads/InMobiBanner$a;", "Lcom/inmobi/media/M1;", "Lcom/inmobi/ads/InMobiBanner;", "banner", "<init>", "(Lcom/inmobi/ads/InMobiBanner;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", "", "onAdFetchSuccessful", "(Lcom/inmobi/ads/AdMetaInfo;)V", "Lcom/inmobi/ads/InMobiAdRequestStatus;", "status", "onAdFetchFailed", "(Lcom/inmobi/ads/InMobiAdRequestStatus;)V", "", "getType", "()B", "type", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class C2672a extends C2869M1 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2672a(InMobiBanner banner) {
            super(banner);
            Intrinsics.checkNotNullParameter(banner, "banner");
        }

        @Override // com.inmobi.media.C2869M1, com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.media.C2869M1, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiBanner inMobiBanner = m1330a().get();
            if (inMobiBanner == null) {
                return;
            }
            AbstractC2764F1 mPubListener = inMobiBanner.getMPubListener();
            if (mPubListener != null) {
                mPubListener.mo1135a(inMobiBanner, status);
            }
            inMobiBanner.scheduleRefresh$media_release();
        }

        @Override // com.inmobi.media.C2869M1, com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            super.onAdFetchSuccessful(info);
            InMobiBanner inMobiBanner = m1330a().get();
            if (inMobiBanner != null) {
                try {
                    C2914P1 mAdManager = inMobiBanner.getMAdManager();
                    if (mAdManager != null) {
                        mAdManager.m1439G();
                    }
                } catch (IllegalStateException e) {
                    String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
                    Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
                    AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$cp, e.getMessage());
                    AbstractC2764F1 mPubListener = inMobiBanner.getMPubListener();
                    if (mPubListener != null) {
                        mPubListener.mo1135a(inMobiBanner, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    }
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InMobiBanner(android.content.Context r14, android.util.AttributeSet r15) {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.InMobiBanner.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public static final boolean access$checkForRefreshRate(InMobiBanner inMobiBanner) {
        C2914P1 c2914p1;
        long j = inMobiBanner.f753l;
        if (j != 0 && (c2914p1 = inMobiBanner.mAdManager) != null && !c2914p1.m1447a(j)) {
            return false;
        }
        inMobiBanner.f753l = SystemClock.elapsedRealtime();
        return true;
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        return "InMobiBanner";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getFrameSizeString() {
        return new StringBuilder().append(this.f750i).append('x').append(this.f751j).toString();
    }

    @Deprecated(message = "Preload Flow is deprecated. Use load() instead")
    public static /* synthetic */ void getPreloadManager$annotations() {
    }

    /* JADX INFO: renamed from: a */
    public final boolean m811a(boolean z) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        InterfaceC3147f5 interfaceC3147f5M1367p2;
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null && (interfaceC3147f5M1367p2 = c2914p1.m1367p()) != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2152c("InMobiBanner", "checkStateAndLogError");
        }
        if (!z || this.mPubListener != null) {
            return true;
        }
        C2914P1 c2914p12 = this.mAdManager;
        if (c2914p12 != null && (interfaceC3147f5M1367p = c2914p12.m1367p()) != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2151b("InMobiBanner", "Listener supplied is null, Ignoring your call.");
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m812b() {
        return this.f750i > 0 && this.f751j > 0;
    }

    public final void destroy() {
        m806a();
        removeAllViews();
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null) {
            c2914p1.m1451z();
        }
        this.mPubListener = null;
    }

    public final void disableHardwareAcceleration() {
        this.mPubSettings.f1691d = true;
    }

    /* JADX INFO: renamed from: getAudioStatusInternal$media_release, reason: from getter */
    public final EnumC2704B1 getAudioStatusInternal() {
        return this.audioStatusInternal;
    }

    /* JADX INFO: renamed from: getMAdManager$media_release, reason: from getter */
    public final C2914P1 getMAdManager() {
        return this.mAdManager;
    }

    /* JADX INFO: renamed from: getMAudioListener$media_release, reason: from getter */
    public final AudioListener getMAudioListener() {
        return this.mAudioListener;
    }

    /* JADX INFO: renamed from: getMPubListener$media_release, reason: from getter */
    public final AbstractC2764F1 getMPubListener() {
        return this.mPubListener;
    }

    /* JADX INFO: renamed from: getMPubSettings$media_release, reason: from getter */
    public final C3048Y9 getMPubSettings() {
        return this.mPubSettings;
    }

    public final long getPlacementId() {
        return this.mPubSettings.f1688a;
    }

    public final PreloadManager getPreloadManager() {
        return this.f756o;
    }

    @Deprecated(message = "Use [InMobiSdk.getToken] instead")
    public final void getSignals() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        if (m811a(true)) {
            if (!m810a("getSignals()")) {
                this.f746e.onRequestPayloadCreationFailed(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR));
                return;
            }
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 == null || !c2914p1.m1436D()) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                m807a(context, "getToken");
            }
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 != null && (interfaceC3147f5M1367p = c2914p12.m1367p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((C3162g5) interfaceC3147f5M1367p).m2147a("InMobiBanner", "getSignals");
            }
            setEnableAutoRefresh(false);
            C2914P1 c2914p13 = this.mAdManager;
            if (c2914p13 != null) {
                c2914p13.m1353a(this.f746e);
            }
        }
    }

    public final boolean isAudioAd() {
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null) {
            return c2914p1.m1435C();
        }
        return false;
    }

    public final void load(byte[] response) {
        C2914P1 c2914p1;
        C2914P1 c2914p12;
        if (m811a(false)) {
            this.mPubSettings.f1692e = "AB";
            if (getLayoutParams() != null) {
                this.f750i = AbstractC3429y2.m2609b(getLayoutParams().width / AbstractC2886N3.m1384b());
                this.f751j = AbstractC3429y2.m2609b(getLayoutParams().height / AbstractC2886N3.m1384b());
            }
            C2914P1 c2914p13 = this.mAdManager;
            if (c2914p13 == null || !c2914p13.m1436D() || ((c2914p1 = this.mAdManager) != null && c2914p1.m1436D() && (c2914p12 = this.mAdManager) != null && c2914p12.m1368q() == 0)) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                m807a(context, "banner");
            }
            C2914P1 c2914p14 = this.mAdManager;
            if (c2914p14 != null) {
                c2914p14.mo887w();
            }
            m809a("load(byte[])", new C2678d(this, response));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        try {
            super.onAttachedToWindow();
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 != null) {
                c2914p1.m1438F();
            }
            if (getLayoutParams() != null) {
                this.f750i = AbstractC3429y2.m2609b(getLayoutParams().width / AbstractC2886N3.m1384b());
                this.f751j = AbstractC3429y2.m2609b(getLayoutParams().height / AbstractC2886N3.m1384b());
            }
            if (!m812b()) {
                setupBannerSizeObserver();
            }
            scheduleRefresh$media_release();
            if (Build.VERSION.SDK_INT >= 29) {
                C2901O3 c2901o3 = AbstractC2886N3.f1293a;
                Context context = getContext();
                WindowInsets rootWindowInsets = getRootWindowInsets();
                Intrinsics.checkNotNullExpressionValue(rootWindowInsets, "getRootWindowInsets(...)");
                AbstractC2886N3.m1379a(rootWindowInsets, context);
            }
        } catch (Exception e) {
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 == null || (interfaceC3147f5M1367p = c2914p12.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "InMobiBanner#onAttachedToWindow() handler threw unexpected error: ", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        try {
            super.onDetachedFromWindow();
            m806a();
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 != null) {
                c2914p1.m1442L();
            }
        } catch (Exception e) {
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 == null || (interfaceC3147f5M1367p = c2914p12.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "InMobiBanner.onDetachedFromWindow() handler threw unexpected error: ", e);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View changedView, int visibility) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        try {
            super.onVisibilityChanged(changedView, visibility);
            if (visibility == 0) {
                scheduleRefresh$media_release();
            } else {
                m806a();
            }
        } catch (Exception e) {
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 == null || (interfaceC3147f5M1367p = c2914p1.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error: ", e);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        try {
            super.onWindowFocusChanged(hasWindowFocus);
            if (hasWindowFocus) {
                scheduleRefresh$media_release();
            } else {
                m806a();
            }
        } catch (Exception e) {
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 == null || (interfaceC3147f5M1367p = c2914p1.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error: ", e);
        }
    }

    public final void pause() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        C2914P1 c2914p1;
        try {
            if (this.f754m != null || (c2914p1 = this.mAdManager) == null) {
                return;
            }
            c2914p1.m1437E();
        } catch (Exception e) {
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 == null || (interfaceC3147f5M1367p = c2914p12.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "SDK encountered unexpected error in pausing ad; ", e);
        }
    }

    public final void refreshBanner$media_release() {
        m808a(this.f746e, "NonAB", true);
    }

    public final void resume() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        C2914P1 c2914p1;
        try {
            if (this.f754m != null || (c2914p1 = this.mAdManager) == null) {
                return;
            }
            c2914p1.m1440H();
        } catch (Exception e) {
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 == null || (interfaceC3147f5M1367p = c2914p12.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "SDK encountered unexpected error in resuming ad; ", e);
        }
    }

    public final void scheduleRefresh$media_release() {
        HandlerC2884N1 handlerC2884N1;
        if (isShown() && hasWindowFocus()) {
            HandlerC2884N1 handlerC2884N12 = this.f749h;
            if (handlerC2884N12 != null) {
                handlerC2884N12.removeMessages(1);
            }
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 == null || !c2914p1.m1450y() || !this.f748g || (handlerC2884N1 = this.f749h) == null) {
                return;
            }
            handlerC2884N1.sendEmptyMessageDelayed(1, this.f747f * 1000);
        }
    }

    public final void setAnimationType(AnimationType animationType) {
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        this.f752k = animationType;
    }

    public final void setAudioListener(AudioListener audioListener) {
        Intrinsics.checkNotNullParameter(audioListener, "audioListener");
        this.mAudioListener = audioListener;
        EnumC2704B1 item = this.audioStatusInternal;
        if (item == EnumC2704B1.f841d || audioListener == null) {
            return;
        }
        EnumC2704B1.f839b.getClass();
        Intrinsics.checkNotNullParameter(item, "item");
        int iOrdinal = item.ordinal();
        audioListener.onAudioStatusChanged(this, iOrdinal != 1 ? iOrdinal != 2 ? AudioStatus.COMPLETED : AudioStatus.PAUSED : AudioStatus.PLAYING);
    }

    public final void setAudioStatusInternal$media_release(EnumC2704B1 enumC2704B1) {
        Intrinsics.checkNotNullParameter(enumC2704B1, "<set-?>");
        this.audioStatusInternal = enumC2704B1;
    }

    public final void setBannerSize(int widthInDp, int heightInDp) {
        this.f750i = widthInDp;
        this.f751j = heightInDp;
    }

    public final void setContentUrl(String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        this.mPubSettings.f1693f = contentUrl;
    }

    public final void setEnableAutoRefresh(boolean enabled) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        try {
            if (this.f748g == enabled) {
                return;
            }
            this.f748g = enabled;
            if (enabled) {
                scheduleRefresh$media_release();
            } else {
                m806a();
            }
        } catch (Exception e) {
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 == null || (interfaceC3147f5M1367p = c2914p1.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "Setting up auto-refresh failed with unexpected error: ", e);
        }
    }

    public final void setExtras(Map<String, String> extras) {
        if (extras != null) {
            C2864Lb.m1314a(extras.get("tp"));
            C2864Lb.m1316b(extras.get("tp-v"));
        }
        this.mPubSettings.f1690c = extras;
    }

    public final void setKeywords(String keywords) {
        this.mPubSettings.f1689b = keywords;
    }

    public final void setListener(BannerAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mPubListener = new C2779G1(listener);
    }

    public final void setMAdManager$media_release(C2914P1 c2914p1) {
        this.mAdManager = c2914p1;
    }

    public final void setMAudioListener$media_release(AudioListener audioListener) {
        this.mAudioListener = audioListener;
    }

    public final void setMPubListener$media_release(AbstractC2764F1 abstractC2764F1) {
        this.mPubListener = abstractC2764F1;
    }

    public final void setRefreshInterval(int refreshInterval) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        try {
            this.mPubSettings.f1692e = "NonAB";
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            m807a(context, "banner");
            C2914P1 c2914p1 = this.mAdManager;
            this.f747f = c2914p1 != null ? c2914p1.m1443a(refreshInterval, this.f747f) : 0;
        } catch (Exception e) {
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 == null || (interfaceC3147f5M1367p = c2914p12.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "Setting refresh interval failed with unexpected error: ", e);
        }
    }

    public final void setWatermarkData(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null) {
            c2914p1.mo1352a(watermarkData);
        }
    }

    public final void setupBannerSizeObserver() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC3072a5(this));
    }

    public final void swapAdUnitsAndDisplayAd$media_release() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null) {
            c2914p1.m1441K();
        }
        try {
            Animation animationM814a = AbstractC2676b.m814a(this.f752k, getWidth(), getHeight());
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 != null) {
                c2914p12.m1445a(this);
            }
            if (animationM814a != null) {
                startAnimation(animationM814a);
            }
        } catch (Exception e) {
            C2914P1 c2914p13 = this.mAdManager;
            if (c2914p13 == null || (interfaceC3147f5M1367p = c2914p13.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "Unexpected error while displaying Banner Ad : ", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m808a(PublisherCallbacks publisherCallbacks, String str, boolean z) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        InterfaceC3147f5 interfaceC3147f5M1367p2;
        InterfaceC3147f5 interfaceC3147f5M1367p3;
        InterfaceC3147f5 interfaceC3147f5M1367p4;
        InterfaceC3147f5 interfaceC3147f5M1367p5;
        try {
            this.mPubSettings.f1692e = str;
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 != null && c2914p1.m1434B()) {
                C2914P1 c2914p12 = this.mAdManager;
                if (c2914p12 != null) {
                    c2914p12.mo887w();
                }
                C2914P1 c2914p13 = this.mAdManager;
                if (c2914p13 != null && (interfaceC3147f5M1367p5 = c2914p13.m1367p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((C3162g5) interfaceC3147f5M1367p5).m2147a("InMobiBanner", "load called - placementType - " + str + ' ' + this);
                }
                C2914P1 c2914p14 = this.mAdManager;
                if (c2914p14 != null && (interfaceC3147f5M1367p4 = c2914p14.m1367p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((C3162g5) interfaceC3147f5M1367p4).m2151b("InMobiBanner", "load already in progress");
                }
                C2914P1 c2914p15 = this.mAdManager;
                if (c2914p15 != null) {
                    c2914p15.m1448b((short) 2169);
                }
                AbstractC2764F1 abstractC2764F1 = this.mPubListener;
                if (abstractC2764F1 != null) {
                    abstractC2764F1.mo1135a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
                }
                C2914P1 c2914p16 = this.mAdManager;
                if (c2914p16 != null && (interfaceC3147f5M1367p3 = c2914p16.m1367p()) != null) {
                    Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                    ((C3162g5) interfaceC3147f5M1367p3).m2151b("InMobiBanner", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
                }
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
                return;
            }
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            m807a(context, "banner");
            C2914P1 c2914p17 = this.mAdManager;
            if (c2914p17 != null) {
                c2914p17.mo887w();
            }
            C2914P1 c2914p18 = this.mAdManager;
            if (c2914p18 != null && (interfaceC3147f5M1367p2 = c2914p18.m1367p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2147a("InMobiBanner", "load called - placementType - " + str + ' ' + this);
            }
            m809a("load", new C3057Z4(this, publisherCallbacks, z));
        } catch (Exception e) {
            C2914P1 c2914p19 = this.mAdManager;
            if (c2914p19 != null) {
                c2914p19.mo879a((short) 2172);
            }
            AbstractC2764F1 abstractC2764F12 = this.mPubListener;
            if (abstractC2764F12 != null) {
                abstractC2764F12.mo1135a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
            C2914P1 c2914p110 = this.mAdManager;
            if (c2914p110 == null || (interfaceC3147f5M1367p = c2914p110.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "Load failed with unexpected error: ", e);
        }
    }

    public final void load() {
        if (m811a(false)) {
            m808a(this.f746e, "NonAB", false);
        }
    }

    public final void load(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (m811a(false)) {
            this.f754m = context instanceof Activity ? new WeakReference(context) : null;
            m808a(this.f746e, "NonAB", false);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m809a(String str, final Function0 function0) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        InterfaceC3147f5 interfaceC3147f5M1367p2;
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null && (interfaceC3147f5M1367p2 = c2914p1.m1367p()) != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2152c("InMobiBanner", "validateSizeAndLoad");
        }
        if (!m810a(str)) {
            C2914P1 c2914p12 = this.mAdManager;
            if (c2914p12 != null && (interfaceC3147f5M1367p = c2914p12.m1367p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((C3162g5) interfaceC3147f5M1367p).m2151b("InMobiBanner", "invalid banner size. fail.");
            }
            C2914P1 c2914p13 = this.mAdManager;
            if (c2914p13 != null) {
                c2914p13.mo879a((short) 2170);
            }
            AbstractC2764F1 abstractC2764F1 = this.mPubListener;
            if (abstractC2764F1 != null) {
                abstractC2764F1.mo1135a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR));
                return;
            }
            return;
        }
        if (!m812b()) {
            AbstractC3154fc.m2141a(new Runnable() { // from class: com.inmobi.ads.InMobiBanner$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiBanner.m805a(this.f$0, function0);
                }
            }, 200L);
        } else {
            function0.invoke();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m805a(InMobiBanner this$0, Function0 onSuccess) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        InterfaceC3147f5 interfaceC3147f5M1367p2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        try {
            if (this$0.m812b()) {
                onSuccess.invoke();
                return;
            }
            C2914P1 c2914p1 = this$0.mAdManager;
            if (c2914p1 != null && (interfaceC3147f5M1367p2 = c2914p1.m1367p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InMobiBanner", "The height or width of the banner can not be determined");
            }
            C2914P1 c2914p12 = this$0.mAdManager;
            if (c2914p12 != null) {
                c2914p12.mo879a((short) 2171);
            }
            AbstractC2764F1 abstractC2764F1 = this$0.mPubListener;
            if (abstractC2764F1 != null) {
                abstractC2764F1.mo1135a(this$0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR));
            }
        } catch (Exception e) {
            C2914P1 c2914p13 = this$0.mAdManager;
            if (c2914p13 != null) {
                c2914p13.mo879a((short) 2172);
            }
            AbstractC2764F1 abstractC2764F12 = this$0.mPubListener;
            if (abstractC2764F12 != null) {
                abstractC2764F12.mo1135a(this$0, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
            C2914P1 c2914p14 = this$0.mAdManager;
            if (c2914p14 == null || (interfaceC3147f5M1367p = c2914p14.m1367p()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2148a("InMobiBanner", "InMobiBanner$4.run() threw unexpected error: ", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m810a(String str) {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        InterfaceC3147f5 interfaceC3147f5M1367p2;
        if (m812b()) {
            return true;
        }
        if (getLayoutParams() == null) {
            C2914P1 c2914p1 = this.mAdManager;
            if (c2914p1 != null && (interfaceC3147f5M1367p2 = c2914p1.m1367p()) != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InMobiBanner", "The layout params of the banner must be set before calling " + str + " or call setBannerSize(int widthInDp, int heightInDp) before " + str);
            }
            return false;
        }
        if (getLayoutParams().width != -2 && getLayoutParams().height != -2) {
            if (getLayoutParams() == null) {
                return true;
            }
            this.f750i = AbstractC3429y2.m2609b(getLayoutParams().width / AbstractC2886N3.m1384b());
            this.f751j = AbstractC3429y2.m2609b(getLayoutParams().height / AbstractC2886N3.m1384b());
            return true;
        }
        C2914P1 c2914p12 = this.mAdManager;
        if (c2914p12 != null && (interfaceC3147f5M1367p = c2914p12.m1367p()) != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2151b("InMobiBanner", "The height or width of a Banner ad can't be WRAP_CONTENT or call setBannerSize(int widthInDp, int heightInDp) before ".concat(str));
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    public final void m807a(Context context, String str) {
        int iM1443a;
        C2914P1 c2914p1 = this.mAdManager;
        if (c2914p1 != null) {
            c2914p1.m1444a(context, this.mPubSettings, getFrameSizeString(), str);
        }
        C2914P1 c2914p12 = this.mAdManager;
        if (c2914p12 != null) {
            int i = this.f747f;
            iM1443a = c2914p12.m1443a(i, i);
        } else {
            iM1443a = 0;
        }
        this.f747f = iM1443a;
    }

    /* JADX INFO: renamed from: a */
    public final void m806a() {
        HandlerC2884N1 handlerC2884N1 = this.f749h;
        if (handlerC2884N1 != null) {
            handlerC2884N1.removeMessages(1);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InMobiBanner(Context context, long j) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.audioStatusInternal = EnumC2704B1.f841d;
        this.f746e = new C2672a(this);
        this.f748g = true;
        this.f752k = AnimationType.ROTATE_HORIZONTAL_AXIS;
        C3048Y9 c3048y9 = new C3048Y9();
        this.mPubSettings = c3048y9;
        this.f756o = new C2679e(this);
        if (C2849Kb.m1265q()) {
            if (context instanceof Activity) {
                this.f754m = new WeakReference(context);
            }
            this.mAdManager = new C2914P1();
            c3048y9.f1688a = j;
            m807a(context, "banner");
            C2914P1 c2914p1 = this.mAdManager;
            this.f747f = c2914p1 != null ? c2914p1.m1433A() : 0;
            this.f749h = new HandlerC2884N1(this);
            return;
        }
        Intrinsics.checkNotNullExpressionValue("InMobiBanner", "TAG");
        throw new SdkNotInitializedException("InMobiBanner");
    }
}
