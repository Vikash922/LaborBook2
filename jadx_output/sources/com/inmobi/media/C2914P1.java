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

/* JADX INFO: renamed from: com.inmobi.media.P1 */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\r\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0003J)\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0017¢\u0006\u0004\b\f\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0013¢\u0006\u0004\b\u001c\u0010\u0015J'\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\f\u0010 J\r\u0010!\u001a\u00020\u000b¢\u0006\u0004\b!\u0010\u0003J!\u0010\f\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\f\u0010$J\r\u0010%\u001a\u00020\u000b¢\u0006\u0004\b%\u0010\u0003J\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b\f\u0010(J\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b\f\u0010+J\r\u0010,\u001a\u00020\u000b¢\u0006\u0004\b,\u0010\u0003J\r\u0010-\u001a\u00020\u000b¢\u0006\u0004\b-\u0010\u0003J\u001d\u0010\f\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u0016¢\u0006\u0004\b\f\u00100J\u0015\u0010\f\u001a\u00020\u00132\u0006\u00102\u001a\u000201¢\u0006\u0004\b\f\u00103J\r\u00104\u001a\u00020\u000b¢\u0006\u0004\b4\u0010\u0003J\r\u00105\u001a\u00020\u0013¢\u0006\u0004\b5\u0010\u0015J\r\u00106\u001a\u00020\u000b¢\u0006\u0004\b6\u0010\u0003J\r\u00107\u001a\u00020\u000b¢\u0006\u0004\b7\u0010\u0003J\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u00109\u001a\u000208¢\u0006\u0004\b\u0010\u0010:J\u000f\u0010;\u001a\u00020\u0013H\u0002¢\u0006\u0004\b;\u0010\u0015J\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020&H\u0002¢\u0006\u0004\b\u0010\u0010(J\u000f\u0010=\u001a\u00020\u000bH\u0002¢\u0006\u0004\b=\u0010\u0003R\u0014\u0010@\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b>\u0010?R\u001c\u0010C\u001a\n A*\u0004\u0018\u00010\b0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010?R\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010FR\u0018\u0010M\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010FR\u0016\u0010Q\u001a\u0004\u0018\u00010N8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0014\u0010S\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010\u0015R\u0011\u0010V\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0011\u0010X\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\bW\u0010\u0015¨\u0006Y"}, m2722d2 = {"Lcom/inmobi/media/P1;", "Lcom/inmobi/media/Mc;", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/inmobi/media/Y9;", "pubSettings", "", "adSize", "logType", "", "a", "(Landroid/content/Context;Lcom/inmobi/media/Y9;Ljava/lang/String;Ljava/lang/String;)V", "Lcom/inmobi/ads/AdMetaInfo;", "info", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "(Lcom/inmobi/ads/AdMetaInfo;)V", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "", SvgConstants.Attributes.PATH_DATA_CURVE_TO, "()Z", "", "next", "callerIndex", "Lcom/inmobi/media/Ya;", "renderView", "(IILcom/inmobi/media/Ya;)V", SvgConstants.Attributes.f3333Y, "Lcom/inmobi/ads/controllers/PublisherCallbacks;", "callbacks", "isRefreshRequest", "(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "", "response", "([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V", "K", "Landroid/widget/RelativeLayout;", "banner", "(Landroid/widget/RelativeLayout;)V", "Lcom/inmobi/ads/WatermarkData;", "watermarkData", "(Lcom/inmobi/ads/WatermarkData;)V", "H", ExifInterface.LONGITUDE_EAST, "_refreshInterval", "previousInterval", "(II)I", "", "adLoadCalledTimestamp", "(J)Z", "L", SvgConstants.Attributes.f3330X, "F", "z", "", "errorCode", "(S)V", "I", "inMobiBanner", "J", "o", "Ljava/lang/String;", "DEBUG_LOG_TAG", "kotlin.jvm.PlatformType", "p", "TAG", "Lcom/inmobi/media/K1;", "q", "Lcom/inmobi/media/K1;", "mBannerAdUnit1", "r", "mBannerAdUnit2", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, "mForegroundBannerAdUnit", SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "mBackgroundBannerAdUnit", "Lcom/inmobi/media/Q0;", "j", "()Lcom/inmobi/media/Q0;", OutOfContextTestingActivity.AD_UNIT_KEY, "D", "isInitialised", "A", "()I", "defaultRefreshInterval", SvgConstants.Attributes.PATH_DATA_BEARING, "isActive", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class C2914P1 extends AbstractC2880Mc {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final String DEBUG_LOG_TAG = "InMobi";

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final String TAG = "P1";

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private C2839K1 mBannerAdUnit1;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private C2839K1 mBannerAdUnit2;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private C2839K1 mForegroundBannerAdUnit;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private C2839K1 mBackgroundBannerAdUnit;

    /* JADX INFO: renamed from: I */
    private final boolean m1426I() {
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        Byte bValueOf = c2839k1 != null ? Byte.valueOf(c2839k1.m1577Q()) : null;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(TAG, "shouldUseForegroundUnit " + this + " state - " + bValueOf);
        }
        return (bValueOf != null && bValueOf.byteValue() == 4) || (bValueOf != null && bValueOf.byteValue() == 7) || (bValueOf != null && bValueOf.byteValue() == 6);
    }

    /* JADX INFO: renamed from: J */
    private final void m1427J() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "submitAdShowFail ", this));
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1655c((short) 2239);
        }
    }

    /* JADX INFO: renamed from: A */
    public final int m1433A() {
        AdConfig adConfigM1680j;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "defaultRefreshInterval ", this));
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j == null || (adConfigM1680j = abstractC2928Q0Mo886j.m1680j()) == null) {
            return -1;
        }
        return adConfigM1680j.getDefaultRefreshInterval();
    }

    /* JADX INFO: renamed from: B */
    public final boolean m1434B() {
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
        C2839K1 c2839k1 = this.mBannerAdUnit1;
        if (c2839k1 != null) {
            c2839k1.m1215E0();
        }
        C2839K1 c2839k12 = this.mBannerAdUnit1;
        if (c2839k12 != null) {
            c2839k12.m1577Q();
        }
        Objects.toString(this.mBannerAdUnit1);
        String TAG6 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
        C2839K1 c2839k13 = this.mBannerAdUnit2;
        if (c2839k13 != null) {
            c2839k13.m1215E0();
        }
        C2839K1 c2839k14 = this.mBannerAdUnit2;
        if (c2839k14 != null) {
            c2839k14.m1577Q();
        }
        Objects.toString(this.mBannerAdUnit2);
        C2839K1 c2839k15 = this.mForegroundBannerAdUnit;
        if (c2839k15 != null) {
            return c2839k15.m1215E0();
        }
        return false;
    }

    /* JADX INFO: renamed from: C */
    public final boolean m1435C() {
        C3171h c3171hM1688m;
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        if (c2839k1 == null || (c3171hM1688m = c2839k1.m1688m()) == null) {
            return false;
        }
        return Intrinsics.areEqual(c3171hM1688m.m2200p(), "audio");
    }

    /* JADX INFO: renamed from: D */
    public boolean m1436D() {
        return (this.mBannerAdUnit1 == null || this.mBannerAdUnit2 == null) ? false : true;
    }

    /* JADX INFO: renamed from: E */
    public final void m1437E() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "pause ", this));
        }
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        if (c2839k1 != null) {
            c2839k1.m1216F0();
        }
    }

    /* JADX INFO: renamed from: F */
    public final void m1438F() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "registerLifeCycleCallbacks ", this));
        }
        C2839K1 c2839k1 = this.mBannerAdUnit1;
        if (c2839k1 != null) {
            c2839k1.m1218H0();
        }
        C2839K1 c2839k12 = this.mBannerAdUnit2;
        if (c2839k12 != null) {
            c2839k12.m1218H0();
        }
    }

    /* JADX INFO: renamed from: G */
    public final void m1439G() throws IllegalStateException {
        C2839K1 c2839k1;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "render ", this));
        }
        C2839K1 c2839k12 = this.mBackgroundBannerAdUnit;
        if (c2839k12 == null) {
            throw new IllegalStateException(AbstractC2880Mc.f1273m);
        }
        if (c2839k12 == null || !m1356a(this.DEBUG_LOG_TAG, c2839k12.m1570I().toString())) {
            return;
        }
        if (m1372v() && (c2839k1 = this.mBackgroundBannerAdUnit) != null) {
            c2839k1.m1667e((byte) 1);
        }
        m1351a((byte) 8);
        c2839k12.mo912j0();
    }

    /* JADX INFO: renamed from: H */
    public final void m1440H() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "resume ", this));
        }
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        if (c2839k1 != null) {
            c2839k1.m1217G0();
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m1441K() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "swapAdUnits ", this));
        }
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        if (c2839k1 == null) {
            this.mForegroundBannerAdUnit = this.mBannerAdUnit1;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit2;
        } else if (Intrinsics.areEqual(c2839k1, this.mBannerAdUnit1)) {
            this.mForegroundBannerAdUnit = this.mBannerAdUnit2;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit1;
        } else if (Intrinsics.areEqual(c2839k1, this.mBannerAdUnit2)) {
            this.mForegroundBannerAdUnit = this.mBannerAdUnit1;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit2;
        }
    }

    /* JADX INFO: renamed from: L */
    public final void m1442L() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "unregisterLifeCycleCallbacks ", this));
        }
        C2839K1 c2839k1 = this.mBannerAdUnit1;
        if (c2839k1 != null) {
            c2839k1.m1220J0();
        }
        C2839K1 c2839k12 = this.mBannerAdUnit2;
        if (c2839k12 != null) {
            c2839k12.m1220J0();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1444a(Context context, C3048Y9 pubSettings, String adSize, String logType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(logType, "logType");
        Intrinsics.checkNotNullExpressionValue(this.TAG, "TAG");
        C3010W c3010w = new C3010W("banner");
        Intrinsics.checkNotNullParameter(context, "context");
        C3038Y c3038yM1884a = c3010w.m1887d(context instanceof Activity ? "activity" : "others").m1879a(pubSettings.f1688a).m1886c(pubSettings.f1689b).m1882a(pubSettings.f1690c).m1881a(adSize).m1883a(pubSettings.f1691d).m1888e(pubSettings.f1692e).m1885b(pubSettings.f1693f).m1884a();
        String str = pubSettings.f1692e;
        if (str != null) {
            InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
            if (interfaceC3147f5M1367p != null) {
                ((C3162g5) interfaceC3147f5M1367p).m2146a();
            }
            EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
            m1354a(C2758Ea.m1051a(logType, str, false));
        }
        C2839K1 c2839k1 = this.mBannerAdUnit1;
        if (c2839k1 == null || this.mBannerAdUnit2 == null) {
            this.mBannerAdUnit1 = new C2839K1(context, c3038yM1884a, this);
            C2839K1 c2839k12 = new C2839K1(context, c3038yM1884a, this);
            this.mBannerAdUnit2 = c2839k12;
            this.mBackgroundBannerAdUnit = this.mBannerAdUnit1;
            this.mForegroundBannerAdUnit = c2839k12;
        } else {
            c2839k1.m1595a(context, c3038yM1884a, this);
            C2839K1 c2839k13 = this.mBannerAdUnit2;
            if (c2839k13 != null) {
                c2839k13.m1595a(context, c3038yM1884a, this);
            }
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            C2839K1 c2839k14 = this.mBannerAdUnit1;
            if (c2839k14 != null) {
                c2839k14.m1607a(interfaceC3147f5M1367p2);
            }
            C2839K1 c2839k15 = this.mBannerAdUnit2;
            if (c2839k15 != null) {
                c2839k15.m1607a(interfaceC3147f5M1367p2);
            }
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5M1367p3).m2147a(TAG, "adding mBannerAdUnit1 to reference tracker");
            }
            EnumC2709B6 enumC2709B62 = C2758Ea.f1001a;
            C2839K1 c2839k16 = this.mBannerAdUnit1;
            Intrinsics.checkNotNull(c2839k16);
            C2758Ea.m1053a(c2839k16, m1367p());
            InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
            if (interfaceC3147f5M1367p4 != null) {
                String TAG2 = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f5M1367p4).m2147a(TAG2, "adding mBannerAdUnit2 to reference tracker");
            }
            C2839K1 c2839k17 = this.mBannerAdUnit2;
            Intrinsics.checkNotNull(c2839k17);
            C2758Ea.m1053a(c2839k17, m1367p());
        }
        WatermarkData watermarkDataM1370t = m1370t();
        if (watermarkDataM1370t != null) {
            C2839K1 c2839k18 = this.mBannerAdUnit1;
            if (c2839k18 != null) {
                c2839k18.m1599a(watermarkDataM1370t);
            }
            C2839K1 c2839k19 = this.mBannerAdUnit2;
            if (c2839k19 != null) {
                c2839k19.m1599a(watermarkDataM1370t);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo882b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "onAdFetchSuccess ", this));
        }
        m1361d(info);
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        C2839K1 c2839k1 = this.mBackgroundBannerAdUnit;
        if ((c2839k1 != null ? c2839k1.m1688m() : null) == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG, "backgroundAdUnit ad object is null");
            }
            mo878a((AbstractC2928Q0) null, inMobiAdRequestStatus);
            m1448b((short) 2189);
            return;
        }
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f5M1367p3).m2147a(TAG2, "Ad fetch successful, calling loadAd()");
        }
        super.mo882b(info);
        m1369s().post(new Runnable() { // from class: com.inmobi.media.P1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2914P1.m1430a(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: c */
    public void mo884c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "onAdLoadSucceeded ", this));
        }
        super.mo884c(info);
        m1351a((byte) 0);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2147a(TAG, "Ad load successful, providing callback");
        }
        m1369s().post(new Runnable() { // from class: com.inmobi.media.P1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C2914P1.m1432b(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: j */
    public AbstractC2928Q0 mo886j() {
        return m1426I() ? this.mForegroundBannerAdUnit : this.mBackgroundBannerAdUnit;
    }

    /* JADX INFO: renamed from: x */
    public final boolean m1449x() {
        C2839K1 c2839k1;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "canProceedForSuccess ", this));
        }
        if (this.mForegroundBannerAdUnit != null && (c2839k1 = this.mBackgroundBannerAdUnit) != null) {
            c2839k1.m1577Q();
        }
        return true;
    }

    /* JADX INFO: renamed from: y */
    public final boolean m1450y() {
        C2839K1 c2839k1;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "canScheduleRefresh ", this));
        }
        C2839K1 c2839k12 = this.mBackgroundBannerAdUnit;
        if (c2839k12 == null) {
            return false;
        }
        Byte bValueOf = c2839k12 != null ? Byte.valueOf(c2839k12.m1577Q()) : null;
        if ((bValueOf == null || bValueOf.byteValue() != 4) && ((bValueOf == null || bValueOf.byteValue() != 1) && ((bValueOf == null || bValueOf.byteValue() != 2) && ((c2839k1 = this.mForegroundBannerAdUnit) == null || c2839k1.m1577Q() != 7)))) {
            return true;
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2147a(TAG, "Ignoring an attempt to schedule refresh when an ad is already loading or active.");
        }
        return false;
    }

    /* JADX INFO: renamed from: z */
    public final void m1451z() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "clear ", this));
        }
        m1442L();
        C2839K1 c2839k1 = this.mBannerAdUnit1;
        if (c2839k1 != null) {
            c2839k1.mo1231g();
        }
        this.mBannerAdUnit1 = null;
        C2839K1 c2839k12 = this.mBannerAdUnit2;
        if (c2839k12 != null) {
            c2839k12.mo1231g();
        }
        this.mBannerAdUnit2 = null;
        m1354a((InterfaceC3147f5) null);
        this.mForegroundBannerAdUnit = null;
        this.mBackgroundBannerAdUnit = null;
        m1355a((Boolean) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m1430a(C2914P1 this$0, AdMetaInfo info) {
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
            return;
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = this$0.m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String TAG2 = this$0.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG2, "callback null");
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo972a(int next, final int callerIndex, GestureDetectorOnGestureListenerC3049Ya renderView) {
        ViewParent parent;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "onShowNextPodAd ", this));
        }
        super.mo972a(next, callerIndex, renderView);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String str2 = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p2).m2147a(str2, AbstractC3420x8.m2595a(str2, "TAG", "on Show next pod ad index: ", next));
        }
        if (renderView != null) {
            try {
                parent = renderView.getParent();
            } catch (Exception unused) {
                C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
                if (c2839k1 != null) {
                    c2839k1.m1670f(callerIndex);
                }
                C2839K1 c2839k12 = this.mForegroundBannerAdUnit;
                if (c2839k12 != null) {
                    c2839k12.m1630b(callerIndex, false);
                    return;
                }
                return;
            }
        } else {
            parent = null;
        }
        InMobiBanner inMobiBanner = parent instanceof InMobiBanner ? (InMobiBanner) parent : null;
        if (inMobiBanner != null) {
            C2839K1 c2839k13 = this.mForegroundBannerAdUnit;
            if (c2839k13 != null) {
                c2839k13.m1630b(callerIndex, true);
            }
            m1431b(inMobiBanner);
            m1369s().post(new Runnable() { // from class: com.inmobi.media.P1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C2914P1.m1429a(this.f$0, callerIndex);
                }
            });
            return;
        }
        C2839K1 c2839k14 = this.mForegroundBannerAdUnit;
        if (c2839k14 != null) {
            c2839k14.m1670f(callerIndex);
        }
        C2839K1 c2839k15 = this.mForegroundBannerAdUnit;
        if (c2839k15 != null) {
            c2839k15.m1630b(callerIndex, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public static final void m1432b(C2914P1 this$0, AdMetaInfo info) {
        Unit unit;
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
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this$0.m1448b((short) 2184);
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo881b() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "onAdDismissed ", this));
        }
        m1351a((byte) 0);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2153d(TAG, "AdManager state - CREATED");
        }
        super.mo881b();
    }

    /* JADX INFO: renamed from: b */
    private final void m1431b(RelativeLayout inMobiBanner) {
        C3038Y c3038yM1570I;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "displayInternal ", this));
        }
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        if (c2839k1 == null) {
            return;
        }
        InterfaceC3411x interfaceC3411xM1682k = c2839k1.m1682k();
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = interfaceC3411xM1682k instanceof GestureDetectorOnGestureListenerC3049Ya ? (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411xM1682k : null;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            return;
        }
        AbstractC3260md viewableAd = gestureDetectorOnGestureListenerC3049Ya.getViewableAd();
        C2839K1 c2839k12 = this.mForegroundBannerAdUnit;
        if (c2839k12 != null && (c3038yM1570I = c2839k12.m1570I()) != null && c3038yM1570I.m1941p()) {
            gestureDetectorOnGestureListenerC3049Ya.mo1969e();
        }
        View viewMo964d = viewableAd.mo964d();
        viewableAd.mo962a(new HashMap());
        ViewParent parent = gestureDetectorOnGestureListenerC3049Ya.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (viewGroup == null) {
            inMobiBanner.addView(viewMo964d, layoutParams);
        } else {
            viewGroup.removeAllViews();
            viewGroup.addView(viewMo964d, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m1429a(C2914P1 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2839K1 c2839k1 = this$0.mForegroundBannerAdUnit;
        if (c2839k1 != null) {
            c2839k1.m1593a(i, false);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1446a(PublisherCallbacks callbacks, String adSize, boolean isRefreshRequest) {
        C2839K1 c2839k1;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "load 1 ", this));
        }
        if (Intrinsics.areEqual(m1371u(), Boolean.FALSE)) {
            m1360b(this.mBackgroundBannerAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            C2839K1 c2839k12 = this.mBackgroundBannerAdUnit;
            if (c2839k12 != null) {
                c2839k12.m1620a((short) 2006);
            }
            AbstractC2814I6.m1170a((byte) 1, this.DEBUG_LOG_TAG, "Cannot call load() API after calling load(byte[])");
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG, "Cannot call load() API after calling load(byte[])");
                return;
            }
            return;
        }
        m1355a(Boolean.TRUE);
        if (m1363l() == null) {
            m1359b(callbacks);
        }
        C2839K1 c2839k13 = this.mBackgroundBannerAdUnit;
        if (c2839k13 == null || !m1357a(this.DEBUG_LOG_TAG, String.valueOf(c2839k13.m1570I()), callbacks) || (c2839k1 = this.mBackgroundBannerAdUnit) == null || !c2839k1.m1667e(m1366o())) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            String TAG2 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f5M1367p3).m2153d(TAG2, "AdManager state - LOADING");
        }
        m1351a((byte) 1);
        m1361d(null);
        C2839K1 c2839k14 = this.mBackgroundBannerAdUnit;
        Intrinsics.checkNotNull(c2839k14);
        c2839k14.m1228e(adSize);
        C2839K1 c2839k15 = this.mBackgroundBannerAdUnit;
        Intrinsics.checkNotNull(c2839k15);
        c2839k15.m1229e(isRefreshRequest);
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: a */
    public void mo880a(byte[] response, PublisherCallbacks callbacks) {
        C2839K1 c2839k1;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "load 2 ", this));
        }
        if (Intrinsics.areEqual(m1371u(), Boolean.TRUE)) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Cannot call load(byte[]) API after load() API is called");
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String TAG = this.TAG;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG, "Cannot call load(byte[]) API after load() API is called");
                return;
            }
            return;
        }
        m1355a(Boolean.FALSE);
        m1351a((byte) 1);
        m1359b(callbacks);
        if (this.mBackgroundBannerAdUnit != null) {
            C2839K1 c2839k12 = this.mForegroundBannerAdUnit;
            if ((c2839k12 == null || !c2839k12.m1583Y()) && (c2839k1 = this.mBackgroundBannerAdUnit) != null && c2839k1.m1667e((byte) 1)) {
                InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
                if (interfaceC3147f5M1367p3 != null) {
                    String TAG2 = this.TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f5M1367p3).m2147a(TAG2, "timer started - load banner");
                }
                C2839K1 c2839k13 = this.mBackgroundBannerAdUnit;
                if (c2839k13 != null) {
                    c2839k13.m1668e0();
                }
                C2839K1 c2839k14 = this.mBackgroundBannerAdUnit;
                if (c2839k14 != null) {
                    c2839k14.mo1623a(response);
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1448b(short errorCode) {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "submitAdLoadFailed ", this));
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1639b(errorCode);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1445a(RelativeLayout banner) {
        C3038Y c3038yM1570I;
        Intrinsics.checkNotNullParameter(banner, "banner");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, AbstractC2899O1.m1419a(str, "TAG", "displayAd ", this));
        }
        C2839K1 c2839k1 = this.mForegroundBannerAdUnit;
        InterfaceC3411x interfaceC3411xM1682k = c2839k1 != null ? c2839k1.m1682k() : null;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = interfaceC3411xM1682k instanceof GestureDetectorOnGestureListenerC3049Ya ? (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411xM1682k : null;
        if (gestureDetectorOnGestureListenerC3049Ya == null) {
            return;
        }
        AbstractC3260md viewableAd = gestureDetectorOnGestureListenerC3049Ya.getViewableAd();
        C2839K1 c2839k12 = this.mForegroundBannerAdUnit;
        if (c2839k12 != null && (c3038yM1570I = c2839k12.m1570I()) != null && c3038yM1570I.m1941p()) {
            gestureDetectorOnGestureListenerC3049Ya.mo1969e();
        }
        ViewParent parent = gestureDetectorOnGestureListenerC3049Ya.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        View viewMo964d = viewableAd.mo964d();
        viewableAd.mo962a(new HashMap());
        C2839K1 c2839k13 = this.mBackgroundBannerAdUnit;
        if (c2839k13 != null) {
            c2839k13.m1216F0();
        }
        C2839K1 c2839k14 = this.mForegroundBannerAdUnit;
        if (c2839k14 != null && c2839k14.m1577Q() == 8) {
            View view = new View(banner.getContext());
            view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            m1428a(viewGroup, banner, layoutParams, view);
            m1427J();
        } else {
            m1428a(viewGroup, banner, layoutParams, viewMo964d);
        }
        C2839K1 c2839k15 = this.mBackgroundBannerAdUnit;
        if (c2839k15 != null) {
            c2839k15.mo1231g();
        }
    }

    /* JADX INFO: renamed from: a */
    private static final void m1428a(ViewGroup viewGroup, RelativeLayout relativeLayout, RelativeLayout.LayoutParams layoutParams, View view) {
        if (viewGroup == null) {
            relativeLayout.addView(view, layoutParams);
        } else {
            viewGroup.removeAllViews();
            viewGroup.addView(view, layoutParams);
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: a */
    public void mo1352a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        super.mo1352a(watermarkData);
        C2839K1 c2839k1 = this.mBannerAdUnit1;
        if (c2839k1 != null) {
            c2839k1.m1599a(watermarkData);
        }
        C2839K1 c2839k12 = this.mBannerAdUnit2;
        if (c2839k12 != null) {
            c2839k12.m1599a(watermarkData);
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m1443a(int _refreshInterval, int previousInterval) {
        AdConfig adConfigM1680j;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "getRefreshInterval ", this));
        }
        C2839K1 c2839k1 = this.mBackgroundBannerAdUnit;
        return (c2839k1 == null || (adConfigM1680j = c2839k1.m1680j()) == null) ? previousInterval : _refreshInterval < adConfigM1680j.getMinimumRefreshInterval() ? adConfigM1680j.getMinimumRefreshInterval() : _refreshInterval;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1447a(long adLoadCalledTimestamp) {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = this.TAG;
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, AbstractC2899O1.m1419a(str, "TAG", "checkForRefreshRate ", this));
        }
        C2839K1 c2839k1 = this.mBackgroundBannerAdUnit;
        if (c2839k1 == null) {
            return false;
        }
        AdConfig adConfigM1680j = c2839k1.m1680j();
        Intrinsics.checkNotNull(adConfigM1680j);
        int minimumRefreshInterval = adConfigM1680j.getMinimumRefreshInterval();
        if (SystemClock.elapsedRealtime() - adLoadCalledTimestamp >= minimumRefreshInterval * 1000) {
            return true;
        }
        mo879a((short) 2175);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5M1367p2).m2151b(TAG, "Early refresh request");
        }
        m1360b(this.mBackgroundBannerAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST).setCustomMessage("Ad cannot be refreshed before " + minimumRefreshInterval + " seconds"));
        String TAG2 = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        StringBuilder sbAppend = new StringBuilder("Ad cannot be refreshed before ").append(minimumRefreshInterval).append(" seconds (AdPlacement Id = ");
        C2839K1 c2839k12 = this.mBackgroundBannerAdUnit;
        AbstractC2814I6.m1170a((byte) 1, TAG2, sbAppend.append(c2839k12 != null ? c2839k12.m1570I() : null).append(')').toString());
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            String TAG3 = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            StringBuilder sbAppend2 = new StringBuilder("Ad cannot be refreshed before ").append(minimumRefreshInterval).append(" seconds (AdPlacement Id = ");
            C2839K1 c2839k13 = this.mBackgroundBannerAdUnit;
            ((C3162g5) interfaceC3147f5M1367p3).m2151b(TAG3, sbAppend2.append(c2839k13 != null ? c2839k13.m1570I() : null).append(')').toString());
        }
        return false;
    }
}
