package com.inmobi.media;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.S5 */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J1\u0010\r\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\t2\b\b\u0002\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\r\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010\bJ\r\u0010!\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\bJ\u000f\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010 \u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b\u0013\u0010%J\r\u0010&\u001a\u00020\u0006¢\u0006\u0004\b&\u0010\u0003J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0003J\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b\r\u0010*J\r\u0010+\u001a\u00020\u0006¢\u0006\u0004\b+\u0010\u0003R*\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b-\u0010.\u0012\u0004\b2\u0010\u0003\u001a\u0004\b/\u00100\"\u0004\b\r\u00101R\u0016\u00106\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\u0014\u0010:\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0016R\u0011\u0010<\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b;\u0010\u0016¨\u0006="}, m2722d2 = {"Lcom/inmobi/media/S5;", "Lcom/inmobi/media/Mc;", "<init>", "()V", "Lcom/inmobi/ads/AdMetaInfo;", "info", "", "e", "(Lcom/inmobi/ads/AdMetaInfo;)V", "", "shouldResetPubState", "", "errorCode", "a", "(ZS)V", "Lcom/inmobi/media/Q0;", OutOfContextTestingActivity.AD_UNIT_KEY, "Lcom/inmobi/ads/InMobiAdRequestStatus;", "status", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V", SvgConstants.Attributes.f3330X, "()Z", SvgConstants.Attributes.f3333Y, "Lcom/inmobi/media/Y9;", "pubSettings", "Landroid/content/Context;", "context", "sendLoadCalledTelemetry", "", "logType", "(Lcom/inmobi/media/Y9;Landroid/content/Context;ZLjava/lang/String;)V", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "D", SvgConstants.Attributes.f3323D, "Lcom/inmobi/ads/controllers/PublisherCallbacks;", "callbacks", "(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V", "F", SvgConstants.Tags.f3337G, "Lcom/inmobi/ads/WatermarkData;", "watermarkData", "(Lcom/inmobi/ads/WatermarkData;)V", ExifInterface.LONGITUDE_EAST, "Lcom/inmobi/media/Q5;", "o", "Lcom/inmobi/media/Q5;", "z", "()Lcom/inmobi/media/Q5;", "(Lcom/inmobi/media/Q5;)V", "A", "interstitialAdUnit", "p", SvgConstants.Attributes.PATH_DATA_CLOSE_PATH, "showRequested", "j", "()Lcom/inmobi/media/Q0;", SvgConstants.Attributes.PATH_DATA_CURVE_TO, "isInitialised", SvgConstants.Attributes.PATH_DATA_BEARING, "isAdInReadyState", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class C2960S5 extends AbstractC2880Mc {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private C2933Q5 interstitialAdUnit;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private boolean showRequested;

    /* JADX INFO: renamed from: A */
    public static /* synthetic */ void m1777A() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public static final void m1783b(C2960S5 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "callback - onAdLoadSucceeded");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdLoadSucceeded(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c */
    public static final void m1785c(C2960S5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "callback - onAdDisplayFailed");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdDisplayFailed();
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = this$0.m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
        this$0.m1788y();
    }

    /* JADX INFO: renamed from: e */
    private final void m1786e(final AdMetaInfo info) {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2152c("InterstitialUnifiedAdManager", "onLoadSuccess");
        }
        super.mo884c(info);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2153d("InterstitialUnifiedAdManager", "AdManager state - LOADED");
        }
        m1351a((byte) 2);
        m1369s().post(new Runnable() { // from class: com.inmobi.media.S5$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2960S5.m1783b(this.f$0, info);
            }
        });
    }

    /* JADX INFO: renamed from: x */
    private final boolean m1787x() {
        byte bM1368q = m1368q();
        if (bM1368q == 1) {
            InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
            if (interfaceC3147f5M1367p != null) {
                ((C3162g5) interfaceC3147f5M1367p).m2151b("InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            m1781a(false, (short) 2147);
            return false;
        }
        if (bM1368q == 7) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            m1781a(false, (short) 2168);
            return false;
        }
        if (bM1368q != 5) {
            if (!this.showRequested) {
                return true;
            }
            C2933Q5 c2933q5 = this.interstitialAdUnit;
            if (c2933q5 != null) {
                c2933q5.m1655c((short) 2149);
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobi", AbstractC2880Mc.f1271k);
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null) {
                ((C3162g5) interfaceC3147f5M1367p3).m2151b("InMobi", AbstractC2880Mc.f1271k);
            }
            return false;
        }
        if (this.interstitialAdUnit == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder(AbstractC2880Mc.f1270j);
        C2933Q5 c2933q52 = this.interstitialAdUnit;
        AbstractC2814I6.m1170a((byte) 1, "InMobi", sb.append(c2933q52 != null ? c2933q52.m1570I() : null).toString());
        InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
        if (interfaceC3147f5M1367p4 != null) {
            StringBuilder sb2 = new StringBuilder(AbstractC2880Mc.f1270j);
            C2933Q5 c2933q53 = this.interstitialAdUnit;
            ((C3162g5) interfaceC3147f5M1367p4).m2151b("InMobi", sb2.append(c2933q53 != null ? c2933q53.m1570I() : null).toString());
        }
        m1781a(false, (short) 2148);
        return false;
    }

    /* JADX INFO: renamed from: y */
    private final void m1788y() {
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        if (c2933q5 != null) {
            c2933q5.m1629b((byte) 4);
        }
    }

    /* JADX INFO: renamed from: B */
    public final boolean m1789B() {
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        if (c2933q5 != null && 2 == m1368q()) {
            return c2933q5.m1735H0();
        }
        return false;
    }

    /* JADX INFO: renamed from: C */
    public boolean m1790C() {
        return this.interstitialAdUnit != null;
    }

    /* JADX INFO: renamed from: D */
    public final void m1791D() throws IllegalStateException {
        AbstractC2928Q0 abstractC2928Q0Mo886j;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "render");
        }
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        if (c2933q5 == null) {
            throw new IllegalStateException(AbstractC2880Mc.f1273m);
        }
        if (c2933q5.m1735H0() && m1365n() != null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2152c("InterstitialUnifiedAdManager", "already in ready state");
            }
            AdMetaInfo adMetaInfoM1365n = m1365n();
            Intrinsics.checkNotNull(adMetaInfoM1365n);
            m1786e(adMetaInfoM1365n);
            return;
        }
        if (this.showRequested) {
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null) {
                ((C3162g5) interfaceC3147f5M1367p3).m2151b("InMobi", AbstractC2880Mc.f1271k);
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobi", AbstractC2880Mc.f1271k);
            m1360b(this.interstitialAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            C2933Q5 c2933q52 = this.interstitialAdUnit;
            if (c2933q52 != null) {
                c2933q52.m1639b((short) 2128);
                return;
            }
            return;
        }
        C2933Q5 c2933q53 = this.interstitialAdUnit;
        C3171h c3171hM1688m = c2933q53 != null ? c2933q53.m1688m() : null;
        C2933Q5 c2933q54 = this.interstitialAdUnit;
        boolean zM1356a = m1356a("InMobi", String.valueOf(c2933q54 != null ? c2933q54.m1570I() : null));
        if (c3171hM1688m == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
            if (interfaceC3147f5M1367p4 != null) {
                ((C3162g5) interfaceC3147f5M1367p4).m2151b("InterstitialUnifiedAdManager", "ad is null. failure");
            }
            m1360b(this.interstitialAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            C2933Q5 c2933q55 = this.interstitialAdUnit;
            if (c2933q55 != null) {
                c2933q55.m1620a((short) 2166);
            }
        }
        if (m1365n() == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p5 = m1367p();
            if (interfaceC3147f5M1367p5 != null) {
                ((C3162g5) interfaceC3147f5M1367p5).m2151b("InterstitialUnifiedAdManager", "ad meta info is null. failure");
            }
            m1360b(this.interstitialAdUnit, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            C2933Q5 c2933q56 = this.interstitialAdUnit;
            if (c2933q56 != null) {
                c2933q56.m1620a((short) 2167);
            }
        }
        if (c3171hM1688m == null || !zM1356a) {
            return;
        }
        if (m1372v() && (abstractC2928Q0Mo886j = mo886j()) != null) {
            abstractC2928Q0Mo886j.m1667e((byte) 1);
        }
        InterfaceC3147f5 interfaceC3147f5M1367p6 = m1367p();
        if (interfaceC3147f5M1367p6 != null) {
            ((C3162g5) interfaceC3147f5M1367p6).m2153d("InterstitialUnifiedAdManager", "AdManager state - LOADING_INTO_VIEW");
        }
        m1351a((byte) 8);
        C2933Q5 c2933q57 = this.interstitialAdUnit;
        if (c2933q57 != null) {
            c2933q57.mo912j0();
        }
    }

    /* JADX INFO: renamed from: E */
    public final void m1792E() {
        C2933Q5 c2933q5;
        C3169gc c3169gcM1734G0;
        C2933Q5 c2933q52 = this.interstitialAdUnit;
        if ((c2933q52 == null || (c3169gcM1734G0 = c2933q52.m1734G0()) == null || !c3169gcM1734G0.f2115b) && (c2933q5 = this.interstitialAdUnit) != null) {
            c2933q5.m1738K0();
        }
    }

    /* JADX INFO: renamed from: F */
    public final void m1793F() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "show");
        }
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        C3169gc c3169gcM1734G0 = c2933q5 != null ? c2933q5.m1734G0() : null;
        if (c3169gcM1734G0 != null) {
            c3169gcM1734G0.f2115b = true;
        }
        C2933Q5 c2933q52 = this.interstitialAdUnit;
        if (c2933q52 != null) {
            c2933q52.m1706w0();
        }
        if (m1787x()) {
            if (!C3356t4.f2542a.m2421a()) {
                if (this.interstitialAdUnit != null) {
                    m1781a(true, (short) 2141);
                    return;
                }
                return;
            }
            C2933Q5 c2933q53 = this.interstitialAdUnit;
            if (c2933q53 == null || !c2933q53.m1667e((byte) 4)) {
                return;
            }
            this.showRequested = true;
            C2933Q5 c2933q54 = this.interstitialAdUnit;
            if (c2933q54 != null) {
                c2933q54.m1745j(this);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1794a(C2933Q5 c2933q5) {
        this.interstitialAdUnit = c2933q5;
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: d */
    public void mo885d() {
        m1369s().post(new Runnable() { // from class: com.inmobi.media.S5$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C2960S5.m1782b(this.f$0);
            }
        });
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2153d("InterstitialUnifiedAdManager", "AdManager state - DISPLAY_FAILED");
        }
        m1351a((byte) 6);
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        if (c2933q5 != null) {
            c2933q5.mo1231g();
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: g */
    public void mo987g() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "showTimeOut");
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            if (abstractC2928Q0Mo886j.m1577Q() == 6 || abstractC2928Q0Mo886j.m1577Q() == 7) {
                abstractC2928Q0Mo886j.mo904a(this);
            } else {
                m1781a(true, (short) 2159);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: j */
    public AbstractC2928Q0 mo886j() {
        return this.interstitialAdUnit;
    }

    /* JADX INFO: renamed from: z, reason: from getter */
    public final C2933Q5 getInterstitialAdUnit() {
        return this.interstitialAdUnit;
    }

    /* JADX INFO: renamed from: a */
    private final void m1781a(boolean shouldResetPubState, short errorCode) {
        C2933Q5 c2933q5;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2152c("InterstitialUnifiedAdManager", "onShowFailure");
        }
        if (errorCode != 0 && (c2933q5 = this.interstitialAdUnit) != null) {
            c2933q5.m1655c(errorCode);
        }
        m1369s().post(new Runnable() { // from class: com.inmobi.media.S5$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C2960S5.m1785c(this.f$0);
            }
        });
        if (shouldResetPubState) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2153d("InterstitialUnifiedAdManager", "AdManager state - FAILED");
            }
            m1351a((byte) 6);
            C2933Q5 c2933q52 = this.interstitialAdUnit;
            if (c2933q52 != null) {
                c2933q52.mo1231g();
            }
        }
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            ((C3162g5) interfaceC3147f5M1367p3).m2146a();
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo882b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2152c("InterstitialUnifiedAdManager", "onAdFetchSuccess");
        }
        m1361d(info);
        if (this.interstitialAdUnit == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InterstitialUnifiedAdManager", "onAdFetchSuccess - adUnit is null - fail");
            }
            mo878a((AbstractC2928Q0) null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            mo879a((short) 2190);
            return;
        }
        super.mo882b(info);
        m1369s().post(new Runnable() { // from class: com.inmobi.media.S5$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C2960S5.m1779a(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: c */
    public void mo884c(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2152c("InterstitialUnifiedAdManager", "onAdLoadSucceeded");
        }
        if (this.interstitialAdUnit == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InterstitialUnifiedAdManager", "adUnit is null");
            }
            m1784c(null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        m1786e(info);
    }

    /* JADX INFO: renamed from: c */
    public final void m1796c(PublisherCallbacks callbacks) {
        C2933Q5 c2933q5;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        if (m1363l() == null) {
            m1359b(callbacks);
        }
        if (Intrinsics.areEqual(m1371u(), Boolean.FALSE)) {
            C2933Q5 c2933q52 = this.interstitialAdUnit;
            if (c2933q52 != null) {
                c2933q52.m1620a((short) 2006);
            }
            callbacks.onAdLoadFailed(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
            if (interfaceC3147f5M1367p != null) {
                ((C3162g5) interfaceC3147f5M1367p).m2151b("InMobi", "Cannot call load() API after calling load(byte[])");
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Cannot call load() API after calling load(byte[])");
            return;
        }
        if (this.showRequested) {
            C2933Q5 c2933q53 = this.interstitialAdUnit;
            if (c2933q53 != null) {
                c2933q53.m1620a((short) 2004);
            }
            callbacks.onAdLoadFailed(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InMobi", AbstractC2880Mc.f1271k);
            }
            AbstractC2814I6.m1170a((byte) 1, "InMobi", AbstractC2880Mc.f1271k);
            return;
        }
        m1355a(Boolean.TRUE);
        C2933Q5 c2933q54 = this.interstitialAdUnit;
        if (c2933q54 == null || !m1357a("InMobi", String.valueOf(c2933q54.m1570I()), callbacks) || (c2933q5 = this.interstitialAdUnit) == null || !c2933q5.m1667e(m1366o())) {
            return;
        }
        m1351a((byte) 1);
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            StringBuilder sb = new StringBuilder("Fetching an Interstitial ad for placement id: ");
            C2933Q5 c2933q55 = this.interstitialAdUnit;
            ((C3162g5) interfaceC3147f5M1367p3).m2152c("InterstitialUnifiedAdManager", sb.append(c2933q55 != null ? c2933q55.m1570I() : null).toString());
        }
        StringBuilder sb2 = new StringBuilder("Fetching an Interstitial ad for placement id: ");
        C2933Q5 c2933q56 = this.interstitialAdUnit;
        AbstractC2814I6.m1170a((byte) 2, "InterstitialUnifiedAdManager", sb2.append(c2933q56 != null ? c2933q56.m1570I() : null).toString());
        C2933Q5 c2933q57 = this.interstitialAdUnit;
        if (c2933q57 != null) {
            c2933q57.m1673g(this);
        }
        C2933Q5 c2933q58 = this.interstitialAdUnit;
        if (c2933q58 != null) {
            c2933q58.mo911c0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public static final void m1782b(C2960S5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "callback - onAdDisplayFailed");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdDisplayFailed();
        }
        this$0.m1788y();
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo881b() {
        m1369s().post(new Runnable() { // from class: com.inmobi.media.S5$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C2960S5.m1778a(this.f$0);
            }
        });
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2153d("InterstitialUnifiedAdManager", "AdManager state - CREATED");
        }
        m1351a((byte) 0);
        m1355a((Boolean) null);
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        if (c2933q5 != null) {
            c2933q5.mo1231g();
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m1780a(C2960S5 c2960s5, C3048Y9 c3048y9, Context context, boolean z, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str = "intHtml";
        }
        c2960s5.m1795a(c3048y9, context, z, str);
    }

    /* JADX INFO: renamed from: a */
    public final void m1795a(C3048Y9 pubSettings, Context context, boolean sendLoadCalledTelemetry, String logType) {
        C2933Q5 c2933q5;
        C2933Q5 c2933q52;
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logType, "logType");
        if (this.interstitialAdUnit == null) {
            this.interstitialAdUnit = new C2933Q5(context, new C3010W("int").m1879a(pubSettings.f1688a).m1886c(pubSettings.f1689b).m1882a(pubSettings.f1690c).m1888e(pubSettings.f1692e).m1885b(pubSettings.f1693f).m1884a(), this);
        }
        if (sendLoadCalledTelemetry) {
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
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2147a("InterstitialUnifiedAdManager", "Ad Unit initialised");
            }
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null && (c2933q52 = this.interstitialAdUnit) != null) {
                c2933q52.m1607a(interfaceC3147f5M1367p3);
            }
            InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
            if (interfaceC3147f5M1367p4 != null) {
                ((C3162g5) interfaceC3147f5M1367p4).m2147a("InterstitialUnifiedAdManager", "adding interstitialAdUnit in referenceTracker");
            }
            C2933Q5 c2933q53 = this.interstitialAdUnit;
            Intrinsics.checkNotNull(c2933q53);
            C2758Ea.m1053a(c2933q53, m1367p());
        }
        C2933Q5 c2933q54 = this.interstitialAdUnit;
        if (c2933q54 != null) {
            c2933q54.mo903a(context);
        }
        C2933Q5 c2933q55 = this.interstitialAdUnit;
        if (c2933q55 != null) {
            c2933q55.m1616a(pubSettings.f1690c);
        }
        C2933Q5 c2933q56 = this.interstitialAdUnit;
        if (c2933q56 != null) {
            c2933q56.mo1651c("activity");
        }
        if (pubSettings.f1691d && (c2933q5 = this.interstitialAdUnit) != null) {
            c2933q5.m1733F0();
        }
        WatermarkData watermarkDataM1370t = m1370t();
        if (watermarkDataM1370t != null) {
            C2933Q5 c2933q57 = this.interstitialAdUnit;
            if (c2933q57 != null) {
                c2933q57.m1599a(watermarkDataM1370t);
            }
            InterfaceC3147f5 interfaceC3147f5M1367p5 = m1367p();
            if (interfaceC3147f5M1367p5 != null) {
                ((C3162g5) interfaceC3147f5M1367p5).m2152c("InterstitialUnifiedAdManager", "setting up watermark");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m1779a(C2960S5 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "callback - onAdFetchSuccessful");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdFetchSuccessful(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public static final void m1778a(C2960S5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            ((C3162g5) interfaceC3147f5M1367p).m2147a("InterstitialUnifiedAdManager", "callback - onAdDismissed");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdDismissed();
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo876a(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        super.mo876a(info);
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1708x0();
        }
        this.showRequested = false;
    }

    /* JADX INFO: renamed from: c */
    private final void m1784c(AbstractC2928Q0 adUnit, InMobiAdRequestStatus status) {
        byte bM1368q = m1368q();
        if (bM1368q == 8 || bM1368q == 1) {
            m1360b(adUnit, status);
            return;
        }
        if (bM1368q == 2) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Unable to Show Ad, canShowAd Failed");
            InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
            if (interfaceC3147f5M1367p != null) {
                ((C3162g5) interfaceC3147f5M1367p).m2151b("InMobi", "Unable to Show Ad, canShowAd Failed");
            }
            m1781a(true, (short) 0);
            return;
        }
        if (bM1368q == 5) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad will be dismissed, Internal error");
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2151b("InMobi", "Ad will be dismissed, Internal error");
            }
            m1788y();
            mo881b();
            return;
        }
        AbstractC2814I6.m1170a((byte) 1, "InMobi", "Invalid state passed in fireErrorScenarioCallback");
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            ((C3162g5) interfaceC3147f5M1367p3).m2151b("InMobi", "Invalid state passed in fireErrorScenarioCallback");
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: a */
    public void mo1352a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        super.mo1352a(watermarkData);
        C2933Q5 c2933q5 = this.interstitialAdUnit;
        if (c2933q5 != null) {
            c2933q5.m1599a(watermarkData);
        }
    }
}
