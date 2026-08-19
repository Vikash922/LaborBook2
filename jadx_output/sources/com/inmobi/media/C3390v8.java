package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.google.android.gms.ads.RequestConfiguration;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.v8 */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J1\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\r\u0010\u0019\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u0016J\r\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010\u0016J\r\u0010\u001b\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u0016J\r\u0010\u001c\u001a\u00020\u000e¢\u0006\u0004\b\u001c\u0010\u0016J\r\u0010\u001d\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u0016J\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u001eJ\u000f\u0010\u0017\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u001f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010\u0016J\u000f\u0010 \u001a\u00020\u000eH\u0016¢\u0006\u0004\b \u0010\u0016J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\"R\u0014\u0010%\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010(\u001a\n &*\u0004\u0018\u00010\f0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010$R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0011\u0010/\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0016\u00103\u001a\u0004\u0018\u0001008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R\u0014\u00105\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u0010.R\u0013\u00109\u001a\u0004\u0018\u0001068F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0013\u0010<\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0013\u0010>\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b=\u0010;R\u0013\u0010@\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b?\u0010;R\u0013\u0010B\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bA\u0010;R\u0013\u0010D\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bC\u0010;R\u0011\u0010H\u001a\u00020E8F¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0011\u0010J\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bI\u0010.R\u0013\u0010M\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bK\u0010L¨\u0006N"}, m2722d2 = {"Lcom/inmobi/media/v8;", "Lcom/inmobi/media/Mc;", "Lcom/inmobi/ads/controllers/PublisherCallbacks;", "callbacks", "<init>", "(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V", "Lcom/inmobi/media/Y9;", "pubSettings", "Landroid/content/Context;", "context", "", "sendAdLoadTelemetry", "", "logType", "", "a", "(Lcom/inmobi/media/Y9;Landroid/content/Context;ZLjava/lang/String;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "(Lcom/inmobi/ads/AdMetaInfo;)V", "J", "()V", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, SvgConstants.Attributes.f3323D, SvgConstants.Attributes.f3330X, "N", "K", "M", "L", "(Lcom/inmobi/media/Y9;Landroid/content/Context;)V", "i", XfdfConstants.f2852F, "isMuted", "(Z)V", "o", "Ljava/lang/String;", "DEBUG_LOG_TAG", "kotlin.jvm.PlatformType", "p", "TAG", "Lcom/inmobi/media/C7;", "q", "Lcom/inmobi/media/C7;", "mNativeAdUnit", "F", "()Z", "isAdInReadyState", "Lcom/inmobi/media/Q0;", "j", "()Lcom/inmobi/media/Q0;", OutOfContextTestingActivity.AD_UNIT_KEY, "H", "isInitialised", "Lorg/json/JSONObject;", ExifInterface.LONGITUDE_EAST, "()Lorg/json/JSONObject;", "publisherJson", "D", "()Ljava/lang/String;", "adTitle", "z", "adDescription", "A", "adIconUrl", SvgConstants.Attributes.PATH_DATA_BEARING, "adLandingPageUrl", SvgConstants.Attributes.f3333Y, "adCtaText", "", SvgConstants.Attributes.PATH_DATA_CURVE_TO, "()F", "adRating", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "isAppDownload", "I", "()Ljava/lang/Boolean;", "isVideo", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class C3390v8 extends AbstractC2880Mc {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final String DEBUG_LOG_TAG;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private C2725C7 mNativeAdUnit;

    public C3390v8(PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.DEBUG_LOG_TAG = "InMobi";
        this.TAG = "v8";
        m1359b(callbacks);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m2511a(C3390v8 c3390v8, C3048Y9 c3048y9, Context context, boolean z, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        }
        c3390v8.m2531a(c3048y9, context, z, str);
    }

    /* JADX INFO: renamed from: A */
    public final String m2516A() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null || (interfaceC3411xM1682k = c2725c7.m1682k()) == null) {
            return null;
        }
        Object dataModel = interfaceC3411xM1682k.getDataModel();
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        if (c2920p7 == null || (c2905o7 = c2920p7.f1391p) == null || (c2890n7 = c2905o7.f1337b) == null) {
            return null;
        }
        return c2890n7.f1307c;
    }

    /* JADX INFO: renamed from: B */
    public final String m2517B() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null || (interfaceC3411xM1682k = c2725c7.m1682k()) == null) {
            return null;
        }
        Object dataModel = interfaceC3411xM1682k.getDataModel();
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        if (c2920p7 == null || (c2905o7 = c2920p7.f1391p) == null || (c2890n7 = c2905o7.f1337b) == null) {
            return null;
        }
        return c2890n7.f1310f;
    }

    /* JADX INFO: renamed from: C */
    public final float m2518C() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null && (interfaceC3411xM1682k = c2725c7.m1682k()) != null) {
            Object dataModel = interfaceC3411xM1682k.getDataModel();
            C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
            if (c2920p7 != null && (c2905o7 = c2920p7.f1391p) != null && (c2890n7 = c2905o7.f1337b) != null) {
                return c2890n7.f1309e;
            }
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: D */
    public final String m2519D() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null || (interfaceC3411xM1682k = c2725c7.m1682k()) == null) {
            return null;
        }
        Object dataModel = interfaceC3411xM1682k.getDataModel();
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        if (c2920p7 == null || (c2905o7 = c2920p7.f1391p) == null || (c2890n7 = c2905o7.f1337b) == null) {
            return null;
        }
        return c2890n7.f1305a;
    }

    /* JADX INFO: renamed from: E */
    public final JSONObject m2520E() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null || (interfaceC3411xM1682k = c2725c7.m1682k()) == null) {
            return null;
        }
        Object dataModel = interfaceC3411xM1682k.getDataModel();
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        if (c2920p7 == null || (c2905o7 = c2920p7.f1391p) == null) {
            return null;
        }
        return c2905o7.f1336a;
    }

    /* JADX INFO: renamed from: F */
    public final boolean m2521F() {
        C2725C7 c2725c7 = this.mNativeAdUnit;
        return c2725c7 != null && c2725c7.m1577Q() == 4;
    }

    /* JADX INFO: renamed from: G */
    public final boolean m2522G() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null && (interfaceC3411xM1682k = c2725c7.m1682k()) != null) {
            Object dataModel = interfaceC3411xM1682k.getDataModel();
            C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
            if (c2920p7 != null && (c2905o7 = c2920p7.f1391p) != null && (c2890n7 = c2905o7.f1337b) != null) {
                return c2890n7.f1311g;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: H */
    public boolean m2523H() {
        return this.mNativeAdUnit != null;
    }

    /* JADX INFO: renamed from: I */
    public final Boolean m2524I() {
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null) {
            return Boolean.valueOf(c2725c7.m1682k() instanceof C2696A8);
        }
        return null;
    }

    /* JADX INFO: renamed from: J */
    public final void m2525J() {
        C2725C7 c2725c7;
        if (Intrinsics.areEqual(m1371u(), Boolean.FALSE)) {
            InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
            if (interfaceC3147f5M1367p != null) {
                ((C3162g5) interfaceC3147f5M1367p).m2151b(this.DEBUG_LOG_TAG, "Cannot call load() API after calling load(byte[])");
                return;
            }
            return;
        }
        m1355a(Boolean.TRUE);
        C2725C7 c2725c72 = this.mNativeAdUnit;
        if (c2725c72 != null) {
            if (m1357a(this.DEBUG_LOG_TAG, String.valueOf(c2725c72 != null ? c2725c72.m1570I() : null), m1363l()) && (c2725c7 = this.mNativeAdUnit) != null && c2725c7.m1667e((byte) 1)) {
                InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
                if (interfaceC3147f5M1367p2 != null) {
                    String TAG = this.TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5M1367p2).m2147a(TAG, "internal load timer started");
                }
                m1351a((byte) 1);
                C2725C7 c2725c73 = this.mNativeAdUnit;
                if (c2725c73 != null) {
                    c2725c73.mo911c0();
                }
            }
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m2526K() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "pause called");
        }
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null) {
            InterfaceC3147f5 interfaceC3147f5 = c2725c7.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f5).m2152c("C7", "onPause");
            }
            if (c2725c7.m1577Q() != 4 || (c2725c7.m1700t() instanceof Activity)) {
                return;
            }
            InterfaceC3411x interfaceC3411xM1682k = c2725c7.m1682k();
            C3359t7 c3359t7 = interfaceC3411xM1682k instanceof C3359t7 ? (C3359t7) interfaceC3411xM1682k : null;
            if (c3359t7 != null) {
                c3359t7.mo860l();
            }
        }
    }

    /* JADX INFO: renamed from: L */
    public final void m2527L() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(TAG, "reportAdClickAndOpenLandingPage");
        }
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null) {
            InterfaceC3147f5 interfaceC3147f5 = c2725c7.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f5).m2152c("C7", "reportAdClickAndOpenLandingPage");
            }
            InterfaceC3411x interfaceC3411xM1682k = c2725c7.m1682k();
            if (interfaceC3411xM1682k == null) {
                InterfaceC3147f5 interfaceC3147f52 = c2725c7.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b("C7", "container is null. ignoring");
                    return;
                }
                return;
            }
            C3359t7 c3359t7 = interfaceC3411xM1682k instanceof C3359t7 ? (C3359t7) interfaceC3411xM1682k : null;
            C2920P7 c2920p7 = c3359t7 != null ? c3359t7.f2576b : null;
            if (c2920p7 instanceof C2920P7) {
                C2905O7 c2905o7 = c2920p7.f1391p;
                C2740D7 c2740d7 = c2905o7 != null ? c2905o7.f1338c : null;
                if (c2740d7 != null) {
                    InterfaceC3147f5 interfaceC3147f53 = c2725c7.f1437j;
                    if (interfaceC3147f53 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C3162g5) interfaceC3147f53).m2147a("C7", "reporting ad click and opening landing page");
                    }
                    c3359t7.m2437a((View) null, c2740d7);
                    c3359t7.m2441a(c2740d7, true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: M */
    public final void m2528M() {
        AbstractC3245ld abstractC3245ld;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "resume called");
        }
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null) {
            InterfaceC3147f5 interfaceC3147f5 = c2725c7.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f5).m2152c("C7", "onResume");
            }
            if (c2725c7.m1577Q() != 4 || (c2725c7.m1700t() instanceof Activity)) {
                return;
            }
            InterfaceC3411x interfaceC3411xM1682k = c2725c7.m1682k();
            C3359t7 c3359t7 = interfaceC3411xM1682k instanceof C3359t7 ? (C3359t7) interfaceC3411xM1682k : null;
            if (c3359t7 != null) {
                InterfaceC3147f5 interfaceC3147f52 = c3359t7.f2584j;
                if (interfaceC3147f52 != null) {
                    String TAG2 = c3359t7.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2152c(TAG2, "onResume");
                }
                c3359t7.f2595u = false;
                C3360t8 c3360t8M2427a = C3359t7.m2427a(c3359t7.m2446g());
                if (c3360t8M2427a != null) {
                    c3360t8M2427a.m2455c();
                }
                c3359t7.m2451p();
                Context contextM2444d = c3359t7.m2444d();
                if (contextM2444d == null || (abstractC3245ld = c3359t7.f2590p) == null) {
                    return;
                }
                abstractC3245ld.mo959a(contextM2444d, (byte) 0);
            }
        }
    }

    /* JADX INFO: renamed from: N */
    public final void m2529N() {
        C3359t7 c3359t7M1568G;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(TAG, "takeAction");
        }
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String TAG2 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG2, "InMobiNative is not initialized. Ignoring takeAction");
                return;
            }
            return;
        }
        if (c2725c7 == null || (c3359t7M1568G = c2725c7.m1568G()) == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = c3359t7M1568G.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG3 = c3359t7M1568G.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG3, "takeAction");
        }
        C2740D7 c2740d7 = c3359t7M1568G.f2559E;
        String str = c3359t7M1568G.f2560F;
        Intent intent = c3359t7M1568G.f2561G;
        Context context = (Context) c3359t7M1568G.f2598x.get();
        if (c2740d7 != null && str != null) {
            c3359t7M1568G.m2439a(c2740d7, c2740d7.f925g, str, null);
        } else {
            if (intent == null || context == null) {
                return;
            }
            C2849Kb.f1171a.m1272a(context, intent);
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo882b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(TAG, "onAdFetchSuccess");
        }
        m1361d(info);
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String TAG2 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG2, "adunit is null. load failed.");
            }
            mo878a((AbstractC2928Q0) null, inMobiAdRequestStatus);
            return;
        }
        if (c2725c7.m1688m() == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null) {
                String TAG3 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f5M1367p3).m2151b(TAG3, "adObject is null. load failed");
            }
            mo878a((AbstractC2928Q0) null, inMobiAdRequestStatus);
            return;
        }
        super.mo882b(info);
        m1369s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3390v8.m2510a(this.f$0, info);
            }
        });
        if (m2521F()) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
        if (interfaceC3147f5M1367p4 != null) {
            String TAG4 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((C3162g5) interfaceC3147f5M1367p4).m2147a(TAG4, "ad is ready. start ad render");
        }
        C2725C7 c2725c72 = this.mNativeAdUnit;
        if (c2725c72 != null) {
            c2725c72.mo912j0();
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: c */
    public void mo884c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2151b(TAG, "onAdLoadSucceeded");
        }
        super.mo884c(info);
        m1351a((byte) 2);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2153d(TAG2, "AdManager state - LOADED");
        }
        m1369s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3390v8.m2514b(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: d */
    public void mo885d() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2151b(TAG, "onAdShowFailed");
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: f */
    public void mo986f() {
        m1369s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3390v8.m2513b(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: i */
    public void mo989i() {
        m1369s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3390v8.m2515c(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: j */
    public AbstractC2928Q0 mo886j() {
        return this.mNativeAdUnit;
    }

    /* JADX INFO: renamed from: x */
    public final void m2532x() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "destroy called");
        }
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null) {
            c2725c7.m898D0();
        }
        this.mNativeAdUnit = null;
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
    }

    /* JADX INFO: renamed from: y */
    public final String m2533y() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null || (interfaceC3411xM1682k = c2725c7.m1682k()) == null) {
            return null;
        }
        Object dataModel = interfaceC3411xM1682k.getDataModel();
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        if (c2920p7 == null || (c2905o7 = c2920p7.f1391p) == null || (c2890n7 = c2905o7.f1337b) == null) {
            return null;
        }
        return c2890n7.f1308d;
    }

    /* JADX INFO: renamed from: z */
    public final String m2534z() {
        InterfaceC3411x interfaceC3411xM1682k;
        C2905O7 c2905o7;
        C2890N7 c2890n7;
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 == null || (interfaceC3411xM1682k = c2725c7.m1682k()) == null) {
            return null;
        }
        Object dataModel = interfaceC3411xM1682k.getDataModel();
        C2920P7 c2920p7 = dataModel instanceof C2920P7 ? (C2920P7) dataModel : null;
        if (c2920p7 == null || (c2905o7 = c2920p7.f1391p) == null || (c2890n7 = c2905o7.f1337b) == null) {
            return null;
        }
        return c2890n7.f1306b;
    }

    /* JADX INFO: renamed from: a */
    public final void m2531a(C3048Y9 pubSettings, Context context, boolean sendAdLoadTelemetry, String logType) {
        C2725C7 c2725c7;
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logType, "logType");
        C2725C7 c2725c72 = this.mNativeAdUnit;
        if (c2725c72 == null) {
            C3010W c3010wM1879a = new C3010W(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE).m1879a(pubSettings.f1688a);
            Intrinsics.checkNotNullParameter(context, "context");
            this.mNativeAdUnit = new C2725C7(context, c3010wM1879a.m1887d(context instanceof Activity ? "activity" : "others").m1886c(pubSettings.f1689b).m1882a(pubSettings.f1690c).m1883a(pubSettings.f1691d).m1888e(pubSettings.f1692e).m1885b(pubSettings.f1693f).m1884a(), this);
        } else {
            c2725c72.mo903a(context);
            C2725C7 c2725c73 = this.mNativeAdUnit;
            if (c2725c73 != null) {
                Intrinsics.checkNotNullParameter(context, "context");
                c2725c73.mo1651c(context instanceof Activity ? "activity" : "others");
            }
        }
        if (sendAdLoadTelemetry) {
            mo887w();
        }
        String str = pubSettings.f1692e;
        if (str != null) {
            InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
            if (interfaceC3147f5M1367p != null) {
                ((C3162g5) interfaceC3147f5M1367p).m2146a();
            }
            EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
            m1354a(C2758Ea.m1051a(logType, str, false));
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null && (c2725c7 = this.mNativeAdUnit) != null) {
                c2725c7.m1607a(interfaceC3147f5M1367p2);
            }
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5M1367p3).m2147a(TAG, "adding mNativeAdUnit to referenceTracker");
            }
            C2725C7 c2725c74 = this.mNativeAdUnit;
            Intrinsics.checkNotNull(c2725c74);
            C2758Ea.m1053a(c2725c74, m1367p());
        }
        InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
        if (interfaceC3147f5M1367p4 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f5M1367p4).m2147a(TAG2, "load called");
        }
        C2725C7 c2725c75 = this.mNativeAdUnit;
        if (c2725c75 != null) {
            c2725c75.m1616a(pubSettings.f1690c);
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: c */
    public void mo984c() {
        m1369s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3390v8.m2509a(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c */
    public static final void m2515c(C3390v8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "callback - onVideoSkipped");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onVideoSkipped();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public static final void m2514b(C3390v8 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "callback - onAdLoadSucceeded");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdLoadSucceeded(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public static final void m2513b(C3390v8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "callback - onVideoCompleted");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onVideoCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m2510a(C3390v8 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "callback - onAdFetchSuccessful");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdFetchSuccessful(info);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2530a(C3048Y9 pubSettings, Context context) {
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.mNativeAdUnit == null) {
            m2511a(this, pubSettings, context, false, null, 8, null);
        }
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(TAG, "showOnLockScreen");
        }
        C2725C7 c2725c7 = this.mNativeAdUnit;
        if (c2725c7 != null) {
            c2725c7.f883N = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m2509a(C3390v8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "callback - onAdImpressed");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdImpressed();
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo979a(final boolean isMuted) {
        m1369s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3390v8.m2512a(this.f$0, isMuted);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m2512a(C3390v8 this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(TAG, "callback -onAudioStateChanged - " + z);
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAudioStateChanged(z);
        }
    }
}
