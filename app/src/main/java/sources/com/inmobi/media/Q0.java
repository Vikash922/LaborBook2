package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.inmobi.Omid;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.WatermarkData;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Q0 extends AbstractC0227ab implements Z1, InterfaceC0558wc, InterfaceC0355id, Z {
    public static final /* synthetic */ int L = 0;
    public boolean A;
    public String B;
    public final A C;
    public N D;
    public K5 E;
    public Y6 F;
    public final Handler G;
    public final LinkedHashMap H;
    public final S0 I;
    public WatermarkData J;
    public final J0 K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f219a;
    public AdConfig b;
    public WeakReference c;
    public Ec d;
    public A0 e;
    public WeakReference f;
    public ArrayList g;
    public C0511t7 h;
    public HashMap i;
    public InterfaceC0298f5 j;
    public byte k;
    public Handler l;
    public boolean m;
    public Ya n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public C0555w9 s;
    public Y t;
    public C0560x0 u;
    public C0586yc v;
    public int w;
    public int x;
    public long y;
    public TreeSet z;

    public Q0(Context context, Y adPlacement, E0 e0) {
        Boolean boolO;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.g = new ArrayList();
        this.y = -1L;
        this.z = new TreeSet();
        this.C = A.f69a;
        this.G = new Handler(Looper.getMainLooper());
        this.H = new LinkedHashMap();
        this.I = new S0(this);
        this.K = new J0(this);
        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
        toString();
        this.c = new WeakReference(context);
        this.t = adPlacement;
        WeakReference weakReference = new WeakReference(e0);
        this.f = weakReference;
        String strQ = q();
        C0560x0 c0560x0 = this.u;
        this.D = new N(weakReference, strQ, (c0560x0 == null || (boolO = c0560x0.o()) == null) ? false : boolO.booleanValue());
        n0();
    }

    public static /* synthetic */ void R() {
    }

    public static /* synthetic */ void U() {
    }

    public static final /* synthetic */ String e() {
        return "Q0";
    }

    public final int A() {
        return this.x;
    }

    public long A0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "timeSincePodShow ", this));
        }
        if (this.A) {
            return System.currentTimeMillis() - this.y;
        }
        return -1L;
    }

    public final TreeSet<Integer> B() {
        return this.z;
    }

    public final C0370jd B0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "trySetTheLocalVideoDescriptor ", this));
        }
        C0325h c0325hM = m();
        if (c0325hM == null) {
            throw new IllegalStateException("No ad");
        }
        if (!(c0325hM instanceof C0554w8)) {
            return null;
        }
        C0554w8 c0554w8 = (C0554w8) c0325hM;
        C0356j c0356jB = Db.a().b(c0554w8.f514a);
        if (c0356jB == null || !c0356jB.a()) {
            throw new IllegalStateException("Asset not available in cache");
        }
        String str = c0356jB.c;
        String str2 = c0554w8.b;
        String str3 = c0554w8.c;
        ArrayList arrayList = c0554w8.d;
        ArrayList arrayList2 = c0554w8.e;
        AdConfig adConfig = this.b;
        Intrinsics.checkNotNull(adConfig);
        return new C0370jd(str, str2, str3, arrayList, arrayList2, adConfig.getVastVideo());
    }

    public final long C() {
        return this.y;
    }

    public final void C0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).b("Q0", "ad unloaded");
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).d("Q0", "AdUnit " + this + " state - UNLOADED");
        }
        d((byte) 8);
    }

    public final Handler D() {
        return this.l;
    }

    public final String E() {
        String strU;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "markupType getter ", this));
        }
        C0325h c0325hM = m();
        return (c0325hM == null || (strU = c0325hM.u()) == null) ? "unknown" : strU;
    }

    public Integer F() {
        return null;
    }

    public final C0511t7 G() {
        return this.h;
    }

    public final C0555w9 H() {
        return this.s;
    }

    public final Y I() {
        return this.t;
    }

    public abstract byte J();

    public String K() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getPodAdContext ", this));
        }
        if (this.A) {
            return this.B;
        }
        return null;
    }

    public final String L() {
        return c(0);
    }

    public final Map<String, String> M() {
        return this.t.f();
    }

    public JSONArray N() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getRenderableAdIndexes ", this));
        }
        JSONArray jSONArray = new JSONArray();
        for (Integer num : this.z) {
            Intrinsics.checkNotNull(num);
            jSONArray.put(num.intValue());
        }
        return jSONArray;
    }

    public long O() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getShowTimeStamp ", this));
        }
        if (this.A) {
            return this.y;
        }
        return -1L;
    }

    public final Unit P() {
        E0 e0R = r();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (a(e0R, jCurrentTimeMillis)) {
            return Unit.INSTANCE;
        }
        this.r = true;
        if (this.s == null) {
            this.s = new C0555w9(this);
        }
        A a2 = this.C;
        int iHashCode = hashCode();
        C0522u4 c0522u4 = new C0522u4(this, jCurrentTimeMillis, this.j);
        a2.getClass();
        A.a(iHashCode, c0522u4);
        return Unit.INSTANCE;
    }

    public final byte Q() {
        return this.f219a;
    }

    public final String S() {
        LinkedList<C0325h> linkedListF;
        C0325h c0325h;
        String strW;
        C0560x0 c0560x0 = this.u;
        return (c0560x0 == null || (linkedListF = c0560x0.f()) == null || (c0325h = (C0325h) CollectionsKt.firstOrNull((List) linkedListF)) == null || (strW = c0325h.w()) == null) ? "" : strW;
    }

    public final byte T() {
        return this.k;
    }

    public final void V() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "handleInterActive ", this));
        }
        A a2 = this.C;
        int iHashCode = hashCode();
        I0 i0 = new I0(this);
        a2.getClass();
        A.a(iHashCode, i0);
    }

    public final boolean W() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "hasAdExpired ", this));
        }
        C0325h c0325hM = m();
        if (c0325hM == null) {
            return false;
        }
        AdConfig adConfig = this.b;
        Intrinsics.checkNotNull(adConfig);
        return c0325hM.a(adConfig.getCacheConfig(q()).getTimeToLive());
    }

    public final boolean X() {
        AdConfig.RenderingConfig rendering;
        AdConfig adConfig = this.b;
        return adConfig != null && (rendering = adConfig.getRendering()) != null && rendering.getEnablePubMuteControl() && Kb.o();
    }

    public final boolean Y() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "isBlockingStateForLoadWithResponse getter " + this + " state=" + ((int) this.f219a));
        }
        if (!C0508t4.f487a.a()) {
            g();
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED), true, (short) 2141);
            return true;
        }
        if (f0()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("Q0", AbstractC0363j6.a("Q0", "TAG", "Some of the dependency libraries for ").append(q()).append(" not found").toString());
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return true;
        }
        byte b = this.f219a;
        if (b == 1) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).b("Q0", "load with reasponse called while loading");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING), false, (short) 2001);
            return true;
        }
        if (b != 7) {
            return false;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f54).b("Q0", "ad active before load");
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2003);
        return true;
    }

    public final boolean Z() {
        return this.o;
    }

    public abstract /* synthetic */ void a(int i, Ya ya);

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(Ya renderView, boolean z) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "onRenderProcessGone didCrash=" + z + " state=" + ((int) this.f219a));
        }
        byte b = this.f219a;
        if (b == 0) {
            short s = z ? (short) 2214 : (short) 2213;
            m0();
            renderView.a(z, s);
            return;
        }
        if (b == 1) {
            short s2 = z ? (short) 2216 : (short) 2215;
            m0();
            b(s2);
            E0 e0R = r();
            if (e0R != null) {
                e0R.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                return;
            }
            return;
        }
        if (b == 3) {
            renderView.a(z, z ? (short) 2226 : (short) 2225);
            return;
        }
        if (b == 2) {
            m0();
            b(z ? (short) 2218 : (short) 2217);
            E0 e0R2 = r();
            if (e0R2 != null) {
                e0R2.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                return;
            }
            return;
        }
        if (b == 4 || b == 6 || b == 7 || b != 8) {
            return;
        }
        renderView.a(z, z ? (short) 2240 : (short) 2241);
    }

    public final boolean a0() {
        return this.m;
    }

    public abstract /* synthetic */ void b();

    public final boolean b0() {
        return this.A;
    }

    public final String c(int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getPubContent ", this));
        }
        if (i > 0 && !this.A) {
            return "";
        }
        C0325h c0325hA = a(i);
        if (c0325hA != null) {
            return c0325hA.x();
        }
        return null;
    }

    public void c0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "load  ", this));
        }
        S0 s0 = this.I;
        s0.getClass();
        s0.c = SystemClock.elapsedRealtime();
        a(new K0(this), new L0(this));
    }

    public final void d(byte b) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).d("Q0", AbstractC0363j6.a("Q0", "TAG", "from ").append((int) this.f219a).append(" to ").append((int) b).append(' ').append(this).toString());
        }
        this.f219a = b;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d0() throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q0.d0():void");
    }

    public final void e0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "makeUnitActive ", this));
        }
        this.o = false;
    }

    public final void f(E0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onLoadSuccess ", this));
        }
        AdMetaInfo adMetaInfoL = l();
        if (adMetaInfoL == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).b("Q0", "load success - ad unit null");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2107);
            return;
        }
        b((byte) 1);
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f53).a("Q0", "callback - onAdLoadSucceeded");
        }
        listener.c(adMetaInfoL);
    }

    public boolean f0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "missingPrerequisitesForAd ", this));
        }
        try {
            Reflection.getOrCreateKotlinClass(RecyclerView.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(CustomTabsClient.class).getSimpleName();
            return false;
        } catch (NoClassDefFoundError unused) {
            return true;
        }
    }

    public final void g(int i) {
        this.w = i;
    }

    public void g0() {
        S0 s0 = this.I;
        s0.getClass();
        s0.h = SystemClock.elapsedRealtime();
    }

    public final void h(int i) {
        this.x = i;
    }

    public final S h0() {
        String string;
        Integer num;
        Integer num2;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "prepareAdRequest ", this));
        }
        Context contextT = t();
        C0485r9 c0485r9 = null;
        C0513t9 c0513t9 = contextT != null ? new C0513t9(contextT, this.j) : null;
        AdConfig adConfig = this.b;
        String url = adConfig != null ? adConfig.getUrl() : null;
        AdConfig adConfig2 = this.b;
        Intrinsics.checkNotNull(adConfig2);
        Kc kc = new Kc(adConfig2.getIncludeIds());
        ArrayList arrayListA = Db.a().a();
        if (arrayListA.isEmpty()) {
            string = null;
        } else {
            JSONArray jSONArray = new JSONArray();
            Iterator it = arrayListA.iterator();
            while (it.hasNext()) {
                try {
                    jSONArray.put(URLEncoder.encode(((C0356j) it.next()).b, "UTF-8"));
                } catch (UnsupportedEncodingException unused) {
                }
            }
            string = jSONArray.toString();
        }
        Y y = this.t;
        if (c0513t9 != null) {
            if (c0513t9.d) {
                c0485r9 = new C0485r9(MapsKt.hashMapOf(TuplesKt.to("n-h-id", c0513t9.c)));
            } else {
                InterfaceC0298f5 interfaceC0298f52 = c0513t9.b;
                if (interfaceC0298f52 != null) {
                    ((C0314g5) interfaceC0298f52).a("NovatiqDataHandler", "Novatiq disabled. skip");
                }
                c0485r9 = new C0485r9(MapsKt.emptyMap());
            }
        }
        C0485r9 c0485r92 = c0485r9;
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        AdConfig adConfig3 = this.b;
        S s = new S(url, kc, string, y, c0485r92, interfaceC0298f53, adConfig3 != null ? adConfig3.getApplyGzipReq() : false);
        s.C = this.t.i();
        s.B = q();
        Intrinsics.checkNotNullParameter("unifiedSdkJson", "<set-?>");
        s.A = "unifiedSdkJson";
        s.D = o();
        Y6 y6 = this.F;
        int iIntValue = Ec.DEFAULT_TIMEOUT;
        s.p = (y6 == null || (num2 = y6.d) == null) ? 15000 : num2.intValue();
        Y6 y62 = this.F;
        if (y62 != null && (num = y62.d) != null) {
            iIntValue = num.intValue();
        }
        s.q = iIntValue;
        s.o = X();
        return s;
    }

    public final void i() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "fireAdServedBeacon ", this));
        }
        InterfaceC0559x interfaceC0559xK = k();
        if (interfaceC0559xK == null) {
            return;
        }
        interfaceC0559xK.a((byte) 2, null);
    }

    public Ec i0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "provideTimeoutConfigurations ", this));
        }
        Ec ec = this.d;
        Intrinsics.checkNotNull(ec);
        return ec;
    }

    public final AdConfig j() {
        return this.b;
    }

    public abstract void j0();

    public final InterfaceC0559x k() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "adMarkupContainer getter ", this));
        }
        byte b = this.f219a;
        String strE = E();
        int iHashCode = strE.hashCode();
        if (iHashCode != -1084172778) {
            if (iHashCode != 3213227) {
                if (iHashCode == 1236050372 && strE.equals("htmlUrl") && b != 0 && 1 != b && 3 != b && 8 != b) {
                    return w();
                }
            } else if (strE.equals("html") && b != 0 && 1 != b && 3 != b && 8 != b) {
                return w();
            }
        } else if (strE.equals("inmobiJson") && b != 0 && 1 != b && 3 != b && 2 != b) {
            return this.h;
        }
        return null;
    }

    public void k0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "resetContainersForNextAd ", this));
        }
        C0511t7 c0511t7 = this.h;
        if (c0511t7 != null) {
            c0511t7.b();
        }
        this.h = null;
        int size = this.g.size();
        int i = this.x;
        if (size <= i || this.g.get(i) == null) {
            return;
        }
        a(this.x, false);
    }

    public final AdMetaInfo l() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "adMetaInfo getter ", this));
        }
        C0325h c0325hM = m();
        if (c0325hM != null) {
            return c0325hM.d();
        }
        return null;
    }

    public final C0524u6 l0() {
        String strT;
        Boolean boolO;
        String strW;
        String strP;
        String strS;
        long jL = this.t.l();
        C0325h c0325hU = u();
        String str = (c0325hU == null || (strS = c0325hU.s()) == null) ? "" : strS;
        String strValueOf = String.valueOf(this.t.m());
        String strQ = q();
        String strE = E();
        C0325h c0325hU2 = u();
        String str2 = (c0325hU2 == null || (strP = c0325hU2.p()) == null) ? "" : strP;
        C0325h c0325hU3 = u();
        String str3 = (c0325hU3 == null || (strW = c0325hU3.w()) == null) ? "" : strW;
        C0560x0 c0560x0 = this.u;
        boolean zBooleanValue = (c0560x0 == null || (boolO = c0560x0.o()) == null) ? false : boolO.booleanValue();
        C0325h c0325hU4 = u();
        return new C0524u6(jL, str, strValueOf, strQ, strE, str2, str3, zBooleanValue, (c0325hU4 == null || (strT = c0325hU4.t()) == null) ? "" : strT);
    }

    public final C0325h m() {
        return a(0);
    }

    public final void m0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).d("Q0", "AdUnit " + this + " state - FAILED");
        }
        d((byte) 3);
        b((byte) 1);
    }

    public final String n() {
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null) {
            return c0560x0.c();
        }
        return null;
    }

    public final void n0() {
        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
        toString();
        String strB = Kb.b();
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("ads", strB, null);
        this.b = configA instanceof AdConfig ? (AdConfig) configA : null;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "timeOutConfiguration getter ", this));
        }
        AdConfig adConfig = this.b;
        Intrinsics.checkNotNull(adConfig);
        this.d = adConfig.getTimeouts();
        d((byte) 0);
        this.e = new A0(this, this, this.t);
        this.i = new HashMap();
        this.k = (byte) -1;
        this.l = new Handler(Looper.getMainLooper());
        this.m = false;
        this.v = new C0586yc(this);
    }

    public HashMap o() {
        return new HashMap();
    }

    public final boolean o0() {
        Unit unit;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "shouldBlockLoadAd ", this));
        }
        C0325h c0325hM = m();
        if (c0325hM != null && 4 == this.f219a && !W()) {
            E0 e0R = r();
            if (e0R != null) {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f52).a("Q0", "ad is ready - load success");
                }
                f(e0R);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                b((short) 2188);
            }
            return true;
        }
        if (c0325hM == null) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2131);
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).b("Q0", "ad no longer available");
            }
            return true;
        }
        if (2 != this.f219a) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2132);
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).b("Q0", AbstractC0363j6.a("Q0", "TAG", "ad no longer available. state - ").append((int) this.f219a).toString());
            }
            return true;
        }
        if (!W()) {
            return false;
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2133);
        InterfaceC0298f5 interfaceC0298f55 = this.j;
        if (interfaceC0298f55 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f55).b("Q0", "ad is expired");
        }
        return true;
    }

    public final A0 p() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "adStore getter ", this));
        }
        if (this.e == null) {
            this.e = new A0(this, this, this.t);
        }
        A0 a0 = this.e;
        Intrinsics.checkNotNull(a0);
        return a0;
    }

    public final boolean p0() {
        AdConfig adConfig;
        return Intrinsics.areEqual(this.t.m(), "AB") && (adConfig = this.b) != null && adConfig.getSkipNetCheckHB();
    }

    public abstract String q();

    public void q0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "signalAvailabilityChange ", this));
        }
    }

    public final E0 r() {
        InterfaceC0298f5 interfaceC0298f5;
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).c("Q0", C0.a("Q0", "TAG", "adUnitEventListener getter ", this));
        }
        E0 e0 = (E0) this.f.get();
        if (e0 == null && (interfaceC0298f5 = this.j) != null) {
            ((C0314g5) interfaceC0298f5).b("InMobi", "Listener was garbage collected. Unable to give callback");
        }
        return e0;
    }

    public void r0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "signalSuccess ", this));
        }
    }

    public final S0 s() {
        return this.I;
    }

    public final void s0() {
        LinkedList<C0325h> linkedListF;
        C0325h c0325h;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "startLoadingHTMLAd ", this));
        }
        Ya ya = null;
        try {
            e(this.w);
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                StringBuilder sb = new StringBuilder("Loading ad with impressionId : ");
                C0560x0 c0560x0 = this.u;
                ((C0314g5) interfaceC0298f52).a("Q0", sb.append((c0560x0 == null || (linkedListF = c0560x0.f()) == null || (c0325h = linkedListF.get(this.w)) == null) ? null : c0325h.s()).toString());
            }
            Ya ya2 = (Ya) this.g.get(this.w);
            String strE = E();
            if (Intrinsics.areEqual(strE, "html")) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f53).a("Q0", "loading into weview for " + E());
                }
                if (ya2 != null) {
                    ya2.c(c(this.w));
                }
            } else if (Intrinsics.areEqual(strE, "htmlUrl")) {
                InterfaceC0298f5 interfaceC0298f54 = this.j;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f54).a("Q0", "loading into weview for " + E());
                }
                if (ya2 != null) {
                    ya2.d(c(this.w));
                }
            }
            a(true, ya2);
            if (ya2 == null || !Intrinsics.areEqual(E(), "htmlUrl")) {
                return;
            }
            k(ya2);
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f55 = this.j;
            if (interfaceC0298f55 != null) {
                ((C0314g5) interfaceC0298f55).a("Q0", Ed.a(e, AbstractC0363j6.a("Q0", "TAG", "Loading ad markup into container encountered an unexpected error: ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            int i = this.w;
            if (i >= 0 && i < this.g.size()) {
                ya = (Ya) this.g.get(this.w);
            }
            a(ya, (short) 2135);
        }
    }

    public final Context t() {
        WeakReference weakReference = this.c;
        if (weakReference != null) {
            return (Context) weakReference.get();
        }
        return null;
    }

    public final void t0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdLoadCalled ", this));
        }
        HashMap map = new HashMap();
        c(map);
        c("AdLoadCalled", map);
    }

    public final C0325h u() {
        return this.A ? a(this.w) : m();
    }

    public final void u0() {
        Boolean boolO;
        String strP;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", AbstractC0363j6.a("Q0", "TAG", "submitAdLoadSuccessfulEvent ADunit markuptype : ").append(E()).append(' ').append(this).toString());
        }
        HashMap map = new HashMap();
        long j = this.I.c;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("markupType", E());
        C0325h c0325hU = u();
        if (c0325hU != null && (strP = c0325hU.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        K5 k5 = this.E;
        if (k5 != null) {
            map.put("retryCount", Integer.valueOf(k5.b));
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        if (S().length() > 0) {
            map.put("metadataBlob", S());
        }
        c(map);
        c("AdLoadSuccessful", map);
    }

    public final A v() {
        return this.C;
    }

    public final void v0() {
        String strP;
        Boolean boolO;
        HashMap map = new HashMap();
        c(map);
        map.put("markupType", E());
        long j = this.I.h;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("metadataBlob", S());
        K5 k5 = this.E;
        if (k5 != null) {
            map.put("retryCount", Integer.valueOf(k5.b));
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        C0325h c0325hU = u();
        if (c0325hU != null && (strP = c0325hU.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        c("ParseSuccess", map);
    }

    public Ya w() {
        if (this.g.size() <= 0 || this.x >= this.g.size()) {
            return null;
        }
        return (Ya) this.g.get(this.x);
    }

    public final void w0() {
        Boolean boolO;
        String strP;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdShowCalled ", this));
        }
        S0 s0 = this.I;
        s0.getClass();
        s0.e = SystemClock.elapsedRealtime();
        HashMap map = new HashMap();
        map.put("markupType", E());
        long j = this.I.i;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        C0325h c0325hA = this.A ? a(this.x) : m();
        if (c0325hA != null && (strP = c0325hA.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        if (S().length() > 0) {
            map.put("metadataBlob", S());
        }
        c(map);
        c("AdShowCalled", map);
    }

    public final Ya x() {
        return this.n;
    }

    public final void x0() {
        Boolean boolO;
        String strP;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdShowSuccess ", this));
        }
        HashMap map = new HashMap();
        long j = this.I.e;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("markupType", E());
        C0325h c0325hA = this.A ? a(this.x) : m();
        if (c0325hA != null && (strP = c0325hA.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        if (S().length() > 0) {
            map.put("metadataBlob", S());
        }
        c(map);
        c("AdShowSuccessful", map);
    }

    public final C0560x0 y() {
        return this.u;
    }

    public final void y0() {
        HashMap map = new HashMap();
        c(map);
        c("AdGetSignalsCalled", map);
    }

    public final int z() {
        return this.w;
    }

    public final void z0() {
        Boolean boolO;
        String strP;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", AbstractC0363j6.a("Q0", "TAG", "submitRenderSuccessEvent ADunit markuptype : ").append(E()).append(' ').append(this).toString());
        }
        HashMap map = new HashMap();
        long j = this.I.g;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("markupType", E());
        C0325h c0325hA = this.A ? a(this.x) : m();
        if (c0325hA != null && (strP = c0325hA.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        K5 k5 = this.E;
        if (k5 != null) {
            map.put("retryCount", Integer.valueOf(k5.b));
        }
        map.put("plType", Byte.valueOf(J()));
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        if (S().length() > 0) {
            map.put("metadataBlob", S());
        }
        c(map);
        c((Map) map);
        c("RenderSuccess", map);
    }

    public final void e(C0560x0 c0560x0) {
        this.u = c0560x0;
    }

    public final void g(E0 e0) {
        Boolean boolO;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "adUnitEventListener setter ", this));
        }
        WeakReference weakReference = new WeakReference(e0);
        this.f = weakReference;
        String strQ = q();
        C0560x0 c0560x0 = this.u;
        N n = new N(weakReference, strQ, (c0560x0 == null || (boolO = c0560x0.o()) == null) ? false : boolO.booleanValue());
        this.D = n;
        InterfaceC0298f5 logger = this.j;
        if (logger != null) {
            Intrinsics.checkNotNullParameter(logger, "logger");
            n.f = logger;
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void h(final Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onRenderViewSignaledAdReady ", this));
        }
        if (this.o || t() == null) {
            b((short) 2186);
            return;
        }
        Handler handler = this.l;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    Q0.c(this.f$0, renderView);
                }
            });
        } else {
            b((short) 2187);
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void j(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        byte b = this.f219a;
        if (b == 2) {
            C0();
            b((byte) 1);
            E0 e0R = r();
            InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
            if (e0R != null) {
                e0R.a(this, inMobiAdRequestStatus);
            } else {
                InterfaceC0298f5 interfaceC0298f5 = this.j;
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).a();
                }
            }
            b((short) 2238);
            renderView.b();
            return;
        }
        if (b == 4) {
            n(renderView);
            renderView.b();
            b((byte) 4);
        } else {
            if (b == 6 || b == 7) {
                o(renderView);
                return;
            }
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("Q0", AbstractC0363j6.a("Q0", "TAG", "onUnloadCalled - invalid state - ").append((int) this.f219a).toString());
            }
        }
    }

    public void m(Ya ya) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", AbstractC0363j6.a("Q0", "TAG", "Render view signaled ad ready, for index ").append(this.g.indexOf(ya)).append(' ').append(this).toString());
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q0", "==== CHECKPOINT REACHED - LOAD SUCCESS ====");
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).b();
        }
    }

    public void n(Ya renderView) {
        int iL;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "onAdUnloadedAfterLoadSuccess");
        }
        if (!this.A || (iL = l(renderView)) <= this.x) {
            C0();
        } else {
            this.z.remove(Integer.valueOf(iL));
        }
    }

    public void o(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "onAdUnloadedAfterShowSuccess");
        }
        renderView.a();
        b((byte) 4);
    }

    public final void b(boolean z) {
        this.m = z;
    }

    public final void e(int i) {
        String strT;
        String strU;
        Ya ya;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "initializeHtmlAdContainer ", this));
        }
        Context contextT = t();
        if (contextT == null) {
            return;
        }
        try {
            if (this.g.get(i) == null || ((ya = (Ya) this.g.get(i)) != null && ya.D.get())) {
                C0325h c0325hA = a(i);
                C0242bb c0242bbA = a(i, c0325hA);
                byte bJ = J();
                HashMap map = this.i;
                Set set = map != null ? (Set) map.get(Integer.valueOf(i)) : null;
                C0325h c0325hA2 = a(i);
                String strS = c0325hA2 != null ? c0325hA2.s() : null;
                if (c0325hA == null || (strT = c0325hA.t()) == null) {
                    strT = "DEFAULT";
                }
                Ya ya2 = new Ya(contextT, bJ, set, strS, false, strT, 0L, c0242bbA, this.j, 80);
                String strP = c0325hA != null ? c0325hA.p() : null;
                InterfaceC0298f5 interfaceC0298f52 = ya2.i;
                if (interfaceC0298f52 != null) {
                    String TAG = Ya.P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f52).c(TAG, "creativeType " + ya2 + ' ' + strP);
                }
                ya2.q0 = strP;
                if (c0325hA == null || (strU = c0325hA.u()) == null) {
                    strU = "html";
                }
                ya2.setMarkupTypeAdUnit(strU);
                this.g.set(i, ya2);
                if (Intrinsics.areEqual(this.t.b(), "banner") || Intrinsics.areEqual(this.t.b(), "audio")) {
                    ya2.setAdSize(this.t.a());
                }
                ya2.setAdType(this.t.b());
                ya2.setImmersiveMode(b(c0325hA));
                AdConfig adConfig = this.b;
                Intrinsics.checkNotNull(adConfig);
                ya2.a(this, adConfig);
                ya2.setAdPodHandler(this);
                ya2.setPlacementId(this.t.l());
                ya2.setAllowAutoRedirection(b(i));
                ya2.setContentURL(this.t.e());
                AdMetaInfo adMetaInfoL = l();
                if (adMetaInfoL != null) {
                    ya2.setCreativeId(adMetaInfoL.getCreativeID());
                }
                if (this.t.p()) {
                    ya2.e();
                }
                ya2.setTelemetryManagerMap(this.H);
                InterfaceC0298f5 interfaceC0298f53 = ya2.i;
                if (interfaceC0298f53 != null) {
                    String str = Ya.P0;
                    ((C0314g5) interfaceC0298f53).c(str, Wa.a(ya2, str, "TAG", "initContextualData "));
                }
                ya2.I0 = new Z2(c0325hA, ya2.L);
                a(c0325hA, ya2);
                WatermarkData watermarkData = this.J;
                if (watermarkData != null) {
                    ya2.setWatermark(watermarkData);
                }
            }
        } catch (Exception e) {
            a((Ya) this.g.get(this.w), (short) 2136);
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f54).a("Q0", "Exception while initializing WebView", e);
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final boolean b(C0325h c0325h) {
        C0463q0 c0463q0Q;
        AdConfig.RenderingConfig rendering;
        AdConfig adConfig = this.b;
        boolean z = false;
        boolean enableImmersive = (adConfig == null || (rendering = adConfig.getRendering()) == null) ? false : rendering.getEnableImmersive();
        boolean z2 = N3.i;
        boolean zA = (c0325h == null || (c0463q0Q = c0325h.q()) == null) ? false : c0463q0Q.a(false);
        if (enableImmersive && z2 && zA) {
            z = true;
        }
        if (!z) {
            b(enableImmersive, z2, zA);
        }
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).a("Q0", "Immersive support - config, device, adResponse - (" + enableImmersive + ' ' + z2 + ' ' + zA + ')');
        }
        return z;
    }

    public final void b(boolean z, boolean z2, boolean z3) {
        Pair<String, Short> pairA = a(z, z2, z3);
        String strComponent1 = pairA.component1();
        short sShortValue = pairA.component2().shortValue();
        HashMap map = new HashMap();
        map.put("reason", strComponent1);
        map.put("errorCode", Short.valueOf(sShortValue));
        c("ImmersiveNotSupported", map);
    }

    public final boolean b(int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "getAllowAutoRedirectionForIndex " + this + " index - " + i);
        }
        C0325h c0325hA = a(i);
        return c0325hA != null && c0325hA.i();
    }

    public final int b(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "parseViewabilityResponseValue ", this));
        }
        if (StringsKt.startsWith$default(str, "track_", false, 2, (Object) null)) {
            str = str.substring(6);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).substring(startIndex)");
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static final void a(Context context, Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        H9 h9 = G9.f125a;
        AdConfig adConfig = this$0.b;
        h9.getClass();
        try {
            if (!Omid.isActive()) {
                Omid.activate(context);
            } else {
                h9.a(adConfig);
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public static final /* synthetic */ void a(Q0 q0, C0325h c0325h, Ya ya) {
        q0.getClass();
        a(c0325h, ya);
    }

    public final void a(AdConfig adConfig) {
        this.b = adConfig;
    }

    public final void a(Handler handler) {
        this.l = handler;
    }

    public final void a(C0555w9 c0555w9) {
        this.s = c0555w9;
    }

    public final void a(long j) {
        this.y = j;
    }

    public final void a(TreeSet<Integer> treeSet) {
        Intrinsics.checkNotNullParameter(treeSet, "<set-?>");
        this.z = treeSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r13, com.inmobi.media.Y r14, com.inmobi.media.E0 r15) {
        /*
            Method dump skipped, instruction units count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q0.a(android.content.Context, com.inmobi.media.Y, com.inmobi.media.E0):void");
    }

    public final Set d(int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getViewabilityTrackers ", this));
        }
        HashMap map = this.i;
        if (map != null) {
            return (Set) map.get(Integer.valueOf(i));
        }
        return null;
    }

    public void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "setContext ", this));
        }
        this.c = new WeakReference(context);
    }

    public final void c(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "setIsAssetReady ", this));
        }
        this.p = z;
    }

    public void g() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "clear ", this));
        }
        if (this.o) {
            return;
        }
        this.o = true;
        Handler handler = this.l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a("Q0", C0.a("Q0", "TAG", "clearAdPods ", this));
        }
        if (this.A) {
            h();
            this.g.clear();
            this.w = 0;
            this.x = 0;
            this.z.clear();
        }
        K5 k5 = this.E;
        if (k5 != null) {
            k5.b = 0;
        }
        HashMap map = this.i;
        if (map != null) {
            map.clear();
        }
        k0();
        d((byte) 0);
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f53).d("Q0", "AdUnit " + this + " state - CREATED");
        }
        A a2 = this.C;
        int iHashCode = hashCode();
        a2.getClass();
        SparseArray sparseArray = A.b;
        sparseArray.remove(iHashCode);
        Intrinsics.checkNotNullExpressionValue("A", "TAG");
        sparseArray.size();
        this.q = false;
        this.n = null;
        this.m = false;
        this.p = false;
        this.r = false;
        this.u = null;
        this.A = false;
    }

    public final void k(Ya ya) {
        List<String> listC;
        int iIndexOf = this.g.indexOf(ya);
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).a("Q0", "fireLoadAdTokenUrlSuccessful : " + iIndexOf + ' ' + this);
        }
        C0325h c0325hA = a(iIndexOf);
        if (c0325hA == null || (listC = c0325hA.c(C0325h.LOAD_AD_TOKEN_URL)) == null) {
            return;
        }
        Iterator<String> it = listC.iterator();
        while (it.hasNext()) {
            C0520u2.f496a.a(it.next(), true, this.j);
        }
    }

    public final void d(E0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAdDisplayed ", this));
        }
        AdMetaInfo adMetaInfoL = l();
        if (adMetaInfoL == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).b("Q0", "callback onAdDisplayed failed. ad meta info is null");
            }
            a(listener, (short) 85);
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f53).a("Q0", "callback - onAdDisplayed");
        }
        listener.a(adMetaInfoL);
    }

    public final void a(InterfaceC0298f5 logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.j = logger;
        A0 a0P = p();
        a0P.getClass();
        Intrinsics.checkNotNullParameter(logger, "logger");
        a0P.f = logger;
        N n = this.D;
        n.getClass();
        Intrinsics.checkNotNullParameter(logger, "logger");
        n.f = logger;
    }

    public int l(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getCurrentRenderingPodAdIndex ", this));
        }
        if (!this.A) {
            return -1;
        }
        int iIndexOf = this.g.indexOf(renderView);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 == null) {
            return iIndexOf;
        }
        ((C0314g5) interfaceC0298f52).c("Q0", AbstractC0568x8.a("Q0", "TAG", "getCurrentRenderingPodAdIndex ", iIndexOf));
        return iIndexOf;
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void f(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", AbstractC0363j6.a("Q0", "TAG", "RenderView completed loading ad content, for index ").append(this.g.indexOf(renderView)).append(' ').append(this).toString());
        }
    }

    public final C0242bb a(int i, C0325h c0325h) {
        String strP;
        String strO;
        Boolean boolO;
        String strW;
        LinkedHashMap linkedHashMap = K2.f154a;
        C0289eb c0289eb = new C0289eb(((TelemetryConfig) V4.a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null)).getMaxTemplateEvents());
        Y y = this.t;
        String strE = E();
        String str = (c0325h == null || (strW = c0325h.w()) == null) ? "" : strW;
        K5 k5 = this.E;
        int i2 = k5 != null ? k5.b : 0;
        C0325h c0325hU = u();
        if (c0325hU == null || (strP = c0325hU.p()) == null) {
            strP = "";
        }
        C0325h c0325hU2 = u();
        if (c0325hU2 == null || (strO = c0325hU2.o()) == null) {
            strO = "";
        }
        C0560x0 c0560x0 = this.u;
        return new C0242bb(y, strE, str, i2, strP, strO, (c0560x0 == null || (boolO = c0560x0.o()) == null) ? false : boolO.booleanValue(), i, this.I.j, c0289eb);
    }

    public final void c(C0560x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAdFetchSuccessful ", this));
        }
        if (this.f219a == 1) {
            this.u = adSet;
        }
        if (!this.o && t() != null) {
            a(adSet);
            return;
        }
        b((short) 2185);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).b("Q0", "adUnit is destroyed");
        }
    }

    public final void b(InMobiAdRequestStatus requestStatus, boolean z, short s) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).b("Q0", "handleAdLoadFailure " + this + " errorCode - " + ((int) s));
        }
        if (this.f219a == 1 && z) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("Q0", AbstractC0568x8.a("Q0", "TAG", "load failed - ", s));
            }
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).d("Q0", "AdUnit " + this + " state - FAILED");
            }
            d((byte) 3);
            b((byte) 1);
        }
        E0 e0R = r();
        if (e0R != null) {
            e0R.a(this, requestStatus);
        } else {
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).a();
            }
        }
        if (s != 0) {
            b(s);
        }
    }

    public final Pair<String, Short> a(boolean z, boolean z2, boolean z3) {
        Short sh;
        StringBuilder sb = new StringBuilder("Immersive not supported on");
        BitSet bitSet = new BitSet(3);
        ArrayList arrayList = new ArrayList();
        if (!z) {
            arrayList.add(" config");
            bitSet.set(0);
        }
        if (!z2) {
            arrayList.add(" device");
            bitSet.set(1);
        }
        if (!z3) {
            arrayList.add(" ad");
            bitSet.set(2);
        }
        sb.append(CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null));
        Intrinsics.checkNotNullParameter(bitSet, "bitSet");
        if (bitSet.get(0) && bitSet.get(1) && bitSet.get(2)) {
            sh = (short) 2202;
        } else if (bitSet.get(0) && bitSet.get(1)) {
            sh = (short) 2200;
        } else if (bitSet.get(0) && bitSet.get(2)) {
            sh = (short) 2199;
        } else if (bitSet.get(1) && bitSet.get(2)) {
            sh = (short) 2201;
        } else if (bitSet.get(0)) {
            sh = (short) 2196;
        } else if (bitSet.get(1)) {
            sh = (short) 2197;
        } else {
            sh = bitSet.get(2) ? (short) 2198 : null;
        }
        short sShortValue = sh != null ? sh.shortValue() : (short) -1;
        if (sShortValue == -1) {
            return new Pair<>("Invalid Reason", (short) -1);
        }
        return new Pair<>(sb.toString(), Short.valueOf(sShortValue));
    }

    public final void d(C0560x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAuctionNotClosed ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).c("Q0", C0.a("Q0", "TAG", "handleAuctionNotClosed ", this));
        }
        if (this.f219a == 1) {
            this.u = adSet;
            this.A = adSet != null ? adSet.n() : false;
            E0 e0R = r();
            if (e0R != null) {
                e0R.a(this.t, adSet);
            }
        }
    }

    public static void a(C0325h c0325h, Ya ya) {
        AdQualityControl adQualityControl;
        C0418n0 adQualityManager;
        if (c0325h == null || (adQualityControl = c0325h.e()) == null || ya == null || (adQualityManager = ya.getAdQualityManager()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(adQualityControl, "adQualityControl");
        adQualityManager.a("adQuality session setup");
        if (!adQualityManager.f428a.getEnabled()) {
            adQualityManager.a("config kill switch - false. ad quality will skip");
            return;
        }
        if (adQualityManager.c.get()) {
            adQualityManager.a("session already started. skip");
            return;
        }
        adQualityManager.a("verifying control flags");
        String beacon = adQualityControl.getBeacon();
        if (beacon != null && beacon.length() == 0) {
            adQualityManager.a("no beacon received. aborting...");
            ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
                try {
                    try {
                        scheduledExecutorService.shutdownNow();
                    } catch (Exception e) {
                        Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
                        Intrinsics.checkNotNullParameter("shutdown fail", "message");
                        Log.e("AdQualityComponent", "shutdown fail", e);
                        Thread.currentThread().interrupt();
                        adQualityManager.a("session end - cleanup");
                        adQualityManager.g = null;
                        adQualityManager.f.clear();
                        adQualityManager.c.set(false);
                        adQualityManager.d.set(false);
                        adQualityManager.a("ad quality session is already in progress. skipping...");
                        return;
                    }
                } catch (InterruptedException unused) {
                    scheduledExecutorService.shutdownNow();
                    Thread.currentThread().interrupt();
                    adQualityManager.a("session end - cleanup");
                    adQualityManager.g = null;
                    adQualityManager.f.clear();
                    adQualityManager.c.set(false);
                    adQualityManager.d.set(false);
                    adQualityManager.a("ad quality session is already in progress. skipping...");
                    return;
                }
            }
            adQualityManager.a("session end - cleanup");
            adQualityManager.g = null;
            adQualityManager.f.clear();
            adQualityManager.c.set(false);
            adQualityManager.d.set(false);
            adQualityManager.a("ad quality session is already in progress. skipping...");
            return;
        }
        adQualityManager.g = adQualityControl;
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void i(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", AbstractC0363j6.a("Q0", "TAG", "RenderView visible, for index ").append(this.g.indexOf(renderView)).append(' ').append(this).toString());
        }
    }

    public final void e(E0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onFetchSuccess ", this));
        }
        v0();
        AdMetaInfo adMetaInfoL = l();
        if (adMetaInfoL == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).b("Q0", "ad meta info null. fail");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2106);
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f53).a("Q0", "callback - onAdFetchSuccess");
        }
        listener.b(adMetaInfoL);
    }

    public void c(String monetizationContext) {
        Intrinsics.checkNotNullParameter(monetizationContext, "monetizationContext");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "setMonetizationContext ", this));
        }
        this.t.b(monetizationContext);
    }

    public final C0325h a(int i) {
        Iterable iterableEmptyList;
        LinkedList<C0325h> linkedListF;
        LinkedList<C0325h> linkedListF2;
        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
        toString();
        C0560x0 c0560x0 = this.u;
        if (c0560x0 == null || (linkedListF2 = c0560x0.f()) == null || (iterableEmptyList = CollectionsKt.getIndices(linkedListF2)) == null) {
            iterableEmptyList = CollectionsKt.emptyList();
        }
        if (CollectionsKt.contains(iterableEmptyList, Integer.valueOf(i))) {
            C0560x0 c0560x02 = this.u;
            if (c0560x02 != null && (linkedListF = c0560x02.f()) != null) {
                return linkedListF.get(i);
            }
        } else {
            C0560x0 c0560x03 = this.u;
            if (c0560x03 != null) {
                return c0560x03.p();
            }
        }
        return null;
    }

    public final void a(E0 listener, short s) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onAdShowFailed ", this));
        }
        c(s);
        listener.d();
    }

    public final void h() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "destroyAllContainer ", this));
        }
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            a(this, i, false, 2, null);
        }
    }

    public final void b(C0560x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "loadResponse ", this));
        }
        c(adSet);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void g(final Ya renderView) {
        Handler handler;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onRenderViewSignaledAdFailed ", this));
        }
        if (this.o || t() == null || (handler = this.l) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Q0.b(this.f$0, renderView);
            }
        });
    }

    public void a(int i, Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "Show pod ad with index : " + i + " from creative: " + this.g.indexOf(renderView) + ' ' + this);
        }
        if (i >= 0) {
            this.x = i;
        } else {
            this.x++;
        }
    }

    public void d(String podAdContext) {
        Intrinsics.checkNotNullParameter(podAdContext, "podAdContext");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "setPodAdContext ", this));
        }
        if (this.A) {
            this.B = podAdContext;
        }
    }

    @Override // com.inmobi.media.Z
    public void a(Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "closeCurrentPodAd ", this));
        }
    }

    public final boolean e(byte b) {
        int iY;
        Integer num;
        long j;
        Integer num2;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "startTimer ", this));
        }
        if (b == 0) {
            Y6 y6 = this.F;
            if (y6 != null && (num2 = y6.d) != null) {
                iY = num2.intValue();
                j = iY;
            }
            j = 15000;
        } else if (b == 1) {
            Y6 y62 = this.F;
            if (y62 != null) {
                iY = y62.c;
                j = iY;
            }
            j = 15000;
        } else {
            if (b == 2) {
                Y6 y63 = this.F;
                if (y63 != null && (num = y63.e) != null) {
                    iY = num.intValue();
                }
                j = 15000;
            } else if (b == 4) {
                Ec ec = this.d;
                Intrinsics.checkNotNull(ec);
                iY = ec.Y();
            } else {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f52).b("Q0", "Invalid value for timeOutScenario passed!. Please pass a valid value");
                }
                return false;
            }
            j = iY;
        }
        C0586yc c0586yc = this.v;
        if (c0586yc == null) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue("yc", "TAG");
        if (c0586yc.b.containsKey(Byte.valueOf(b))) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            Timer timer = (Timer) c0586yc.b.get(Byte.valueOf(b));
            if (timer != null) {
                timer.cancel();
                c0586yc.b.remove(Byte.valueOf(b));
            }
        }
        try {
            Timer timer2 = new Timer("yc");
            c0586yc.b.put(Byte.valueOf(b), timer2);
            timer2.schedule(new C0572xc(c0586yc, b), j);
            return true;
        } catch (InternalError e) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            e.toString();
            return false;
        } catch (OutOfMemoryError unused) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            I6.a((byte) 1, "yc", "Could not execute timer due to OutOfMemory.");
            c0586yc.f539a.c(b);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0255  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.inmobi.media.C0325h r27, int r28, boolean r29) {
        /*
            Method dump skipped, instruction units count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q0.a(com.inmobi.media.h, int, boolean):boolean");
    }

    public final void f() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "checkInteractiveAndSignal ", this));
        }
        if (this.m && this.p && this.q) {
            r0();
        }
    }

    public final HashMap a(JSONArray jSONArray) {
        JSONObject jSONObject;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "parseInMobiViewabilityParams ", this));
        }
        try {
            int length = jSONArray.length();
            int i = 0;
            while (true) {
                if (i >= length) {
                    jSONObject = null;
                    break;
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2.has("inmobi")) {
                    jSONObject = jSONObject2.getJSONObject("inmobi");
                    break;
                }
                i++;
            }
            if (jSONObject == null) {
                return null;
            }
            HashMap map = new HashMap();
            String strOptString = jSONObject.optString("time");
            Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
            int iB = b(strOptString);
            if (iB != -1) {
                map.put("time", Integer.valueOf(iB));
            }
            String strOptString2 = jSONObject.optString("view");
            Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
            int iB2 = b(strOptString2);
            if (iB2 != -1) {
                map.put("view", Integer.valueOf(iB2));
            }
            String strOptString3 = jSONObject.optString("pixel");
            Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
            int iB3 = b(strOptString3);
            if (iB3 != -1) {
                map.put("pixel", Integer.valueOf(iB3));
            }
            int iOptInt = jSONObject.optInt("type");
            if (iOptInt != -1) {
                map.put("type", Integer.valueOf(iOptInt));
                if (iOptInt == 2) {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(TypedValues.AttributesType.S_FRAME);
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 4) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(TypedValues.AttributesType.S_FRAME);
                        Intrinsics.checkNotNullExpressionValue(jSONArrayOptJSONArray2, "optJSONArray(...)");
                        map.put(TypedValues.AttributesType.S_FRAME, jSONArrayOptJSONArray2);
                    } else {
                        map.put(TypedValues.AttributesType.S_FRAME, new JSONArray("[0,0,0,0]"));
                    }
                }
            }
            return map;
        } catch (JSONException e) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("Q0", D0.a(e, AbstractC0363j6.a("Q0", "TAG", "Exception while parsing MoatParams from response : ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return null;
        }
    }

    public static final void c(Q0 q0) {
        int i;
        String str;
        InterfaceC0298f5 interfaceC0298f5 = q0.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "startAdFetchWorker ", q0));
        }
        S0 s0 = q0.I;
        s0.getClass();
        s0.d = SystemClock.elapsedRealtime();
        InterfaceC0298f5 interfaceC0298f52 = q0.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a("Q0", C0.a("Q0", "TAG", "doAdLoadWork ", q0));
        }
        try {
            q0.d((byte) 1);
            InterfaceC0298f5 interfaceC0298f53 = q0.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).d("Q0", "AdUnit " + q0 + " state - LOADING");
            }
            InterfaceC0298f5 interfaceC0298f54 = q0.j;
            if (interfaceC0298f54 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f54).c("Q0", "printPublisherTestId " + q0);
            }
            Jc.f151a.d();
            i = 0;
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f55 = q0.j;
            if (interfaceC0298f55 != null) {
                ((C0314g5) interfaceC0298f55).b("Q0", Ed.a(e, AbstractC0363j6.a("Q0", "TAG", "Load failed with unexpected error: ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            q0.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2000);
        }
        if (q0.e((byte) 0)) {
            A a2 = q0.C;
            int iHashCode = q0.hashCode();
            L l = new L(q0, q0.j);
            a2.getClass();
            A.a(iHashCode, l);
        } else {
            i = -2;
        }
        if (i == -2) {
            str = "Loading an ad resulted in an unexpected error";
        } else if (i == -1) {
            str = "Ad request skipped as monetization is disabled";
        } else if (i == 0) {
            str = "Fresh ad requested";
        } else if (i == 1) {
            str = "Returning pre-cached ad";
        } else if (i != 2) {
            str = "Unknown return value (" + i + ") from #doAdLoadWork()";
        } else {
            str = "Already Loading";
        }
        InterfaceC0298f5 interfaceC0298f56 = q0.j;
        if (interfaceC0298f56 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f56).c("Q0", str);
        }
    }

    public void a(Y placement, boolean z, short s) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onAssetAvailabilityChanged ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        if (s != 0) {
            b(s);
        }
        a(placement, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0134  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final short c(com.inmobi.media.E0 r25) {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q0.c(com.inmobi.media.E0):short");
    }

    public void b(E0 e0) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "handleAdScreenDisplayed ", this));
        }
    }

    public void a(Y placement, boolean z) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "handleAssetAvailabilityChanged ", this));
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q0", "Asset availability changed (" + z + ") for placement ID (" + placement + ')');
        }
    }

    public static final void d(Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (6 == this$0.f219a) {
            this$0.a(true, (short) 2158);
        }
    }

    public final void d(boolean z) {
        this.A = z;
    }

    public void a(C0560x0 adSet) {
        LinkedList<C0325h> linkedListF;
        LinkedList<C0325h> linkedListF2;
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "handleAdFetchSuccessful ", this));
        }
        if (this.f219a == 1) {
            this.u = adSet;
            int size = 0;
            this.A = adSet != null ? adSet.n() : false;
            C0560x0 c0560x0 = this.u;
            if (c0560x0 != null && (linkedListF2 = c0560x0.f()) != null) {
                size = linkedListF2.size();
            }
            this.g = new ArrayList(size);
            C0560x0 c0560x02 = this.u;
            if (c0560x02 != null && (linkedListF = c0560x02.f()) != null) {
                for (C0325h c0325h : linkedListF) {
                    this.g.add(null);
                }
            }
            C0325h c0325hP = adSet.p();
            if (c0325hP == null) {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f52).b("Q0", "top ad is null. failed.");
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2119);
                return;
            }
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).a("Q0", "starting executor. parsing ad response");
            }
            A a2 = this.C;
            int iHashCode = hashCode();
            N9 n9 = new N9(this, c0325hP, adSet, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), this.j);
            a2.getClass();
            A.a(iHashCode, n9);
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).b("Q0", AbstractC0363j6.a("Q0", "TAG", "incorrect state - ").append((int) this.f219a).toString());
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2118);
    }

    @Override // com.inmobi.media.Z
    public boolean a(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 == null) {
            return false;
        }
        ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "hasNextAdInAdPod ", this));
        return false;
    }

    public static final void b(Q0 this$0, Ya renderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.a(renderView, (short) 2137);
    }

    public void b(final Ya renderView, final short s) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onRenderViewError ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        try {
            Handler handler = this.l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        Q0.a(this.f$0, renderView, s);
                    }
                });
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("Q0", Ed.a(e, AbstractC0363j6.a("Q0", "TAG", "Loading ad markup into container encountered an unexpected error: ")));
            }
        }
    }

    public final void f(int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "resetCurrentRenderingIndex ", this));
        }
        this.x = i;
    }

    public static final void c(Q0 this$0, Ya renderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.m(renderView);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void c() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAdScreenDisplayFailed ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).b("Q0", "Ad failed to display");
        }
        Handler handler = this.l;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    Q0.d(this.f$0);
                }
            });
        }
    }

    @Override // com.inmobi.media.InterfaceC0558wc
    public void a(byte b) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onTimeOut ", this));
        }
        if (b == 0) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("Q0", AbstractC0363j6.a("Q0", "TAG", "AdRequestTimeOut by timer, Adstate=").append((int) this.f219a).toString());
            }
            if (this.f219a != 3) {
                a(this.t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT), (short) 2109);
                return;
            }
            return;
        }
        if (b != 2 && b != 1) {
            if (b == 4) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f53).a("Q0", "Show RequestTimeOut by show timer");
                }
                E0 e0R = r();
                if (e0R != null) {
                    e0R.g();
                    return;
                }
                return;
            }
            if (b == 3) {
                InterfaceC0298f5 interfaceC0298f54 = this.j;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f54).a("Q0", "Bitmap TimeOut not handled here");
                    return;
                }
                return;
            }
            InterfaceC0298f5 interfaceC0298f55 = this.j;
            if (interfaceC0298f55 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f55).a("Q0", "Unknown TimeOut ignored");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f56 = this.j;
        if (interfaceC0298f56 != null) {
            ((C0314g5) interfaceC0298f56).a("Q0", AbstractC0363j6.a("Q0", "TAG", "Internal LoadTimeOut by timer, Adstate=").append((int) this.f219a).toString());
        }
        if (this.f219a != 3) {
            this.G.removeCallbacksAndMessages(null);
            InterfaceC0298f5 interfaceC0298f57 = this.j;
            if (interfaceC0298f57 != null) {
                ((C0314g5) interfaceC0298f57).a("Q0", AbstractC0363j6.a("Q0", "TAG", "adUnitEventListener=").append(r()).append(", Adstate=").append((int) this.f219a).toString());
            }
            byte b2 = this.f219a;
            if (2 == b2) {
                m0();
                boolean z = C0457p9.f457a;
                b(C0457p9.a(false) == null ? (short) 2139 : (short) 2203);
                E0 e0R2 = r();
                if (e0R2 != null) {
                    e0R2.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    return;
                }
                return;
            }
            if (1 == b2) {
                m0();
                b((short) 2138);
                E0 e0R3 = r();
                if (e0R3 != null) {
                    e0R3.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT));
                }
            }
        }
    }

    public final void c(HashMap map) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "constructTelemetryPayload ", this));
        }
        map.put("adType", q());
        map.put("networkType", E3.q());
        map.put("plId", Long.valueOf(this.t.l()));
        String strM = this.t.m();
        if (strM != null) {
            map.put("plType", strM);
        }
    }

    public final void c(short s) {
        C0325h c0325hM;
        Boolean boolO;
        String strP;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdShowFailed ", this));
        }
        HashMap map = new HashMap();
        long j = this.I.e;
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("errorCode", Short.valueOf(s));
        map.put("markupType", E());
        if (this.A) {
            c0325hM = a(this.x);
        } else {
            c0325hM = m();
        }
        if (c0325hM != null && (strP = c0325hM.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        if (S().length() > 0) {
            map.put("metadataBlob", S());
        }
        c(map);
        c((Map) map);
        c("AdShowFailed", map);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void b(HashMap<Object, Object> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAdRewardActionCompleted ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q0", "Ad reward action completed. Params:" + rewards);
        }
        E0 e0R = r();
        if (e0R != null) {
            e0R.b(rewards);
        }
    }

    public void a(boolean z, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onDidParseAfterFetch ", this));
        }
        if (z) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).a("Q0", "Ad fetch successful");
            }
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).d("Q0", "AdUnit " + this + " state - AVAILABLE");
            }
            d((byte) 2);
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f54).b("Q0", "onComplete parse success");
        }
        b(status, true, (short) 0);
    }

    public final void a(Y placement, InMobiAdRequestStatus requestStatus, short s) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onAdFetchFailed ", this));
        }
        if (!this.o && t() != null && this.f219a != 3) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c("Q0", C0.a("Q0", "TAG", "handleMarkupFetchFailure ", this));
            }
            try {
                if (Intrinsics.areEqual(this.t, placement) && this.f219a == 1) {
                    InterfaceC0298f5 interfaceC0298f53 = this.j;
                    if (interfaceC0298f53 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                        ((C0314g5) interfaceC0298f53).b("Q0", "Failed to fetch ad for placement id: " + placement + ", reason - " + requestStatus.getMessage());
                    }
                    String str = "MarkupFetch failed reason is: " + requestStatus.getMessage();
                    InterfaceC0298f5 interfaceC0298f54 = this.j;
                    if (interfaceC0298f54 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                        ((C0314g5) interfaceC0298f54).b("Q0", str);
                    }
                    InterfaceC0298f5 interfaceC0298f55 = this.j;
                    if (interfaceC0298f55 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                        ((C0314g5) interfaceC0298f55).d("Q0", "AdUnit " + this + " state - FAILED");
                    }
                    d((byte) 3);
                    b((byte) 1);
                    if (s != 0) {
                        a(s);
                    }
                    E0 e0R = r();
                    if (e0R != null) {
                        e0R.a(requestStatus);
                        return;
                    }
                    InterfaceC0298f5 interfaceC0298f56 = this.j;
                    if (interfaceC0298f56 != null) {
                        ((C0314g5) interfaceC0298f56).a();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f57 = this.j;
                if (interfaceC0298f57 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f57).a("Q0", "onAdFetchFailed with error: ", e);
                }
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                return;
            }
        }
        InterfaceC0298f5 interfaceC0298f58 = this.j;
        if (interfaceC0298f58 != null) {
            ((C0314g5) interfaceC0298f58).b("Q0", AbstractC0363j6.a("Q0", "TAG", "callback ignored - isDestroyed - ").append(this.o).append(" context - ").append(t()).append(" state- ").append((int) this.f219a).toString());
        }
    }

    public final void c(Map map) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "updateIdsInTelemetryPayload ", this));
        }
        C0325h c0325hM = m();
        if (c0325hM != null) {
            map.put("creativeId", "\"" + c0325hM.o() + Typography.quote);
            map.put("impressionId", "\"" + c0325hM.s() + Typography.quote);
        }
    }

    public final void b(short s) {
        long j;
        long jElapsedRealtime;
        Boolean boolO;
        String strP;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdLoadFailedEvent ", this));
        }
        HashMap map = new HashMap();
        if (s == 2138 || s == 2109) {
            j = this.I.d;
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else if (s == 2139) {
            j = this.I.g;
            ScheduledExecutorService scheduledExecutorService2 = Xc.f282a;
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else {
            j = this.I.c;
            ScheduledExecutorService scheduledExecutorService3 = Xc.f282a;
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        map.put("latency", Long.valueOf(jElapsedRealtime - j));
        map.put("errorCode", Short.valueOf(s));
        map.put("markupType", E());
        C0325h c0325hU = u();
        if (c0325hU != null && (strP = c0325hU.p()) != null) {
            map.put("creativeType", "\"" + strP + Typography.quote);
        }
        K5 k5 = this.E;
        if (k5 != null) {
            map.put("retryCount", Integer.valueOf(k5.b));
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            map.put("isRewarded", boolO);
        }
        if (S().length() > 0) {
            map.put("metadataBlob", S());
        }
        c(map);
        c((Map) map);
        c("AdLoadFailed", map);
    }

    public final void a(boolean z, short s) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).b("Q0", "handleAdShowFailure " + this + " errorCode - " + ((int) s));
        }
        if (z) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).d("Q0", "AdUnit " + this + " state - FAILED");
            }
            d((byte) 3);
            b((byte) 4);
        }
        E0 e0R = r();
        if (e0R != null) {
            e0R.d();
        }
        if (s != 0) {
            c(s);
        }
    }

    public final void a(InMobiAdRequestStatus requestStatus, boolean z, short s) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).b("Q0", "handleAdFetchFailure " + this + " errorCode - " + ((int) s));
        }
        if (this.f219a == 3 && z) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).d("Q0", "AdUnit " + this + " state - FAILED");
            }
            d((byte) 3);
            b((byte) 1);
        }
        E0 e0R = r();
        if (e0R != null) {
            e0R.a(this, requestStatus);
        }
        if (s != 0) {
            a(s);
        }
    }

    public final void a(Map<String, String> map) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).c("Q0", "setPublisherSuppliedExtras " + this + " - " + map);
        }
        this.t.a(map);
    }

    public final void a(final JSONObject responseJson) {
        Intrinsics.checkNotNullParameter(responseJson, "responseJson");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAuctionClosed ", this));
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Q0.a(this.f$0, responseJson);
            }
        });
    }

    public final void b(Map<String, Object> payload) {
        Boolean boolO;
        String strP;
        Intrinsics.checkNotNullParameter(payload, "payload");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitServerError ", this));
        }
        if (this.e == null) {
            return;
        }
        if (payload.get("reason") == null) {
            payload.put("reason", "");
        }
        C0325h c0325hU = u();
        if (c0325hU != null && (strP = c0325hU.p()) != null) {
            payload.put("creativeType", "\"" + strP + Typography.quote);
        }
        K5 k5 = this.E;
        if (k5 != null) {
            payload.put("retryCount", Integer.valueOf(k5.b));
        }
        C0560x0 c0560x0 = this.u;
        if (c0560x0 != null && (boolO = c0560x0.o()) != null) {
            payload.put("isRewarded", boolO);
        }
        c(payload);
        A0 a0 = this.e;
        Intrinsics.checkNotNull(a0);
        a0.a(payload);
    }

    public final void c(String eventType, Map<String, Object> kv) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitTelemetryEvent ", this));
        }
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b(eventType, kv, EnumC0415mc.f426a);
    }

    public static final void a(Q0 this$0, JSONObject responseJson) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(responseJson, "$responseJson");
        A a2 = this$0.C;
        int iHashCode = this$0.hashCode();
        C0547w1 c0547w1 = new C0547w1(this$0, responseJson, this$0.j);
        a2.getClass();
        A.a(iHashCode, c0547w1);
    }

    public final void a(final Function0 onSuccess, final Function1 onMaxRetryReached) {
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onMaxRetryReached, "onMaxRetryReached");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        Object o6 = null;
        if (interfaceC0298f5 != null) {
            StringBuilder sbA = AbstractC0363j6.a("Q0", "TAG", "loadWithRetry ");
            K5 k5 = this.E;
            ((C0314g5) interfaceC0298f5).c("Q0", sbA.append(k5 != null ? Integer.valueOf(k5.b) : null).toString());
        }
        K5 k52 = this.E;
        if (k52 != null) {
            boolean z = C0457p9.f457a;
            EnumC0250c4 enumC0250c4A = C0457p9.a(false);
            if (enumC0250c4A == null) {
                o6 = M9.f181a;
            } else {
                int i = k52.b + 1;
                k52.b = i;
                if (i >= k52.f157a.b) {
                    o6 = new O6(enumC0250c4A);
                } else {
                    o6 = C0584ya.f537a;
                }
            }
        }
        if (o6 instanceof O6) {
            onMaxRetryReached.invoke(((O6) o6).f202a);
            return;
        }
        if (o6 instanceof M9) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).c("Q0", "load with retry success");
            }
            onSuccess.invoke();
            return;
        }
        if (!(o6 instanceof C0584ya)) {
            if (o6 == null) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f53).c("Q0", "shouldProceedToLoad result null. starting as if we have internet.");
                }
                onSuccess.invoke();
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f54).c("Q0", "load failed, retrying");
        }
        this.G.postDelayed(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Q0.a(this.f$0, onSuccess, onMaxRetryReached);
            }
        }, this.F != null ? r7.f287a : 1000L);
    }

    public static final void a(Q0 this$0, Function0 onSuccess, Function1 onMaxRetryReached) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(onMaxRetryReached, "$onMaxRetryReached");
        InterfaceC0298f5 interfaceC0298f5 = this$0.j;
        if (interfaceC0298f5 != null) {
            StringBuilder sbA = AbstractC0363j6.a("Q0", "TAG", "Loading from retry Handler ");
            K5 k5 = this$0.E;
            ((C0314g5) interfaceC0298f5).c("Q0", sbA.append(k5 != null ? Integer.valueOf(k5.b) : null).toString());
        }
        this$0.a(onSuccess, onMaxRetryReached);
    }

    public final void b(long j) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdGetSignalsSucceeded ", this));
        }
        this.r = false;
        HashMap map = new HashMap();
        map.put("adType", q());
        map.put("latency", Long.valueOf(System.currentTimeMillis() - j));
        map.put("networkType", E3.q());
        c("AdGetSignalsSucceeded", map);
    }

    public void c(byte b) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("Q0", C0.a("Q0", "TAG", "onOOM ", this));
        }
        if (b == 0) {
            a(this.t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2110);
            return;
        }
        if (b == 2 || b == 1) {
            byte b2 = this.f219a;
            if (b2 == 0 || 1 == b2 || 2 == b2) {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f52).a("Q0", "onOOM INTERNAL_LOAD_TIME_OUT or PRE_LOAD_TIME_OUT");
                }
                this.G.removeCallbacksAndMessages(null);
                m0();
                b((short) 2112);
                E0 e0R = r();
                if (e0R != null) {
                    e0R.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
                    return;
                }
                return;
            }
            return;
        }
        if (b == 4) {
            E0 e0R2 = r();
            if (e0R2 != null) {
                e0R2.g();
                return;
            }
            return;
        }
        if (b == 3) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).a("Q0", AbstractC0568x8.a("Q0", "TAG", "OOM Timeout scenario ignored for : ", b));
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).a("Q0", AbstractC0568x8.a("Q0", "TAG", "OOM Timeout scenario ignored for : ", b));
        }
    }

    public void a(byte[] bArr) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "load response ", this));
        }
        S0 s0 = this.I;
        s0.getClass();
        s0.c = SystemClock.elapsedRealtime();
        S0 s02 = this.I;
        s02.getClass();
        s02.h = SystemClock.elapsedRealtime();
        if (Y()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).a("Q0", "isBlockingStateForLoadWithResponse - blocking");
                return;
            }
            return;
        }
        if (bArr != null && bArr.length != 0) {
            if (this.s == null) {
                this.s = new C0555w9(this);
            }
            N0 n0 = new N0(this, bArr);
            if (p0()) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C0314g5) interfaceC0298f53).a("Q0", "skipping internet check on load(byte[])");
                }
                n0.invoke();
                return;
            }
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f54).a("Q0", "starting load with retry");
            }
            a(n0, new M0(this));
            return;
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INVALID_RESPONSE_IN_LOAD), true, (short) 2143);
        InterfaceC0298f5 interfaceC0298f55 = this.j;
        if (interfaceC0298f55 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f55).a("Q0", "null response. failing");
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.lang.String r6, java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q0.b(java.lang.String, java.util.Map):void");
    }

    public final void b(byte b) {
        C0586yc c0586yc;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "cancelTimer ", this));
        }
        if (b == 1 && (c0586yc = this.v) != null) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            Timer timer = (Timer) c0586yc.b.get((byte) 2);
            if (timer != null) {
                timer.cancel();
                c0586yc.b.remove((byte) 2);
            }
        }
        C0586yc c0586yc2 = this.v;
        if (c0586yc2 != null) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            Timer timer2 = (Timer) c0586yc2.b.get(Byte.valueOf(b));
            if (timer2 != null) {
                timer2.cancel();
                c0586yc2.b.remove(Byte.valueOf(b));
            }
        }
    }

    public final void a(InMobiAdRequestStatus requestStatus, short s) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).b("Q0", "loadResponseFailed " + this + " errorCode - " + ((int) s));
        }
        b(requestStatus, true, s);
    }

    public final boolean a(E0 e0, long j) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "isBlockingStateForGetSignals ", this));
        }
        if (this.r) {
            I6.a((byte) 2, "InMobi", "getSignals() call is already in progress. Please wait for its execution to get complete");
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).b("Q0", "getSignals() call is already in progress. Please wait for its execution to get complete");
            }
            return true;
        }
        if (!f0()) {
            return false;
        }
        if (e0 != null) {
            e0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
        }
        a(2007, j);
        return true;
    }

    public final void a(WeakReference<E0> listenerWeakReference, short s, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(listenerWeakReference, "listenerWeakReference");
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "onLoadAdMarkupFailed ", this));
        }
        d((byte) 3);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).d("Q0", "AdUnit " + this + " state - FAILED");
        }
        b((byte) 1);
        if (this.o) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).b("Q0", "AdUnit destroyed while onLoadAdMarkupFailed");
                return;
            }
            return;
        }
        E0 e0 = listenerWeakReference.get();
        if (e0 != null) {
            if (Intrinsics.areEqual("int", q())) {
                a(e0, s);
                return;
            } else {
                b(s);
                e0.a(this, status);
                return;
            }
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f54).b("Q0", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        this.J = watermarkData;
        Ya yaW = w();
        if (yaW != null) {
            yaW.setWatermark(watermarkData);
        }
    }

    public static /* synthetic */ void a(Q0 q0, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: destroyContainer");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        q0.a(i, z);
    }

    public final void a(int i, boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).a("Q0", "Destroying container for index " + i + ' ' + this);
        }
        ArrayList list = this.g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (i < 0 || i >= list.size()) {
            return;
        }
        Ya ya = (Ya) this.g.get(i);
        if (ya != null) {
            ya.t0.set(z);
            ya.stopLoading();
            ya.b();
        }
        this.g.set(i, null);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(Ya renderView, String trackerName, Map<String, String> macros) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f5).a("Q0", "fireLandingPageTracker " + trackerName + ' ' + this);
        }
        C0325h c0325hA = a(this.g.indexOf(renderView));
        if (c0325hA != null) {
            List<String> listC = c0325hA.c(trackerName);
            if (listC == null) {
                return;
            }
            for (String str : listC) {
                String strReplace$default = str;
                for (Map.Entry<String, String> entry : macros.entrySet()) {
                    strReplace$default = StringsKt.replace$default(strReplace$default, entry.getKey(), entry.getValue(), false, 4, (Object) null);
                }
                C0520u2.f496a.a(strReplace$default, true, this.j);
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q0", "fireLandingPageTracker failed");
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        E0 e0R = r();
        if (e0R != null) {
            e0R.a(log);
        }
    }

    public final void a(Ya renderView, int i) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        this.g.add(i, renderView);
        this.z.add(Integer.valueOf(i));
    }

    public final void b(int i, boolean z) {
        Ya ya;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "fireAdPodShowResult ", this));
        }
        ArrayList list = this.g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (i < 0 || i >= list.size() || (ya = (Ya) this.g.get(i)) == null) {
            return;
        }
        ya.b(z);
    }

    public void a(E0 e0) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "handleAdScreenDismissed ", this));
        }
    }

    public void a(Ya ya, short s) {
        List<String> listC;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("Q0", AbstractC0363j6.a("Q0", "TAG", "Render view signaled ad failed, for index ").append(this.g.indexOf(ya)).append(' ').append(this).toString());
        }
        if (ya == null || !Intrinsics.areEqual(ya.getMarkupType(), "htmlUrl")) {
            return;
        }
        int iIndexOf = this.g.indexOf(ya);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).b("Q0", "fireLoadAdTokenUrlFailed : " + iIndexOf + ' ' + this);
        }
        C0325h c0325hA = a(iIndexOf);
        if (c0325hA == null || (listC = c0325hA.c(C0325h.LOAD_AD_TOKEN_URL_FAILURE)) == null) {
            return;
        }
        Iterator<String> it = listC.iterator();
        while (it.hasNext()) {
            C0520u2.f496a.a(it.next(), true, this.j);
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void b(Ya renderView) {
        List<String> listC;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "fireClickTracker ", this));
        }
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C0325h c0325hA = a(this.g.indexOf(renderView));
        if (((c0325hA != null ? c0325hA.p() : null) != null && Intrinsics.areEqual(c0325hA.p(), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) || c0325hA == null || (listC = c0325hA.c("click")) == null) {
            return;
        }
        Iterator<String> it = listC.iterator();
        while (it.hasNext()) {
            C0520u2.f496a.a(it.next(), true, this.j);
        }
    }

    public static final void a(Q0 this$0, Ya renderView, short s) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.a(renderView, s);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(HashMap<Object, Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onAdInteraction ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q0", "Ad interaction. Params: " + params);
        }
        E0 e0R = r();
        if (e0R != null) {
            e0R.a(params);
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void c(Ya renderView) {
        List<String> listC;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "fireImpressionTracker ", this));
        }
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C0325h c0325hA = a(this.g.indexOf(renderView));
        if (((c0325hA != null ? c0325hA.p() : null) != null && Intrinsics.areEqual(c0325hA.p(), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) || c0325hA == null || (listC = c0325hA.c("impression")) == null) {
            return;
        }
        for (String str : listC) {
            C0488rc telemetryOnAdImpression = renderView.getTelemetryOnAdImpression();
            telemetryOnAdImpression.getClass();
            Intrinsics.checkNotNullParameter("adResponseTracker", "<set-?>");
            telemetryOnAdImpression.e = "adResponseTracker";
            C0520u2.f496a.b(str, true, (X1) new M(this.D, telemetryOnAdImpression), this.j);
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(final C0488rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onImpressionFiredFromTemplate ", this));
        }
        telemetryOnAdImpression.getClass();
        Intrinsics.checkNotNullParameter("imraid_impressionFired", "<set-?>");
        telemetryOnAdImpression.e = "imraid_impressionFired";
        if (!this.o && t() != null) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f52).a("Q0", "onImpressionFiredFromTemplate");
            }
            Handler handler = this.l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Q0.a(this.f$0, telemetryOnAdImpression);
                    }
                });
                return;
            }
            return;
        }
        telemetryOnAdImpression.b();
    }

    public static final void a(Q0 this$0, C0488rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "$telemetryOnAdImpression");
        this$0.D.a(telemetryOnAdImpression);
    }

    @Override // com.inmobi.media.AbstractC0227ab, com.inmobi.media.Vc
    public void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onUserLeaveApplication ", this));
        }
        if (this.o || t() == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C0314g5) interfaceC0298f52).a("Q0", "User left application");
        }
        E0 e0R = r();
        if (e0R != null) {
            e0R.h();
        }
    }

    public final void a(short s) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdLoadDroppedAtSDK ", this));
        }
        HashMap map = new HashMap();
        map.put("errorCode", Short.valueOf(s));
        c(map);
        c("AdLoadDroppedAtSDK", map);
    }

    public final void a(int i, long j) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "submitAdGetSignalsFailed ", this));
        }
        this.r = false;
        HashMap map = new HashMap();
        map.put("adType", q());
        map.put("latency", Long.valueOf(System.currentTimeMillis() - j));
        map.put("networkType", E3.q());
        map.put("errorCode", Integer.valueOf(i));
        c("AdGetSignalsFailed", map);
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(String eventType, Map<String, Object> kv) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onRenderViewRequestedAction ", this));
        }
        c(eventType, kv);
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.inmobi.media.C0325h r39) {
        /*
            Method dump skipped, instruction units count: 1083
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Q0.a(com.inmobi.media.h):void");
    }

    public final D7 a(P7 p7) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "isSkippableVideo ", this));
        }
        Iterator it = p7.c().iterator();
        while (it.hasNext()) {
            D7 d7 = (D7) p7.n((String) it.next()).get(0);
            if (2 == d7.k) {
                return d7;
            }
        }
        return null;
    }

    public final void a(boolean z, Ya ya) {
        Set<Hc> setD;
        AdConfig.ViewabilityConfig viewability;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("Q0", C0.a("Q0", "TAG", "omidSessionForHtmlMarkup ", this));
        }
        AdConfig adConfig = this.b;
        AdConfig.OmidConfig omidConfig = (adConfig == null || (viewability = adConfig.getViewability()) == null) ? null : viewability.getOmidConfig();
        if (omidConfig == null || omidConfig.isOmidEnabled()) {
            G9.f125a.getClass();
            if (Omid.isActive() && (setD = d(this.g.indexOf(ya))) != null) {
                for (Hc hc : setD) {
                    if (3 == hc.f132a) {
                        try {
                            String str = (String) hc.a("creativeType", String.class);
                            String str2 = (String) hc.a("customReferenceData", String.class);
                            Boolean bool = (Boolean) hc.a("isolateVerificationScripts", Boolean.class);
                            Byte b = (Byte) hc.a("impressionType", Byte.class);
                            C0599z9 c0599z9A = (str == null || bool == null || b == null) ? null : C9.a(str, ya, bool.booleanValue(), this.t.e(), b.byteValue(), str2);
                            if (c0599z9A != null) {
                                hc.b.put("omidAdSession", c0599z9A);
                                hc.b.put("deferred", Boolean.valueOf(z));
                                InterfaceC0298f5 interfaceC0298f52 = this.j;
                                if (interfaceC0298f52 != null) {
                                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                                    ((C0314g5) interfaceC0298f52).a("Q0", "OMID ad session created and WebView container registered with OMID");
                                }
                            } else {
                                InterfaceC0298f5 interfaceC0298f53 = this.j;
                                if (interfaceC0298f53 != null) {
                                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                                    ((C0314g5) interfaceC0298f53).a("Q0", "Ignoring IAB meta data for this ad markup");
                                }
                            }
                        } catch (Exception e) {
                            InterfaceC0298f5 interfaceC0298f54 = this.j;
                            if (interfaceC0298f54 != null) {
                                ((C0314g5) interfaceC0298f54).b("Q0", Ed.a(e, AbstractC0363j6.a("Q0", "TAG", "Setting up impression tracking for IAB encountered an unexpected error: ")));
                            }
                            C0551w5 c0551w5 = C0551w5.f513a;
                            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                        }
                    }
                }
            }
        }
    }

    public static final void a(Q0 q0, C0325h c0325h, String str) {
        InterfaceC0298f5 interfaceC0298f5 = q0.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "updateAdForBlob ", q0));
        }
        c0325h.e(str);
        InterfaceC0298f5 interfaceC0298f52 = q0.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).c("Q0", C0.a("Q0", "TAG", "updateAd ", q0));
        }
        C0560x0 c0560x0 = q0.u;
        if (c0560x0 != null) {
            c0560x0.a(c0325h);
        }
    }

    public void a(String blob, String str) {
        Intrinsics.checkNotNullParameter(blob, "blob");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "saveBlob ", this));
        }
        A a2 = this.C;
        int iHashCode = hashCode();
        P0 p0 = new P0(this, str, blob);
        a2.getClass();
        A.a(iHashCode, p0);
    }

    public void a(String jsCallbackNamespace, String callback, InterfaceC0218a2 receiver, String str) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "getBlob ", this));
        }
        A a2 = this.C;
        int iHashCode = hashCode();
        H0 h0 = new H0(this, str, receiver, jsCallbackNamespace, callback);
        a2.getClass();
        A.a(iHashCode, h0);
    }

    public void a(C0325h primaryAd, boolean z, short s) {
        C0560x0 c0560x0;
        Intrinsics.checkNotNullParameter(primaryAd, "ad");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("Q0", C0.a("Q0", "TAG", "onVastProcessCompleted ", this));
        }
        C0325h c0325hM = m();
        if (c0325hM == null || W()) {
            c0325hM = null;
        }
        if (c0325hM == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).c("Q0", AbstractC0363j6.a("Q0", "TAG", "Vast processing completed for ad with impressionId : ").append(c0325hM.s()).toString());
        }
        String strU = c0325hM.u();
        int iHashCode = strU.hashCode();
        if (iHashCode != -1084172778) {
            if (iHashCode != 3213227) {
                if (iHashCode == 1236050372 && strU.equals("htmlUrl")) {
                    return;
                }
            } else if (strU.equals("html")) {
                return;
            }
        } else if (strU.equals("inmobiJson")) {
            if (this.f219a == 2 && (c0560x0 = this.u) != null) {
                c0560x0.a(primaryAd);
                A0 a0P = p();
                String clientReqId = c0560x0.k();
                a0P.getClass();
                Intrinsics.checkNotNullParameter(primaryAd, "primaryAd");
                Intrinsics.checkNotNullParameter(clientReqId, "clientReqId");
                Set<C0600za> setY = primaryAd.y();
                if (setY.isEmpty()) {
                    a0P.f70a.a(a0P.c, true, (short) 0);
                    return;
                }
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                C0371k c0371k = new C0371k(string, setY, a0P.g, null, 16);
                String strF = primaryAd.f();
                if (strF != null) {
                    C0477r1 c0477r1 = C0477r1.f467a;
                    C0477r1.a(c0371k, strF);
                    return;
                }
                return;
            }
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C0314g5) interfaceC0298f53).b("Q0", "Found inconsistent state after vast processing");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).b("Q0", AbstractC0363j6.a("Q0", "TAG", "Can not handle fallback for").append(c0325hM.u()).toString());
        }
        throw new IllegalStateException("Can not handle fallback for markup type: " + c0325hM.u());
    }
}
