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

/* JADX INFO: loaded from: classes6.dex */
public final class Q5 extends Q0 {
    public int M;
    public boolean N;
    public C0323gc O;
    public Function0 P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q5(Context context, Y adPlacement, E0 e0) {
        super(context, adPlacement, e0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.O = new C0323gc();
        Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
        adPlacement.l();
        a(context, adPlacement, e0);
        c("activity");
    }

    public static final void c(Q5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(this$0.r());
    }

    public static final void d(Q5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b(this$0.r());
    }

    public static final /* synthetic */ String e() {
        return "Q5";
    }

    public final boolean D0() {
        if (f0()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", "Some of the dependency libraries for Interstitial not found");
            }
            a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        E0 e0R = r();
        if (e0R == null) {
            return false;
        }
        byte bQ = Q();
        if (bQ == 1) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("InMobiInterstitial", Mc.n + I());
            }
            a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD), false, (short) 2008);
        } else if (bQ == 7 || bQ == 6) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).b("InMobiInterstitial", Mc.j + I());
            }
            a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2010);
        } else {
            if (bQ != 2) {
                if (4 == Q()) {
                    if (!W()) {
                        InterfaceC0298f5 interfaceC0298f54 = this.j;
                        if (interfaceC0298f54 != null) {
                            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                            ((C0314g5) interfaceC0298f54).a("Q5", "An ad is ready with the ad unit. Signaling ad load success ...");
                        }
                        E0 e0R2 = r();
                        if (e0R2 == null) {
                            InterfaceC0298f5 interfaceC0298f55 = this.j;
                            if (interfaceC0298f55 != null) {
                                ((C0314g5) interfaceC0298f55).b("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
                            }
                        } else {
                            e(e0R2);
                            f(e0R2);
                        }
                        return false;
                    }
                    g();
                }
                e0();
                return true;
            }
            if (Intrinsics.areEqual("html", E()) || Intrinsics.areEqual("htmlUrl", E())) {
                InterfaceC0298f5 interfaceC0298f56 = this.j;
                if (interfaceC0298f56 != null) {
                    ((C0314g5) interfaceC0298f56).b("InMobiInterstitial", Mc.n + I());
                }
                a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD), false, (short) 2011);
            } else {
                e(e0R);
            }
        }
        return false;
    }

    public final boolean E0() {
        InterfaceC0298f5 interfaceC0298f5;
        C0325h c0325hM = m();
        if (c0325hM == null) {
            return false;
        }
        AdConfig adConfigJ = j();
        Intrinsics.checkNotNull(adConfigJ);
        boolean zA = c0325hM.a(adConfigJ.getCacheConfig(q()).getTimeToLive());
        if (zA && (interfaceC0298f5 = this.j) != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f5).b("Q5", "Top ad has expired, failing show of ad.");
        }
        return !zA;
    }

    @Override // com.inmobi.media.Q0
    public Integer F() {
        AdConfig adConfigJ = j();
        if (adConfigJ != null) {
            return Integer.valueOf(adConfigJ.getMinimumRefreshInterval());
        }
        return null;
    }

    public final void F0() {
        InterfaceC0559x interfaceC0559xK = k();
        if (interfaceC0559xK == null) {
            return;
        }
        this.N = true;
        interfaceC0559xK.e();
    }

    public final C0323gc G0() {
        return this.O;
    }

    public final boolean H0() {
        return Q() == 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r1.equals("html") != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void I0() {
        /*
            r6 = this;
            java.lang.String r0 = "Cannot handle markupType: "
            com.inmobi.media.f5 r1 = r6.j
            java.lang.String r2 = "TAG"
            java.lang.String r3 = "Q5"
            if (r1 == 0) goto L14
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            com.inmobi.media.g5 r1 = (com.inmobi.media.C0314g5) r1
            java.lang.String r4 = "renderAdPostInternetCheck"
            r1.a(r3, r4)
        L14:
            r6.k0()
            boolean r1 = r6.o0()     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 == 0) goto L1e
            return
        L1e:
            com.inmobi.media.S0 r1 = r6.s()     // Catch: java.lang.IllegalStateException -> L9b
            r1.getClass()     // Catch: java.lang.IllegalStateException -> L9b
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.IllegalStateException -> L9b
            r1.g = r4     // Catch: java.lang.IllegalStateException -> L9b
            r6.d0()     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r1 = r6.E()     // Catch: java.lang.IllegalStateException -> L9b
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
            android.os.Handler r0 = r6.D()     // Catch: java.lang.IllegalStateException -> L9b
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
            com.inmobi.media.f5 r1 = r6.j     // Catch: java.lang.IllegalStateException -> L9b
            if (r1 == 0) goto Lb7
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> L9b
            r4.<init>(r0)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r0 = r6.E()     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r0 = r0.toString()     // Catch: java.lang.IllegalStateException -> L9b
            com.inmobi.media.g5 r1 = (com.inmobi.media.C0314g5) r1     // Catch: java.lang.IllegalStateException -> L9b
            r1.a(r3, r0)     // Catch: java.lang.IllegalStateException -> L9b
            goto Lb7
        L8c:
            com.inmobi.media.f5 r0 = r6.j     // Catch: java.lang.IllegalStateException -> L9b
            if (r0 == 0) goto Lb7
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)     // Catch: java.lang.IllegalStateException -> L9b
            java.lang.String r1 = "Waiting for Vast Processing"
            com.inmobi.media.g5 r0 = (com.inmobi.media.C0314g5) r0     // Catch: java.lang.IllegalStateException -> L9b
            r0.a(r3, r1)     // Catch: java.lang.IllegalStateException -> L9b
            goto Lb7
        L9b:
            r0 = move-exception
            com.inmobi.media.f5 r1 = r6.j
            if (r1 == 0) goto Laa
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            com.inmobi.media.g5 r1 = (com.inmobi.media.C0314g5) r1
            java.lang.String r2 = "Exception while loading ad."
            r1.a(r3, r2, r0)
        Laa:
            com.inmobi.ads.InMobiAdRequestStatus r0 = new com.inmobi.ads.InMobiAdRequestStatus
            com.inmobi.ads.InMobiAdRequestStatus$StatusCode r1 = com.inmobi.ads.InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR
            r0.<init>(r1)
            r1 = 1
            r2 = 2134(0x856, float:2.99E-42)
            r6.b(r0, r1, r2)
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q5.I0():void");
    }

    @Override // com.inmobi.media.Q0
    public final byte J() {
        return (byte) 1;
    }

    public boolean J0() {
        return 2 == Q();
    }

    public final void K0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "submitAdNotReady " + this);
        }
        C0323gc c0323gc = this.O;
        S0 s0S = s();
        C0325h c0325hA = this.A ? a(this.x) : m();
        String strP = c0325hA != null ? c0325hA.p() : null;
        C0560x0 c0560x0Y = y();
        Boolean boolO = c0560x0Y != null ? c0560x0Y.o() : null;
        String strE2 = E();
        byte bQ = Q();
        V adNotReadyMetadata = new V(s0S, strP, boolO, strE2, bQ);
        c0323gc.getClass();
        Intrinsics.checkNotNullParameter(adNotReadyMetadata, "adNotReadyMetadata");
        HashMap map = new HashMap();
        long j = s0S.c;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("errorCode", Short.valueOf(bQ == 0 ? (short) 2204 : bQ == 1 ? (short) 2205 : bQ == 2 ? (short) 2206 : bQ == 3 ? (short) 2207 : bQ == 6 ? (short) 2208 : bQ == 7 ? (short) 2209 : bQ == 8 ? (short) 2242 : (short) 2210));
        if (strE2 != null) {
            map.put("markupType", strE2);
        }
        if (strP != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        if (boolO != null) {
            map.put("isRewarded", boolO);
        }
        String strA = s0S.a();
        if (strA.length() > 0) {
            map.put("metadataBlob", strA);
        }
        map.put("adType", s0S.f237a.q());
        map.put("networkType", E3.q());
        map.put("plId", Long.valueOf(s0S.f237a.I().l()));
        map.put("isAdLoaded", Boolean.valueOf(c0323gc.f364a));
        String strM = s0S.f237a.I().m();
        if (strM != null) {
            map.put("plType", strM);
        }
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AdNotReady", map, EnumC0415mc.f426a);
    }

    public final void L0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("InMobiInterstitial", "Successfully loaded Interstitial ad markup in the WebView for placement id: " + I());
        }
        i();
        r0();
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void a(int i, Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    public final short b(Context context) {
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", ">>> Starting InMobiAdActivity to display interstitial ad ...");
            }
            InterfaceC0559x container = k();
            if (container == null) {
                return (short) 2155;
            }
            if (Intrinsics.areEqual("unknown", container.getMarkupType())) {
                return (short) 2156;
            }
            SparseArray sparseArray = InMobiAdActivity.k;
            Intrinsics.checkNotNullParameter(container, "container");
            int iHashCode = container.hashCode();
            InMobiAdActivity.k.put(iHashCode, container);
            Intent intent = new Intent(context, (Class<?>) InMobiAdActivity.class);
            InterfaceC0298f5 obj = this.j;
            if (obj != null) {
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                HashMap map = S4.f240a;
                String key = string.toString();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(obj, "obj");
                S4.f240a.put(key, new WeakReference(obj));
                intent.putExtra("loggerCacheKey", string.toString());
            }
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", iHashCode);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
            String strE = E();
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", Intrinsics.areEqual(strE, "html") ? 200 : Intrinsics.areEqual(strE, "htmlUrl") ? XMPError.BADRDF : XMPError.BADXML);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
            if (context == null) {
                return (short) 2157;
            }
            if (b0()) {
                if (C() == -1) {
                    a(System.currentTimeMillis());
                }
                if (z() > 0) {
                    intent.setFlags(603979776);
                }
            }
            Kb.f162a.a(context, intent);
            return (short) 0;
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("InMobiInterstitial", "Cannot show ad; SDK encountered an unexpected error");
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return (short) 2154;
        }
    }

    @Override // com.inmobi.media.Q0
    public void c0() {
        if (D0()) {
            super.c0();
        }
    }

    @Override // com.inmobi.media.Q0
    public void g() {
        super.g();
        this.P = null;
    }

    public final void h(E0 e0) {
        short sB = b(t());
        if (e0 == null) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("InMobiInterstitial", "Listener was garbage collected.Unable to give callback");
                return;
            }
            return;
        }
        if (sB != 0) {
            a(true, sB);
        } else {
            e0.e();
        }
    }

    public final void i(E0 e0) {
        if (e0 == null) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
            }
            a(true, (short) 2151);
            return;
        }
        Function0 function0 = this.P;
        if (function0 != null) {
            function0.invoke();
            return;
        }
        if (Q() == 8) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f52).b("Q5", "unload has been called on this ad. Dont show. ");
            }
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            I6.a((byte) 2, "Q5", "Failed to show Ad as creative has called unload() on the Ad");
            a(true, (short) 2239);
            return;
        }
        if (!H0()) {
            I6.a((byte) 2, "InMobiInterstitial", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f53).b("Q5", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            I6.a((byte) 1, "Q5", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            a(true, (short) 2152);
            return;
        }
        g(e0);
        d((byte) 6);
        if (!Intrinsics.areEqual("html", E()) && !Intrinsics.areEqual("htmlUrl", E())) {
            A aV = v();
            int iHashCode = hashCode();
            J5 j5 = new J5(this, e0);
            aV.getClass();
            A.a(iHashCode, j5);
            return;
        }
        if (!W()) {
            h(e0);
            return;
        }
        b(e0, (short) 2153);
        InterfaceC0559x interfaceC0559xK = k();
        if (interfaceC0559xK != null) {
            interfaceC0559xK.b();
        }
    }

    public final void j(final E0 e0) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            i(e0);
        } else {
            int i = AbstractC0407m4.f421a;
            ((P6) AbstractC0407m4.d.getValue()).f214a.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    Q5.a(this.f$0, e0);
                }
            });
        }
    }

    @Override // com.inmobi.media.Q0
    public void j0() {
        if (p0()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", "renderAd without internet check");
            }
            I0();
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q5", "renderAd");
        }
        a(new O5(this), new P5(this));
    }

    @Override // com.inmobi.media.Q0
    public void k0() {
        super.k0();
        this.M = 0;
    }

    @Override // com.inmobi.media.Q0
    public void m(Ya ya) {
        super.m(ya);
        if (!b0()) {
            if (Q() == 2) {
                b((byte) 1);
                L0();
                return;
            }
            return;
        }
        int iIndexOf = this.g.indexOf(ya);
        if (iIndexOf < A()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", "Ignoring loaded ad with index " + iIndexOf + " as current rendering index is " + A());
                return;
            }
            return;
        }
        B().add(Integer.valueOf(iIndexOf));
        for (int i = 0; i < iIndexOf; i++) {
            if (this.g.get(i) != null) {
                return;
            }
        }
        if (Q() == 2) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("Q5", AbstractC0568x8.a("Q5", "TAG", "Providing success based on index ", iIndexOf));
            }
            b((byte) 1);
            h(iIndexOf);
            L0();
        }
    }

    @Override // com.inmobi.media.Q0
    public void o(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (!b0() || !a(renderView)) {
            C0();
        }
        super.o(renderView);
    }

    @Override // com.inmobi.media.Q0
    public String q() {
        return "int";
    }

    @Override // com.inmobi.media.Q0
    public void q0() {
        E0 e0R = r();
        if (e0R != null) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", "callback - onFetchSuccess");
            }
            e(e0R);
            return;
        }
        b((short) 2188);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f52).b("Q5", "listener is null");
        }
    }

    @Override // com.inmobi.media.Q0
    public void r0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f5).d("Q5", "AdUnit " + this + " state - READY");
        }
        d((byte) 4);
        S0 s0S = s();
        s0S.getClass();
        s0S.i = SystemClock.elapsedRealtime();
        u0();
        z0();
        this.O.f364a = true;
        E0 e0R = r();
        if (e0R == null || !e0R.a()) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q5", "signaling Success");
        }
        f(e0R);
    }

    @Override // com.inmobi.media.Q0
    public Ya w() {
        Ya yaW = super.w();
        if (this.N && yaW != null) {
            yaW.e();
        }
        return yaW;
    }

    public static final void e(Q5 this$0) {
        LinkedList<C0325h> linkedListF;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.s0();
        if (this$0.b0()) {
            C0560x0 c0560x0Y = this$0.y();
            int size = (c0560x0Y == null || (linkedListF = c0560x0Y.f()) == null) ? 0 : linkedListF.size();
            for (int i = 1; i < size; i++) {
                this$0.g(this$0.z() + 1);
                this$0.s0();
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public void c(String monetizationContext) {
        Intrinsics.checkNotNullParameter(monetizationContext, "monetizationContext");
        super.c("activity");
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public synchronized void d(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.d(renderView);
        Handler handlerD = D();
        if (handlerD != null) {
            handlerD.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    Q5.c(this.f$0);
                }
            });
        }
    }

    public final void a(C0323gc c0323gc) {
        Intrinsics.checkNotNullParameter(c0323gc, "<set-?>");
        this.O = c0323gc;
    }

    @Override // com.inmobi.media.Q0
    public void a(byte[] bArr) {
        if (D0()) {
            super.a(bArr);
        }
    }

    public static final void a(Q5 this$0, E0 e0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.i(e0);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public synchronized void e(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.e(renderView);
        Handler handlerD = D();
        if (handlerD != null) {
            handlerD.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    Q5.d(this.f$0);
                }
            });
        }
    }

    public static final void a(final Q5 this$0, Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        final int iIndexOf = this$0.g.indexOf(renderView);
        ArrayList list = this$0.g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (iIndexOf < 0 || iIndexOf >= list.size()) {
            return;
        }
        short sB = this$0.b(context);
        if (sB != 0) {
            this$0.f(iIndexOf);
        }
        this$0.b(iIndexOf, sB == 0);
        Handler handlerD = this$0.D();
        if (handlerD != null) {
            handlerD.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Q5.a(this.f$0, iIndexOf);
                }
            });
        }
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void a(Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).c(strE, "closeCurrentPodAd " + this);
        }
        if (b0()) {
            Integer numHigher = B().higher(Integer.valueOf(this.g.indexOf(renderView)));
            if (numHigher != null) {
                a(numHigher.intValue(), renderView, context);
            } else {
                b();
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public void a(E0 e0) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q5", AbstractC0363j6.a("Q5", "TAG", "handleAdScreenDismissed ").append((int) Q()).toString());
        }
        if (Q() == 7) {
            int i = this.M - 1;
            this.M = i;
            if (i == 1) {
                d((byte) 6);
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                    ((C0314g5) interfaceC0298f52).d("Q5", "AdUnit " + this + " state - RENDERED");
                    return;
                }
                return;
            }
            return;
        }
        if (Q() == 6 || Q() == 8) {
            this.M--;
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).a("InMobiInterstitial", "Interstitial ad dismissed for placement id: " + I());
            }
            if (e0 != null) {
                e0.b();
                return;
            }
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).c("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public void b(E0 e0) {
        if (Q() == 6) {
            int i = this.M + 1;
            this.M = i;
            if (i == 1) {
                InterfaceC0298f5 interfaceC0298f5 = this.j;
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).a("InMobiInterstitial", "Successfully displayed Interstitial for placement id: " + I());
                }
                if (e0 != null) {
                    b((byte) 4);
                    d(e0);
                    return;
                }
                return;
            }
            d((byte) 7);
            return;
        }
        if (Q() == 7) {
            this.M++;
        }
    }

    public final void b(E0 e0, short s) {
        a(true, s);
        d((byte) 0);
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void b() {
        if (b0()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", "Closing the ad as closeAll is called");
            }
            Handler handlerD = D();
            if (handlerD != null) {
                handlerD.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Q5.b(this.f$0);
                    }
                });
            }
        }
    }

    public static final void b(Q5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5 = this$0.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).a("Q0", "clearAdPods " + this$0);
        }
        if (this$0.A) {
            this$0.h();
            this$0.g.clear();
            this$0.w = 0;
            this$0.x = 0;
            this$0.z.clear();
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).c("InMobiInterstitial", "Interstitial ad dismissed for placement id: " + this$0.I());
        }
        if (this$0.r() != null) {
            E0 e0R = this$0.r();
            if (e0R != null) {
                e0R.b();
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this$0.j;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).c("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
        }
    }

    @Override // com.inmobi.media.Q0
    public void a(boolean z, InMobiAdRequestStatus status) {
        String placementType;
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q5", "onDidParseAfterFetch - parsingResult - " + z);
        }
        super.a(z, status);
        if (Q() == 2) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("InMobiInterstitial", "Interstitial ad successfully fetched for placement id: " + I());
            }
            if (Intrinsics.areEqual(E(), "inmobiJson") && (placementType = I().m()) != null) {
                B6 b6 = Ea.f109a;
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                Intrinsics.checkNotNullParameter("intNative", "logType");
                Intrinsics.checkNotNullParameter(placementType, "placementType");
                TelemetryConfig.LoggingConfig loggingConfig = Ea.d.getLoggingConfig();
                if (interfaceC0298f53 != null) {
                    B6 logLevel = Ea.a("intNative", placementType, loggingConfig);
                    double dB = Ea.b("intNative", placementType, loggingConfig);
                    C0283e5 config = new C0283e5(logLevel, dB);
                    Intrinsics.checkNotNullParameter(config, "config");
                    Objects.toString(config);
                    Ca ca = ((C0314g5) interfaceC0298f53).f357a;
                    if (ca != null) {
                        Intrinsics.checkNotNullParameter(config, "config");
                        Objects.toString(config);
                        Objects.toString(ca.i);
                        if (!ca.i.get()) {
                            D6 d6 = ca.e;
                            d6.getClass();
                            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                            d6.f97a = logLevel;
                            ca.f.f117a = dB;
                        }
                    }
                }
            }
            q0();
        }
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.InterfaceC0355id
    public void a(C0325h ad, boolean z, short s) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        if (!z) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
            return;
        }
        try {
            super.a(ad, z, s);
        } catch (IllegalStateException e) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("Q5", AbstractC0363j6.a("Q5", "TAG", "Exception while onVastProcessCompleted : ").append(e.getMessage()).toString());
            }
        }
        C0325h c0325hM = m();
        if (c0325hM == null) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 55);
        } else if (c0325hM.G()) {
            b(true);
            V();
        } else {
            a(c0325hM);
        }
    }

    @Override // com.inmobi.media.Q0
    public void a(Y placement, boolean z) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        super.a(placement, z);
        if (!z) {
            if (Intrinsics.areEqual(I(), placement)) {
                if (2 == Q() || 4 == Q()) {
                    d((byte) 0);
                    InterfaceC0298f5 interfaceC0298f5 = this.j;
                    if (interfaceC0298f5 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                        ((C0314g5) interfaceC0298f5).d("Q5", "AdUnit " + this + " state - CREATED");
                    }
                    b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), false, (short) 0);
                    return;
                }
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(I(), placement) && 2 == Q()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f52).a("Q5", "Asset are ready now");
            }
            if (a0()) {
                c(true);
                f();
            } else {
                r0();
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public void a(Ya ya, short s) {
        super.a(ya, s);
        if (b0()) {
            int iIndexOf = this.g.indexOf(ya);
            boolean z = false;
            Q0.a(this, iIndexOf, false, 2, null);
            int size = this.g.size();
            boolean z2 = true;
            boolean z3 = true;
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = z2;
                    i = -1;
                    break;
                }
                if (i != iIndexOf && this.g.get(i) != null) {
                    if (B().contains(Integer.valueOf(i))) {
                        break;
                    }
                    z2 = false;
                    z3 = false;
                }
                i++;
            }
            if (i != -1) {
                if (z3 && Q() == 2) {
                    b((byte) 1);
                    h(i);
                    InterfaceC0298f5 interfaceC0298f5 = this.j;
                    if (interfaceC0298f5 != null) {
                        ((C0314g5) interfaceC0298f5).a("Q5", AbstractC0363j6.a("Q5", "TAG", "Providing success based on currIndex ").append(A()).append(" as ").append(iIndexOf).append(" failed").toString());
                    }
                    L0();
                    return;
                }
                return;
            }
            if (z && Q() == 2) {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    ((C0314g5) interfaceC0298f52).a("InMobiInterstitial", "Failed to load the Interstitial markup in the WebView for placement id: " + I());
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
                return;
            }
            return;
        }
        if (Q() == 2) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).a("InMobiInterstitial", "Failed to load the Interstitial markup in the WebView for placement id: " + I());
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
        }
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void a(int i, final Ya renderView, final Context context) {
        Ya ya;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (!b0()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                ((C0314g5) interfaceC0298f5).a("Q5", "Cannot show an pod ad as isPod is not set.");
                return;
            }
            return;
        }
        if (B().contains(Integer.valueOf(i)) && i > this.g.indexOf(renderView) && i < this.g.size() && this.g.get(i) != null && ((ya = (Ya) this.g.get(i)) == null || ya.m0)) {
            if (context == null) {
                context = t();
            }
            super.a(i, renderView, context);
            Handler handlerD = D();
            if (handlerD != null) {
                handlerD.post(new Runnable() { // from class: com.inmobi.media.Q5$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Q5.a(this.f$0, renderView, context);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q5", "Cannot show an pod ad with invalid index passed");
        }
        b(this.g.indexOf(renderView), false);
    }

    public static final void a(Q5 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(i, false);
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public boolean a(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (b0()) {
            return B().higher(Integer.valueOf(this.g.indexOf(renderView))) != null;
        }
        return false;
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.InterfaceC0558wc
    public void a(byte b) {
        if (b == 1) {
            if (b0()) {
                if (Q() == 2) {
                    if (B().isEmpty()) {
                        InterfaceC0298f5 interfaceC0298f5 = this.j;
                        if (interfaceC0298f5 != null) {
                            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                            ((C0314g5) interfaceC0298f5).b("Q5", "RenderView time out, none of the ad provided success");
                        }
                        h();
                        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2139);
                        return;
                    }
                    b((byte) 1);
                    InterfaceC0298f5 interfaceC0298f52 = this.j;
                    if (interfaceC0298f52 != null) {
                        ((C0314g5) interfaceC0298f52).a("Q5", AbstractC0363j6.a("Q5", "TAG", "RenderView time out, providing success based on ").append(B().first()).toString());
                    }
                    Integer numFirst = B().first();
                    Intrinsics.checkNotNullExpressionValue(numFirst, "first(...)");
                    h(numFirst.intValue());
                    L0();
                    int size = this.g.size();
                    for (int i = 0; i < size; i++) {
                        if (!B().contains(Integer.valueOf(i))) {
                            Q0.a(this, i, false, 2, null);
                        }
                    }
                    return;
                }
                h();
                return;
            }
            super.a(b);
            return;
        }
        super.a(b);
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.AbstractC0227ab
    public void a(Ya renderView, boolean z) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.a(renderView, z);
        byte bQ = Q();
        if (bQ == 4) {
            this.P = new N5(this, z ? (short) 2220 : (short) 2219);
            return;
        }
        if (bQ != 6) {
            if (bQ == 7) {
                short s = z ? (short) 2224 : (short) 2223;
                I6.a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
                InterfaceC0298f5 interfaceC0298f5 = this.j;
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
                    ((C0314g5) interfaceC0298f5).b("Q5", "RenderProcess of the WebView has crashed. Please create another adUnit");
                }
                renderView.a(z, s);
                Activity fullScreenActivity = renderView.getFullScreenActivity();
                if (fullScreenActivity != null) {
                    InterfaceC0298f5 interfaceC0298f52 = renderView.i;
                    if (interfaceC0298f52 != null) {
                        String TAG = Ya.P0;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((C0314g5) interfaceC0298f52).c(TAG, "fullScreenActivity is not null and finishing");
                    }
                    fullScreenActivity.finish();
                }
                a(r());
                return;
            }
            return;
        }
        short s2 = z ? (short) 2222 : (short) 2221;
        I6.a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q5", "TAG");
            ((C0314g5) interfaceC0298f53).b("Q5", "RenderProcess of the WebView has crashed. Please create another adUnit");
        }
        Activity fullScreenActivity2 = renderView.getFullScreenActivity();
        if (fullScreenActivity2 != null) {
            InterfaceC0298f5 interfaceC0298f54 = renderView.i;
            if (interfaceC0298f54 != null) {
                String TAG2 = Ya.P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f54).c(TAG2, "fullScreenActivity is not null and finishing");
            }
            fullScreenActivity2.finish();
        }
        if (this.M == 0) {
            a(true, s2);
        } else {
            renderView.a(z, s2);
            a(r());
        }
    }
}
