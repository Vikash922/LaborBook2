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

/* JADX INFO: renamed from: com.inmobi.media.Q0 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2928Q0 extends AbstractC3078ab implements InterfaceC3054Z1, InterfaceC3409wc, InterfaceC3200id, InterfaceC3052Z {

    /* JADX INFO: renamed from: L */
    public static final /* synthetic */ int f1416L = 0;

    /* JADX INFO: renamed from: A */
    public boolean f1417A;

    /* JADX INFO: renamed from: B */
    public String f1418B;

    /* JADX INFO: renamed from: C */
    public final C2687A f1419C;

    /* JADX INFO: renamed from: D */
    public C2882N f1420D;

    /* JADX INFO: renamed from: E */
    public C2843K5 f1421E;

    /* JADX INFO: renamed from: F */
    public C3045Y6 f1422F;

    /* JADX INFO: renamed from: G */
    public final Handler f1423G;

    /* JADX INFO: renamed from: H */
    public final LinkedHashMap f1424H;

    /* JADX INFO: renamed from: I */
    public final C2955S0 f1425I;

    /* JADX INFO: renamed from: J */
    public WatermarkData f1426J;

    /* JADX INFO: renamed from: K */
    public final C2823J0 f1427K;

    /* JADX INFO: renamed from: a */
    public byte f1428a;

    /* JADX INFO: renamed from: b */
    public AdConfig f1429b;

    /* JADX INFO: renamed from: c */
    public WeakReference f1430c;

    /* JADX INFO: renamed from: d */
    public C2760Ec f1431d;

    /* JADX INFO: renamed from: e */
    public C2688A0 f1432e;

    /* JADX INFO: renamed from: f */
    public WeakReference f1433f;

    /* JADX INFO: renamed from: g */
    public ArrayList f1434g;

    /* JADX INFO: renamed from: h */
    public C3359t7 f1435h;

    /* JADX INFO: renamed from: i */
    public HashMap f1436i;

    /* JADX INFO: renamed from: j */
    public InterfaceC3147f5 f1437j;

    /* JADX INFO: renamed from: k */
    public byte f1438k;

    /* JADX INFO: renamed from: l */
    public Handler f1439l;

    /* JADX INFO: renamed from: m */
    public boolean f1440m;

    /* JADX INFO: renamed from: n */
    public GestureDetectorOnGestureListenerC3049Ya f1441n;

    /* JADX INFO: renamed from: o */
    public boolean f1442o;

    /* JADX INFO: renamed from: p */
    public boolean f1443p;

    /* JADX INFO: renamed from: q */
    public boolean f1444q;

    /* JADX INFO: renamed from: r */
    public boolean f1445r;

    /* JADX INFO: renamed from: s */
    public C3406w9 f1446s;

    /* JADX INFO: renamed from: t */
    public C3038Y f1447t;

    /* JADX INFO: renamed from: u */
    public C3412x0 f1448u;

    /* JADX INFO: renamed from: v */
    public C3439yc f1449v;

    /* JADX INFO: renamed from: w */
    public int f1450w;

    /* JADX INFO: renamed from: x */
    public int f1451x;

    /* JADX INFO: renamed from: y */
    public long f1452y;

    /* JADX INFO: renamed from: z */
    public TreeSet f1453z;

    public AbstractC2928Q0(Context context, C3038Y adPlacement, AbstractC2748E0 abstractC2748E0) {
        Boolean boolM2585o;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.f1434g = new ArrayList();
        this.f1452y = -1L;
        this.f1453z = new TreeSet();
        this.f1419C = C2687A.f806a;
        this.f1423G = new Handler(Looper.getMainLooper());
        this.f1424H = new LinkedHashMap();
        this.f1425I = new C2955S0(this);
        this.f1427K = new C2823J0(this);
        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
        toString();
        this.f1430c = new WeakReference(context);
        this.f1447t = adPlacement;
        WeakReference weakReference = new WeakReference(abstractC2748E0);
        this.f1433f = weakReference;
        String strMo914q = mo914q();
        C3412x0 c3412x0 = this.f1448u;
        this.f1420D = new C2882N(weakReference, strMo914q, (c3412x0 == null || (boolM2585o = c3412x0.m2585o()) == null) ? false : boolM2585o.booleanValue());
        m1692n0();
    }

    /* JADX INFO: renamed from: R */
    public static /* synthetic */ void m1537R() {
    }

    /* JADX INFO: renamed from: U */
    public static /* synthetic */ void m1538U() {
    }

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ String m1558e() {
        return "Q0";
    }

    /* JADX INFO: renamed from: A */
    public final int m1559A() {
        return this.f1451x;
    }

    /* JADX INFO: renamed from: A0 */
    public long m1560A0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "timeSincePodShow ", this));
        }
        if (this.f1417A) {
            return System.currentTimeMillis() - this.f1452y;
        }
        return -1L;
    }

    /* JADX INFO: renamed from: B */
    public final TreeSet<Integer> m1561B() {
        return this.f1453z;
    }

    /* JADX INFO: renamed from: B0 */
    public final C3215jd m1562B0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "trySetTheLocalVideoDescriptor ", this));
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m == null) {
            throw new IllegalStateException("No ad");
        }
        if (!(c3171hM1688m instanceof C3405w8)) {
            return null;
        }
        C3405w8 c3405w8 = (C3405w8) c3171hM1688m;
        C3201j c3201jM2272b = AbstractC2744Db.m966a().m2272b(c3405w8.f2719a);
        if (c3201jM2272b == null || !c3201jM2272b.m2253a()) {
            throw new IllegalStateException("Asset not available in cache");
        }
        String str = c3201jM2272b.f2205c;
        String str2 = c3405w8.f2720b;
        String str3 = c3405w8.f2721c;
        ArrayList arrayList = c3405w8.f2722d;
        ArrayList arrayList2 = c3405w8.f2723e;
        AdConfig adConfig = this.f1429b;
        Intrinsics.checkNotNull(adConfig);
        return new C3215jd(str, str2, str3, arrayList, arrayList2, adConfig.getVastVideo());
    }

    /* JADX INFO: renamed from: C */
    public final long m1563C() {
        return this.f1452y;
    }

    /* JADX INFO: renamed from: C0 */
    public final void m1564C0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("Q0", "ad unloaded");
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2153d("Q0", "AdUnit " + this + " state - UNLOADED");
        }
        m1658d((byte) 8);
    }

    /* JADX INFO: renamed from: D */
    public final Handler m1565D() {
        return this.f1439l;
    }

    /* JADX INFO: renamed from: E */
    public final String m1566E() {
        String strM2204u;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "markupType getter ", this));
        }
        C3171h c3171hM1688m = m1688m();
        return (c3171hM1688m == null || (strM2204u = c3171hM1688m.m2204u()) == null) ? "unknown" : strM2204u;
    }

    /* JADX INFO: renamed from: F */
    public Integer mo1567F() {
        return null;
    }

    /* JADX INFO: renamed from: G */
    public final C3359t7 m1568G() {
        return this.f1435h;
    }

    /* JADX INFO: renamed from: H */
    public final C3406w9 m1569H() {
        return this.f1446s;
    }

    /* JADX INFO: renamed from: I */
    public final C3038Y m1570I() {
        return this.f1447t;
    }

    /* JADX INFO: renamed from: J */
    public abstract byte mo900J();

    /* JADX INFO: renamed from: K */
    public String m1571K() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getPodAdContext ", this));
        }
        if (this.f1417A) {
            return this.f1418B;
        }
        return null;
    }

    /* JADX INFO: renamed from: L */
    public final String m1572L() {
        return m1645c(0);
    }

    /* JADX INFO: renamed from: M */
    public final Map<String, String> m1573M() {
        return this.f1447t.m1933f();
    }

    /* JADX INFO: renamed from: N */
    public JSONArray m1574N() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getRenderableAdIndexes ", this));
        }
        JSONArray jSONArray = new JSONArray();
        for (Integer num : this.f1453z) {
            Intrinsics.checkNotNull(num);
            jSONArray.put(num.intValue());
        }
        return jSONArray;
    }

    /* JADX INFO: renamed from: O */
    public long m1575O() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getShowTimeStamp ", this));
        }
        if (this.f1417A) {
            return this.f1452y;
        }
        return -1L;
    }

    /* JADX INFO: renamed from: P */
    public final Unit m1576P() {
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (m1624a(abstractC2748E0M1697r, jCurrentTimeMillis)) {
            return Unit.INSTANCE;
        }
        this.f1445r = true;
        if (this.f1446s == null) {
            this.f1446s = new C3406w9(this);
        }
        C2687A c2687a = this.f1419C;
        int iHashCode = hashCode();
        C3371u4 c3371u4 = new C3371u4(this, jCurrentTimeMillis, this.f1437j);
        c2687a.getClass();
        C2687A.m825a(iHashCode, c3371u4);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: Q */
    public final byte m1577Q() {
        return this.f1428a;
    }

    /* JADX INFO: renamed from: S */
    public final String m1578S() {
        LinkedList<C3171h> linkedListM2576f;
        C3171h c3171h;
        String strM2205w;
        C3412x0 c3412x0 = this.f1448u;
        return (c3412x0 == null || (linkedListM2576f = c3412x0.m2576f()) == null || (c3171h = (C3171h) CollectionsKt.firstOrNull((List) linkedListM2576f)) == null || (strM2205w = c3171h.m2205w()) == null) ? "" : strM2205w;
    }

    /* JADX INFO: renamed from: T */
    public final byte m1579T() {
        return this.f1438k;
    }

    /* JADX INFO: renamed from: V */
    public final void m1580V() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleInterActive ", this));
        }
        C2687A c2687a = this.f1419C;
        int iHashCode = hashCode();
        C2808I0 c2808i0 = new C2808I0(this);
        c2687a.getClass();
        C2687A.m825a(iHashCode, c2808i0);
    }

    /* JADX INFO: renamed from: W */
    public final boolean m1581W() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "hasAdExpired ", this));
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m == null) {
            return false;
        }
        AdConfig adConfig = this.f1429b;
        Intrinsics.checkNotNull(adConfig);
        return c3171hM1688m.m2181a(adConfig.getCacheConfig(mo914q()).getTimeToLive());
    }

    /* JADX INFO: renamed from: X */
    public final boolean m1582X() {
        AdConfig.RenderingConfig rendering;
        AdConfig adConfig = this.f1429b;
        return adConfig != null && (rendering = adConfig.getRendering()) != null && rendering.getEnablePubMuteControl() && C2849Kb.m1263o();
    }

    /* JADX INFO: renamed from: Y */
    public final boolean m1583Y() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "isBlockingStateForLoadWithResponse getter " + this + " state=" + ((int) this.f1428a));
        }
        if (!C3356t4.f2542a.m2421a()) {
            mo1231g();
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED), true, (short) 2141);
            return true;
        }
        if (mo1230f0()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "Some of the dependency libraries for ").append(mo914q()).append(" not found").toString());
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return true;
        }
        byte b = this.f1428a;
        if (b == 1) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2151b("Q0", "load with reasponse called while loading");
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING), false, (short) 2001);
            return true;
        }
        if (b != 7) {
            return false;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f54).m2151b("Q0", "ad active before load");
        }
        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2003);
        return true;
    }

    /* JADX INFO: renamed from: Z */
    public final boolean m1584Z() {
        return this.f1442o;
    }

    /* JADX INFO: renamed from: a */
    public abstract /* synthetic */ void mo902a(int i, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya);

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1224a(GestureDetectorOnGestureListenerC3049Ya renderView, boolean z) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "onRenderProcessGone didCrash=" + z + " state=" + ((int) this.f1428a));
        }
        byte b = this.f1428a;
        if (b == 0) {
            short s = z ? (short) 2214 : (short) 2213;
            m1689m0();
            renderView.m1959a(z, s);
            return;
        }
        if (b == 1) {
            short s2 = z ? (short) 2216 : (short) 2215;
            m1689m0();
            m1639b(s2);
            AbstractC2748E0 abstractC2748E0M1697r = m1697r();
            if (abstractC2748E0M1697r != null) {
                abstractC2748E0M1697r.mo973a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                return;
            }
            return;
        }
        if (b == 3) {
            renderView.m1959a(z, z ? (short) 2226 : (short) 2225);
            return;
        }
        if (b == 2) {
            m1689m0();
            m1639b(z ? (short) 2218 : (short) 2217);
            AbstractC2748E0 abstractC2748E0M1697r2 = m1697r();
            if (abstractC2748E0M1697r2 != null) {
                abstractC2748E0M1697r2.mo878a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                return;
            }
            return;
        }
        if (b == 4 || b == 6 || b == 7 || b != 8) {
            return;
        }
        renderView.m1959a(z, z ? (short) 2240 : (short) 2241);
    }

    /* JADX INFO: renamed from: a0 */
    public final boolean m1627a0() {
        return this.f1440m;
    }

    /* JADX INFO: renamed from: b */
    public abstract /* synthetic */ void mo909b();

    /* JADX INFO: renamed from: b0 */
    public final boolean m1644b0() {
        return this.f1417A;
    }

    /* JADX INFO: renamed from: c */
    public final String m1645c(int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getPubContent ", this));
        }
        if (i > 0 && !this.f1417A) {
            return "";
        }
        C3171h c3171hM1587a = m1587a(i);
        if (c3171hM1587a != null) {
            return c3171hM1587a.m2206x();
        }
        return null;
    }

    /* JADX INFO: renamed from: c0 */
    public void mo911c0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "load  ", this));
        }
        C2955S0 c2955s0 = this.f1425I;
        c2955s0.getClass();
        c2955s0.f1517c = SystemClock.elapsedRealtime();
        m1618a(new C2838K0(this), new C2853L0(this));
    }

    /* JADX INFO: renamed from: d */
    public final void m1658d(byte b) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2153d("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "from ").append((int) this.f1428a).append(" to ").append((int) b).append(' ').append(this).toString());
        }
        this.f1428a = b;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f8  */
    /* JADX INFO: renamed from: d0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1663d0() throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2928Q0.m1663d0():void");
    }

    /* JADX INFO: renamed from: e0 */
    public final void m1668e0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "makeUnitActive ", this));
        }
        this.f1442o = false;
    }

    /* JADX INFO: renamed from: f */
    public final void m1671f(AbstractC2748E0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onLoadSuccess ", this));
        }
        AdMetaInfo adMetaInfoM1686l = m1686l();
        if (adMetaInfoM1686l == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("Q0", "load success - ad unit null");
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2107);
            return;
        }
        m1629b((byte) 1);
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f53).m2147a("Q0", "callback - onAdLoadSucceeded");
        }
        listener.mo884c(adMetaInfoM1686l);
    }

    /* JADX INFO: renamed from: f0 */
    public boolean mo1230f0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "missingPrerequisitesForAd ", this));
        }
        try {
            Reflection.getOrCreateKotlinClass(RecyclerView.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(CustomTabsClient.class).getSimpleName();
            return false;
        } catch (NoClassDefFoundError unused) {
            return true;
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m1672g(int i) {
        this.f1450w = i;
    }

    /* JADX INFO: renamed from: g0 */
    public void m1674g0() {
        C2955S0 c2955s0 = this.f1425I;
        c2955s0.getClass();
        c2955s0.f1522h = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: renamed from: h */
    public final void m1676h(int i) {
        this.f1451x = i;
    }

    /* JADX INFO: renamed from: h0 */
    public final C2954S m1677h0() {
        String string;
        Integer num;
        Integer num2;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "prepareAdRequest ", this));
        }
        Context contextM1700t = m1700t();
        C3331r9 c3331r9 = null;
        C3361t9 c3361t9 = contextM1700t != null ? new C3361t9(contextM1700t, this.f1437j) : null;
        AdConfig adConfig = this.f1429b;
        String url = adConfig != null ? adConfig.getUrl() : null;
        AdConfig adConfig2 = this.f1429b;
        Intrinsics.checkNotNull(adConfig2);
        C2850Kc c2850Kc = new C2850Kc(adConfig2.getIncludeIds());
        ArrayList arrayListM2270a = AbstractC2744Db.m966a().m2270a();
        if (arrayListM2270a.isEmpty()) {
            string = null;
        } else {
            JSONArray jSONArray = new JSONArray();
            Iterator it = arrayListM2270a.iterator();
            while (it.hasNext()) {
                try {
                    jSONArray.put(URLEncoder.encode(((C3201j) it.next()).f2204b, "UTF-8"));
                } catch (UnsupportedEncodingException unused) {
                }
            }
            string = jSONArray.toString();
        }
        C3038Y c3038y = this.f1447t;
        if (c3361t9 != null) {
            if (c3361t9.f2619d) {
                c3331r9 = new C3331r9(MapsKt.hashMapOf(TuplesKt.m2729to("n-h-id", c3361t9.f2618c)));
            } else {
                InterfaceC3147f5 interfaceC3147f52 = c3361t9.f2617b;
                if (interfaceC3147f52 != null) {
                    ((C3162g5) interfaceC3147f52).m2147a("NovatiqDataHandler", "Novatiq disabled. skip");
                }
                c3331r9 = new C3331r9(MapsKt.emptyMap());
            }
        }
        C3331r9 c3331r92 = c3331r9;
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        AdConfig adConfig3 = this.f1429b;
        C2954S c2954s = new C2954S(url, c2850Kc, string, c3038y, c3331r92, interfaceC3147f53, adConfig3 != null ? adConfig3.getApplyGzipReq() : false);
        c2954s.f1511C = this.f1447t.m1936i();
        c2954s.f1510B = mo914q();
        Intrinsics.checkNotNullParameter("unifiedSdkJson", "<set-?>");
        c2954s.f1509A = "unifiedSdkJson";
        c2954s.f1512D = mo913o();
        C3045Y6 c3045y6 = this.f1422F;
        int iIntValue = C2760Ec.DEFAULT_TIMEOUT;
        c2954s.f2289p = (c3045y6 == null || (num2 = c3045y6.f1682d) == null) ? 15000 : num2.intValue();
        C3045Y6 c3045y62 = this.f1422F;
        if (c3045y62 != null && (num = c3045y62.f1682d) != null) {
            iIntValue = num.intValue();
        }
        c2954s.f2290q = iIntValue;
        c2954s.f2288o = m1582X();
        return c2954s;
    }

    /* JADX INFO: renamed from: i */
    public final void m1678i() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "fireAdServedBeacon ", this));
        }
        InterfaceC3411x interfaceC3411xM1682k = m1682k();
        if (interfaceC3411xM1682k == null) {
            return;
        }
        interfaceC3411xM1682k.mo1951a((byte) 2, null);
    }

    /* JADX INFO: renamed from: i0 */
    public C2760Ec m1679i0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "provideTimeoutConfigurations ", this));
        }
        C2760Ec c2760Ec = this.f1431d;
        Intrinsics.checkNotNull(c2760Ec);
        return c2760Ec;
    }

    /* JADX INFO: renamed from: j */
    public final AdConfig m1680j() {
        return this.f1429b;
    }

    /* JADX INFO: renamed from: j0 */
    public abstract void mo912j0();

    /* JADX INFO: renamed from: k */
    public final InterfaceC3411x m1682k() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "adMarkupContainer getter ", this));
        }
        byte b = this.f1428a;
        String strM1566E = m1566E();
        int iHashCode = strM1566E.hashCode();
        if (iHashCode != -1084172778) {
            if (iHashCode != 3213227) {
                if (iHashCode == 1236050372 && strM1566E.equals("htmlUrl") && b != 0 && 1 != b && 3 != b && 8 != b) {
                    return mo1235w();
                }
            } else if (strM1566E.equals("html") && b != 0 && 1 != b && 3 != b && 8 != b) {
                return mo1235w();
            }
        } else if (strM1566E.equals("inmobiJson") && b != 0 && 1 != b && 3 != b && 2 != b) {
            return this.f1435h;
        }
        return null;
    }

    /* JADX INFO: renamed from: k0 */
    public void mo1684k0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "resetContainersForNextAd ", this));
        }
        C3359t7 c3359t7 = this.f1435h;
        if (c3359t7 != null) {
            c3359t7.mo845b();
        }
        this.f1435h = null;
        int size = this.f1434g.size();
        int i = this.f1451x;
        if (size <= i || this.f1434g.get(i) == null) {
            return;
        }
        m1593a(this.f1451x, false);
    }

    /* JADX INFO: renamed from: l */
    public final AdMetaInfo m1686l() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "adMetaInfo getter ", this));
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m != null) {
            return c3171hM1688m.m2186d();
        }
        return null;
    }

    /* JADX INFO: renamed from: l0 */
    public final C3373u6 m1687l0() {
        String strM2203t;
        Boolean boolM2585o;
        String strM2205w;
        String strM2200p;
        String strM2202s;
        long jM1938l = this.f1447t.m1938l();
        C3171h c3171hM1702u = m1702u();
        String str = (c3171hM1702u == null || (strM2202s = c3171hM1702u.m2202s()) == null) ? "" : strM2202s;
        String strValueOf = String.valueOf(this.f1447t.m1939m());
        String strMo914q = mo914q();
        String strM1566E = m1566E();
        C3171h c3171hM1702u2 = m1702u();
        String str2 = (c3171hM1702u2 == null || (strM2200p = c3171hM1702u2.m2200p()) == null) ? "" : strM2200p;
        C3171h c3171hM1702u3 = m1702u();
        String str3 = (c3171hM1702u3 == null || (strM2205w = c3171hM1702u3.m2205w()) == null) ? "" : strM2205w;
        C3412x0 c3412x0 = this.f1448u;
        boolean zBooleanValue = (c3412x0 == null || (boolM2585o = c3412x0.m2585o()) == null) ? false : boolM2585o.booleanValue();
        C3171h c3171hM1702u4 = m1702u();
        return new C3373u6(jM1938l, str, strValueOf, strMo914q, strM1566E, str2, str3, zBooleanValue, (c3171hM1702u4 == null || (strM2203t = c3171hM1702u4.m2203t()) == null) ? "" : strM2203t);
    }

    /* JADX INFO: renamed from: m */
    public final C3171h m1688m() {
        return m1587a(0);
    }

    /* JADX INFO: renamed from: m0 */
    public final void m1689m0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2153d("Q0", "AdUnit " + this + " state - FAILED");
        }
        m1658d((byte) 3);
        m1629b((byte) 1);
    }

    /* JADX INFO: renamed from: n */
    public final String m1690n() {
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null) {
            return c3412x0.m2574c();
        }
        return null;
    }

    /* JADX INFO: renamed from: n0 */
    public final void m1692n0() {
        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
        toString();
        String strM1248b = C2849Kb.m1248b();
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("ads", strM1248b, null);
        this.f1429b = configM1161a instanceof AdConfig ? (AdConfig) configM1161a : null;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "timeOutConfiguration getter ", this));
        }
        AdConfig adConfig = this.f1429b;
        Intrinsics.checkNotNull(adConfig);
        this.f1431d = adConfig.getTimeouts();
        m1658d((byte) 0);
        this.f1432e = new C2688A0(this, this, this.f1447t);
        this.f1436i = new HashMap();
        this.f1438k = (byte) -1;
        this.f1439l = new Handler(Looper.getMainLooper());
        this.f1440m = false;
        this.f1449v = new C3439yc(this);
    }

    /* JADX INFO: renamed from: o */
    public HashMap mo913o() {
        return new HashMap();
    }

    /* JADX INFO: renamed from: o0 */
    public final boolean m1693o0() {
        Unit unit;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "shouldBlockLoadAd ", this));
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m != null && 4 == this.f1428a && !m1581W()) {
            AbstractC2748E0 abstractC2748E0M1697r = m1697r();
            if (abstractC2748E0M1697r != null) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a("Q0", "ad is ready - load success");
                }
                m1671f(abstractC2748E0M1697r);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                m1639b((short) 2188);
            }
            return true;
        }
        if (c3171hM1688m == null) {
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2131);
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2151b("Q0", "ad no longer available");
            }
            return true;
        }
        if (2 != this.f1428a) {
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2132);
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "ad no longer available. state - ").append((int) this.f1428a).toString());
            }
            return true;
        }
        if (!m1581W()) {
            return false;
        }
        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), true, (short) 2133);
        InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
        if (interfaceC3147f55 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f55).m2151b("Q0", "ad is expired");
        }
        return true;
    }

    /* JADX INFO: renamed from: p */
    public final C2688A0 m1694p() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "adStore getter ", this));
        }
        if (this.f1432e == null) {
            this.f1432e = new C2688A0(this, this, this.f1447t);
        }
        C2688A0 c2688a0 = this.f1432e;
        Intrinsics.checkNotNull(c2688a0);
        return c2688a0;
    }

    /* JADX INFO: renamed from: p0 */
    public final boolean m1695p0() {
        AdConfig adConfig;
        return Intrinsics.areEqual(this.f1447t.m1939m(), "AB") && (adConfig = this.f1429b) != null && adConfig.getSkipNetCheckHB();
    }

    /* JADX INFO: renamed from: q */
    public abstract String mo914q();

    /* JADX INFO: renamed from: q0 */
    public void mo1696q0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "signalAvailabilityChange ", this));
        }
    }

    /* JADX INFO: renamed from: r */
    public final AbstractC2748E0 m1697r() {
        InterfaceC3147f5 interfaceC3147f5;
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "adUnitEventListener getter ", this));
        }
        AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) this.f1433f.get();
        if (abstractC2748E0 == null && (interfaceC3147f5 = this.f1437j) != null) {
            ((C3162g5) interfaceC3147f5).m2151b("InMobi", "Listener was garbage collected. Unable to give callback");
        }
        return abstractC2748E0;
    }

    /* JADX INFO: renamed from: r0 */
    public void mo915r0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "signalSuccess ", this));
        }
    }

    /* JADX INFO: renamed from: s */
    public final C2955S0 m1698s() {
        return this.f1425I;
    }

    /* JADX INFO: renamed from: s0 */
    public final void m1699s0() {
        LinkedList<C3171h> linkedListM2576f;
        C3171h c3171h;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "startLoadingHTMLAd ", this));
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = null;
        try {
            m1664e(this.f1450w);
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                StringBuilder sb = new StringBuilder("Loading ad with impressionId : ");
                C3412x0 c3412x0 = this.f1448u;
                ((C3162g5) interfaceC3147f52).m2147a("Q0", sb.append((c3412x0 == null || (linkedListM2576f = c3412x0.m2576f()) == null || (c3171h = linkedListM2576f.get(this.f1450w)) == null) ? null : c3171h.m2202s()).toString());
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(this.f1450w);
            String strM1566E = m1566E();
            if (Intrinsics.areEqual(strM1566E, "html")) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f53).m2147a("Q0", "loading into weview for " + m1566E());
                }
                if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
                    gestureDetectorOnGestureListenerC3049Ya2.m1964c(m1645c(this.f1450w));
                }
            } else if (Intrinsics.areEqual(strM1566E, "htmlUrl")) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f54).m2147a("Q0", "loading into weview for " + m1566E());
                }
                if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
                    gestureDetectorOnGestureListenerC3049Ya2.m1967d(m1645c(this.f1450w));
                }
            }
            m1621a(true, gestureDetectorOnGestureListenerC3049Ya2);
            if (gestureDetectorOnGestureListenerC3049Ya2 == null || !Intrinsics.areEqual(m1566E(), "htmlUrl")) {
                return;
            }
            m1683k(gestureDetectorOnGestureListenerC3049Ya2);
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
            if (interfaceC3147f55 != null) {
                ((C3162g5) interfaceC3147f55).m2147a("Q0", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("Q0", "TAG", "Loading ad markup into container encountered an unexpected error: ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            int i = this.f1450w;
            if (i >= 0 && i < this.f1434g.size()) {
                gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(this.f1450w);
            }
            mo1223a(gestureDetectorOnGestureListenerC3049Ya, (short) 2135);
        }
    }

    /* JADX INFO: renamed from: t */
    public final Context m1700t() {
        WeakReference weakReference = this.f1430c;
        if (weakReference != null) {
            return (Context) weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: t0 */
    public final void m1701t0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdLoadCalled ", this));
        }
        HashMap map = new HashMap();
        m1653c(map);
        m1652c("AdLoadCalled", map);
    }

    /* JADX INFO: renamed from: u */
    public final C3171h m1702u() {
        return this.f1417A ? m1587a(this.f1450w) : m1688m();
    }

    /* JADX INFO: renamed from: u0 */
    public final void m1703u0() {
        Boolean boolM2585o;
        String strM2200p;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "submitAdLoadSuccessfulEvent ADunit markuptype : ").append(m1566E()).append(' ').append(this).toString());
        }
        HashMap map = new HashMap();
        long j = this.f1425I.f1517c;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("markupType", m1566E());
        C3171h c3171hM1702u = m1702u();
        if (c3171hM1702u != null && (strM2200p = c3171hM1702u.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C2843K5 c2843k5 = this.f1421E;
        if (c2843k5 != null) {
            map.put("retryCount", Integer.valueOf(c2843k5.f1162b));
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        if (m1578S().length() > 0) {
            map.put("metadataBlob", m1578S());
        }
        m1653c(map);
        m1652c("AdLoadSuccessful", map);
    }

    /* JADX INFO: renamed from: v */
    public final C2687A m1704v() {
        return this.f1419C;
    }

    /* JADX INFO: renamed from: v0 */
    public final void m1705v0() {
        String strM2200p;
        Boolean boolM2585o;
        HashMap map = new HashMap();
        m1653c(map);
        map.put("markupType", m1566E());
        long j = this.f1425I.f1522h;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("metadataBlob", m1578S());
        C2843K5 c2843k5 = this.f1421E;
        if (c2843k5 != null) {
            map.put("retryCount", Integer.valueOf(c2843k5.f1162b));
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        C3171h c3171hM1702u = m1702u();
        if (c3171hM1702u != null && (strM2200p = c3171hM1702u.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        m1652c("ParseSuccess", map);
    }

    /* JADX INFO: renamed from: w */
    public GestureDetectorOnGestureListenerC3049Ya mo1235w() {
        if (this.f1434g.size() <= 0 || this.f1451x >= this.f1434g.size()) {
            return null;
        }
        return (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(this.f1451x);
    }

    /* JADX INFO: renamed from: w0 */
    public final void m1706w0() {
        Boolean boolM2585o;
        String strM2200p;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdShowCalled ", this));
        }
        C2955S0 c2955s0 = this.f1425I;
        c2955s0.getClass();
        c2955s0.f1519e = SystemClock.elapsedRealtime();
        HashMap map = new HashMap();
        map.put("markupType", m1566E());
        long j = this.f1425I.f1523i;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        C3171h c3171hM1587a = this.f1417A ? m1587a(this.f1451x) : m1688m();
        if (c3171hM1587a != null && (strM2200p = c3171hM1587a.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        if (m1578S().length() > 0) {
            map.put("metadataBlob", m1578S());
        }
        m1653c(map);
        m1652c("AdShowCalled", map);
    }

    /* JADX INFO: renamed from: x */
    public final GestureDetectorOnGestureListenerC3049Ya m1707x() {
        return this.f1441n;
    }

    /* JADX INFO: renamed from: x0 */
    public final void m1708x0() {
        Boolean boolM2585o;
        String strM2200p;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdShowSuccess ", this));
        }
        HashMap map = new HashMap();
        long j = this.f1425I.f1519e;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("markupType", m1566E());
        C3171h c3171hM1587a = this.f1417A ? m1587a(this.f1451x) : m1688m();
        if (c3171hM1587a != null && (strM2200p = c3171hM1587a.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        if (m1578S().length() > 0) {
            map.put("metadataBlob", m1578S());
        }
        m1653c(map);
        m1652c("AdShowSuccessful", map);
    }

    /* JADX INFO: renamed from: y */
    public final C3412x0 m1709y() {
        return this.f1448u;
    }

    /* JADX INFO: renamed from: y0 */
    public final void m1710y0() {
        HashMap map = new HashMap();
        m1653c(map);
        m1652c("AdGetSignalsCalled", map);
    }

    /* JADX INFO: renamed from: z */
    public final int m1711z() {
        return this.f1450w;
    }

    /* JADX INFO: renamed from: z0 */
    public final void m1712z0() {
        Boolean boolM2585o;
        String strM2200p;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "submitRenderSuccessEvent ADunit markuptype : ").append(m1566E()).append(' ').append(this).toString());
        }
        HashMap map = new HashMap();
        long j = this.f1425I.f1521g;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("markupType", m1566E());
        C3171h c3171hM1587a = this.f1417A ? m1587a(this.f1451x) : m1688m();
        if (c3171hM1587a != null && (strM2200p = c3171hM1587a.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C2843K5 c2843k5 = this.f1421E;
        if (c2843k5 != null) {
            map.put("retryCount", Integer.valueOf(c2843k5.f1162b));
        }
        map.put("plType", Byte.valueOf(mo900J()));
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        if (m1578S().length() > 0) {
            map.put("metadataBlob", m1578S());
        }
        m1653c(map);
        m1654c((Map) map);
        m1652c("RenderSuccess", map);
    }

    /* JADX INFO: renamed from: e */
    public final void m1666e(C3412x0 c3412x0) {
        this.f1448u = c3412x0;
    }

    /* JADX INFO: renamed from: g */
    public final void m1673g(AbstractC2748E0 abstractC2748E0) {
        Boolean boolM2585o;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "adUnitEventListener setter ", this));
        }
        WeakReference weakReference = new WeakReference(abstractC2748E0);
        this.f1433f = weakReference;
        String strMo914q = mo914q();
        C3412x0 c3412x0 = this.f1448u;
        C2882N c2882n = new C2882N(weakReference, strMo914q, (c3412x0 == null || (boolM2585o = c3412x0.m2585o()) == null) ? false : boolM2585o.booleanValue());
        this.f1420D = c2882n;
        InterfaceC3147f5 logger = this.f1437j;
        if (logger != null) {
            Intrinsics.checkNotNullParameter(logger, "logger");
            c2882n.f1287f = logger;
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: h */
    public void mo1190h(final GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onRenderViewSignaledAdReady ", this));
        }
        if (this.f1442o || m1700t() == null) {
            m1639b((short) 2186);
            return;
        }
        Handler handler = this.f1439l;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2928Q0.m1556c(this.f$0, renderView);
                }
            });
        } else {
            m1639b((short) 2187);
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: j */
    public void mo1681j(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        byte b = this.f1428a;
        if (b == 2) {
            m1564C0();
            m1629b((byte) 1);
            AbstractC2748E0 abstractC2748E0M1697r = m1697r();
            InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
            if (abstractC2748E0M1697r != null) {
                abstractC2748E0M1697r.mo878a(this, inMobiAdRequestStatus);
            } else {
                InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2146a();
                }
            }
            m1639b((short) 2238);
            renderView.mo845b();
            return;
        }
        if (b == 4) {
            m1691n(renderView);
            renderView.mo845b();
            m1629b((byte) 4);
        } else {
            if (b == 6 || b == 7) {
                mo1234o(renderView);
                return;
            }
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "onUnloadCalled - invalid state - ").append((int) this.f1428a).toString());
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public void mo1233m(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "Render view signaled ad ready, for index ").append(this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya)).append(' ').append(this).toString());
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q0", "==== CHECKPOINT REACHED - LOAD SUCCESS ====");
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2150b();
        }
    }

    /* JADX INFO: renamed from: n */
    public void m1691n(GestureDetectorOnGestureListenerC3049Ya renderView) {
        int iM1685l;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "onAdUnloadedAfterLoadSuccess");
        }
        if (!this.f1417A || (iM1685l = m1685l(renderView)) <= this.f1451x) {
            m1564C0();
        } else {
            this.f1453z.remove(Integer.valueOf(iM1685l));
        }
    }

    /* JADX INFO: renamed from: o */
    public void mo1234o(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "onAdUnloadedAfterShowSuccess");
        }
        renderView.mo1950a();
        m1629b((byte) 4);
    }

    /* JADX INFO: renamed from: b */
    public final void m1640b(boolean z) {
        this.f1440m = z;
    }

    /* JADX INFO: renamed from: e */
    public final void m1664e(int i) {
        String strM2203t;
        String strM2204u;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "initializeHtmlAdContainer ", this));
        }
        Context contextM1700t = m1700t();
        if (contextM1700t == null) {
            return;
        }
        try {
            if (this.f1434g.get(i) == null || ((gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(i)) != null && gestureDetectorOnGestureListenerC3049Ya.f1704D.get())) {
                C3171h c3171hM1587a = m1587a(i);
                C3093bb c3093bbM1586a = m1586a(i, c3171hM1587a);
                byte bMo900J = mo900J();
                HashMap map = this.f1436i;
                Set set = map != null ? (Set) map.get(Integer.valueOf(i)) : null;
                C3171h c3171hM1587a2 = m1587a(i);
                String strM2202s = c3171hM1587a2 != null ? c3171hM1587a2.m2202s() : null;
                if (c3171hM1587a == null || (strM2203t = c3171hM1587a.m2203t()) == null) {
                    strM2203t = "DEFAULT";
                }
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = new GestureDetectorOnGestureListenerC3049Ya(contextM1700t, bMo900J, set, strM2202s, false, strM2203t, 0L, c3093bbM1586a, this.f1437j, 80);
                String strM2200p = c3171hM1587a != null ? c3171hM1587a.m2200p() : null;
                InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya2.f1749i;
                if (interfaceC3147f52 != null) {
                    String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f52).m2152c(TAG, "creativeType " + gestureDetectorOnGestureListenerC3049Ya2 + ' ' + strM2200p);
                }
                gestureDetectorOnGestureListenerC3049Ya2.f1766q0 = strM2200p;
                if (c3171hM1587a == null || (strM2204u = c3171hM1587a.m2204u()) == null) {
                    strM2204u = "html";
                }
                gestureDetectorOnGestureListenerC3049Ya2.setMarkupTypeAdUnit(strM2204u);
                this.f1434g.set(i, gestureDetectorOnGestureListenerC3049Ya2);
                if (Intrinsics.areEqual(this.f1447t.m1929b(), "banner") || Intrinsics.areEqual(this.f1447t.m1929b(), "audio")) {
                    gestureDetectorOnGestureListenerC3049Ya2.setAdSize(this.f1447t.m1926a());
                }
                gestureDetectorOnGestureListenerC3049Ya2.setAdType(this.f1447t.m1929b());
                gestureDetectorOnGestureListenerC3049Ya2.setImmersiveMode(m1643b(c3171hM1587a));
                AdConfig adConfig = this.f1429b;
                Intrinsics.checkNotNull(adConfig);
                gestureDetectorOnGestureListenerC3049Ya2.m1952a(this, adConfig);
                gestureDetectorOnGestureListenerC3049Ya2.setAdPodHandler(this);
                gestureDetectorOnGestureListenerC3049Ya2.setPlacementId(this.f1447t.m1938l());
                gestureDetectorOnGestureListenerC3049Ya2.setAllowAutoRedirection(m1642b(i));
                gestureDetectorOnGestureListenerC3049Ya2.setContentURL(this.f1447t.m1932e());
                AdMetaInfo adMetaInfoM1686l = m1686l();
                if (adMetaInfoM1686l != null) {
                    gestureDetectorOnGestureListenerC3049Ya2.setCreativeId(adMetaInfoM1686l.getCreativeID());
                }
                if (this.f1447t.m1941p()) {
                    gestureDetectorOnGestureListenerC3049Ya2.mo1969e();
                }
                gestureDetectorOnGestureListenerC3049Ya2.setTelemetryManagerMap(this.f1424H);
                InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya2.f1749i;
                if (interfaceC3147f53 != null) {
                    String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    ((C3162g5) interfaceC3147f53).m2152c(str, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya2, str, "TAG", "initContextualData "));
                }
                gestureDetectorOnGestureListenerC3049Ya2.f1715I0 = new C3055Z2(c3171hM1587a, gestureDetectorOnGestureListenerC3049Ya2.f1720L);
                m1550a(c3171hM1587a, gestureDetectorOnGestureListenerC3049Ya2);
                WatermarkData watermarkData = this.f1426J;
                if (watermarkData != null) {
                    gestureDetectorOnGestureListenerC3049Ya2.setWatermark(watermarkData);
                }
            }
        } catch (Exception e) {
            mo1223a((GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(this.f1450w), (short) 2136);
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f54).m2148a("Q0", "Exception while initializing WebView", e);
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1643b(C3171h c3171h) {
        C3307q0 c3307q0M2201q;
        AdConfig.RenderingConfig rendering;
        AdConfig adConfig = this.f1429b;
        boolean z = false;
        boolean enableImmersive = (adConfig == null || (rendering = adConfig.getRendering()) == null) ? false : rendering.getEnableImmersive();
        boolean z2 = AbstractC2886N3.f1301i;
        boolean zM2381a = (c3171h == null || (c3307q0M2201q = c3171h.m2201q()) == null) ? false : c3307q0M2201q.m2381a(false);
        if (enableImmersive && z2 && zM2381a) {
            z = true;
        }
        if (!z) {
            m1641b(enableImmersive, z2, zM2381a);
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("Q0", "Immersive support - config, device, adResponse - (" + enableImmersive + ' ' + z2 + ' ' + zM2381a + ')');
        }
        return z;
    }

    /* JADX INFO: renamed from: b */
    public final void m1641b(boolean z, boolean z2, boolean z3) {
        Pair<String, Short> pairM1589a = m1589a(z, z2, z3);
        String strComponent1 = pairM1589a.component1();
        short sShortValue = pairM1589a.component2().shortValue();
        HashMap map = new HashMap();
        map.put("reason", strComponent1);
        map.put("errorCode", Short.valueOf(sShortValue));
        m1652c("ImmersiveNotSupported", map);
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1642b(int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "getAllowAutoRedirectionForIndex " + this + " index - " + i);
        }
        C3171h c3171hM1587a = m1587a(i);
        return c3171hM1587a != null && c3171hM1587a.m2193i();
    }

    /* JADX INFO: renamed from: b */
    public final int m1628b(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "parseViewabilityResponseValue ", this));
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

    /* JADX INFO: renamed from: a */
    public static final void m1540a(Context context, AbstractC2928Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2802H9 c2802h9 = AbstractC2787G9.f1056a;
        AdConfig adConfig = this$0.f1429b;
        c2802h9.getClass();
        try {
            if (!Omid.isActive()) {
                Omid.activate(context);
            } else {
                c2802h9.m1151a(adConfig);
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ void m1544a(AbstractC2928Q0 abstractC2928Q0, C3171h c3171h, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        abstractC2928Q0.getClass();
        m1550a(c3171h, gestureDetectorOnGestureListenerC3049Ya);
    }

    /* JADX INFO: renamed from: a */
    public final void m1600a(AdConfig adConfig) {
        this.f1429b = adConfig;
    }

    /* JADX INFO: renamed from: a */
    public final void m1596a(Handler handler) {
        this.f1439l = handler;
    }

    /* JADX INFO: renamed from: a */
    public final void m1609a(C3406w9 c3406w9) {
        this.f1446s = c3406w9;
    }

    /* JADX INFO: renamed from: a */
    public final void m1594a(long j) {
        this.f1452y = j;
    }

    /* JADX INFO: renamed from: a */
    public final void m1617a(TreeSet<Integer> treeSet) {
        Intrinsics.checkNotNullParameter(treeSet, "<set-?>");
        this.f1453z = treeSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019a  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1595a(android.content.Context r13, com.inmobi.media.C3038Y r14, com.inmobi.media.AbstractC2748E0 r15) {
        /*
            Method dump skipped, instruction units count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2928Q0.m1595a(android.content.Context, com.inmobi.media.Y, com.inmobi.media.E0):void");
    }

    /* JADX INFO: renamed from: d */
    public final Set m1657d(int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getViewabilityTrackers ", this));
        }
        HashMap map = this.f1436i;
        if (map != null) {
            return (Set) map.get(Integer.valueOf(i));
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public void mo903a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "setContext ", this));
        }
        this.f1430c = new WeakReference(context);
    }

    /* JADX INFO: renamed from: c */
    public final void m1656c(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "setIsAssetReady ", this));
        }
        this.f1443p = z;
    }

    /* JADX INFO: renamed from: g */
    public void mo1231g() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "clear ", this));
        }
        if (this.f1442o) {
            return;
        }
        this.f1442o = true;
        Handler handler = this.f1439l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "clearAdPods ", this));
        }
        if (this.f1417A) {
            m1675h();
            this.f1434g.clear();
            this.f1450w = 0;
            this.f1451x = 0;
            this.f1453z.clear();
        }
        C2843K5 c2843k5 = this.f1421E;
        if (c2843k5 != null) {
            c2843k5.f1162b = 0;
        }
        HashMap map = this.f1436i;
        if (map != null) {
            map.clear();
        }
        mo1684k0();
        m1658d((byte) 0);
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f53).m2153d("Q0", "AdUnit " + this + " state - CREATED");
        }
        C2687A c2687a = this.f1419C;
        int iHashCode = hashCode();
        c2687a.getClass();
        SparseArray sparseArray = C2687A.f807b;
        sparseArray.remove(iHashCode);
        Intrinsics.checkNotNullExpressionValue("A", "TAG");
        sparseArray.size();
        this.f1444q = false;
        this.f1441n = null;
        this.f1440m = false;
        this.f1443p = false;
        this.f1445r = false;
        this.f1448u = null;
        this.f1417A = false;
    }

    /* JADX INFO: renamed from: k */
    public final void m1683k(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        List<String> listM2184c;
        int iIndexOf = this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya);
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("Q0", "fireLoadAdTokenUrlSuccessful : " + iIndexOf + ' ' + this);
        }
        C3171h c3171hM1587a = m1587a(iIndexOf);
        if (c3171hM1587a == null || (listM2184c = c3171hM1587a.m2184c(C3171h.LOAD_AD_TOKEN_URL)) == null) {
            return;
        }
        Iterator<String> it = listM2184c.iterator();
        while (it.hasNext()) {
            C3369u2.f2627a.m2484a(it.next(), true, this.f1437j);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1659d(AbstractC2748E0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdDisplayed ", this));
        }
        AdMetaInfo adMetaInfoM1686l = m1686l();
        if (adMetaInfoM1686l == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("Q0", "callback onAdDisplayed failed. ad meta info is null");
            }
            m1601a(listener, (short) 85);
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f53).m2147a("Q0", "callback - onAdDisplayed");
        }
        listener.mo876a(adMetaInfoM1686l);
    }

    /* JADX INFO: renamed from: a */
    public final void m1607a(InterfaceC3147f5 logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f1437j = logger;
        C2688A0 c2688a0M1694p = m1694p();
        c2688a0M1694p.getClass();
        Intrinsics.checkNotNullParameter(logger, "logger");
        c2688a0M1694p.f814f = logger;
        C2882N c2882n = this.f1420D;
        c2882n.getClass();
        Intrinsics.checkNotNullParameter(logger, "logger");
        c2882n.f1287f = logger;
    }

    /* JADX INFO: renamed from: l */
    public int m1685l(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getCurrentRenderingPodAdIndex ", this));
        }
        if (!this.f1417A) {
            return -1;
        }
        int iIndexOf = this.f1434g.indexOf(renderView);
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 == null) {
            return iIndexOf;
        }
        ((C3162g5) interfaceC3147f52).m2152c("Q0", AbstractC3420x8.m2595a("Q0", "TAG", "getCurrentRenderingPodAdIndex ", iIndexOf));
        return iIndexOf;
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: f */
    public void mo1188f(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "RenderView completed loading ad content, for index ").append(this.f1434g.indexOf(renderView)).append(' ').append(this).toString());
        }
    }

    /* JADX INFO: renamed from: a */
    public final C3093bb m1586a(int i, C3171h c3171h) {
        String strM2200p;
        String strM2199o;
        Boolean boolM2585o;
        String strM2205w;
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        C3138eb c3138eb = new C3138eb(((TelemetryConfig) AbstractC3001V4.m1873a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null)).getMaxTemplateEvents());
        C3038Y c3038y = this.f1447t;
        String strM1566E = m1566E();
        String str = (c3171h == null || (strM2205w = c3171h.m2205w()) == null) ? "" : strM2205w;
        C2843K5 c2843k5 = this.f1421E;
        int i2 = c2843k5 != null ? c2843k5.f1162b : 0;
        C3171h c3171hM1702u = m1702u();
        if (c3171hM1702u == null || (strM2200p = c3171hM1702u.m2200p()) == null) {
            strM2200p = "";
        }
        C3171h c3171hM1702u2 = m1702u();
        if (c3171hM1702u2 == null || (strM2199o = c3171hM1702u2.m2199o()) == null) {
            strM2199o = "";
        }
        C3412x0 c3412x0 = this.f1448u;
        return new C3093bb(c3038y, strM1566E, str, i2, strM2200p, strM2199o, (c3412x0 == null || (boolM2585o = c3412x0.m2585o()) == null) ? false : boolM2585o.booleanValue(), i, this.f1425I.f1524j, c3138eb);
    }

    /* JADX INFO: renamed from: c */
    public final void m1650c(C3412x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdFetchSuccessful ", this));
        }
        if (this.f1428a == 1) {
            this.f1448u = adSet;
        }
        if (!this.f1442o && m1700t() != null) {
            mo907a(adSet);
            return;
        }
        m1639b((short) 2185);
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("Q0", "adUnit is destroyed");
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1632b(InMobiAdRequestStatus requestStatus, boolean z, short s) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("Q0", "handleAdLoadFailure " + this + " errorCode - " + ((int) s));
        }
        if (this.f1428a == 1 && z) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("Q0", AbstractC3420x8.m2595a("Q0", "TAG", "load failed - ", s));
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2153d("Q0", "AdUnit " + this + " state - FAILED");
            }
            m1658d((byte) 3);
            m1629b((byte) 1);
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo878a(this, requestStatus);
        } else {
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2146a();
            }
        }
        if (s != 0) {
            m1639b(s);
        }
    }

    /* JADX INFO: renamed from: a */
    public final Pair<String, Short> m1589a(boolean z, boolean z2, boolean z3) {
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

    /* JADX INFO: renamed from: d */
    public final void m1660d(C3412x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAuctionNotClosed ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleAuctionNotClosed ", this));
        }
        if (this.f1428a == 1) {
            this.f1448u = adSet;
            this.f1417A = adSet != null ? adSet.m2584n() : false;
            AbstractC2748E0 abstractC2748E0M1697r = m1697r();
            if (abstractC2748E0M1697r != null) {
                abstractC2748E0M1697r.m975a(this.f1447t, adSet);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1550a(C3171h c3171h, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        AdQualityControl adQualityControl;
        C3262n0 adQualityManager;
        if (c3171h == null || (adQualityControl = c3171h.m2188e()) == null || gestureDetectorOnGestureListenerC3049Ya == null || (adQualityManager = gestureDetectorOnGestureListenerC3049Ya.getAdQualityManager()) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(adQualityControl, "adQualityControl");
        adQualityManager.m2305a("adQuality session setup");
        if (!adQualityManager.f2356a.getEnabled()) {
            adQualityManager.m2305a("config kill switch - false. ad quality will skip");
            return;
        }
        if (adQualityManager.f2358c.get()) {
            adQualityManager.m2305a("session already started. skip");
            return;
        }
        adQualityManager.m2305a("verifying control flags");
        String beacon = adQualityControl.getBeacon();
        if (beacon != null && beacon.length() == 0) {
            adQualityManager.m2305a("no beacon received. aborting...");
            ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
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
                        adQualityManager.m2305a("session end - cleanup");
                        adQualityManager.f2362g = null;
                        adQualityManager.f2361f.clear();
                        adQualityManager.f2358c.set(false);
                        adQualityManager.f2359d.set(false);
                        adQualityManager.m2305a("ad quality session is already in progress. skipping...");
                        return;
                    }
                } catch (InterruptedException unused) {
                    scheduledExecutorService.shutdownNow();
                    Thread.currentThread().interrupt();
                    adQualityManager.m2305a("session end - cleanup");
                    adQualityManager.f2362g = null;
                    adQualityManager.f2361f.clear();
                    adQualityManager.f2358c.set(false);
                    adQualityManager.f2359d.set(false);
                    adQualityManager.m2305a("ad quality session is already in progress. skipping...");
                    return;
                }
            }
            adQualityManager.m2305a("session end - cleanup");
            adQualityManager.f2362g = null;
            adQualityManager.f2361f.clear();
            adQualityManager.f2358c.set(false);
            adQualityManager.f2359d.set(false);
            adQualityManager.m2305a("ad quality session is already in progress. skipping...");
            return;
        }
        adQualityManager.f2362g = adQualityControl;
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: i */
    public void mo1232i(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "RenderView visible, for index ").append(this.f1434g.indexOf(renderView)).append(' ').append(this).toString());
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1665e(AbstractC2748E0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onFetchSuccess ", this));
        }
        m1705v0();
        AdMetaInfo adMetaInfoM1686l = m1686l();
        if (adMetaInfoM1686l == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("Q0", "ad meta info null. fail");
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2106);
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f53).m2147a("Q0", "callback - onAdFetchSuccess");
        }
        listener.mo882b(adMetaInfoM1686l);
    }

    /* JADX INFO: renamed from: c */
    public void mo1651c(String monetizationContext) {
        Intrinsics.checkNotNullParameter(monetizationContext, "monetizationContext");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "setMonetizationContext ", this));
        }
        this.f1447t.m1930b(monetizationContext);
    }

    /* JADX INFO: renamed from: a */
    public final C3171h m1587a(int i) {
        Iterable iterableEmptyList;
        LinkedList<C3171h> linkedListM2576f;
        LinkedList<C3171h> linkedListM2576f2;
        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
        toString();
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 == null || (linkedListM2576f2 = c3412x0.m2576f()) == null || (iterableEmptyList = CollectionsKt.getIndices(linkedListM2576f2)) == null) {
            iterableEmptyList = CollectionsKt.emptyList();
        }
        if (CollectionsKt.contains(iterableEmptyList, Integer.valueOf(i))) {
            C3412x0 c3412x02 = this.f1448u;
            if (c3412x02 != null && (linkedListM2576f = c3412x02.m2576f()) != null) {
                return linkedListM2576f.get(i);
            }
        } else {
            C3412x0 c3412x03 = this.f1448u;
            if (c3412x03 != null) {
                return c3412x03.m2586p();
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final void m1601a(AbstractC2748E0 listener, short s) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdShowFailed ", this));
        }
        m1655c(s);
        listener.mo885d();
    }

    /* JADX INFO: renamed from: h */
    public final void m1675h() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "destroyAllContainer ", this));
        }
        int size = this.f1434g.size();
        for (int i = 0; i < size; i++) {
            m1541a(this, i, false, 2, null);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1635b(C3412x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "loadResponse ", this));
        }
        m1650c(adSet);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: g */
    public void mo1189g(final GestureDetectorOnGestureListenerC3049Ya renderView) {
        Handler handler;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onRenderViewSignaledAdFailed ", this));
        }
        if (this.f1442o || m1700t() == null || (handler = this.f1439l) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2928Q0.m1554b(this.f$0, renderView);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public void mo1221a(int i, GestureDetectorOnGestureListenerC3049Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "Show pod ad with index : " + i + " from creative: " + this.f1434g.indexOf(renderView) + ' ' + this);
        }
        if (i >= 0) {
            this.f1451x = i;
        } else {
            this.f1451x++;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m1661d(String podAdContext) {
        Intrinsics.checkNotNullParameter(podAdContext, "podAdContext");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "setPodAdContext ", this));
        }
        if (this.f1417A) {
            this.f1418B = podAdContext;
        }
    }

    @Override // com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public void mo1605a(GestureDetectorOnGestureListenerC3049Ya renderView, Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "closeCurrentPodAd ", this));
        }
    }

    /* JADX INFO: renamed from: e */
    public final boolean m1667e(byte b) {
        int iM1108Y;
        Integer num;
        long j;
        Integer num2;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "startTimer ", this));
        }
        if (b == 0) {
            C3045Y6 c3045y6 = this.f1422F;
            if (c3045y6 != null && (num2 = c3045y6.f1682d) != null) {
                iM1108Y = num2.intValue();
                j = iM1108Y;
            }
            j = 15000;
        } else if (b == 1) {
            C3045Y6 c3045y62 = this.f1422F;
            if (c3045y62 != null) {
                iM1108Y = c3045y62.f1681c;
                j = iM1108Y;
            }
            j = 15000;
        } else {
            if (b == 2) {
                C3045Y6 c3045y63 = this.f1422F;
                if (c3045y63 != null && (num = c3045y63.f1683e) != null) {
                    iM1108Y = num.intValue();
                }
                j = 15000;
            } else if (b == 4) {
                C2760Ec c2760Ec = this.f1431d;
                Intrinsics.checkNotNull(c2760Ec);
                iM1108Y = c2760Ec.m1108Y();
            } else {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b("Q0", "Invalid value for timeOutScenario passed!. Please pass a valid value");
                }
                return false;
            }
            j = iM1108Y;
        }
        C3439yc c3439yc = this.f1449v;
        if (c3439yc == null) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue("yc", "TAG");
        if (c3439yc.f2772b.containsKey(Byte.valueOf(b))) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            Timer timer = (Timer) c3439yc.f2772b.get(Byte.valueOf(b));
            if (timer != null) {
                timer.cancel();
                c3439yc.f2772b.remove(Byte.valueOf(b));
            }
        }
        try {
            Timer timer2 = new Timer("yc");
            c3439yc.f2772b.put(Byte.valueOf(b), timer2);
            timer2.schedule(new C3424xc(c3439yc, b), j);
            return true;
        } catch (InternalError e) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            e.toString();
            return false;
        } catch (OutOfMemoryError unused) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "yc", "Could not execute timer due to OutOfMemory.");
            c3439yc.f2771a.m1648c(b);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0255  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1626a(com.inmobi.media.C3171h r27, int r28, boolean r29) {
        /*
            Method dump skipped, instruction units count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2928Q0.m1626a(com.inmobi.media.h, int, boolean):boolean");
    }

    /* JADX INFO: renamed from: f */
    public final void m1669f() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "checkInteractiveAndSignal ", this));
        }
        if (this.f1440m && this.f1443p && this.f1444q) {
            mo915r0();
        }
    }

    /* JADX INFO: renamed from: a */
    public final HashMap m1588a(JSONArray jSONArray) {
        JSONObject jSONObject;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "parseInMobiViewabilityParams ", this));
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
            int iM1628b = m1628b(strOptString);
            if (iM1628b != -1) {
                map.put("time", Integer.valueOf(iM1628b));
            }
            String strOptString2 = jSONObject.optString("view");
            Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
            int iM1628b2 = m1628b(strOptString2);
            if (iM1628b2 != -1) {
                map.put("view", Integer.valueOf(iM1628b2));
            }
            String strOptString3 = jSONObject.optString("pixel");
            Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
            int iM1628b3 = m1628b(strOptString3);
            if (iM1628b3 != -1) {
                map.put("pixel", Integer.valueOf(iM1628b3));
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
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("Q0", AbstractC2733D0.m936a(e, AbstractC3208j6.m2261a("Q0", "TAG", "Exception while parsing MoatParams from response : ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m1555c(AbstractC2928Q0 abstractC2928Q0) {
        int i;
        String str;
        InterfaceC3147f5 interfaceC3147f5 = abstractC2928Q0.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "startAdFetchWorker ", abstractC2928Q0));
        }
        C2955S0 c2955s0 = abstractC2928Q0.f1425I;
        c2955s0.getClass();
        c2955s0.f1518d = SystemClock.elapsedRealtime();
        InterfaceC3147f5 interfaceC3147f52 = abstractC2928Q0.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "doAdLoadWork ", abstractC2928Q0));
        }
        try {
            abstractC2928Q0.m1658d((byte) 1);
            InterfaceC3147f5 interfaceC3147f53 = abstractC2928Q0.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2153d("Q0", "AdUnit " + abstractC2928Q0 + " state - LOADING");
            }
            InterfaceC3147f5 interfaceC3147f54 = abstractC2928Q0.f1437j;
            if (interfaceC3147f54 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f54).m2152c("Q0", "printPublisherTestId " + abstractC2928Q0);
            }
            C2835Jc.f1140a.m1204d();
            i = 0;
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f55 = abstractC2928Q0.f1437j;
            if (interfaceC3147f55 != null) {
                ((C3162g5) interfaceC3147f55).m2151b("Q0", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("Q0", "TAG", "Load failed with unexpected error: ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            abstractC2928Q0.m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2000);
        }
        if (abstractC2928Q0.m1667e((byte) 0)) {
            C2687A c2687a = abstractC2928Q0.f1419C;
            int iHashCode = abstractC2928Q0.hashCode();
            C2852L c2852l = new C2852L(abstractC2928Q0, abstractC2928Q0.f1437j);
            c2687a.getClass();
            C2687A.m825a(iHashCode, c2852l);
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
        InterfaceC3147f5 interfaceC3147f56 = abstractC2928Q0.f1437j;
        if (interfaceC3147f56 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f56).m2152c("Q0", str);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m1603a(C3038Y placement, boolean z, short s) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAssetAvailabilityChanged ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        if (s != 0) {
            m1639b(s);
        }
        mo905a(placement, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0134  */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final short m1646c(com.inmobi.media.AbstractC2748E0 r25) {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2928Q0.m1646c(com.inmobi.media.E0):short");
    }

    /* JADX INFO: renamed from: b */
    public void mo910b(AbstractC2748E0 abstractC2748E0) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleAdScreenDisplayed ", this));
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo905a(C3038Y placement, boolean z) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleAssetAvailabilityChanged ", this));
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q0", "Asset availability changed (" + z + ") for placement ID (" + placement + ')');
        }
    }

    /* JADX INFO: renamed from: d */
    public static final void m1557d(AbstractC2928Q0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (6 == this$0.f1428a) {
            this$0.m1622a(true, (short) 2158);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1662d(boolean z) {
        this.f1417A = z;
    }

    /* JADX INFO: renamed from: a */
    public void mo907a(C3412x0 adSet) {
        LinkedList<C3171h> linkedListM2576f;
        LinkedList<C3171h> linkedListM2576f2;
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleAdFetchSuccessful ", this));
        }
        if (this.f1428a == 1) {
            this.f1448u = adSet;
            int size = 0;
            this.f1417A = adSet != null ? adSet.m2584n() : false;
            C3412x0 c3412x0 = this.f1448u;
            if (c3412x0 != null && (linkedListM2576f2 = c3412x0.m2576f()) != null) {
                size = linkedListM2576f2.size();
            }
            this.f1434g = new ArrayList(size);
            C3412x0 c3412x02 = this.f1448u;
            if (c3412x02 != null && (linkedListM2576f = c3412x02.m2576f()) != null) {
                for (C3171h c3171h : linkedListM2576f) {
                    this.f1434g.add(null);
                }
            }
            C3171h c3171hM2586p = adSet.m2586p();
            if (c3171hM2586p == null) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b("Q0", "top ad is null. failed.");
                }
                m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2119);
                return;
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2147a("Q0", "starting executor. parsing ad response");
            }
            C2687A c2687a = this.f1419C;
            int iHashCode = hashCode();
            C2892N9 c2892n9 = new C2892N9(this, c3171hM2586p, adSet, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), this.f1437j);
            c2687a.getClass();
            C2687A.m825a(iHashCode, c2892n9);
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "incorrect state - ").append((int) this.f1428a).toString());
        }
        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2118);
    }

    @Override // com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public boolean mo1625a(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 == null) {
            return false;
        }
        ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "hasNextAdInAdPod ", this));
        return false;
    }

    /* JADX INFO: renamed from: b */
    public static final void m1554b(AbstractC2928Q0 this$0, GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.mo1223a(renderView, (short) 2137);
    }

    /* JADX INFO: renamed from: b */
    public void m1634b(final GestureDetectorOnGestureListenerC3049Ya renderView, final short s) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onRenderViewError ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        try {
            Handler handler = this.f1439l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2928Q0.m1543a(this.f$0, renderView, s);
                    }
                });
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("Q0", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("Q0", "TAG", "Loading ad markup into container encountered an unexpected error: ")));
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m1670f(int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "resetCurrentRenderingIndex ", this));
        }
        this.f1451x = i;
    }

    /* JADX INFO: renamed from: c */
    public static final void m1556c(AbstractC2928Q0 this$0, GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.mo1233m(renderView);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: c */
    public void mo1647c() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdScreenDisplayFailed ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("Q0", "Ad failed to display");
        }
        Handler handler = this.f1439l;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2928Q0.m1557d(this.f$0);
                }
            });
        }
    }

    @Override // com.inmobi.media.InterfaceC3409wc
    /* JADX INFO: renamed from: a */
    public void mo1591a(byte b) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onTimeOut ", this));
        }
        if (b == 0) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "AdRequestTimeOut by timer, Adstate=").append((int) this.f1428a).toString());
            }
            if (this.f1428a != 3) {
                m1602a(this.f1447t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT), (short) 2109);
                return;
            }
            return;
        }
        if (b != 2 && b != 1) {
            if (b == 4) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f53).m2147a("Q0", "Show RequestTimeOut by show timer");
                }
                AbstractC2748E0 abstractC2748E0M1697r = m1697r();
                if (abstractC2748E0M1697r != null) {
                    abstractC2748E0M1697r.mo987g();
                    return;
                }
                return;
            }
            if (b == 3) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f54).m2147a("Q0", "Bitmap TimeOut not handled here");
                    return;
                }
                return;
            }
            InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
            if (interfaceC3147f55 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f55).m2147a("Q0", "Unknown TimeOut ignored");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
        if (interfaceC3147f56 != null) {
            ((C3162g5) interfaceC3147f56).m2147a("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "Internal LoadTimeOut by timer, Adstate=").append((int) this.f1428a).toString());
        }
        if (this.f1428a != 3) {
            this.f1423G.removeCallbacksAndMessages(null);
            InterfaceC3147f5 interfaceC3147f57 = this.f1437j;
            if (interfaceC3147f57 != null) {
                ((C3162g5) interfaceC3147f57).m2147a("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "adUnitEventListener=").append(m1697r()).append(", Adstate=").append((int) this.f1428a).toString());
            }
            byte b2 = this.f1428a;
            if (2 == b2) {
                m1689m0();
                boolean z = C3301p9.f2439a;
                m1639b(C3301p9.m2342a(false) == null ? (short) 2139 : (short) 2203);
                AbstractC2748E0 abstractC2748E0M1697r2 = m1697r();
                if (abstractC2748E0M1697r2 != null) {
                    abstractC2748E0M1697r2.mo878a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    return;
                }
                return;
            }
            if (1 == b2) {
                m1689m0();
                m1639b((short) 2138);
                AbstractC2748E0 abstractC2748E0M1697r3 = m1697r();
                if (abstractC2748E0M1697r3 != null) {
                    abstractC2748E0M1697r3.mo878a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT));
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1653c(HashMap map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "constructTelemetryPayload ", this));
        }
        map.put("adType", mo914q());
        map.put("networkType", C2751E3.m1005q());
        map.put("plId", Long.valueOf(this.f1447t.m1938l()));
        String strM1939m = this.f1447t.m1939m();
        if (strM1939m != null) {
            map.put("plType", strM1939m);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1655c(short s) {
        C3171h c3171hM1688m;
        Boolean boolM2585o;
        String strM2200p;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdShowFailed ", this));
        }
        HashMap map = new HashMap();
        long j = this.f1425I.f1519e;
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        map.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        map.put("errorCode", Short.valueOf(s));
        map.put("markupType", m1566E());
        if (this.f1417A) {
            c3171hM1688m = m1587a(this.f1451x);
        } else {
            c3171hM1688m = m1688m();
        }
        if (c3171hM1688m != null && (strM2200p = c3171hM1688m.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        if (m1578S().length() > 0) {
            map.put("metadataBlob", m1578S());
        }
        m1653c(map);
        m1654c((Map) map);
        m1652c("AdShowFailed", map);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: b */
    public void mo1637b(HashMap<Object, Object> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdRewardActionCompleted ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q0", "Ad reward action completed. Params:" + rewards);
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo983b(rewards);
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo908a(boolean z, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onDidParseAfterFetch ", this));
        }
        if (z) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2147a("Q0", "Ad fetch successful");
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2153d("Q0", "AdUnit " + this + " state - AVAILABLE");
            }
            m1658d((byte) 2);
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f54).m2151b("Q0", "onComplete parse success");
        }
        m1632b(status, true, (short) 0);
    }

    /* JADX INFO: renamed from: a */
    public final void m1602a(C3038Y placement, InMobiAdRequestStatus requestStatus, short s) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdFetchFailed ", this));
        }
        if (!this.f1442o && m1700t() != null && this.f1428a != 3) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleMarkupFetchFailure ", this));
            }
            try {
                if (Intrinsics.areEqual(this.f1447t, placement) && this.f1428a == 1) {
                    InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                    if (interfaceC3147f53 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                        ((C3162g5) interfaceC3147f53).m2151b("Q0", "Failed to fetch ad for placement id: " + placement + ", reason - " + requestStatus.getMessage());
                    }
                    String str = "MarkupFetch failed reason is: " + requestStatus.getMessage();
                    InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                    if (interfaceC3147f54 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                        ((C3162g5) interfaceC3147f54).m2151b("Q0", str);
                    }
                    InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                    if (interfaceC3147f55 != null) {
                        Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                        ((C3162g5) interfaceC3147f55).m2153d("Q0", "AdUnit " + this + " state - FAILED");
                    }
                    m1658d((byte) 3);
                    m1629b((byte) 1);
                    if (s != 0) {
                        m1620a(s);
                    }
                    AbstractC2748E0 abstractC2748E0M1697r = m1697r();
                    if (abstractC2748E0M1697r != null) {
                        abstractC2748E0M1697r.mo973a(requestStatus);
                        return;
                    }
                    InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
                    if (interfaceC3147f56 != null) {
                        ((C3162g5) interfaceC3147f56).m2146a();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f57 = this.f1437j;
                if (interfaceC3147f57 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f57).m2148a("Q0", "onAdFetchFailed with error: ", e);
                }
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                return;
            }
        }
        InterfaceC3147f5 interfaceC3147f58 = this.f1437j;
        if (interfaceC3147f58 != null) {
            ((C3162g5) interfaceC3147f58).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "callback ignored - isDestroyed - ").append(this.f1442o).append(" context - ").append(m1700t()).append(" state- ").append((int) this.f1428a).toString());
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1654c(Map map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "updateIdsInTelemetryPayload ", this));
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m != null) {
            map.put("creativeId", "\"" + c3171hM1688m.m2199o() + Typography.quote);
            map.put("impressionId", "\"" + c3171hM1688m.m2202s() + Typography.quote);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1639b(short s) {
        long j;
        long jElapsedRealtime;
        Boolean boolM2585o;
        String strM2200p;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdLoadFailedEvent ", this));
        }
        HashMap map = new HashMap();
        if (s == 2138 || s == 2109) {
            j = this.f1425I.f1518d;
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else if (s == 2139) {
            j = this.f1425I.f1521g;
            ScheduledExecutorService scheduledExecutorService2 = AbstractC3037Xc.f1652a;
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else {
            j = this.f1425I.f1517c;
            ScheduledExecutorService scheduledExecutorService3 = AbstractC3037Xc.f1652a;
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        map.put("latency", Long.valueOf(jElapsedRealtime - j));
        map.put("errorCode", Short.valueOf(s));
        map.put("markupType", m1566E());
        C3171h c3171hM1702u = m1702u();
        if (c3171hM1702u != null && (strM2200p = c3171hM1702u.m2200p()) != null) {
            map.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C2843K5 c2843k5 = this.f1421E;
        if (c2843k5 != null) {
            map.put("retryCount", Integer.valueOf(c2843k5.f1162b));
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            map.put("isRewarded", boolM2585o);
        }
        if (m1578S().length() > 0) {
            map.put("metadataBlob", m1578S());
        }
        m1653c(map);
        m1654c((Map) map);
        m1652c("AdLoadFailed", map);
    }

    /* JADX INFO: renamed from: a */
    public final void m1622a(boolean z, short s) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("Q0", "handleAdShowFailure " + this + " errorCode - " + ((int) s));
        }
        if (z) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2153d("Q0", "AdUnit " + this + " state - FAILED");
            }
            m1658d((byte) 3);
            m1629b((byte) 4);
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo885d();
        }
        if (s != 0) {
            m1655c(s);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1598a(InMobiAdRequestStatus requestStatus, boolean z, short s) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("Q0", "handleAdFetchFailure " + this + " errorCode - " + ((int) s));
        }
        if (this.f1428a == 3 && z) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2153d("Q0", "AdUnit " + this + " state - FAILED");
            }
            m1658d((byte) 3);
            m1629b((byte) 1);
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo878a(this, requestStatus);
        }
        if (s != 0) {
            m1620a(s);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1616a(Map<String, String> map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("Q0", "setPublisherSuppliedExtras " + this + " - " + map);
        }
        this.f1447t.m1928a(map);
    }

    /* JADX INFO: renamed from: a */
    public final void m1619a(final JSONObject responseJson) {
        Intrinsics.checkNotNullParameter(responseJson, "responseJson");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAuctionClosed ", this));
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2928Q0.m1548a(this.f$0, responseJson);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public final void m1638b(Map<String, Object> payload) {
        Boolean boolM2585o;
        String strM2200p;
        Intrinsics.checkNotNullParameter(payload, "payload");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitServerError ", this));
        }
        if (this.f1432e == null) {
            return;
        }
        if (payload.get("reason") == null) {
            payload.put("reason", "");
        }
        C3171h c3171hM1702u = m1702u();
        if (c3171hM1702u != null && (strM2200p = c3171hM1702u.m2200p()) != null) {
            payload.put("creativeType", "\"" + strM2200p + Typography.quote);
        }
        C2843K5 c2843k5 = this.f1421E;
        if (c2843k5 != null) {
            payload.put("retryCount", Integer.valueOf(c2843k5.f1162b));
        }
        C3412x0 c3412x0 = this.f1448u;
        if (c3412x0 != null && (boolM2585o = c3412x0.m2585o()) != null) {
            payload.put("isRewarded", boolM2585o);
        }
        m1654c(payload);
        C2688A0 c2688a0 = this.f1432e;
        Intrinsics.checkNotNull(c2688a0);
        c2688a0.m832a(payload);
    }

    /* JADX INFO: renamed from: c */
    public final void m1652c(String eventType, Map<String, Object> kv) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitTelemetryEvent ", this));
        }
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b(eventType, kv, EnumC3259mc.f2349a);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1548a(AbstractC2928Q0 this$0, JSONObject responseJson) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(responseJson, "$responseJson");
        C2687A c2687a = this$0.f1419C;
        int iHashCode = this$0.hashCode();
        C3398w1 c3398w1 = new C3398w1(this$0, responseJson, this$0.f1437j);
        c2687a.getClass();
        C2687A.m825a(iHashCode, c3398w1);
    }

    /* JADX INFO: renamed from: a */
    public final void m1618a(final Function0 onSuccess, final Function1 onMaxRetryReached) {
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onMaxRetryReached, "onMaxRetryReached");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        Object c2904o6 = null;
        if (interfaceC3147f5 != null) {
            StringBuilder sbM2261a = AbstractC3208j6.m2261a("Q0", "TAG", "loadWithRetry ");
            C2843K5 c2843k5 = this.f1421E;
            ((C3162g5) interfaceC3147f5).m2152c("Q0", sbM2261a.append(c2843k5 != null ? Integer.valueOf(c2843k5.f1162b) : null).toString());
        }
        C2843K5 c2843k52 = this.f1421E;
        if (c2843k52 != null) {
            boolean z = C3301p9.f2439a;
            EnumC3101c4 enumC3101c4M2342a = C3301p9.m2342a(false);
            if (enumC3101c4M2342a == null) {
                c2904o6 = C2877M9.f1265a;
            } else {
                int i = c2843k52.f1162b + 1;
                c2843k52.f1162b = i;
                if (i >= c2843k52.f1161a.f1680b) {
                    c2904o6 = new C2904O6(enumC3101c4M2342a);
                } else {
                    c2904o6 = C3437ya.f2769a;
                }
            }
        }
        if (c2904o6 instanceof C2904O6) {
            onMaxRetryReached.invoke(((C2904O6) c2904o6).f1335a);
            return;
        }
        if (c2904o6 instanceof C2877M9) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2152c("Q0", "load with retry success");
            }
            onSuccess.invoke();
            return;
        }
        if (!(c2904o6 instanceof C3437ya)) {
            if (c2904o6 == null) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f53).m2152c("Q0", "shouldProceedToLoad result null. starting as if we have internet.");
                }
                onSuccess.invoke();
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f54).m2152c("Q0", "load failed, retrying");
        }
        this.f1423G.postDelayed(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2928Q0.m1547a(this.f$0, onSuccess, onMaxRetryReached);
            }
        }, this.f1422F != null ? r7.f1679a : 1000L);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1547a(AbstractC2928Q0 this$0, Function0 onSuccess, Function1 onMaxRetryReached) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(onMaxRetryReached, "$onMaxRetryReached");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
        if (interfaceC3147f5 != null) {
            StringBuilder sbM2261a = AbstractC3208j6.m2261a("Q0", "TAG", "Loading from retry Handler ");
            C2843K5 c2843k5 = this$0.f1421E;
            ((C3162g5) interfaceC3147f5).m2152c("Q0", sbM2261a.append(c2843k5 != null ? Integer.valueOf(c2843k5.f1162b) : null).toString());
        }
        this$0.m1618a(onSuccess, onMaxRetryReached);
    }

    /* JADX INFO: renamed from: b */
    public final void m1631b(long j) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdGetSignalsSucceeded ", this));
        }
        this.f1445r = false;
        HashMap map = new HashMap();
        map.put("adType", mo914q());
        map.put("latency", Long.valueOf(System.currentTimeMillis() - j));
        map.put("networkType", C2751E3.m1005q());
        m1652c("AdGetSignalsSucceeded", map);
    }

    /* JADX INFO: renamed from: c */
    public void m1648c(byte b) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onOOM ", this));
        }
        if (b == 0) {
            m1602a(this.f1447t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2110);
            return;
        }
        if (b == 2 || b == 1) {
            byte b2 = this.f1428a;
            if (b2 == 0 || 1 == b2 || 2 == b2) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a("Q0", "onOOM INTERNAL_LOAD_TIME_OUT or PRE_LOAD_TIME_OUT");
                }
                this.f1423G.removeCallbacksAndMessages(null);
                m1689m0();
                m1639b((short) 2112);
                AbstractC2748E0 abstractC2748E0M1697r = m1697r();
                if (abstractC2748E0M1697r != null) {
                    abstractC2748E0M1697r.mo878a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
                    return;
                }
                return;
            }
            return;
        }
        if (b == 4) {
            AbstractC2748E0 abstractC2748E0M1697r2 = m1697r();
            if (abstractC2748E0M1697r2 != null) {
                abstractC2748E0M1697r2.mo987g();
                return;
            }
            return;
        }
        if (b == 3) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2147a("Q0", AbstractC3420x8.m2595a("Q0", "TAG", "OOM Timeout scenario ignored for : ", b));
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2147a("Q0", AbstractC3420x8.m2595a("Q0", "TAG", "OOM Timeout scenario ignored for : ", b));
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo1623a(byte[] bArr) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "load response ", this));
        }
        C2955S0 c2955s0 = this.f1425I;
        c2955s0.getClass();
        c2955s0.f1517c = SystemClock.elapsedRealtime();
        C2955S0 c2955s02 = this.f1425I;
        c2955s02.getClass();
        c2955s02.f1522h = SystemClock.elapsedRealtime();
        if (m1583Y()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2147a("Q0", "isBlockingStateForLoadWithResponse - blocking");
                return;
            }
            return;
        }
        if (bArr != null && bArr.length != 0) {
            if (this.f1446s == null) {
                this.f1446s = new C3406w9(this);
            }
            C2883N0 c2883n0 = new C2883N0(this, bArr);
            if (m1695p0()) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                    ((C3162g5) interfaceC3147f53).m2147a("Q0", "skipping internet check on load(byte[])");
                }
                c2883n0.invoke();
                return;
            }
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f54).m2147a("Q0", "starting load with retry");
            }
            m1618a(c2883n0, new C2868M0(this));
            return;
        }
        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INVALID_RESPONSE_IN_LOAD), true, (short) 2143);
        InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
        if (interfaceC3147f55 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f55).m2147a("Q0", "null response. failing");
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1636b(java.lang.String r6, java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2928Q0.m1636b(java.lang.String, java.util.Map):void");
    }

    /* JADX INFO: renamed from: b */
    public final void m1629b(byte b) {
        C3439yc c3439yc;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "cancelTimer ", this));
        }
        if (b == 1 && (c3439yc = this.f1449v) != null) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            Timer timer = (Timer) c3439yc.f2772b.get((byte) 2);
            if (timer != null) {
                timer.cancel();
                c3439yc.f2772b.remove((byte) 2);
            }
        }
        C3439yc c3439yc2 = this.f1449v;
        if (c3439yc2 != null) {
            Intrinsics.checkNotNullExpressionValue("yc", "TAG");
            Timer timer2 = (Timer) c3439yc2.f2772b.get(Byte.valueOf(b));
            if (timer2 != null) {
                timer2.cancel();
                c3439yc2.f2772b.remove(Byte.valueOf(b));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1597a(InMobiAdRequestStatus requestStatus, short s) {
        Intrinsics.checkNotNullParameter(requestStatus, "requestStatus");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("Q0", "loadResponseFailed " + this + " errorCode - " + ((int) s));
        }
        m1632b(requestStatus, true, s);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1624a(AbstractC2748E0 abstractC2748E0, long j) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "isBlockingStateForGetSignals ", this));
        }
        if (this.f1445r) {
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "getSignals() call is already in progress. Please wait for its execution to get complete");
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("Q0", "getSignals() call is already in progress. Please wait for its execution to get complete");
            }
            return true;
        }
        if (!mo1230f0()) {
            return false;
        }
        if (abstractC2748E0 != null) {
            abstractC2748E0.mo982b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
        }
        m1592a(2007, j);
        return true;
    }

    /* JADX INFO: renamed from: a */
    public final void m1614a(WeakReference<AbstractC2748E0> listenerWeakReference, short s, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(listenerWeakReference, "listenerWeakReference");
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onLoadAdMarkupFailed ", this));
        }
        m1658d((byte) 3);
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2153d("Q0", "AdUnit " + this + " state - FAILED");
        }
        m1629b((byte) 1);
        if (this.f1442o) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2151b("Q0", "AdUnit destroyed while onLoadAdMarkupFailed");
                return;
            }
            return;
        }
        AbstractC2748E0 abstractC2748E0 = listenerWeakReference.get();
        if (abstractC2748E0 != null) {
            if (Intrinsics.areEqual("int", mo914q())) {
                m1601a(abstractC2748E0, s);
                return;
            } else {
                m1639b(s);
                abstractC2748E0.mo878a(this, status);
                return;
            }
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f54).m2151b("Q0", "Listener was garbage collected.Unable to give callback");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1599a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        this.f1426J = watermarkData;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaMo1235w = mo1235w();
        if (gestureDetectorOnGestureListenerC3049YaMo1235w != null) {
            gestureDetectorOnGestureListenerC3049YaMo1235w.setWatermark(watermarkData);
        }
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m1541a(AbstractC2928Q0 abstractC2928Q0, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: destroyContainer");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        abstractC2928Q0.m1593a(i, z);
    }

    /* JADX INFO: renamed from: a */
    public final void m1593a(int i, boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("Q0", "Destroying container for index " + i + ' ' + this);
        }
        ArrayList list = this.f1434g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (i < 0 || i >= list.size()) {
            return;
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(i);
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            gestureDetectorOnGestureListenerC3049Ya.f1772t0.set(z);
            gestureDetectorOnGestureListenerC3049Ya.stopLoading();
            gestureDetectorOnGestureListenerC3049Ya.mo845b();
        }
        this.f1434g.set(i, null);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1606a(GestureDetectorOnGestureListenerC3049Ya renderView, String trackerName, Map<String, String> macros) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("Q0", "fireLandingPageTracker " + trackerName + ' ' + this);
        }
        C3171h c3171hM1587a = m1587a(this.f1434g.indexOf(renderView));
        if (c3171hM1587a != null) {
            List<String> listM2184c = c3171hM1587a.m2184c(trackerName);
            if (listM2184c == null) {
                return;
            }
            for (String str : listM2184c) {
                String strReplace$default = str;
                for (Map.Entry<String, String> entry : macros.entrySet()) {
                    strReplace$default = StringsKt.replace$default(strReplace$default, entry.getKey(), entry.getValue(), false, 4, (Object) null);
                }
                C3369u2.f2627a.m2484a(strReplace$default, true, this.f1437j);
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q0", "fireLandingPageTracker failed");
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1610a(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo977a(log);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1604a(GestureDetectorOnGestureListenerC3049Ya renderView, int i) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        this.f1434g.add(i, renderView);
        this.f1453z.add(Integer.valueOf(i));
    }

    /* JADX INFO: renamed from: b */
    public final void m1630b(int i, boolean z) {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "fireAdPodShowResult ", this));
        }
        ArrayList list = this.f1434g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (i < 0 || i >= list.size() || (gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(i)) == null) {
            return;
        }
        gestureDetectorOnGestureListenerC3049Ya.m1963b(z);
    }

    /* JADX INFO: renamed from: a */
    public void mo904a(AbstractC2748E0 abstractC2748E0) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "handleAdScreenDismissed ", this));
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo1223a(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, short s) {
        List<String> listM2184c;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "Render view signaled ad failed, for index ").append(this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya)).append(' ').append(this).toString());
        }
        if (gestureDetectorOnGestureListenerC3049Ya == null || !Intrinsics.areEqual(gestureDetectorOnGestureListenerC3049Ya.getMarkupType(), "htmlUrl")) {
            return;
        }
        int iIndexOf = this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya);
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("Q0", "fireLoadAdTokenUrlFailed : " + iIndexOf + ' ' + this);
        }
        C3171h c3171hM1587a = m1587a(iIndexOf);
        if (c3171hM1587a == null || (listM2184c = c3171hM1587a.m2184c(C3171h.LOAD_AD_TOKEN_URL_FAILURE)) == null) {
            return;
        }
        Iterator<String> it = listM2184c.iterator();
        while (it.hasNext()) {
            C3369u2.f2627a.m2484a(it.next(), true, this.f1437j);
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: b */
    public void mo1633b(GestureDetectorOnGestureListenerC3049Ya renderView) {
        List<String> listM2184c;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "fireClickTracker ", this));
        }
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C3171h c3171hM1587a = m1587a(this.f1434g.indexOf(renderView));
        if (((c3171hM1587a != null ? c3171hM1587a.m2200p() : null) != null && Intrinsics.areEqual(c3171hM1587a.m2200p(), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) || c3171hM1587a == null || (listM2184c = c3171hM1587a.m2184c("click")) == null) {
            return;
        }
        Iterator<String> it = listM2184c.iterator();
        while (it.hasNext()) {
            C3369u2.f2627a.m2484a(it.next(), true, this.f1437j);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1543a(AbstractC2928Q0 this$0, GestureDetectorOnGestureListenerC3049Ya renderView, short s) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        this$0.mo1223a(renderView, s);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1615a(HashMap<Object, Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onAdInteraction ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q0", "Ad interaction. Params: " + params);
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo978a(params);
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: c */
    public void mo1649c(GestureDetectorOnGestureListenerC3049Ya renderView) {
        List<String> listM2184c;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "fireImpressionTracker ", this));
        }
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C3171h c3171hM1587a = m1587a(this.f1434g.indexOf(renderView));
        if (((c3171hM1587a != null ? c3171hM1587a.m2200p() : null) != null && Intrinsics.areEqual(c3171hM1587a.m2200p(), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) || c3171hM1587a == null || (listM2184c = c3171hM1587a.m2184c("impression")) == null) {
            return;
        }
        for (String str : listM2184c) {
            C3334rc telemetryOnAdImpression = renderView.getTelemetryOnAdImpression();
            telemetryOnAdImpression.getClass();
            Intrinsics.checkNotNullParameter("adResponseTracker", "<set-?>");
            telemetryOnAdImpression.f2516e = "adResponseTracker";
            C3369u2.f2627a.m2485b(str, true, (AbstractC3026X1) new C2867M(this.f1420D, telemetryOnAdImpression), this.f1437j);
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1144a(final C3334rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onImpressionFiredFromTemplate ", this));
        }
        telemetryOnAdImpression.getClass();
        Intrinsics.checkNotNullParameter("imraid_impressionFired", "<set-?>");
        telemetryOnAdImpression.f2516e = "imraid_impressionFired";
        if (!this.f1442o && m1700t() != null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f52).m2147a("Q0", "onImpressionFiredFromTemplate");
            }
            Handler handler = this.f1439l;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.inmobi.media.Q0$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2928Q0.m1546a(this.f$0, telemetryOnAdImpression);
                    }
                });
                return;
            }
            return;
        }
        telemetryOnAdImpression.m2383b();
    }

    /* JADX INFO: renamed from: a */
    public static final void m1546a(AbstractC2928Q0 this$0, C3334rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "$telemetryOnAdImpression");
        this$0.f1420D.m1375a(telemetryOnAdImpression);
    }

    @Override // com.inmobi.media.AbstractC3078ab, com.inmobi.media.InterfaceC3009Vc
    /* JADX INFO: renamed from: a */
    public void mo1590a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onUserLeaveApplication ", this));
        }
        if (this.f1442o || m1700t() == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("Q0", "User left application");
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo988h();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1620a(short s) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdLoadDroppedAtSDK ", this));
        }
        HashMap map = new HashMap();
        map.put("errorCode", Short.valueOf(s));
        m1653c(map);
        m1652c("AdLoadDroppedAtSDK", map);
    }

    /* JADX INFO: renamed from: a */
    public final void m1592a(int i, long j) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "submitAdGetSignalsFailed ", this));
        }
        this.f1445r = false;
        HashMap map = new HashMap();
        map.put("adType", mo914q());
        map.put("latency", Long.valueOf(System.currentTimeMillis() - j));
        map.put("networkType", C2751E3.m1005q());
        map.put("errorCode", Integer.valueOf(i));
        m1652c("AdGetSignalsFailed", map);
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1613a(String eventType, Map<String, Object> kv) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onRenderViewRequestedAction ", this));
        }
        m1652c(eventType, kv);
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021c  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1608a(com.inmobi.media.C3171h r39) {
        /*
            Method dump skipped, instruction units count: 1083
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2928Q0.m1608a(com.inmobi.media.h):void");
    }

    /* JADX INFO: renamed from: a */
    public final C2740D7 m1585a(C2920P7 c2920p7) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "isSkippableVideo ", this));
        }
        Iterator it = c2920p7.m1496c().iterator();
        while (it.hasNext()) {
            C2740D7 c2740d7 = (C2740D7) c2920p7.m1515n((String) it.next()).get(0);
            if (2 == c2740d7.f929k) {
                return c2740d7;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final void m1621a(boolean z, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        Set<C2805Hc> setM1657d;
        AdConfig.ViewabilityConfig viewability;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("Q0", AbstractC2718C0.m870a("Q0", "TAG", "omidSessionForHtmlMarkup ", this));
        }
        AdConfig adConfig = this.f1429b;
        AdConfig.OmidConfig omidConfig = (adConfig == null || (viewability = adConfig.getViewability()) == null) ? null : viewability.getOmidConfig();
        if (omidConfig == null || omidConfig.isOmidEnabled()) {
            AbstractC2787G9.f1056a.getClass();
            if (Omid.isActive() && (setM1657d = m1657d(this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya))) != null) {
                for (C2805Hc c2805Hc : setM1657d) {
                    if (3 == c2805Hc.f1084a) {
                        try {
                            String str = (String) c2805Hc.m1153a("creativeType", String.class);
                            String str2 = (String) c2805Hc.m1153a("customReferenceData", String.class);
                            Boolean bool = (Boolean) c2805Hc.m1153a("isolateVerificationScripts", Boolean.class);
                            Byte b = (Byte) c2805Hc.m1153a("impressionType", Byte.class);
                            C3451z9 c3451z9M923a = (str == null || bool == null || b == null) ? null : AbstractC2727C9.m923a(str, gestureDetectorOnGestureListenerC3049Ya, bool.booleanValue(), this.f1447t.m1932e(), b.byteValue(), str2);
                            if (c3451z9M923a != null) {
                                c2805Hc.f1085b.put("omidAdSession", c3451z9M923a);
                                c2805Hc.f1085b.put("deferred", Boolean.valueOf(z));
                                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                                if (interfaceC3147f52 != null) {
                                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                                    ((C3162g5) interfaceC3147f52).m2147a("Q0", "OMID ad session created and WebView container registered with OMID");
                                }
                            } else {
                                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                                if (interfaceC3147f53 != null) {
                                    Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                                    ((C3162g5) interfaceC3147f53).m2147a("Q0", "Ignoring IAB meta data for this ad markup");
                                }
                            }
                        } catch (Exception e) {
                            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                            if (interfaceC3147f54 != null) {
                                ((C3162g5) interfaceC3147f54).m2151b("Q0", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("Q0", "TAG", "Setting up impression tracking for IAB encountered an unexpected error: ")));
                            }
                            C3402w5 c3402w5 = C3402w5.f2709a;
                            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1545a(AbstractC2928Q0 abstractC2928Q0, C3171h c3171h, String str) {
        InterfaceC3147f5 interfaceC3147f5 = abstractC2928Q0.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "updateAdForBlob ", abstractC2928Q0));
        }
        c3171h.m2189e(str);
        InterfaceC3147f5 interfaceC3147f52 = abstractC2928Q0.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "updateAd ", abstractC2928Q0));
        }
        C3412x0 c3412x0 = abstractC2928Q0.f1448u;
        if (c3412x0 != null) {
            c3412x0.m2570a(c3171h);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m1611a(String blob, String str) {
        Intrinsics.checkNotNullParameter(blob, "blob");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "saveBlob ", this));
        }
        C2687A c2687a = this.f1419C;
        int iHashCode = hashCode();
        C2913P0 c2913p0 = new C2913P0(this, str, blob);
        c2687a.getClass();
        C2687A.m825a(iHashCode, c2913p0);
    }

    /* JADX INFO: renamed from: a */
    public void m1612a(String jsCallbackNamespace, String callback, InterfaceC3069a2 receiver, String str) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "getBlob ", this));
        }
        C2687A c2687a = this.f1419C;
        int iHashCode = hashCode();
        C2793H0 c2793h0 = new C2793H0(this, str, receiver, jsCallbackNamespace, callback);
        c2687a.getClass();
        C2687A.m825a(iHashCode, c2793h0);
    }

    /* JADX INFO: renamed from: a */
    public void mo906a(C3171h primaryAd, boolean z, short s) {
        C3412x0 c3412x0;
        Intrinsics.checkNotNullParameter(primaryAd, "ad");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("Q0", AbstractC2718C0.m870a("Q0", "TAG", "onVastProcessCompleted ", this));
        }
        C3171h c3171hM1688m = m1688m();
        if (c3171hM1688m == null || m1581W()) {
            c3171hM1688m = null;
        }
        if (c3171hM1688m == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2152c("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "Vast processing completed for ad with impressionId : ").append(c3171hM1688m.m2202s()).toString());
        }
        String strM2204u = c3171hM1688m.m2204u();
        int iHashCode = strM2204u.hashCode();
        if (iHashCode != -1084172778) {
            if (iHashCode != 3213227) {
                if (iHashCode == 1236050372 && strM2204u.equals("htmlUrl")) {
                    return;
                }
            } else if (strM2204u.equals("html")) {
                return;
            }
        } else if (strM2204u.equals("inmobiJson")) {
            if (this.f1428a == 2 && (c3412x0 = this.f1448u) != null) {
                c3412x0.m2570a(primaryAd);
                C2688A0 c2688a0M1694p = m1694p();
                String clientReqId = c3412x0.m2581k();
                c2688a0M1694p.getClass();
                Intrinsics.checkNotNullParameter(primaryAd, "primaryAd");
                Intrinsics.checkNotNullParameter(clientReqId, "clientReqId");
                Set<C3452za> setM2207y = primaryAd.m2207y();
                if (setM2207y.isEmpty()) {
                    c2688a0M1694p.f809a.m1603a(c2688a0M1694p.f811c, true, (short) 0);
                    return;
                }
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                C3216k c3216k = new C3216k(string, setM2207y, c2688a0M1694p.f815g, null, 16);
                String strM2190f = primaryAd.m2190f();
                if (strM2190f != null) {
                    C3323r1 c3323r1 = C3323r1.f2477a;
                    C3323r1.m2363a(c3216k, strM2190f);
                    return;
                }
                return;
            }
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("Q0", "TAG");
                ((C3162g5) interfaceC3147f53).m2151b("Q0", "Found inconsistent state after vast processing");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2151b("Q0", AbstractC3208j6.m2261a("Q0", "TAG", "Can not handle fallback for").append(c3171hM1688m.m2204u()).toString());
        }
        throw new IllegalStateException("Can not handle fallback for markup type: " + c3171hM1688m.m2204u());
    }
}
