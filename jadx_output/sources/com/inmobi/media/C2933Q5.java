package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.itextpdf.kernel.xmp.XMPError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;

/* JADX INFO: renamed from: com.inmobi.media.Q5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2933Q5 extends AbstractC2928Q0 {

    /* JADX INFO: renamed from: M */
    public int f1469M;

    /* JADX INFO: renamed from: N */
    public boolean f1470N;

    /* JADX INFO: renamed from: O */
    public C3169gc f1471O;

    /* JADX INFO: renamed from: P */
    public Function0 f1472P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933Q5(Context context, C3038Y adPlacement, AbstractC2748E0 abstractC2748E0) {
        super(context, adPlacement, abstractC2748E0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.f1471O = new C3169gc();
        Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
        adPlacement.m1938l();
        m1595a(context, adPlacement, abstractC2748E0);
        mo1651c("activity");
    }

    /* JADX INFO: renamed from: c */
    public static final void m1727c(C2933Q5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mo904a(this$0.m1697r());
    }

    /* JADX INFO: renamed from: d */
    public static final void m1728d(C2933Q5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mo910b(this$0.m1697r());
    }

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ String m1729e() {
        return "Q5";
    }

    /* JADX INFO: renamed from: D0 */
    public final boolean m1731D0() {
        if (mo1230f0()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", "Some of the dependency libraries for Interstitial not found");
            }
            m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r == null) {
            return false;
        }
        byte bM1577Q = m1577Q();
        if (bM1577Q == 1) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("InMobiInterstitial", AbstractC2880Mc.f1274n + m1570I());
            }
            m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD), false, (short) 2008);
        } else if (bM1577Q == 7 || bM1577Q == 6) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2151b("InMobiInterstitial", AbstractC2880Mc.f1270j + m1570I());
            }
            m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2010);
        } else {
            if (bM1577Q != 2) {
                if (4 == m1577Q()) {
                    if (!m1581W()) {
                        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                        if (interfaceC3147f54 != null) {
                            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                            ((C3162g5) interfaceC3147f54).m2147a("Q5", "An ad is ready with the ad unit. Signaling ad load success ...");
                        }
                        AbstractC2748E0 abstractC2748E0M1697r2 = m1697r();
                        if (abstractC2748E0M1697r2 == null) {
                            InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                            if (interfaceC3147f55 != null) {
                                ((C3162g5) interfaceC3147f55).m2151b("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
                            }
                        } else {
                            m1665e(abstractC2748E0M1697r2);
                            m1671f(abstractC2748E0M1697r2);
                        }
                        return false;
                    }
                    mo1231g();
                }
                m1668e0();
                return true;
            }
            if (Intrinsics.areEqual("html", m1566E()) || Intrinsics.areEqual("htmlUrl", m1566E())) {
                InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
                if (interfaceC3147f56 != null) {
                    ((C3162g5) interfaceC3147f56).m2151b("InMobiInterstitial", AbstractC2880Mc.f1274n + m1570I());
                }
                m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD), false, (short) 2011);
            } else {
                m1665e(abstractC2748E0M1697r);
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: E0 */
    public final boolean m1732E0() {
        InterfaceC3147f5 interfaceC3147f5;
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m == null) {
            return false;
        }
        AdConfig adConfigM1680j = m1680j();
        Intrinsics.checkNotNull(adConfigM1680j);
        boolean zM2181a = c3171hM1688m.m2181a(adConfigM1680j.getCacheConfig(mo914q()).getTimeToLive());
        if (zM2181a && (interfaceC3147f5 = this.f1437j) != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("Q5", "Top ad has expired, failing show of ad.");
        }
        return !zM2181a;
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: F */
    public Integer mo1567F() {
        AdConfig adConfigM1680j = m1680j();
        if (adConfigM1680j != null) {
            return Integer.valueOf(adConfigM1680j.getMinimumRefreshInterval());
        }
        return null;
    }

    /* JADX INFO: renamed from: F0 */
    public final void m1733F0() {
        InterfaceC3411x interfaceC3411xM1682k = m1682k();
        if (interfaceC3411xM1682k == null) {
            return;
        }
        this.f1470N = true;
        interfaceC3411xM1682k.mo1969e();
    }

    /* JADX INFO: renamed from: G0 */
    public final C3169gc m1734G0() {
        return this.f1471O;
    }

    /* JADX INFO: renamed from: H0 */
    public final boolean m1735H0() {
        return m1577Q() == 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r1.equals("html") != false) goto L21;
     */
    /* JADX INFO: renamed from: I0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1736I0() {
        /*
            r6 = this;
            java.lang.String r0 = "Cannot handle markupType: "
            com.inmobi.media.f5 r1 = r6.f1437j
            java.lang.String r2 = "TAG"
            java.lang.String r3 = "Q5"
            if (r1 == 0) goto L14
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            com.inmobi.media.g5 r1 = (com.inmobi.media.C3162g5) r1
            java.lang.String r4 = "renderAdPostInternetCheck"
            r1.m2147a(r3, r4)
        L14:
            r6.mo1684k0()
            boolean r1 = r6.m1693o0()     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 == 0) goto L1e
            return
        L1e:
            com.inmobi.media.S0 r1 = r6.m1698s()     // Catch: java.lang.IllegalStateException -> L9b
            r1.getClass()     // Catch: java.lang.IllegalStateException -> L9b
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.IllegalStateException -> L9b
            r1.f1521g = r4     // Catch: java.lang.IllegalStateException -> L9b
            r6.m1663d0()     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r1 = r6.m1566E()     // Catch: java.lang.IllegalStateException -> L9b
            int r4 = r1.hashCode()     // Catch: java.lang.IllegalStateException -> L9b
            r5 = -1084172778(0xffffffffbf60d616, float:-0.8782667)
            if (r4 == r5) goto L66
            r5 = 3213227(0x3107ab, float:4.50269E-39)
            if (r4 == r5) goto L4f
            r5 = 1236050372(0x49aca1c4, float:1414200.5)
            if (r4 == r5) goto L46
            goto L6e
        L46:
            java.lang.String r4 = "htmlUrl"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 != 0) goto L57
            goto L6e
        L4f:
            java.lang.String r4 = "html"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 == 0) goto L6e
        L57:
            android.os.Handler r0 = r6.m1565D()     // Catch: java.lang.IllegalStateException -> L9b
            if (r0 == 0) goto Lb7
            com.inmobi.media.Q5$$ExternalSyntheticLambda2 r1 = new com.inmobi.media.Q5$$ExternalSyntheticLambda2     // Catch: java.lang.IllegalStateException -> L9b
            r1.<init>()     // Catch: java.lang.IllegalStateException -> L9b
            r0.post(r1)     // Catch: java.lang.IllegalStateException -> L9b
            goto Lb7
        L66:
            java.lang.String r4 = "inmobiJson"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 != 0) goto L8c
        L6e:
            com.inmobi.media.f5 r1 = r6.f1437j     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 == 0) goto Lb7
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> L9b
            r4.<init>(r0)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r0 = r6.m1566E()     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r0 = r0.toString()     // Catch: java.lang.IllegalStateException -> L9b
            com.inmobi.media.g5 r1 = (com.inmobi.media.C3162g5) r1     // Catch: java.lang.IllegalStateException -> L9b
            r1.m2147a(r3, r0)     // Catch: java.lang.IllegalStateException -> L9b
            goto Lb7
        L8c:
            com.inmobi.media.f5 r0 = r6.f1437j     // Catch: java.lang.IllegalStateException -> L9b
            if (r0 == 0) goto Lb7
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r1 = "Waiting for Vast Processing"
            com.inmobi.media.g5 r0 = (com.inmobi.media.C3162g5) r0     // Catch: java.lang.IllegalStateException -> L9b
            r0.m2147a(r3, r1)     // Catch: java.lang.IllegalStateException -> L9b
            goto Lb7
        L9b:
            r0 = move-exception
            com.inmobi.media.f5 r1 = r6.f1437j
            if (r1 == 0) goto Laa
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            com.inmobi.media.g5 r1 = (com.inmobi.media.C3162g5) r1
            java.lang.String r2 = "Exception while loading ad."
            r1.m2148a(r3, r2, r0)
        Laa:
            com.inmobi.ads.InMobiAdRequestStatus r0 = new com.inmobi.ads.InMobiAdRequestStatus
            com.inmobi.ads.InMobiAdRequestStatus$StatusCode r1 = com.inmobi.ads.InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR
            r0.<init>(r1)
            r1 = 1
            r2 = 2134(0x856, float:2.99E-42)
            r6.m1632b(r0, r1, r2)
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2933Q5.m1736I0():void");
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: J */
    public final byte mo900J() {
        return (byte) 1;
    }

    /* JADX INFO: renamed from: J0 */
    public boolean m1737J0() {
        return 2 == m1577Q();
    }

    /* JADX INFO: renamed from: K0 */
    public final void m1738K0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "submitAdNotReady " + this);
        }
        C3169gc c3169gc = this.f1471O;
        C2955S0 c2955s0M1698s = m1698s();
        C3171h c3171hM1587a = this.f1417A ? m1587a(this.f1451x) : m1688m();
        String strM2200p = c3171hM1587a != null ? c3171hM1587a.m2200p() : null;
        C3412x0 c3412x0M1709y = m1709y();
        Boolean boolM2585o = c3412x0M1709y != null ? c3412x0M1709y.m2585o() : null;
        String strM1566E = m1566E();
        byte bM1577Q = m1577Q();
        C2996V adNotReadyMetadata = new C2996V(c2955s0M1698s, strM2200p, boolM2585o, strM1566E, bM1577Q);
        c3169gc.getClass();
        Intrinsics.checkNotNullParameter(adNotReadyMetadata, "adNotReadyMetadata");
        HashMap map = new HashMap();
        long j = c2955s0M1698s.f1517c;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("errorCode", Short.valueOf(bM1577Q == 0 ? (short) 2204 : bM1577Q == 1 ? (short) 2205 : bM1577Q == 2 ? (short) 2206 : bM1577Q == 3 ? (short) 2207 : bM1577Q == 6 ? (short) 2208 : bM1577Q == 7 ? (short) 2209 : bM1577Q == 8 ? (short) 2242 : (short) 2210));
        if (strM1566E != null) {
            map.put("markupType", strM1566E);
        }
        if (strM2200p != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        if (boolM2585o != null) {
            map.put("isRewarded", boolM2585o);
        }
        String strM1775a = c2955s0M1698s.m1775a();
        if (strM1775a.length() > 0) {
            map.put("metadataBlob", strM1775a);
        }
        map.put("adType", c2955s0M1698s.f1515a.mo914q());
        map.put("networkType", C2751E3.m1005q());
        map.put("plId", Long.valueOf(c2955s0M1698s.f1515a.m1570I().m1938l()));
        map.put("isAdLoaded", Boolean.valueOf(c3169gc.f2114a));
        String strM1939m = c2955s0M1698s.f1515a.m1570I().m1939m();
        if (strM1939m != null) {
            map.put("plType", strM1939m);
        }
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AdNotReady", map, EnumC3259mc.f2349a);
    }

    /* JADX INFO: renamed from: L0 */
    public final void m1739L0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("InMobiInterstitial", "Successfully loaded Interstitial ad markup in the WebView for placement id: " + m1570I());
        }
        m1678i();
        mo915r0();
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public void mo902a(int i, GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    /* JADX INFO: renamed from: b */
    public final short m1741b(Context context) {
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", ">>> Starting InMobiAdActivity to display interstitial ad ...");
            }
            InterfaceC3411x container = m1682k();
            if (container == null) {
                return (short) 2155;
            }
            if (Intrinsics.areEqual("unknown", container.getMarkupType())) {
                return (short) 2156;
            }
            SparseArray sparseArray = InMobiAdActivity.f787k;
            Intrinsics.checkNotNullParameter(container, "container");
            int iHashCode = container.hashCode();
            InMobiAdActivity.f787k.put(iHashCode, container);
            Intent intent = new Intent(context, (Class<?>) InMobiAdActivity.class);
            InterfaceC3147f5 obj = this.f1437j;
            if (obj != null) {
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                HashMap map = AbstractC2959S4.f1532a;
                String key = string.toString();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(obj, "obj");
                AbstractC2959S4.f1532a.put(key, new WeakReference(obj));
                intent.putExtra("loggerCacheKey", string.toString());
            }
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", iHashCode);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
            String strM1566E = m1566E();
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", Intrinsics.areEqual(strM1566E, "html") ? 200 : Intrinsics.areEqual(strM1566E, "htmlUrl") ? XMPError.BADRDF : XMPError.BADXML);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
            if (context == null) {
                return (short) 2157;
            }
            if (m1644b0()) {
                if (m1563C() == -1) {
                    m1594a(System.currentTimeMillis());
                }
                if (m1711z() > 0) {
                    intent.setFlags(603979776);
                }
            }
            C2849Kb.f1171a.m1272a(context, intent);
            return (short) 0;
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("InMobiInterstitial", "Cannot show ad; SDK encountered an unexpected error");
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return (short) 2154;
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: c0 */
    public void mo911c0() {
        if (m1731D0()) {
            super.mo911c0();
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: g */
    public void mo1231g() {
        super.mo1231g();
        this.f1472P = null;
    }

    /* JADX INFO: renamed from: h */
    public final void m1743h(AbstractC2748E0 abstractC2748E0) {
        short sM1741b = m1741b(m1700t());
        if (abstractC2748E0 == null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("InMobiInterstitial", "Listener was garbage collected.Unable to give callback");
                return;
            }
            return;
        }
        if (sM1741b != 0) {
            m1622a(true, sM1741b);
        } else {
            abstractC2748E0.mo985e();
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m1744i(AbstractC2748E0 abstractC2748E0) {
        if (abstractC2748E0 == null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
            }
            m1622a(true, (short) 2151);
            return;
        }
        Function0 function0 = this.f1472P;
        if (function0 != null) {
            function0.invoke();
            return;
        }
        if (m1577Q() == 8) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("Q5", "unload has been called on this ad. Dont show. ");
            }
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            AbstractC2814I6.m1170a((byte) 2, "Q5", "Failed to show Ad as creative has called unload() on the Ad");
            m1622a(true, (short) 2239);
            return;
        }
        if (!m1735H0()) {
            AbstractC2814I6.m1170a((byte) 2, "InMobiInterstitial", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f53).m2151b("Q5", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "Q5", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            m1622a(true, (short) 2152);
            return;
        }
        m1673g(abstractC2748E0);
        m1658d((byte) 6);
        if (!Intrinsics.areEqual("html", m1566E()) && !Intrinsics.areEqual("htmlUrl", m1566E())) {
            C2687A c2687aM1704v = m1704v();
            int iHashCode = hashCode();
            C2828J5 c2828j5 = new C2828J5(this, abstractC2748E0);
            c2687aM1704v.getClass();
            C2687A.m825a(iHashCode, c2828j5);
            return;
        }
        if (!m1581W()) {
            m1743h(abstractC2748E0);
            return;
        }
        m1742b(abstractC2748E0, (short) 2153);
        InterfaceC3411x interfaceC3411xM1682k = m1682k();
        if (interfaceC3411xM1682k != null) {
            interfaceC3411xM1682k.mo845b();
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m1745j(final AbstractC2748E0 abstractC2748E0) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            m1744i(abstractC2748E0);
        } else {
            int i = AbstractC3251m4.f2318a;
            ((ExecutorC2919P6) AbstractC3251m4.f2321d.getValue()).f1374a.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C2933Q5.m1723a(this.f$0, abstractC2748E0);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: j0 */
    public void mo912j0() {
        if (m1695p0()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", "renderAd without internet check");
            }
            m1736I0();
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q5", "renderAd");
        }
        m1618a(new C2903O5(this), new C2918P5(this));
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: k0 */
    public void mo1684k0() {
        super.mo1684k0();
        this.f1469M = 0;
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: m */
    public void mo1233m(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        super.mo1233m(gestureDetectorOnGestureListenerC3049Ya);
        if (!m1644b0()) {
            if (m1577Q() == 2) {
                m1629b((byte) 1);
                m1739L0();
                return;
            }
            return;
        }
        int iIndexOf = this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya);
        if (iIndexOf < m1559A()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", "Ignoring loaded ad with index " + iIndexOf + " as current rendering index is " + m1559A());
                return;
            }
            return;
        }
        m1561B().add(Integer.valueOf(iIndexOf));
        for (int i = 0; i < iIndexOf; i++) {
            if (this.f1434g.get(i) != null) {
                return;
            }
        }
        if (m1577Q() == 2) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("Q5", AbstractC3420x8.m2595a("Q5", "TAG", "Providing success based on index ", iIndexOf));
            }
            m1629b((byte) 1);
            m1676h(iIndexOf);
            m1739L0();
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: o */
    public void mo1234o(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (!m1644b0() || !mo1625a(renderView)) {
            m1564C0();
        }
        super.mo1234o(renderView);
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: q */
    public String mo914q() {
        return "int";
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: q0 */
    public void mo1696q0() {
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", "callback - onFetchSuccess");
            }
            m1665e(abstractC2748E0M1697r);
            return;
        }
        m1639b((short) 2188);
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("Q5", "listener is null");
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: r0 */
    public void mo915r0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f5).m2153d("Q5", "AdUnit " + this + " state - READY");
        }
        m1658d((byte) 4);
        C2955S0 c2955s0M1698s = m1698s();
        c2955s0M1698s.getClass();
        c2955s0M1698s.f1523i = SystemClock.elapsedRealtime();
        m1703u0();
        m1712z0();
        this.f1471O.f2114a = true;
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r == null || !abstractC2748E0M1697r.m981a()) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q5", "signaling Success");
        }
        m1671f(abstractC2748E0M1697r);
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: w */
    public GestureDetectorOnGestureListenerC3049Ya mo1235w() {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaMo1235w = super.mo1235w();
        if (this.f1470N && gestureDetectorOnGestureListenerC3049YaMo1235w != null) {
            gestureDetectorOnGestureListenerC3049YaMo1235w.mo1969e();
        }
        return gestureDetectorOnGestureListenerC3049YaMo1235w;
    }

    /* JADX INFO: renamed from: e */
    public static final void m1730e(C2933Q5 this$0) {
        LinkedList<C3171h> linkedListM2576f;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m1699s0();
        if (this$0.m1644b0()) {
            C3412x0 c3412x0M1709y = this$0.m1709y();
            int size = (c3412x0M1709y == null || (linkedListM2576f = c3412x0M1709y.m2576f()) == null) ? 0 : linkedListM2576f.size();
            for (int i = 1; i < size; i++) {
                this$0.m1672g(this$0.m1711z() + 1);
                this$0.m1699s0();
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: c */
    public void mo1651c(String monetizationContext) {
        Intrinsics.checkNotNullParameter(monetizationContext, "monetizationContext");
        super.mo1651c("activity");
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: d */
    public synchronized void mo1226d(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.mo1226d(renderView);
        Handler handlerM1565D = m1565D();
        if (handlerM1565D != null) {
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    C2933Q5.m1727c(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1740a(C3169gc c3169gc) {
        Intrinsics.checkNotNullParameter(c3169gc, "<set-?>");
        this.f1471O = c3169gc;
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public void mo1623a(byte[] bArr) {
        if (m1731D0()) {
            super.mo1623a(bArr);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1723a(C2933Q5 this$0, AbstractC2748E0 abstractC2748E0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m1744i(abstractC2748E0);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: e */
    public synchronized void mo1227e(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.mo1227e(renderView);
        Handler handlerM1565D = m1565D();
        if (handlerM1565D != null) {
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    C2933Q5.m1728d(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1724a(final C2933Q5 this$0, GestureDetectorOnGestureListenerC3049Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        final int iIndexOf = this$0.f1434g.indexOf(renderView);
        ArrayList list = this$0.f1434g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (iIndexOf < 0 || iIndexOf >= list.size()) {
            return;
        }
        short sM1741b = this$0.m1741b(context);
        if (sM1741b != 0) {
            this$0.m1670f(iIndexOf);
        }
        this$0.m1630b(iIndexOf, sM1741b == 0);
        Handler handlerM1565D = this$0.m1565D();
        if (handlerM1565D != null) {
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    C2933Q5.m1722a(this.f$0, iIndexOf);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public void mo1605a(GestureDetectorOnGestureListenerC3049Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "closeCurrentPodAd " + this);
        }
        if (m1644b0()) {
            Integer numHigher = m1561B().higher(Integer.valueOf(this.f1434g.indexOf(renderView)));
            if (numHigher != null) {
                mo1221a(numHigher.intValue(), renderView, context);
            } else {
                mo909b();
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public void mo904a(AbstractC2748E0 abstractC2748E0) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q5", AbstractC3208j6.m2261a("Q5", "TAG", "handleAdScreenDismissed ").append((int) m1577Q()).toString());
        }
        if (m1577Q() == 7) {
            int i = this.f1469M - 1;
            this.f1469M = i;
            if (i == 1) {
                m1658d((byte) 6);
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                    ((C3162g5) interfaceC3147f52).m2153d("Q5", "AdUnit " + this + " state - RENDERED");
                    return;
                }
                return;
            }
            return;
        }
        if (m1577Q() == 6 || m1577Q() == 8) {
            this.f1469M--;
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2147a("InMobiInterstitial", "Interstitial ad dismissed for placement id: " + m1570I());
            }
            if (abstractC2748E0 != null) {
                abstractC2748E0.mo881b();
                return;
            }
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2152c("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: b */
    public void mo910b(AbstractC2748E0 abstractC2748E0) {
        if (m1577Q() == 6) {
            int i = this.f1469M + 1;
            this.f1469M = i;
            if (i == 1) {
                InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2147a("InMobiInterstitial", "Successfully displayed Interstitial for placement id: " + m1570I());
                }
                if (abstractC2748E0 != null) {
                    m1629b((byte) 4);
                    m1659d(abstractC2748E0);
                    return;
                }
                return;
            }
            m1658d((byte) 7);
            return;
        }
        if (m1577Q() == 7) {
            this.f1469M++;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1742b(AbstractC2748E0 abstractC2748E0, short s) {
        m1622a(true, s);
        m1658d((byte) 0);
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: b */
    public void mo909b() {
        if (m1644b0()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", "Closing the ad as closeAll is called");
            }
            Handler handlerM1565D = m1565D();
            if (handlerM1565D != null) {
                handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2933Q5.m1726b(this.f$0);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m1726b(C2933Q5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("Q0", "clearAdPods " + this$0);
        }
        if (this$0.f1417A) {
            this$0.m1675h();
            this$0.f1434g.clear();
            this$0.f1450w = 0;
            this$0.f1451x = 0;
            this$0.f1453z.clear();
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2152c("InMobiInterstitial", "Interstitial ad dismissed for placement id: " + this$0.m1570I());
        }
        if (this$0.m1697r() != null) {
            AbstractC2748E0 abstractC2748E0M1697r = this$0.m1697r();
            if (abstractC2748E0M1697r != null) {
                abstractC2748E0M1697r.mo881b();
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this$0.f1437j;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2152c("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public void mo908a(boolean z, InMobiAdRequestStatus status) {
        String placementType;
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q5", "onDidParseAfterFetch - parsingResult - " + z);
        }
        super.mo908a(z, status);
        if (m1577Q() == 2) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("InMobiInterstitial", "Interstitial ad successfully fetched for placement id: " + m1570I());
            }
            if (Intrinsics.areEqual(m1566E(), "inmobiJson") && (placementType = m1570I().m1939m()) != null) {
                EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                Intrinsics.checkNotNullParameter("intNative", "logType");
                Intrinsics.checkNotNullParameter(placementType, "placementType");
                TelemetryConfig.LoggingConfig loggingConfig = C2758Ea.f1004d.getLoggingConfig();
                if (interfaceC3147f53 != null) {
                    EnumC2709B6 logLevel = C2758Ea.m1050a("intNative", placementType, loggingConfig);
                    double dM1054b = C2758Ea.m1054b("intNative", placementType, loggingConfig);
                    C3132e5 config = new C3132e5(logLevel, dM1054b);
                    Intrinsics.checkNotNullParameter(config, "config");
                    Objects.toString(config);
                    C2728Ca c2728Ca = ((C3162g5) interfaceC3147f53).f2097a;
                    if (c2728Ca != null) {
                        Intrinsics.checkNotNullParameter(config, "config");
                        Objects.toString(config);
                        Objects.toString(c2728Ca.f902i);
                        if (!c2728Ca.f902i.get()) {
                            C2739D6 c2739d6 = c2728Ca.f898e;
                            c2739d6.getClass();
                            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                            c2739d6.f918a = logLevel;
                            c2728Ca.f899f.f1037a = dM1054b;
                        }
                    }
                }
            }
            mo1696q0();
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3200id
    /* JADX INFO: renamed from: a */
    public void mo906a(C3171h ad, boolean z, short s) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        if (!z) {
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
            return;
        }
        try {
            super.mo906a(ad, z, s);
        } catch (IllegalStateException e) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("Q5", AbstractC3208j6.m2261a("Q5", "TAG", "Exception while onVastProcessCompleted : ").append(e.getMessage()).toString());
            }
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m == null) {
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 55);
        } else if (c3171hM1688m.m2173G()) {
            m1640b(true);
            m1580V();
        } else {
            m1608a(c3171hM1688m);
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public void mo905a(C3038Y placement, boolean z) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        super.mo905a(placement, z);
        if (!z) {
            if (Intrinsics.areEqual(m1570I(), placement)) {
                if (2 == m1577Q() || 4 == m1577Q()) {
                    m1658d((byte) 0);
                    InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
                    if (interfaceC3147f5 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                        ((C3162g5) interfaceC3147f5).m2153d("Q5", "AdUnit " + this + " state - CREATED");
                    }
                    m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), false, (short) 0);
                    return;
                }
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(m1570I(), placement) && 2 == m1577Q()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f52).m2147a("Q5", "Asset are ready now");
            }
            if (m1627a0()) {
                m1656c(true);
                m1669f();
            } else {
                mo915r0();
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public void mo1223a(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, short s) {
        super.mo1223a(gestureDetectorOnGestureListenerC3049Ya, s);
        if (m1644b0()) {
            int iIndexOf = this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya);
            boolean z = false;
            AbstractC2928Q0.m1541a(this, iIndexOf, false, 2, null);
            int size = this.f1434g.size();
            boolean z2 = true;
            boolean z3 = true;
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = z2;
                    i = -1;
                    break;
                }
                if (i != iIndexOf && this.f1434g.get(i) != null) {
                    if (m1561B().contains(Integer.valueOf(i))) {
                        break;
                    }
                    z2 = false;
                    z3 = false;
                }
                i++;
            }
            if (i != -1) {
                if (z3 && m1577Q() == 2) {
                    m1629b((byte) 1);
                    m1676h(i);
                    InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
                    if (interfaceC3147f5 != null) {
                        ((C3162g5) interfaceC3147f5).m2147a("Q5", AbstractC3208j6.m2261a("Q5", "TAG", "Providing success based on currIndex ").append(m1559A()).append(" as ").append(iIndexOf).append(" failed").toString());
                    }
                    m1739L0();
                    return;
                }
                return;
            }
            if (z && m1577Q() == 2) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    ((C3162g5) interfaceC3147f52).m2147a("InMobiInterstitial", "Failed to load the Interstitial markup in the WebView for placement id: " + m1570I());
                }
                m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
                return;
            }
            return;
        }
        if (m1577Q() == 2) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2147a("InMobiInterstitial", "Failed to load the Interstitial markup in the WebView for placement id: " + m1570I());
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public void mo1221a(int i, final GestureDetectorOnGestureListenerC3049Ya renderView, final Context context) {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (!m1644b0()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("Q5", "Cannot show an pod ad as isPod is not set.");
                return;
            }
            return;
        }
        if (m1561B().contains(Integer.valueOf(i)) && i > this.f1434g.indexOf(renderView) && i < this.f1434g.size() && this.f1434g.get(i) != null && ((gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(i)) == null || gestureDetectorOnGestureListenerC3049Ya.f1758m0)) {
            if (context == null) {
                context = m1700t();
            }
            super.mo1221a(i, renderView, context);
            Handler handlerM1565D = m1565D();
            if (handlerM1565D != null) {
                handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2933Q5.m1724a(this.f$0, renderView, context);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q5", "Cannot show an pod ad with invalid index passed");
        }
        m1630b(this.f1434g.indexOf(renderView), false);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1722a(C2933Q5 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m1593a(i, false);
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public boolean mo1625a(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (m1644b0()) {
            return m1561B().higher(Integer.valueOf(this.f1434g.indexOf(renderView))) != null;
        }
        return false;
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3409wc
    /* JADX INFO: renamed from: a */
    public void mo1591a(byte b) {
        if (b == 1) {
            if (m1644b0()) {
                if (m1577Q() == 2) {
                    if (m1561B().isEmpty()) {
                        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
                        if (interfaceC3147f5 != null) {
                            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                            ((C3162g5) interfaceC3147f5).m2151b("Q5", "RenderView time out, none of the ad provided success");
                        }
                        m1675h();
                        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2139);
                        return;
                    }
                    m1629b((byte) 1);
                    InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                    if (interfaceC3147f52 != null) {
                        ((C3162g5) interfaceC3147f52).m2147a("Q5", AbstractC3208j6.m2261a("Q5", "TAG", "RenderView time out, providing success based on ").append(m1561B().first()).toString());
                    }
                    Integer numFirst = m1561B().first();
                    Intrinsics.checkNotNullExpressionValue(numFirst, "first(...)");
                    m1676h(numFirst.intValue());
                    m1739L0();
                    int size = this.f1434g.size();
                    for (int i = 0; i < size; i++) {
                        if (!m1561B().contains(Integer.valueOf(i))) {
                            AbstractC2928Q0.m1541a(this, i, false, 2, null);
                        }
                    }
                    return;
                }
                m1675h();
                return;
            }
            super.mo1591a(b);
            return;
        }
        super.mo1591a(b);
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1224a(GestureDetectorOnGestureListenerC3049Ya renderView, boolean z) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.mo1224a(renderView, z);
        byte bM1577Q = m1577Q();
        if (bM1577Q == 4) {
            this.f1472P = new C2888N5(this, z ? (short) 2220 : (short) 2219);
            return;
        }
        if (bM1577Q != 6) {
            if (bM1577Q == 7) {
                short s = z ? (short) 2224 : (short) 2223;
                AbstractC2814I6.m1170a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
                InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                    ((C3162g5) interfaceC3147f5).m2151b("Q5", "RenderProcess of the WebView has crashed. Please create another adUnit");
                }
                renderView.m1959a(z, s);
                Activity fullScreenActivity = renderView.getFullScreenActivity();
                if (fullScreenActivity != null) {
                    InterfaceC3147f5 interfaceC3147f52 = renderView.f1749i;
                    if (interfaceC3147f52 != null) {
                        String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C3162g5) interfaceC3147f52).m2152c(TAG, "fullScreenActivity is not null and finishing");
                    }
                    fullScreenActivity.finish();
                }
                mo904a(m1697r());
                return;
            }
            return;
        }
        short s2 = z ? (short) 2222 : (short) 2221;
        AbstractC2814I6.m1170a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C3162g5) interfaceC3147f53).m2151b("Q5", "RenderProcess of the WebView has crashed. Please create another adUnit");
        }
        Activity fullScreenActivity2 = renderView.getFullScreenActivity();
        if (fullScreenActivity2 != null) {
            InterfaceC3147f5 interfaceC3147f54 = renderView.f1749i;
            if (interfaceC3147f54 != null) {
                String TAG2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f54).m2152c(TAG2, "fullScreenActivity is not null and finishing");
            }
            fullScreenActivity2.finish();
        }
        if (this.f1469M == 0) {
            m1622a(true, s2);
        } else {
            renderView.m1959a(z, s2);
            mo904a(m1697r());
        }
    }
}
