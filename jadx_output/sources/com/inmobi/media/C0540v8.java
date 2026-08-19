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

/* JADX INFO: renamed from: com.inmobi.media.v8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J1\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\r\u0010\u0019\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u0016J\r\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010\u0016J\r\u0010\u001b\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u0016J\r\u0010\u001c\u001a\u00020\u000e¢\u0006\u0004\b\u001c\u0010\u0016J\r\u0010\u001d\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u0016J\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u001eJ\u000f\u0010\u0017\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u001f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010\u0016J\u000f\u0010 \u001a\u00020\u000eH\u0016¢\u0006\u0004\b \u0010\u0016J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\"R\u0014\u0010%\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010(\u001a\n &*\u0004\u0018\u00010\f0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010$R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0011\u0010/\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0016\u00103\u001a\u0004\u0018\u0001008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R\u0014\u00105\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u0010.R\u0013\u00109\u001a\u0004\u0018\u0001068F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0013\u0010<\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0013\u0010>\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b=\u0010;R\u0013\u0010@\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b?\u0010;R\u0013\u0010B\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bA\u0010;R\u0013\u0010D\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bC\u0010;R\u0011\u0010H\u001a\u00020E8F¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0011\u0010J\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bI\u0010.R\u0013\u0010M\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bK\u0010L¨\u0006N"}, d2 = {"Lcom/inmobi/media/v8;", "Lcom/inmobi/media/Mc;", "Lcom/inmobi/ads/controllers/PublisherCallbacks;", "callbacks", "<init>", "(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V", "Lcom/inmobi/media/Y9;", "pubSettings", "Landroid/content/Context;", "context", "", "sendAdLoadTelemetry", "", "logType", "", "a", "(Lcom/inmobi/media/Y9;Landroid/content/Context;ZLjava/lang/String;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "(Lcom/inmobi/ads/AdMetaInfo;)V", "J", "()V", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, SvgConstants.Attributes.D, SvgConstants.Attributes.X, "N", "K", "M", "L", "(Lcom/inmobi/media/Y9;Landroid/content/Context;)V", "i", XfdfConstants.F, "isMuted", "(Z)V", "o", "Ljava/lang/String;", "DEBUG_LOG_TAG", "kotlin.jvm.PlatformType", "p", "TAG", "Lcom/inmobi/media/C7;", "q", "Lcom/inmobi/media/C7;", "mNativeAdUnit", "F", "()Z", "isAdInReadyState", "Lcom/inmobi/media/Q0;", "j", "()Lcom/inmobi/media/Q0;", OutOfContextTestingActivity.AD_UNIT_KEY, "H", "isInitialised", "Lorg/json/JSONObject;", ExifInterface.LONGITUDE_EAST, "()Lorg/json/JSONObject;", "publisherJson", "D", "()Ljava/lang/String;", "adTitle", "z", "adDescription", "A", "adIconUrl", SvgConstants.Attributes.PATH_DATA_BEARING, "adLandingPageUrl", SvgConstants.Attributes.Y, "adCtaText", "", SvgConstants.Attributes.PATH_DATA_CURVE_TO, "()F", "adRating", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "isAppDownload", "I", "()Ljava/lang/Boolean;", "isVideo", "media_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class C0540v8 extends Mc {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final String DEBUG_LOG_TAG;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private C7 mNativeAdUnit;

    public C0540v8(PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.DEBUG_LOG_TAG = "InMobi";
        this.TAG = "v8";
        b(callbacks);
    }

    public static /* synthetic */ void a(C0540v8 c0540v8, Y9 y9, Context context, boolean z, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        }
        c0540v8.a(y9, context, z, str);
    }

    public final String A() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null || (interfaceC0559xK = c7.k()) == null) {
            return null;
        }
        Object dataModel = interfaceC0559xK.getDataModel();
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        if (p7 == null || (o7 = p7.p) == null || (n7 = o7.b) == null) {
            return null;
        }
        return n7.c;
    }

    public final String B() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null || (interfaceC0559xK = c7.k()) == null) {
            return null;
        }
        Object dataModel = interfaceC0559xK.getDataModel();
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        if (p7 == null || (o7 = p7.p) == null || (n7 = o7.b) == null) {
            return null;
        }
        return n7.f;
    }

    public final float C() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null && (interfaceC0559xK = c7.k()) != null) {
            Object dataModel = interfaceC0559xK.getDataModel();
            P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
            if (p7 != null && (o7 = p7.p) != null && (n7 = o7.b) != null) {
                return n7.e;
            }
        }
        return 0.0f;
    }

    public final String D() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null || (interfaceC0559xK = c7.k()) == null) {
            return null;
        }
        Object dataModel = interfaceC0559xK.getDataModel();
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        if (p7 == null || (o7 = p7.p) == null || (n7 = o7.b) == null) {
            return null;
        }
        return n7.f192a;
    }

    public final JSONObject E() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null || (interfaceC0559xK = c7.k()) == null) {
            return null;
        }
        Object dataModel = interfaceC0559xK.getDataModel();
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        if (p7 == null || (o7 = p7.p) == null) {
            return null;
        }
        return o7.f203a;
    }

    public final boolean F() {
        C7 c7 = this.mNativeAdUnit;
        return c7 != null && c7.Q() == 4;
    }

    public final boolean G() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null && (interfaceC0559xK = c7.k()) != null) {
            Object dataModel = interfaceC0559xK.getDataModel();
            P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
            if (p7 != null && (o7 = p7.p) != null && (n7 = o7.b) != null) {
                return n7.g;
            }
        }
        return false;
    }

    public boolean H() {
        return this.mNativeAdUnit != null;
    }

    public final Boolean I() {
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null) {
            return Boolean.valueOf(c7.k() instanceof A8);
        }
        return null;
    }

    public final void J() {
        C7 c7;
        if (Intrinsics.areEqual(u(), Boolean.FALSE)) {
            InterfaceC0298f5 interfaceC0298f5P = p();
            if (interfaceC0298f5P != null) {
                ((C0314g5) interfaceC0298f5P).b(this.DEBUG_LOG_TAG, "Cannot call load() API after calling load(byte[])");
                return;
            }
            return;
        }
        a(Boolean.TRUE);
        C7 c72 = this.mNativeAdUnit;
        if (c72 != null) {
            if (a(this.DEBUG_LOG_TAG, String.valueOf(c72 != null ? c72.I() : null), l()) && (c7 = this.mNativeAdUnit) != null && c7.e((byte) 1)) {
                InterfaceC0298f5 interfaceC0298f5P2 = p();
                if (interfaceC0298f5P2 != null) {
                    String TAG = this.TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5P2).a(TAG, "internal load timer started");
                }
                a((byte) 1);
                C7 c73 = this.mNativeAdUnit;
                if (c73 != null) {
                    c73.c0();
                }
            }
        }
    }

    public final void K() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "pause called");
        }
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null) {
            InterfaceC0298f5 interfaceC0298f5 = c7.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f5).c("C7", "onPause");
            }
            if (c7.Q() != 4 || (c7.t() instanceof Activity)) {
                return;
            }
            InterfaceC0559x interfaceC0559xK = c7.k();
            C0511t7 c0511t7 = interfaceC0559xK instanceof C0511t7 ? (C0511t7) interfaceC0559xK : null;
            if (c0511t7 != null) {
                c0511t7.l();
            }
        }
    }

    public final void L() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).c(TAG, "reportAdClickAndOpenLandingPage");
        }
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null) {
            InterfaceC0298f5 interfaceC0298f5 = c7.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f5).c("C7", "reportAdClickAndOpenLandingPage");
            }
            InterfaceC0559x interfaceC0559xK = c7.k();
            if (interfaceC0559xK == null) {
                InterfaceC0298f5 interfaceC0298f52 = c7.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f52).b("C7", "container is null. ignoring");
                    return;
                }
                return;
            }
            C0511t7 c0511t7 = interfaceC0559xK instanceof C0511t7 ? (C0511t7) interfaceC0559xK : null;
            P7 p7 = c0511t7 != null ? c0511t7.b : null;
            if (p7 instanceof P7) {
                O7 o7 = p7.p;
                D7 d7 = o7 != null ? o7.c : null;
                if (d7 != null) {
                    InterfaceC0298f5 interfaceC0298f53 = c7.j;
                    if (interfaceC0298f53 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C0314g5) interfaceC0298f53).a("C7", "reporting ad click and opening landing page");
                    }
                    c0511t7.a((View) null, d7);
                    c0511t7.a(d7, true);
                }
            }
        }
    }

    public final void M() {
        AbstractC0401ld abstractC0401ld;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "resume called");
        }
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null) {
            InterfaceC0298f5 interfaceC0298f5 = c7.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f5).c("C7", "onResume");
            }
            if (c7.Q() != 4 || (c7.t() instanceof Activity)) {
                return;
            }
            InterfaceC0559x interfaceC0559xK = c7.k();
            C0511t7 c0511t7 = interfaceC0559xK instanceof C0511t7 ? (C0511t7) interfaceC0559xK : null;
            if (c0511t7 != null) {
                InterfaceC0298f5 interfaceC0298f52 = c0511t7.j;
                if (interfaceC0298f52 != null) {
                    String TAG2 = c0511t7.m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).c(TAG2, "onResume");
                }
                c0511t7.u = false;
                C0512t8 c0512t8A = C0511t7.a(c0511t7.g());
                if (c0512t8A != null) {
                    c0512t8A.c();
                }
                c0511t7.p();
                Context contextD = c0511t7.d();
                if (contextD == null || (abstractC0401ld = c0511t7.p) == null) {
                    return;
                }
                abstractC0401ld.a(contextD, (byte) 0);
            }
        }
    }

    public final void N() {
        C0511t7 c0511t7G;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).c(TAG, "takeAction");
        }
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null) {
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String TAG2 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f5P2).b(TAG2, "InMobiNative is not initialized. Ignoring takeAction");
                return;
            }
            return;
        }
        if (c7 == null || (c0511t7G = c7.G()) == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = c0511t7G.j;
        if (interfaceC0298f5 != null) {
            String TAG3 = c0511t7G.m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG3, "takeAction");
        }
        D7 d7 = c0511t7G.E;
        String str = c0511t7G.F;
        Intent intent = c0511t7G.G;
        Context context = (Context) c0511t7G.x.get();
        if (d7 != null && str != null) {
            c0511t7G.a(d7, d7.g, str, null);
        } else {
            if (intent == null || context == null) {
                return;
            }
            Kb.f162a.a(context, intent);
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public void b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).c(TAG, "onAdFetchSuccess");
        }
        d(info);
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null) {
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String TAG2 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f5P2).b(TAG2, "adunit is null. load failed.");
            }
            a((Q0) null, inMobiAdRequestStatus);
            return;
        }
        if (c7.m() == null) {
            InterfaceC0298f5 interfaceC0298f5P3 = p();
            if (interfaceC0298f5P3 != null) {
                String TAG3 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f5P3).b(TAG3, "adObject is null. load failed");
            }
            a((Q0) null, inMobiAdRequestStatus);
            return;
        }
        super.b(info);
        s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C0540v8.a(this.f$0, info);
            }
        });
        if (F()) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5P4 = p();
        if (interfaceC0298f5P4 != null) {
            String TAG4 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((C0314g5) interfaceC0298f5P4).a(TAG4, "ad is ready. start ad render");
        }
        C7 c72 = this.mNativeAdUnit;
        if (c72 != null) {
            c72.j0();
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public void c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).b(TAG, "onAdLoadSucceeded");
        }
        super.c(info);
        a((byte) 2);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f5P2).d(TAG2, "AdManager state - LOADED");
        }
        s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C0540v8.b(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.E0
    public void d() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).b(TAG, "onAdShowFailed");
        }
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            ((C0314g5) interfaceC0298f5P2).a();
        }
    }

    @Override // com.inmobi.media.E0
    public void f() {
        s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0540v8.b(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.E0
    public void i() {
        s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C0540v8.c(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.Mc
    public Q0 j() {
        return this.mNativeAdUnit;
    }

    public final void x() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "destroy called");
        }
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null) {
            c7.D0();
        }
        this.mNativeAdUnit = null;
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            ((C0314g5) interfaceC0298f5P2).a();
        }
    }

    public final String y() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null || (interfaceC0559xK = c7.k()) == null) {
            return null;
        }
        Object dataModel = interfaceC0559xK.getDataModel();
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        if (p7 == null || (o7 = p7.p) == null || (n7 = o7.b) == null) {
            return null;
        }
        return n7.d;
    }

    public final String z() {
        InterfaceC0559x interfaceC0559xK;
        O7 o7;
        N7 n7;
        C7 c7 = this.mNativeAdUnit;
        if (c7 == null || (interfaceC0559xK = c7.k()) == null) {
            return null;
        }
        Object dataModel = interfaceC0559xK.getDataModel();
        P7 p7 = dataModel instanceof P7 ? (P7) dataModel : null;
        if (p7 == null || (o7 = p7.p) == null || (n7 = o7.b) == null) {
            return null;
        }
        return n7.b;
    }

    public final void a(Y9 pubSettings, Context context, boolean sendAdLoadTelemetry, String logType) {
        C7 c7;
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logType, "logType");
        C7 c72 = this.mNativeAdUnit;
        if (c72 == null) {
            W wA = new W(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE).a(pubSettings.f289a);
            Intrinsics.checkNotNullParameter(context, "context");
            this.mNativeAdUnit = new C7(context, wA.d(context instanceof Activity ? "activity" : "others").c(pubSettings.b).a(pubSettings.c).a(pubSettings.d).e(pubSettings.e).b(pubSettings.f).a(), this);
        } else {
            c72.a(context);
            C7 c73 = this.mNativeAdUnit;
            if (c73 != null) {
                Intrinsics.checkNotNullParameter(context, "context");
                c73.c(context instanceof Activity ? "activity" : "others");
            }
        }
        if (sendAdLoadTelemetry) {
            w();
        }
        String str = pubSettings.e;
        if (str != null) {
            InterfaceC0298f5 interfaceC0298f5P = p();
            if (interfaceC0298f5P != null) {
                ((C0314g5) interfaceC0298f5P).a();
            }
            B6 b6 = Ea.f109a;
            a(Ea.a(logType, str, false));
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null && (c7 = this.mNativeAdUnit) != null) {
                c7.a(interfaceC0298f5P2);
            }
            InterfaceC0298f5 interfaceC0298f5P3 = p();
            if (interfaceC0298f5P3 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5P3).a(TAG, "adding mNativeAdUnit to referenceTracker");
            }
            C7 c74 = this.mNativeAdUnit;
            Intrinsics.checkNotNull(c74);
            Ea.a(c74, p());
        }
        InterfaceC0298f5 interfaceC0298f5P4 = p();
        if (interfaceC0298f5P4 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f5P4).a(TAG2, "load called");
        }
        C7 c75 = this.mNativeAdUnit;
        if (c75 != null) {
            c75.a(pubSettings.c);
        }
    }

    @Override // com.inmobi.media.E0
    public void c() {
        s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0540v8.a(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C0540v8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "callback - onVideoSkipped");
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onVideoSkipped();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C0540v8 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "callback - onAdLoadSucceeded");
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAdLoadSucceeded(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C0540v8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "callback - onVideoCompleted");
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onVideoCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C0540v8 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "callback - onAdFetchSuccessful");
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAdFetchSuccessful(info);
        }
    }

    public final void a(Y9 pubSettings, Context context) {
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.mNativeAdUnit == null) {
            a(this, pubSettings, context, false, null, 8, null);
        }
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).c(TAG, "showOnLockScreen");
        }
        C7 c7 = this.mNativeAdUnit;
        if (c7 != null) {
            c7.N = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C0540v8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "callback - onAdImpressed");
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAdImpressed();
        }
    }

    @Override // com.inmobi.media.E0
    public void a(final boolean isMuted) {
        s().post(new Runnable() { // from class: com.inmobi.media.v8$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0540v8.a(this.f$0, isMuted);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C0540v8 this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String TAG = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).a(TAG, "callback -onAudioStateChanged - " + z);
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAudioStateChanged(z);
        }
    }
}
