package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.google.android.gms.ads.RequestConfiguration;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.commons.core.configs.AdConfig;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\r\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0003J)\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0017¢\u0006\u0004\b\f\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0013¢\u0006\u0004\b\u001c\u0010\u0015J'\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\f\u0010 J\r\u0010!\u001a\u00020\u000b¢\u0006\u0004\b!\u0010\u0003J!\u0010\f\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\f\u0010$J\r\u0010%\u001a\u00020\u000b¢\u0006\u0004\b%\u0010\u0003J\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b\f\u0010(J\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b\f\u0010+J\r\u0010,\u001a\u00020\u000b¢\u0006\u0004\b,\u0010\u0003J\r\u0010-\u001a\u00020\u000b¢\u0006\u0004\b-\u0010\u0003J\u001d\u0010\f\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u0016¢\u0006\u0004\b\f\u00100J\u0015\u0010\f\u001a\u00020\u00132\u0006\u00102\u001a\u000201¢\u0006\u0004\b\f\u00103J\r\u00104\u001a\u00020\u000b¢\u0006\u0004\b4\u0010\u0003J\r\u00105\u001a\u00020\u0013¢\u0006\u0004\b5\u0010\u0015J\r\u00106\u001a\u00020\u000b¢\u0006\u0004\b6\u0010\u0003J\r\u00107\u001a\u00020\u000b¢\u0006\u0004\b7\u0010\u0003J\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u00109\u001a\u000208¢\u0006\u0004\b\u0010\u0010:J\u000f\u0010;\u001a\u00020\u0013H\u0002¢\u0006\u0004\b;\u0010\u0015J\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020&H\u0002¢\u0006\u0004\b\u0010\u0010(J\u000f\u0010=\u001a\u00020\u000bH\u0002¢\u0006\u0004\b=\u0010\u0003R\u0014\u0010@\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b>\u0010?R\u001c\u0010C\u001a\n A*\u0004\u0018\u00010\b0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010?R\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010FR\u0018\u0010M\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010FR\u0016\u0010Q\u001a\u0004\u0018\u00010N8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0014\u0010S\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010\u0015R\u0011\u0010V\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0011\u0010X\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\bW\u0010\u0015¨\u0006Y"}, d2 = {"Lcom/inmobi/media/P1;", "Lcom/inmobi/media/Mc;", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/inmobi/media/Y9;", "pubSettings", "", "adSize", "logType", "", "a", "(Landroid/content/Context;Lcom/inmobi/media/Y9;Ljava/lang/String;Ljava/lang/String;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "(Lcom/inmobi/ads/AdMetaInfo;)V", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "", SvgConstants.Attributes.PATH_DATA_CURVE_TO, "()Z", "", "next", "callerIndex", "Lcom/inmobi/media/Ya;", "renderView", "(IILcom/inmobi/media/Ya;)V", SvgConstants.Attributes.Y, "Lcom/inmobi/ads/controllers/PublisherCallbacks;", "callbacks", "isRefreshRequest", "(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "", "response", "([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V", "K", "Landroid/widget/RelativeLayout;", "banner", "(Landroid/widget/RelativeLayout;)V", "Lcom/inmobi/ads/WatermarkData;", "watermarkData", "(Lcom/inmobi/ads/WatermarkData;)V", "H", ExifInterface.LONGITUDE_EAST, "_refreshInterval", "previousInterval", "(II)I", "", "adLoadCalledTimestamp", "(J)Z", "L", SvgConstants.Attributes.X, "F", "z", "", "errorCode", "(S)V", "I", "inMobiBanner", "J", "o", "Ljava/lang/String;", "DEBUG_LOG_TAG", "kotlin.jvm.PlatformType", "p", "TAG", "Lcom/inmobi/media/K1;", "q", "Lcom/inmobi/media/K1;", "mBannerAdUnit1", "r", "mBannerAdUnit2", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, "mForegroundBannerAdUnit", SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "mBackgroundBannerAdUnit", "Lcom/inmobi/media/Q0;", "j", "()Lcom/inmobi/media/Q0;", OutOfContextTestingActivity.AD_UNIT_KEY, "D", "isInitialised", "A", "()I", "defaultRefreshInterval", SvgConstants.Attributes.PATH_DATA_BEARING, "isActive", "media_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class P1 extends Mc {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final String DEBUG_LOG_TAG = "InMobi";

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final String TAG = "P1";

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private K1 mBannerAdUnit1;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private K1 mBannerAdUnit2;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private K1 mForegroundBannerAdUnit;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private K1 mBackgroundBannerAdUnit;

    private final boolean I() {
        K1 k1 = this.mForegroundBannerAdUnit;
        Byte bValueOf = k1 != null ? Byte.valueOf(k1.Q()) : null;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P).c(TAG, "shouldUseForegroundUnit " + this + " state - " + bValueOf);
        }
        return (bValueOf != null && bValueOf.byteValue() == 4) || (bValueOf != null && bValueOf.byteValue() == 7) || (bValueOf != null && bValueOf.byteValue() == 6);
    }

    private final void J() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "submitAdShowFail ", this));
        }
        Q0 q0J = j();
        if (q0J != null) {
            q0J.c((short) 2239);
        }
    }

    public final int A() {
        AdConfig adConfigJ;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "defaultRefreshInterval ", this));
        }
        Q0 q0J = j();
        if (q0J == null || (adConfigJ = q0J.j()) == null) {
            return -1;
        }
        return adConfigJ.getDefaultRefreshInterval();
    }

    public final boolean B() {
        String TAG = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        Intrinsics.areEqual(this.mForegroundBannerAdUnit, this.mBannerAdUnit1);
        String TAG2 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        Intrinsics.areEqual(this.mBackgroundBannerAdUnit, this.mBannerAdUnit1);
        String TAG3 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
        Intrinsics.areEqual(this.mForegroundBannerAdUnit, this.mBannerAdUnit2);
        String TAG4 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
        Intrinsics.areEqual(this.mBackgroundBannerAdUnit, this.mBannerAdUnit2);
        String TAG5 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
        K1 k1 = this.mBannerAdUnit1;
        if (k1 != null) {
            k1.E0();
        }
        K1 k12 = this.mBannerAdUnit1;
        if (k12 != null) {
            k12.Q();
        }
        Objects.toString(this.mBannerAdUnit1);
        String TAG6 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
        K1 k13 = this.mBannerAdUnit2;
        if (k13 != null) {
            k13.E0();
        }
        K1 k14 = this.mBannerAdUnit2;
        if (k14 != null) {
            k14.Q();
        }
        Objects.toString(this.mBannerAdUnit2);
        K1 k15 = this.mForegroundBannerAdUnit;
        if (k15 != null) {
            return k15.E0();
        }
        return false;
    }

    public final boolean C() {
        C0325h c0325hM;
        K1 k1 = this.mForegroundBannerAdUnit;
        if (k1 == null || (c0325hM = k1.m()) == null) {
            return false;
        }
        return Intrinsics.areEqual(c0325hM.p(), "audio");
    }

    public boolean D() {
        return (this.mBannerAdUnit1 == null || this.mBannerAdUnit2 == null) ? false : true;
    }

    public final void E() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "pause ", this));
        }
        K1 k1 = this.mForegroundBannerAdUnit;
        if (k1 != null) {
            k1.F0();
        }
    }

    public final void F() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "registerLifeCycleCallbacks ", this));
        }
        K1 k1 = this.mBannerAdUnit1;
        if (k1 != null) {
            k1.H0();
        }
        K1 k12 = this.mBannerAdUnit2;
        if (k12 != null) {
            k12.H0();
        }
    }

    public final void G() throws IllegalStateException {
        K1 k1;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "render ", this));
        }
        K1 k12 = this.mBackgroundBannerAdUnit;
        if (k12 == null) {
            throw new IllegalStateException(Mc.m);
        }
        if (k12 == null || !a(this.DEBUG_LOG_TAG, k12.I().toString())) {
            return;
        }
        if (v() && (k1 = this.mBackgroundBannerAdUnit) != null) {
            k1.e((byte) 1);
        }
        a((byte) 8);
        k12.j0();
    }

    public final void H() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "resume ", this));
        }
        K1 k1 = this.mForegroundBannerAdUnit;
        if (k1 != null) {
            k1.G0();
        }
    }

    public final void K() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "swapAdUnits ", this));
        }
        K1 k1 = this.mForegroundBannerAdUnit;
        if (k1 == null) {
            this.mForegroundBannerAdUnit = this.mBannerAdUnit1;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit2;
        } else if (Intrinsics.areEqual(k1, this.mBannerAdUnit1)) {
            this.mForegroundBannerAdUnit = this.mBannerAdUnit2;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit1;
        } else if (Intrinsics.areEqual(k1, this.mBannerAdUnit2)) {
            this.mForegroundBannerAdUnit = this.mBannerAdUnit1;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit2;
        }
    }

    public final void L() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "unregisterLifeCycleCallbacks ", this));
        }
        K1 k1 = this.mBannerAdUnit1;
        if (k1 != null) {
            k1.J0();
        }
        K1 k12 = this.mBannerAdUnit2;
        if (k12 != null) {
            k12.J0();
        }
    }

    public final void a(Context context, Y9 pubSettings, String adSize, String logType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(logType, "logType");
        Intrinsics.checkNotNullExpressionValue(this.TAG, "TAG");
        W w = new W("banner");
        Intrinsics.checkNotNullParameter(context, "context");
        Y yA = w.d(context instanceof Activity ? "activity" : "others").a(pubSettings.f289a).c(pubSettings.b).a(pubSettings.c).a(adSize).a(pubSettings.d).e(pubSettings.e).b(pubSettings.f).a();
        String str = pubSettings.e;
        if (str != null) {
            InterfaceC0298f5 interfaceC0298f5P = p();
            if (interfaceC0298f5P != null) {
                ((C0314g5) interfaceC0298f5P).a();
            }
            B6 b6 = Ea.f109a;
            a(Ea.a(logType, str, false));
        }
        K1 k1 = this.mBannerAdUnit1;
        if (k1 == null || this.mBannerAdUnit2 == null) {
            this.mBannerAdUnit1 = new K1(context, yA, this);
            K1 k12 = new K1(context, yA, this);
            this.mBannerAdUnit2 = k12;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit1;
            this.mForegroundBannerAdUnit = k12;
        } else {
            k1.a(context, yA, this);
            K1 k13 = this.mBannerAdUnit2;
            if (k13 != null) {
                k13.a(context, yA, this);
            }
        }
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            K1 k14 = this.mBannerAdUnit1;
            if (k14 != null) {
                k14.a(interfaceC0298f5P2);
            }
            K1 k15 = this.mBannerAdUnit2;
            if (k15 != null) {
                k15.a(interfaceC0298f5P2);
            }
            InterfaceC0298f5 interfaceC0298f5P3 = p();
            if (interfaceC0298f5P3 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5P3).a(TAG, "adding mBannerAdUnit1 to reference tracker");
            }
            B6 b62 = Ea.f109a;
            K1 k16 = this.mBannerAdUnit1;
            Intrinsics.checkNotNull(k16);
            Ea.a(k16, p());
            InterfaceC0298f5 interfaceC0298f5P4 = p();
            if (interfaceC0298f5P4 != null) {
                String TAG2 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f5P4).a(TAG2, "adding mBannerAdUnit2 to reference tracker");
            }
            K1 k17 = this.mBannerAdUnit2;
            Intrinsics.checkNotNull(k17);
            Ea.a(k17, p());
        }
        WatermarkData watermarkDataT = t();
        if (watermarkDataT != null) {
            K1 k18 = this.mBannerAdUnit1;
            if (k18 != null) {
                k18.a(watermarkDataT);
            }
            K1 k19 = this.mBannerAdUnit2;
            if (k19 != null) {
                k19.a(watermarkDataT);
            }
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public void b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "onAdFetchSuccess ", this));
        }
        d(info);
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        K1 k1 = this.mBackgroundBannerAdUnit;
        if ((k1 != null ? k1.m() : null) == null) {
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5P2).b(TAG, "backgroundAdUnit ad object is null");
            }
            a((Q0) null, inMobiAdRequestStatus);
            b((short) 2189);
            return;
        }
        InterfaceC0298f5 interfaceC0298f5P3 = p();
        if (interfaceC0298f5P3 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f5P3).a(TAG2, "Ad fetch successful, calling loadAd()");
        }
        super.b(info);
        s().post(new Runnable() { // from class: com.inmobi.media.P1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                P1.a(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public void c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "onAdLoadSucceeded ", this));
        }
        super.c(info);
        a((byte) 0);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P2).a(TAG, "Ad load successful, providing callback");
        }
        s().post(new Runnable() { // from class: com.inmobi.media.P1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                P1.b(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.Mc
    public Q0 j() {
        return I() ? this.mForegroundBannerAdUnit : this.mBackgroundBannerAdUnit;
    }

    public final boolean x() {
        K1 k1;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "canProceedForSuccess ", this));
        }
        if (this.mForegroundBannerAdUnit != null && (k1 = this.mBackgroundBannerAdUnit) != null) {
            k1.Q();
        }
        return true;
    }

    public final boolean y() {
        K1 k1;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "canScheduleRefresh ", this));
        }
        K1 k12 = this.mBackgroundBannerAdUnit;
        if (k12 == null) {
            return false;
        }
        Byte bValueOf = k12 != null ? Byte.valueOf(k12.Q()) : null;
        if ((bValueOf == null || bValueOf.byteValue() != 4) && ((bValueOf == null || bValueOf.byteValue() != 1) && ((bValueOf == null || bValueOf.byteValue() != 2) && ((k1 = this.mForegroundBannerAdUnit) == null || k1.Q() != 7)))) {
            return true;
        }
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P2).a(TAG, "Ignoring an attempt to schedule refresh when an ad is already loading or active.");
        }
        return false;
    }

    public final void z() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "clear ", this));
        }
        L();
        K1 k1 = this.mBannerAdUnit1;
        if (k1 != null) {
            k1.g();
        }
        this.mBannerAdUnit1 = null;
        K1 k12 = this.mBannerAdUnit2;
        if (k12 != null) {
            k12.g();
        }
        this.mBannerAdUnit2 = null;
        a((InterfaceC0298f5) null);
        this.mForegroundBannerAdUnit = null;
        this.mBackgroundBannerAdUnit = null;
        a((Boolean) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(P1 this$0, AdMetaInfo info) {
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
            return;
        }
        InterfaceC0298f5 interfaceC0298f5P2 = this$0.p();
        if (interfaceC0298f5P2 != null) {
            String TAG2 = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f5P2).b(TAG2, "callback null");
        }
    }

    @Override // com.inmobi.media.E0
    public void a(int next, final int callerIndex, Ya renderView) {
        ViewParent parent;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "onShowNextPodAd ", this));
        }
        super.a(next, callerIndex, renderView);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String str2 = this.TAG;
            ((C0314g5) interfaceC0298f5P2).a(str2, AbstractC0568x8.a(str2, "TAG", "on Show next pod ad index: ", next));
        }
        if (renderView != null) {
            try {
                parent = renderView.getParent();
            } catch (Exception unused) {
                K1 k1 = this.mForegroundBannerAdUnit;
                if (k1 != null) {
                    k1.f(callerIndex);
                }
                K1 k12 = this.mForegroundBannerAdUnit;
                if (k12 != null) {
                    k12.b(callerIndex, false);
                    return;
                }
                return;
            }
        } else {
            parent = null;
        }
        InMobiBanner inMobiBanner = parent instanceof InMobiBanner ? (InMobiBanner) parent : null;
        if (inMobiBanner != null) {
            K1 k13 = this.mForegroundBannerAdUnit;
            if (k13 != null) {
                k13.b(callerIndex, true);
            }
            b(inMobiBanner);
            s().post(new Runnable() { // from class: com.inmobi.media.P1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    P1.a(this.f$0, callerIndex);
                }
            });
            return;
        }
        K1 k14 = this.mForegroundBannerAdUnit;
        if (k14 != null) {
            k14.f(callerIndex);
        }
        K1 k15 = this.mForegroundBannerAdUnit;
        if (k15 != null) {
            k15.b(callerIndex, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(P1 this$0, AdMetaInfo info) {
        Unit unit;
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
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this$0.b((short) 2184);
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public void b() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "onAdDismissed ", this));
        }
        a((byte) 0);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P2).d(TAG, "AdManager state - CREATED");
        }
        super.b();
    }

    private final void b(RelativeLayout inMobiBanner) {
        Y yI;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "displayInternal ", this));
        }
        K1 k1 = this.mForegroundBannerAdUnit;
        if (k1 == null) {
            return;
        }
        InterfaceC0559x interfaceC0559xK = k1.k();
        Ya ya = interfaceC0559xK instanceof Ya ? (Ya) interfaceC0559xK : null;
        if (ya == null) {
            return;
        }
        AbstractC0416md viewableAd = ya.getViewableAd();
        K1 k12 = this.mForegroundBannerAdUnit;
        if (k12 != null && (yI = k12.I()) != null && yI.p()) {
            ya.e();
        }
        View viewD = viewableAd.d();
        viewableAd.a(new HashMap());
        ViewParent parent = ya.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (viewGroup == null) {
            inMobiBanner.addView(viewD, layoutParams);
        } else {
            viewGroup.removeAllViews();
            viewGroup.addView(viewD, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(P1 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        K1 k1 = this$0.mForegroundBannerAdUnit;
        if (k1 != null) {
            k1.a(i, false);
        }
    }

    public final void a(PublisherCallbacks callbacks, String adSize, boolean isRefreshRequest) {
        K1 k1;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "load 1 ", this));
        }
        if (Intrinsics.areEqual(u(), Boolean.FALSE)) {
            b(this.mBackgroundBannerAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            K1 k12 = this.mBackgroundBannerAdUnit;
            if (k12 != null) {
                k12.a((short) 2006);
            }
            I6.a((byte) 1, this.DEBUG_LOG_TAG, "Cannot call load() API after calling load(byte[])");
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5P2).b(TAG, "Cannot call load() API after calling load(byte[])");
                return;
            }
            return;
        }
        a(Boolean.TRUE);
        if (l() == null) {
            b(callbacks);
        }
        K1 k13 = this.mBackgroundBannerAdUnit;
        if (k13 == null || !a(this.DEBUG_LOG_TAG, String.valueOf(k13.I()), callbacks) || (k1 = this.mBackgroundBannerAdUnit) == null || !k1.e(o())) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5P3 = p();
        if (interfaceC0298f5P3 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f5P3).d(TAG2, "AdManager state - LOADING");
        }
        a((byte) 1);
        d(null);
        K1 k14 = this.mBackgroundBannerAdUnit;
        Intrinsics.checkNotNull(k14);
        k14.e(adSize);
        K1 k15 = this.mBackgroundBannerAdUnit;
        Intrinsics.checkNotNull(k15);
        k15.e(isRefreshRequest);
    }

    @Override // com.inmobi.media.Mc
    public void a(byte[] response, PublisherCallbacks callbacks) {
        K1 k1;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "load 2 ", this));
        }
        if (Intrinsics.areEqual(u(), Boolean.TRUE)) {
            I6.a((byte) 1, "InMobi", "Cannot call load(byte[]) API after load() API is called");
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5P2).b(TAG, "Cannot call load(byte[]) API after load() API is called");
                return;
            }
            return;
        }
        a(Boolean.FALSE);
        a((byte) 1);
        b(callbacks);
        if (this.mBackgroundBannerAdUnit != null) {
            K1 k12 = this.mForegroundBannerAdUnit;
            if ((k12 == null || !k12.Y()) && (k1 = this.mBackgroundBannerAdUnit) != null && k1.e((byte) 1)) {
                InterfaceC0298f5 interfaceC0298f5P3 = p();
                if (interfaceC0298f5P3 != null) {
                    String TAG2 = this.TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f5P3).a(TAG2, "timer started - load banner");
                }
                K1 k13 = this.mBackgroundBannerAdUnit;
                if (k13 != null) {
                    k13.e0();
                }
                K1 k14 = this.mBackgroundBannerAdUnit;
                if (k14 != null) {
                    k14.a(response);
                }
            }
        }
    }

    public final void b(short errorCode) {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "submitAdLoadFailed ", this));
        }
        Q0 q0J = j();
        if (q0J != null) {
            q0J.b(errorCode);
        }
    }

    public final void a(RelativeLayout banner) {
        Y yI;
        Intrinsics.checkNotNullParameter(banner, "banner");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).a(str, O1.a(str, "TAG", "displayAd ", this));
        }
        K1 k1 = this.mForegroundBannerAdUnit;
        InterfaceC0559x interfaceC0559xK = k1 != null ? k1.k() : null;
        Ya ya = interfaceC0559xK instanceof Ya ? (Ya) interfaceC0559xK : null;
        if (ya == null) {
            return;
        }
        AbstractC0416md viewableAd = ya.getViewableAd();
        K1 k12 = this.mForegroundBannerAdUnit;
        if (k12 != null && (yI = k12.I()) != null && yI.p()) {
            ya.e();
        }
        ViewParent parent = ya.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        View viewD = viewableAd.d();
        viewableAd.a(new HashMap());
        K1 k13 = this.mBackgroundBannerAdUnit;
        if (k13 != null) {
            k13.F0();
        }
        K1 k14 = this.mForegroundBannerAdUnit;
        if (k14 != null && k14.Q() == 8) {
            View view = new View(banner.getContext());
            view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            a(viewGroup, banner, layoutParams, view);
            J();
        } else {
            a(viewGroup, banner, layoutParams, viewD);
        }
        K1 k15 = this.mBackgroundBannerAdUnit;
        if (k15 != null) {
            k15.g();
        }
    }

    private static final void a(ViewGroup viewGroup, RelativeLayout relativeLayout, RelativeLayout.LayoutParams layoutParams, View view) {
        if (viewGroup == null) {
            relativeLayout.addView(view, layoutParams);
        } else {
            viewGroup.removeAllViews();
            viewGroup.addView(view, layoutParams);
        }
    }

    @Override // com.inmobi.media.Mc
    public void a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        super.a(watermarkData);
        K1 k1 = this.mBannerAdUnit1;
        if (k1 != null) {
            k1.a(watermarkData);
        }
        K1 k12 = this.mBannerAdUnit2;
        if (k12 != null) {
            k12.a(watermarkData);
        }
    }

    public final int a(int _refreshInterval, int previousInterval) {
        AdConfig adConfigJ;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "getRefreshInterval ", this));
        }
        K1 k1 = this.mBackgroundBannerAdUnit;
        return (k1 == null || (adConfigJ = k1.j()) == null) ? previousInterval : _refreshInterval < adConfigJ.getMinimumRefreshInterval() ? adConfigJ.getMinimumRefreshInterval() : _refreshInterval;
    }

    public final boolean a(long adLoadCalledTimestamp) {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = this.TAG;
            ((C0314g5) interfaceC0298f5P).c(str, O1.a(str, "TAG", "checkForRefreshRate ", this));
        }
        K1 k1 = this.mBackgroundBannerAdUnit;
        if (k1 == null) {
            return false;
        }
        AdConfig adConfigJ = k1.j();
        Intrinsics.checkNotNull(adConfigJ);
        int minimumRefreshInterval = adConfigJ.getMinimumRefreshInterval();
        if (SystemClock.elapsedRealtime() - adLoadCalledTimestamp >= minimumRefreshInterval * 1000) {
            return true;
        }
        a((short) 2175);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5P2).b(TAG, "Early refresh request");
        }
        b(this.mBackgroundBannerAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST).setCustomMessage("Ad cannot be refreshed before " + minimumRefreshInterval + " seconds"));
        String TAG2 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        StringBuilder sbAppend = new StringBuilder("Ad cannot be refreshed before ").append(minimumRefreshInterval).append(" seconds (AdPlacement Id = ");
        K1 k12 = this.mBackgroundBannerAdUnit;
        I6.a((byte) 1, TAG2, sbAppend.append(k12 != null ? k12.I() : null).append(')').toString());
        InterfaceC0298f5 interfaceC0298f5P3 = p();
        if (interfaceC0298f5P3 != null) {
            String TAG3 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            StringBuilder sbAppend2 = new StringBuilder("Ad cannot be refreshed before ").append(minimumRefreshInterval).append(" seconds (AdPlacement Id = ");
            K1 k13 = this.mBackgroundBannerAdUnit;
            ((C0314g5) interfaceC0298f5P3).b(TAG3, sbAppend2.append(k13 != null ? k13.I() : null).append(')').toString());
        }
        return false;
    }
}
