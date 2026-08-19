package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Base64;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.webkit.CookieManager;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.Profile;
import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.itextpdf.svg.SvgConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.shadow.apache.commons.lang3.ClassUtils;

/* JADX INFO: renamed from: com.inmobi.media.Ya */
/* JADX INFO: loaded from: classes6.dex */
public final class GestureDetectorOnGestureListenerC3049Ya extends AbstractC2998V1 implements InterfaceC3411x, InterfaceC3069a2, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, InterfaceC2862L9, InterfaceC2698Aa {

    /* JADX INFO: renamed from: N0 */
    public static final C2818Ia f1694N0 = new C2818Ia();

    /* JADX INFO: renamed from: O0 */
    public static final C2788Ga f1695O0 = new C2788Ga();

    /* JADX INFO: renamed from: P0 */
    public static final String f1696P0 = "Ya";

    /* JADX INFO: renamed from: Q0 */
    public static final C3383v1 f1697Q0 = new C3383v1((Object) Boolean.FALSE, (Function0) C2803Ha.f1082a, false, true);

    /* JADX INFO: renamed from: A */
    public boolean f1698A;

    /* JADX INFO: renamed from: A0 */
    public Map f1699A0;

    /* JADX INFO: renamed from: B */
    public boolean f1700B;

    /* JADX INFO: renamed from: B0 */
    public final C2863La f1701B0;

    /* JADX INFO: renamed from: C */
    public String f1702C;

    /* JADX INFO: renamed from: C0 */
    public final C3035Xa f1703C0;

    /* JADX INFO: renamed from: D */
    public final AtomicBoolean f1704D;

    /* JADX INFO: renamed from: D0 */
    public String f1705D0;

    /* JADX INFO: renamed from: E */
    public final Object f1706E;

    /* JADX INFO: renamed from: E0 */
    public final C2951Ra f1707E0;

    /* JADX INFO: renamed from: F */
    public final Object f1708F;

    /* JADX INFO: renamed from: F0 */
    public final C2923Pa f1709F0;

    /* JADX INFO: renamed from: G */
    public boolean f1710G;

    /* JADX INFO: renamed from: G0 */
    public final C2833Ja f1711G0;

    /* JADX INFO: renamed from: H */
    public final boolean f1712H;

    /* JADX INFO: renamed from: H0 */
    public boolean f1713H0;

    /* JADX INFO: renamed from: I */
    public View f1714I;

    /* JADX INFO: renamed from: I0 */
    public C3055Z2 f1715I0;

    /* JADX INFO: renamed from: J */
    public WebChromeClient.CustomViewCallback f1716J;

    /* JADX INFO: renamed from: J0 */
    public final C2965Sa f1717J0;

    /* JADX INFO: renamed from: K */
    public int f1718K;

    /* JADX INFO: renamed from: K0 */
    public final C2993Ua f1719K0;

    /* JADX INFO: renamed from: L */
    public long f1720L;

    /* JADX INFO: renamed from: L0 */
    public final C2979Ta f1721L0;

    /* JADX INFO: renamed from: M */
    public String f1722M;

    /* JADX INFO: renamed from: M0 */
    public C2896Nd f1723M0;

    /* JADX INFO: renamed from: N */
    public final AtomicBoolean f1724N;

    /* JADX INFO: renamed from: O */
    public final C3153fb f1725O;

    /* JADX INFO: renamed from: P */
    public String f1726P;

    /* JADX INFO: renamed from: Q */
    public Map f1727Q;

    /* JADX INFO: renamed from: R */
    public InterfaceC3054Z1 f1728R;

    /* JADX INFO: renamed from: S */
    public InterfaceC3411x f1729S;

    /* JADX INFO: renamed from: T */
    public boolean f1730T;

    /* JADX INFO: renamed from: U */
    public boolean f1731U;

    /* JADX INFO: renamed from: V */
    public InterfaceC3052Z f1732V;

    /* JADX INFO: renamed from: W */
    public AbstractC3260md f1733W;

    /* JADX INFO: renamed from: a0 */
    public final boolean f1734a0;

    /* JADX INFO: renamed from: b */
    public final byte f1735b;

    /* JADX INFO: renamed from: b0 */
    public int f1736b0;

    /* JADX INFO: renamed from: c */
    public final Set f1737c;

    /* JADX INFO: renamed from: c0 */
    public String f1738c0;

    /* JADX INFO: renamed from: d */
    public String f1739d;

    /* JADX INFO: renamed from: d0 */
    public int[] f1740d0;

    /* JADX INFO: renamed from: e */
    public final boolean f1741e;

    /* JADX INFO: renamed from: e0 */
    public long f1742e0;

    /* JADX INFO: renamed from: f */
    public String f1743f;

    /* JADX INFO: renamed from: f0 */
    public int f1744f0;

    /* JADX INFO: renamed from: g */
    public long f1745g;

    /* JADX INFO: renamed from: g0 */
    public final C2848Ka f1746g0;

    /* JADX INFO: renamed from: h */
    public final C3093bb f1747h;

    /* JADX INFO: renamed from: h0 */
    public final C2938Qa f1748h0;

    /* JADX INFO: renamed from: i */
    public final InterfaceC3147f5 f1749i;

    /* JADX INFO: renamed from: i0 */
    public int f1750i0;

    /* JADX INFO: renamed from: j */
    public byte f1751j;

    /* JADX INFO: renamed from: j0 */
    public int f1752j0;

    /* JADX INFO: renamed from: k */
    public WeakReference f1753k;

    /* JADX INFO: renamed from: k0 */
    public final C3059Z6 f1754k0;

    /* JADX INFO: renamed from: l */
    public WeakReference f1755l;

    /* JADX INFO: renamed from: l0 */
    public final GestureDetector f1756l0;

    /* JADX INFO: renamed from: m */
    public AbstractC3078ab f1757m;

    /* JADX INFO: renamed from: m0 */
    public boolean f1758m0;

    /* JADX INFO: renamed from: n */
    public final C3007Va f1759n;

    /* JADX INFO: renamed from: n0 */
    public boolean f1760n0;

    /* JADX INFO: renamed from: o */
    public String f1761o;

    /* JADX INFO: renamed from: o0 */
    public C2986U3 f1762o0;

    /* JADX INFO: renamed from: p */
    public C3149f7 f1763p;

    /* JADX INFO: renamed from: p0 */
    public InterfaceC2958S3 f1764p0;

    /* JADX INFO: renamed from: q */
    public AdConfig f1765q;

    /* JADX INFO: renamed from: q0 */
    public String f1766q0;

    /* JADX INFO: renamed from: r */
    public boolean f1767r;

    /* JADX INFO: renamed from: r0 */
    public C2847K9 f1768r0;

    /* JADX INFO: renamed from: s */
    public boolean f1769s;

    /* JADX INFO: renamed from: s0 */
    public C3262n0 f1770s0;

    /* JADX INFO: renamed from: t */
    public JSONObject f1771t;

    /* JADX INFO: renamed from: t0 */
    public final AtomicBoolean f1772t0;

    /* JADX INFO: renamed from: u */
    public JSONObject f1773u;

    /* JADX INFO: renamed from: u0 */
    public boolean f1774u0;

    /* JADX INFO: renamed from: v */
    public boolean f1775v;

    /* JADX INFO: renamed from: v0 */
    public C2807I f1776v0;

    /* JADX INFO: renamed from: w */
    public boolean f1777w;

    /* JADX INFO: renamed from: w0 */
    public String f1778w0;

    /* JADX INFO: renamed from: x */
    public boolean f1779x;

    /* JADX INFO: renamed from: x0 */
    public boolean f1780x0;

    /* JADX INFO: renamed from: y */
    public boolean f1781y;

    /* JADX INFO: renamed from: y0 */
    public C2926Pd f1782y0;

    /* JADX INFO: renamed from: z */
    public EnumC3320qd f1783z;

    /* JADX INFO: renamed from: z0 */
    public boolean f1784z0;

    /* JADX WARN: Illegal instructions before constructor call */
    public GestureDetectorOnGestureListenerC3049Ya(Context context, byte b, Set set, String str, boolean z, String landingScheme, long j, C3093bb c3093bb, InterfaceC3147f5 interfaceC3147f5, int i) {
        set = (i & 4) != 0 ? null : set;
        str = (i & 8) != 0 ? null : str;
        z = (i & 16) != 0 ? false : z;
        landingScheme = (i & 32) != 0 ? "DEFAULT" : landingScheme;
        j = (i & 64) != 0 ? -1L : j;
        c3093bb = (i & 128) != 0 ? null : c3093bb;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        super(applicationContext);
        this.f1735b = b;
        this.f1737c = set;
        this.f1739d = str;
        this.f1741e = z;
        this.f1743f = landingScheme;
        this.f1745g = j;
        this.f1747h = c3093bb;
        this.f1749i = interfaceC3147f5;
        this.f1753k = new WeakReference(null);
        this.f1759n = new C3007Va();
        this.f1761o = Profile.DEFAULT_PROFILE_NAME;
        this.f1775v = true;
        this.f1777w = true;
        this.f1781y = true;
        this.f1783z = EnumC3320qd.f2470a;
        this.f1704D = new AtomicBoolean(false);
        this.f1706E = new Object();
        this.f1708F = new Object();
        this.f1712H = true;
        this.f1718K = -1;
        this.f1720L = Long.MIN_VALUE;
        this.f1724N = new AtomicBoolean(false);
        this.f1746g0 = new C2848Ka(this);
        this.f1748h0 = new C2938Qa(this);
        this.f1750i0 = Integer.MIN_VALUE;
        this.f1752j0 = Integer.MIN_VALUE;
        this.f1772t0 = new AtomicBoolean(true);
        this.f1701B0 = new C2863La(this);
        this.f1703C0 = new C3035Xa(this);
        this.f1705D0 = "html";
        this.f1707E0 = new C2951Ra(this);
        this.f1709F0 = new C2923Pa(this);
        this.f1711G0 = new C2833Ja(this);
        String TAG = f1696P0;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        toString();
        f1694N0.getClass();
        f1697Q0.m2497a();
        this.f1729S = this;
        this.f1734a0 = true;
        this.f1768r0 = new C2847K9();
        this.f1754k0 = new C3059Z6(this);
        GestureDetector gestureDetector = new GestureDetector(context, this);
        gestureDetector.setOnDoubleTapListener(this);
        gestureDetector.setIsLongpressEnabled(b == 1);
        this.f1756l0 = gestureDetector;
        if (c3093bb != null) {
            this.f1725O = new C3153fb(c3093bb);
        }
        EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
        C2758Ea.m1053a(this, interfaceC3147f5);
        this.f1717J0 = new C2965Sa(this);
        this.f1719K0 = new C2993Ua(this);
        this.f1721L0 = new C2979Ta(this);
        this.f1723M0 = (this.f1713H0 || AbstractC3429y2.m2606a(context)) ? new C2896Nd(0, 44, 44, 0) : new C2896Nd(0, 0, 0, 0);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1946a(GestureDetectorOnGestureListenerC3049Ya renderView, byte[] overlayBytes, WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(renderView, "this$0");
        Intrinsics.checkNotNullParameter(overlayBytes, "$overlayBytes");
        Intrinsics.checkNotNullParameter(watermarkData, "$watermarkData");
        if (renderView.f1724N.get()) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = renderView.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "adding overlay to renderview");
        }
        Context context = renderView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        FrameLayout overlayLayout = AbstractC2701Ad.m866a(context, overlayBytes, watermarkData.getAlpha());
        Intrinsics.checkNotNullParameter(overlayLayout, "overlayLayout");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (renderView.getParent() != null) {
            ViewParent parent = renderView.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).addView(overlayLayout, 0);
        }
        renderView.getViewableAd().mo961a(overlayLayout, FriendlyObstructionPurpose.NOT_VISIBLE);
        renderView.f1724N.set(true);
    }

    public static /* synthetic */ void getAdType$annotations() {
    }

    public static /* synthetic */ void getCloseAssetArea$annotations() {
    }

    public static /* synthetic */ void getImpressionType$annotations() {
    }

    public static /* synthetic */ void getMarkupType$annotations() {
    }

    public static /* synthetic */ void getMarkupTypeAdUnit$annotations() {
    }

    private final AdConfig.MraidConfig getMraidConfig() {
        AdConfig adConfig = this.f1765q;
        if (adConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            adConfig = null;
        }
        return adConfig.getMraid();
    }

    public static /* synthetic */ void getPlacementType$annotations() {
    }

    public static /* synthetic */ void getViewState$annotations() {
    }

    private final int getVisibilityTrackingMinPercentage() {
        AdConfig adConfig = null;
        if (Intrinsics.areEqual("audio", getAdType())) {
            AdConfig adConfig2 = this.f1765q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            return adConfig.getViewability().getAudioImpressionMinPercentageViewed();
        }
        AdConfig adConfig3 = this.f1765q;
        if (adConfig3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        } else {
            adConfig = adConfig3;
        }
        return adConfig.getViewability().getWebImpressionMinPercentageViewed();
    }

    public static /* synthetic */ void getWindowInsetListener$annotations() {
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: b */
    public final void mo845b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "destroyContainer "));
        }
        if (this.f1704D.get()) {
            return;
        }
        if (!this.f1781y) {
            this.f1781y = true;
            return;
        }
        this.f1704D.set(true);
        C2926Pd c2926Pd = this.f1782y0;
        if (c2926Pd != null) {
            c2926Pd.m1535a();
        }
        C3055Z2 c3055z2 = this.f1715I0;
        if (c3055z2 != null) {
            c3055z2.m2002b();
        }
        this.f1710G = true;
        this.f1718K = -1;
        removeJavascriptInterface("sdkController");
        C3149f7 c3149f7 = this.f1763p;
        AdConfig adConfig = null;
        if (c3149f7 != null) {
            C2961S6 c2961s6 = c3149f7.f2065d;
            if (c2961s6 != null) {
                c2961s6.mo1761a();
            }
            c3149f7.f2065d = null;
            C2961S6 c2961s62 = c3149f7.f2066e;
            if (c2961s62 != null) {
                c2961s62.mo1761a();
            }
            c3149f7.f2066e = null;
            C2961S6 c2961s63 = c3149f7.f2067f;
            if (c2961s63 != null) {
                c2961s63.mo1761a();
            }
            c3149f7.f2067f = null;
        }
        this.f1753k.clear();
        WeakReference weakReference = this.f1755l;
        if (weakReference != null) {
            weakReference.clear();
        }
        AbstractC3260md abstractC3260md = this.f1733W;
        if (abstractC3260md != null) {
            abstractC3260md.mo965e();
        }
        AbstractC3260md abstractC3260md2 = this.f1733W;
        if (abstractC3260md2 != null) {
            abstractC3260md2.mo957a();
        }
        m1986u();
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "stopTrackingAudioVolume "));
        }
        C3336s c3336s = C3336s.f2517a;
        C3336s.m2392c(this.f1749i, this.f1746g0);
        setFriendlyViews(null);
        this.f1764p0 = null;
        this.f1757m = null;
        this.f1729S = null;
        this.f1732V = null;
        this.f1758m0 = false;
        ViewParent parent = getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this);
            removeAllViews();
        }
        AdConfig adConfig2 = this.f1765q;
        if (adConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        } else {
            adConfig = adConfig2;
        }
        AdConfig.OmidConfig omidConfig = adConfig.getViewability().getOmidConfig();
        if (this.f1734a0 && omidConfig.isOmidEnabled()) {
            AbstractC2787G9.f1056a.getClass();
            if (Omid.isActive()) {
                new C3108cb(this, omidConfig.getWebViewRetainTime()).m2052a();
                return;
            }
        }
        destroy();
    }

    /* JADX INFO: renamed from: c */
    public final void m1965c(boolean z) {
        C3262n0 c3262n0;
        AdQualityControl adQualityControl;
        Activity activity;
        C3262n0 c3262n02;
        AdQualityControl adQualityControl2;
        EnumC3320qd enumC3320qd = z ? EnumC3320qd.f2472c : EnumC3320qd.f2471b;
        if (this.f1783z == enumC3320qd || this.f1710G) {
            return;
        }
        this.f1783z = enumC3320qd;
        if (z) {
            getListener().mo1232i(this);
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "fireViewableChange " + this + ' ' + z);
        }
        m1960b("window.mraidview.broadcastEvent('viewableChange'," + z + ");");
        C3262n0 c3262n03 = this.f1770s0;
        if (c3262n03 != null) {
            EnumC3320qd adViewableStatus = this.f1783z;
            Intrinsics.checkNotNullParameter(adViewableStatus, "adViewableStatus");
            c3262n03.f2363h = adViewableStatus;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str, AbstractC3208j6.m2261a(str, "TAG", "fireAQSession - ").append(getAdType()).append(" type - sdk - ").append(Build.VERSION.SDK_INT).toString());
        }
        if (!Intrinsics.areEqual(getAdType(), "int") || Build.VERSION.SDK_INT < 29 || (activity = (Activity) this.f1753k.get()) == null) {
            C3262n0 c3262n04 = this.f1770s0;
            if (c3262n04 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
                c3262n0 = null;
            } else {
                c3262n0 = c3262n04;
            }
            c3262n0.getClass();
            Intrinsics.checkNotNullParameter(this, "adView");
            if (!c3262n0.m2308a()) {
                c3262n0.m2305a("session state invalid");
                return;
            }
            c3262n0.m2305a("session start trigger...");
            c3262n0.f2358c.set(true);
            AdQualityControl adQualityControl3 = c3262n0.f2362g;
            if (adQualityControl3 == null || !adQualityControl3.getTakeScreenshot() || (adQualityControl = c3262n0.f2362g) == null) {
                return;
            }
            c3262n0.m2303a(this, (long) (adQualityControl.getScreenshotDelayInSeconds() * 1000), false, (C2863La) null);
            return;
        }
        C3262n0 c3262n05 = this.f1770s0;
        if (c3262n05 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            c3262n02 = null;
        } else {
            c3262n02 = c3262n05;
        }
        c3262n02.getClass();
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!c3262n02.m2308a()) {
            c3262n02.m2305a("session state invalid");
            return;
        }
        c3262n02.m2305a("session start trigger...");
        c3262n02.f2358c.set(true);
        AdQualityControl adQualityControl4 = c3262n02.f2362g;
        if (adQualityControl4 == null || !adQualityControl4.getTakeScreenshot() || (adQualityControl2 = c3262n02.f2362g) == null) {
            return;
        }
        c3262n02.m2301a(activity, (long) (adQualityControl2.getScreenshotDelayInSeconds() * 1000), false, (C2863La) null);
    }

    /* JADX INFO: renamed from: d */
    public final void m1967d(String str) {
        C3153fb c3153fb = this.f1725O;
        if (c3153fb != null) {
            c3153fb.m2139b();
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "loadUrlInWebView "));
        }
        this.f1710G = false;
        if (this.f1704D.get() || str == null) {
            return;
        }
        loadUrl(str);
    }

    /* JADX INFO: renamed from: e */
    public final void m1970e(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "processUseCustomCloseRequest " + this + ' ' + z);
        }
        setUseCustomClose(z);
        m1987v();
    }

    @Override // com.inmobi.media.AbstractC2998V1
    /* JADX INFO: renamed from: f */
    public final C3283o6 mo1872f() {
        C3373u6 c3373u6;
        String str;
        C3038Y c3038y;
        String strM1929b;
        C3038Y c3038y2;
        String strM1939m;
        C3038Y c3038y3;
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "initLandingPageHandler "));
        }
        C3298p6 c3298p6 = new C3298p6(this.f1741e, this.f1743f, getAdConfig().getCctEnabled(), getAdConfig().getPartialTabsEnabled());
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C2923Pa c2923Pa = this.f1709F0;
        C2951Ra c2951Ra = this.f1707E0;
        if (this.f1741e) {
            c3373u6 = null;
        } else {
            C3093bb c3093bb = this.f1747h;
            long jM1938l = (c3093bb == null || (c3038y3 = c3093bb.f1887a) == null) ? 0L : c3038y3.m1938l();
            String impressionId = getImpressionId();
            String str3 = impressionId == null ? "" : impressionId;
            C3093bb c3093bb2 = this.f1747h;
            String str4 = (c3093bb2 == null || (c3038y2 = c3093bb2.f1887a) == null || (strM1939m = c3038y2.m1939m()) == null) ? "" : strM1939m;
            C3093bb c3093bb3 = this.f1747h;
            String str5 = (c3093bb3 == null || (c3038y = c3093bb3.f1887a) == null || (strM1929b = c3038y.m1929b()) == null) ? "" : strM1929b;
            C3093bb c3093bb4 = this.f1747h;
            c3373u6 = new C3373u6(jM1938l, str3, str4, str5, (c3093bb4 == null || (str = c3093bb4.f1888b) == null) ? "" : str, c3093bb4 != null ? c3093bb4.f1891e : "", c3093bb4 != null ? c3093bb4.f1889c : "", c3093bb4 != null ? c3093bb4.f1893g : false, this.f1743f);
        }
        return new C3283o6(context, c3298p6, c2923Pa, c2951Ra, this, c3373u6, this.f1749i);
    }

    /* JADX INFO: renamed from: g */
    public final void m1972g() {
        if (this.f1784z0) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2147a(TAG, "fireAdFailed " + this + " - Ad is already unloaded");
                return;
            }
            return;
        }
        this.f1760n0 = true;
        C3153fb c3153fb = this.f1725O;
        if (c3153fb != null) {
            Map mapM2138a = c3153fb.m2138a();
            long j = c3153fb.f2077b;
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            mapM2138a.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("FireAdFailed", mapM2138a, EnumC3259mc.f2349a);
        }
        getListener().mo1189g(this);
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public AdConfig getAdConfig() {
        AdConfig adConfig = this.f1765q;
        if (adConfig != null) {
            return adConfig;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        return null;
    }

    public final InterfaceC3052Z getAdPodHandler() {
        return this.f1732V;
    }

    public final C3262n0 getAdQualityManager() {
        C3262n0 c3262n0 = this.f1770s0;
        if (c3262n0 != null) {
            return c3262n0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
        return null;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public String getAdType() {
        return this.f1726P;
    }

    public final boolean getAllowAutoRedirection() {
        return this.f1731U;
    }

    public final int getArea() {
        return getHeight() * getWidth();
    }

    public final String getBeaconUrl() {
        return this.f1778w0;
    }

    public final C2896Nd getCloseAssetArea() {
        return this.f1723M0;
    }

    public final long getConfiguredArea() {
        return this.f1742e0;
    }

    public Context getContainerContext() {
        Activity activity = (Activity) this.f1753k.get();
        if (activity != null) {
            return activity;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return context;
    }

    public final String getContentURL() {
        return this.f1738c0;
    }

    public final String getCreativeID() {
        String creativeId = getCreativeId();
        return creativeId == null ? "" : creativeId;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public String getCreativeId() {
        return this.f1722M;
    }

    public final String getCurrentPosition() {
        JSONObject jSONObject = this.f1773u;
        String string = jSONObject != null ? jSONObject.toString() : null;
        return string == null ? "" : string;
    }

    public final Object getCurrentPositionMonitor() {
        return this.f1708F;
    }

    public final int getCurrentRenderingPodAdIndex() {
        InterfaceC3052Z interfaceC3052Z = this.f1732V;
        if (interfaceC3052Z != null) {
            return ((AbstractC2928Q0) interfaceC3052Z).m1685l(this);
        }
        return 0;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public Object getDataModel() {
        return null;
    }

    public final String getDefaultPosition() {
        JSONObject jSONObject = this.f1771t;
        String string = jSONObject != null ? jSONObject.toString() : null;
        return string == null ? "" : string;
    }

    public final Object getDefaultPositionMonitor() {
        return this.f1706E;
    }

    public final InterfaceC2958S3 getEmbeddedBrowserJSCallbacks() {
        return this.f1764p0;
    }

    public Map<View, FriendlyObstructionPurpose> getFriendlyViews() {
        return this.f1727Q;
    }

    public final Activity getFullScreenActivity() {
        return (Activity) this.f1753k.get();
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public InterfaceC3396w getFullScreenEventsListener() {
        return this.f1717J0;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public String getImpressionId() {
        return this.f1739d;
    }

    public final byte getImpressionType() {
        return this.f1751j;
    }

    public final String getLandingScheme() {
        return this.f1743f;
    }

    public final AbstractC3078ab getListener() {
        AbstractC3078ab abstractC3078ab = this.f1757m;
        if (abstractC3078ab != null) {
            return abstractC3078ab;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "listener getter "));
        }
        C2788Ga c2788Ga = f1695O0;
        this.f1757m = c2788Ga;
        return c2788Ga;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public String getMarkupType() {
        return this.f1705D0;
    }

    public final String getMarkupTypeAdUnit() {
        return this.f1705D0;
    }

    public final C3149f7 getMediaProcessor() {
        return this.f1763p;
    }

    public final int getMinimumPixelsPainted() {
        return this.f1744f0;
    }

    public final String getMraidJsString() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "mraidJsString getter "));
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String strM1847a = new C2992U9(context, "mraid_js_store").m1847a("mraid_js_string");
        if (strM1847a == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
            if (interfaceC3147f52 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2147a(TAG, "Returning default Mraid Js string.");
            }
            return "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b=[];this.add=function(a){b.push(a);++this.count};this.remove=function(a){var f=!1,d=this;b=b.filter(function(b){if(b=b===a)--d.count,f=!0;return!b});return f};this.removeAll=function(){b=[];this.count=0};this.broadcast=function(a){b.forEach(function(f){try{f.apply({},a)}catch(b){}})};this.toString=function(){var c=[a,\":\"];b.forEach(function(a){c.push(\"|\",String(a),\"|\")});\nreturn c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&\nwindow.imraidview.startListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&window.imraidview.registerDownloaderCallbacks()}}catch(f){this.log(f)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&\nwindow.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&0==c[a].count&&window.imraidview.unregisterDownloaderCallbacks()}};\nthis.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(f){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var f=arguments[c],f=JSON.parse(f);b[c]=f}else b[c]=arguments[c];f=b[1];\"success\"!=f&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);\nwindow.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;window.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){f={};f.command=a;f.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b[arguments[c]]=\"\"+d);f.params=b}else for(var f=this.urlScheme+\"://\"+a,d,b=!0,c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b?(f+=\"?\",b=!1):f+=\"&\",f+=arguments[c]+\"=\"+escape(d));__im__iosNativeCall.executeNativeCall(f);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(f){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(f);return!1};a.popupBlocked=function(f){a.firePopupBlockedBeacon(f)};a.zeroPad=function(a){var c=\"\";10>a&&(c+=\"0\");return c+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\n\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"use CustomClose: \"+c)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,d){c?b.push(a):(eval(a),d&&(c=!0))};a.setOrientationProperties=function(f){try{f?(\"undefined\"!=typeof f.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=\nf.allowOrientationChange),\"undefined\"!=typeof f.forceOrientation&&(a.orientationProperties.forceOrientation=f.forceOrientation)):f=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(c){imraidview.showAlert(\"setOrientationProperties: \"+c+\", props = \"+f)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;\na.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"open: \"+c)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=function(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+a)}};a.isViewable=function(){if(imraidview.fallbackViewabilityEnabled())return imraidview.checkFallbackViewable();try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+\na)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var c=\"\";null!=a&&(c=a);try{sdkController.playVideo(\"window.mraidview\",c)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(c){if(\"undefined\"===\ntypeof JSON){var b=\"\",e;if(\"undefined\"==typeof c.length)return a.stringifyArg(c);for(e=0;e<c.length;e++)0<e&&(b+=\",\"),b+=a.stringifyArg(c[e]);return b+\"]\"}return JSON.stringify(c)};a.stringifyArg=function(a){var c,b,g;b=typeof a;c=\"\";if(\"number\"===b||\"boolean\"===b)c+=args;else if(a instanceof Array)c=c+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;c+=\"{\";for(g in a)null!==a[g]&&(b||(c+=\",\"),c=c+'\"'+g+'\":',b=typeof a[g],c=\"number\"===b||\"boolean\"===b?c+a[g]:\"function\"===typeof a[g]?c+'\"\"':a[g]instanceof\nObject?c+this.stringify(args[i][g]):c+'\"'+a[g]+'\"',b=!1);c+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,'\\\\\"'),c=c+'\"'+a+'\"';imraidview.showAlert(\"json:\"+c);return c};getPID=function(a){var c=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(c=a.id);return c};a.storePicture=function(c){console.log(\"bridge: storePicture\");if(\"string\"!=typeof c)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?\n(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",c);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,c){};a.fireMediaErrorEvent=function(a,c){};a.fireMediaTimeUpdateEvent=function(a,c,b){};a.fireMediaCloseEvent=function(a,c,b){};a.fireMediaVolumeChangeEvent=function(a,c,b){};\na.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)};a.unload=function(){try{sdkController.unload(\"window.mraidview\")}catch(a){}};a.getCurrentAppOrientation=function(){var c;switch(a.orientation){case 0:case 180:c=\"portrait\";break;case 90:case 270:c=\"landscape\";break;default:c=\"none\"}return{orientation:c,locked:!1}};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"executeNativeExpand: \"+\nc+\", URL = \"+a)}};a.setExpandProperties=function(c){try{c?this.props=c:c=null;if(\"undefined\"!=typeof c.lockOrientation&&null!=c.lockOrientation&&\"undefined\"!=typeof c.orientation&&null!=c.orientation){var b={};b.allowOrientationChange=!c.lockOrientation;b.forceOrientation=c.orientation;a.setOrientationProperties(b)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(c))}catch(e){imraidview.showAlert(\"executeNativesetExpandProperties: \"+e+\", props = \"+c)}};a.getExpandProperties=function(){try{return eval(\"(\"+\nsdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.resizeProps=null;a.setResizeProperties=function(c){var b,e;try{b=parseInt(c.width);e=parseInt(c.height);if(isNaN(b)||isNaN(e)||1>b||1>e)throw\"Invalid\";c.width=b;c.height=e;a.resizeProps=c;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(c))}catch(g){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+\nsdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(c){imraidview.showAlert(\"resize called in bridge\")}}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){imraidview.onUserInteraction();c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;c.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,c)}};b.getSdkVersionInt=function(){for(var a=imraid.getSdkVersion().split(\".\"),\nc=a.length,b=\"\",g=0;g<c;g++)b+=a[g];return parseInt(b)};b.firePopupBlockedBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;inmobi.recordEvent(136,c)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",function(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\n\"Method not supported\",\"getExpandProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getExpandProperties is deprecated\",\"getExpandProperties\");return b.getExpandProperties()};a.setExpandProperties=function(c){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"setExpandProperties\"):(\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose),window.mraid.broadcastEvent(\"error\",\n\"MRAID setExpandProperties is deprecated\",\"setExpandProperties\"),b.setExpandProperties(c))};a.getResizeProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"getResizeProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getResizeProperties is deprecated\",\"getResizeProperties\");return b.getResizeProperties()};a.setResizeProperties=function(a){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\n\"setResizeProperties\"):(window.mraid.broadcastEvent(\"error\",\"MRAID setResizeProperties is deprecated\",\"setResizeProperties\"),b.setResizeProperties(a))};a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=function(a){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"expand\"):(window.mraid.broadcastEvent(\"error\",\"MRAID expand is deprecated\",\"expand\"),b.expand(a))}catch(c){window.mraid.broadcastEvent(\"error\",\n\"error\",\"expand\")}};a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"createCalendarEvent\")};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=function(){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"MRAID resize not supported\",\"resize\"):(window.mraid.broadcastEvent(\"error\",\n\"MRAID resize is deprecated\",\"resize\"),b.expand())}catch(a){window.mraid.broadcastEvent(\"error\",\"error\",\"expand\")}};a.getVersion=function(){return\"3.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):\nb.storePicture(c)};a.unload=function(){b.unload()};a.getCurrentAppOrientation=b.getCurrentAppOrientation;a.getLocation=function(){return null};a.getAudioVolume=b.getAudioVolume})();\n(function(){var a=window.imraidview={},b=!1;a.setOrientationProperties=function(c){try{c?(\"undefined\"!=typeof c.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=c.allowOrientationChange),\"undefined\"!=typeof c.forceOrientation&&(mraidview.orientationProperties.forceOrientation=c.forceOrientation),\"undefined\"!=typeof c.direction&&(mraidview.orientationProperties.direction=c.direction)):c=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+c)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var d={};d.name=a;var e=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);window.imraid.broadcastEvent(e,d)};a.fireMediaErrorEvent=function(a,b){var d={name:\"error\"};d.code=b;var e=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);window.imraid.broadcastEvent(e,\nd)};a.fireMediaTimeUpdateEvent=function(a,b,d){var e={name:\"timeupdate\",target:{}};e.target.currentTime=b;e.target.duration=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.saveContent=function(a,b,d){window.imraid.addEventListener(\"saveContent_\"+a,d);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",\na)};a.fireGalleryImageSelectedEvent=function(a,b,d){var e=new Image;e.src=\"data:image/jpeg;base64,\"+a;e.width=b;e.height=d;window.imraid.broadcastEvent(\"galleryImageSelected\",e)};a.fireCameraPictureCatpturedEvent=function(a,b,d){var e=new Image;e.src=\"data:image/jpeg;base64,\"+a;e.width=b;e.height=d;window.imraid.broadcastEvent(\"cameraPictureCaptured\",e)};a.fireMediaCloseEvent=function(a,b,d){var e={name:\"close\"};e.viaUserInteraction=b;e.target={};e.target.currentTime=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=\ntypeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.fireMediaVolumeChangeEvent=function(a,b,d){var e={name:\"volumechange\",target:{}};e.target.volume=b;e.target.muted=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=\nfunction(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(c,b){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",c,b):sdkController.openExternal(\"window.imraidview\",c)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(c){try{sdkController.log(\"window.imraidview\",c)}catch(b){a.showAlert(\"log: \"+b)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(c){try{sdkController.asyncPing(\"window.imraidview\",\nc)}catch(b){a.showAlert(\"asyncPing: \"+b)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};a.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};\na.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=function(){for(var c=a.getSdkVersion().split(\".\"),b=c.length,d=\"\",e=0;e<b;e++)d+=c[e];return parseInt(d)};a.getSdkVersionInt=getSdkVersionInt;a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");\nif(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(c,b,d,e){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"postToSocial\");a.log(\"Method postToSocial not supported\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",\nJSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(c){a.showAlert(\"getOrientation: \"+c)}};a.acceptAction=function(c){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"acceptAction: \"+b+\", params = \"+c)}};a.rejectAction=function(c){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"rejectAction: \"+\nb+\", params = \"+c)}};a.updateToPassbook=function(c){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,\narguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};\na.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")};a.hideStatusBar=function(){};a.setOpaqueBackground=function(){};a.startDownloader=function(a,b,d){682<=getSdkVersionInt()&&sdkController.startDownloader(\"window.imraidview\",a,b,d)};a.registerDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.registerDownloaderCallbacks(\"window.imraidview\")};a.unregisterDownloaderCallbacks=function(){682<=getSdkVersionInt()&&\nsdkController.unregisterDownloaderCallbacks(\"window.imraidview\")};a.getDownloadProgress=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadProgress(\"window.imraidview\"):-1};a.getDownloadStatus=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadStatus(\"window.imraidview\"):-1};a.fireEvent=function(a){700<=getSdkVersionInt()&&(\"fireSkip\"===a?sdkController.fireSkip(\"window.imraidview\"):\"fireComplete\"===a?sdkController.fireComplete(\"window.imraidview\"):\"showEndCard\"===a&&\nsdkController.showEndCard(\"window.imraidview\"))};a.saveBlob=function(a){700<=getSdkVersionInt()&&sdkController.saveBlob(\"window.imraidview\",a)};a.getBlob=function(a,b){700<=getSdkVersionInt()&&sdkController.getBlob(a,b)};a.setCloseEndCardTracker=function(a){700<=getSdkVersionInt()&&sdkController.setCloseEndCardTracker(\"window.imraidview\",a)};a.getRenderableAdIndexes=function(){try{if(917<=getSdkVersionInt())return sdkController.getRenderableAdIndexes(\"window.imraidview\")}catch(a){}return\"[]\"};a.getCurrentRenderingIndex=\nfunction(){try{if(917<=getSdkVersionInt())return sdkController.getCurrentRenderingIndex(\"window.imraidview\")}catch(a){}return-1};a.showAd=function(a){try{917<=getSdkVersionInt()&&sdkController.showAd(\"window.imraidview\",a)}catch(b){}};a.timeSinceShow=function(){try{if(917<=getSdkVersionInt())return sdkController.timeSinceShow(\"window.imraidview\")}catch(a){}return-1};a.getShowTimeStamp=function(){try{if(917<=getSdkVersionInt())return sdkController.getShowTimeStamp(\"window.imraidview\")}catch(a){}return-1};\na.closeAll=function(){try{917<=getSdkVersionInt()&&sdkController.closeAll(\"window.imraidview\")}catch(a){}};a.loadAd=function(a){try{917<=getSdkVersionInt()&&sdkController.loadAd(\"window.imraidview\",a)}catch(b){}};a.setAdContext=function(a){try{917<=getSdkVersionInt()&&sdkController.setAdContext(\"window.imraidview\",a)}catch(b){}};a.getAdContext=function(){try{if(917<=getSdkVersionInt())return sdkController.getAdContext(\"window.imraidview\")}catch(a){}return\"\"};a.openWithoutTracker=function(a){try{\"undefined\"==\ntypeof a&&(a=null),sdkController.openWithoutTracker(\"window.imraidview\",a)}catch(b){}};a.impressionRendered=function(){window.imraid.broadcastEvent(\"impressionRendered\")};a.customExpandInNative=function(a,b,d){try{void 0==a||\"string\"!=typeof a?console.log(\"url called with invalid params\"):void 0==b||\"number\"!=typeof b?console.log(\"screenPercentage called with invalid params\"):void 0==d||\"boolean\"!=typeof d?console.log(\"hideCloseButton called with invalid params\"):sdkController.customExpandInNative(\"window.imraidview\",\na,b,d)}catch(e){}};a.customExpand=function(b,f,d,e,g){try{void 0==d||\"number\"!=typeof d?console.log(\"screenPercentage called with invalid params\"):void 0==f||\"number\"!=typeof f?console.log(\"inputType called with invalid params\"):void 0==e||\"boolean\"!=typeof e?console.log(\"topNavBarVisible called with invalid params\"):void 0==g||\"boolean\"!=typeof g?console.log(\"bottomNavBarVisible called with invalid params\"):sdkController.customExpand(\"window.imraidview\",b,f,d,e,g)}catch(h){a.showAlert(\"executeNativeCustomExpand: \"+\nh+\", input = \"+b+\", inputType = \"+f+\", screenPercentage = \"+d+\", bottomNavBarVisible = \"+g+\", topNavBarVisible = \"+e)}};a.closeCustomExpand=function(){try{sdkController.closeCustomExpand(\"window.imraidview\")}catch(a){}};a.onGestureDetected=function(a,b){window.imraid.broadcastEvent(\"onGestureDetected\",a,b)};a.onUserLandingCompleted=function(){window.imraid.broadcastEvent(\"onUserLandingCompleted\")};a.onUserInteraction=function(){window.imraid.broadcastEvent(\"onUserInteraction\")};a.impressionFired=\nfunction(){try{sdkController.impressionFired(\"window.imraidview\")}catch(a){}};a.getMaxDeviceVolume=function(){try{return sdkController.getMaxDeviceVolume(\"window.imraidview\")}catch(a){return 15}};a.zoom=function(a){try{sdkController.zoom(\"window.imraidview\",a)}catch(b){}};a.onAudioStateChanged=function(a){try{sdkController.onAudioStateChanged(\"window.imraidview\",a)}catch(b){}};a.submitAdReport=function(a){try{sdkController.submitAdReport(\"window.imraidview\",void 0!=a.adQualityUrl?a.adQualityUrl:null,\nvoid 0!=a.enableUserAdReportScreenshot?a.enableUserAdReportScreenshot:null,void 0!=a.templateInfo?a.templateInfo:null)}catch(b){}};a.logTelemetryEvent=function(a){try{var b=void 0!=a.eventType?a.eventType:null,d=void 0!=a.payload?a.payload:null;a=null;null!=d&&(a=mraidview.stringify(d));sdkController.logTelemetryEvent(\"window.imraidview\",b,a)}catch(e){}};a.onUserAudioMuteInteraction=function(a){try{sdkController.onUserAudioMuteInteraction(\"window.imraidview\",a)}catch(b){}};a.enableFallbackViewabilityFunctionality=\nfunction(){b=!0;a.checkFallbackViewable()&&window.mraid.broadcastEvent(\"viewableChange\",!0);mraid.addEventListener(\"sizeChange\",function(){window.mraid.broadcastEvent(\"viewableChange\",a.checkFallbackViewable())})};a.checkFallbackViewable=function(){try{var b=mraidview.getCurrentPosition(),f=b.height;return 40<=b.width&&40<=f?!0:!1}catch(d){a.showAlert(\"checkFallbackViewable: \"+d)}};a.fallbackViewabilityEnabled=function(){return b};a.getSafeArea=function(){try{return JSON.parse(sdkController.getSafeArea(\"window.imraidview\"))}catch(a){return null}}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var g=arguments.length,h,k=null;if(3>g){if(\"function\"===typeof arguments[g-1])h=arguments[g-1];else return;k={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],k={reason:11,url:arguments[1]});\"function\"!==!h&&(k?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(k))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,c){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,c)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):\nb.updateToPassbook(c))};a.postToSocial=function(a,c,e,g){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||b.postToSocial(a,c,e,g)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.skoverlay=b.skoverlay;a.skoverlayWithSkan=b.skoverlayWithSkan;a.zoom=b.zoom;a.dismissSKOverlay=b.dismissSKOverlay;a.supports=function(a){return b.supports(a)};a.isDeviceMuted=\nfunction(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};a.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.getRenderableAdIndexes=b.getRenderableAdIndexes;a.getCurrentRenderingIndex=b.getCurrentRenderingIndex;a.showAd=\nb.showAd;a.timeSinceShow=b.timeSinceShow;a.closeAll=b.closeAll;a.loadAd=b.loadAd;a.setAdContext=b.setAdContext;a.getAdContext=b.getAdContext;a.getShowTimeStamp=b.getShowTimeStamp;a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled;a.startDownloader=b.startDownloader;a.getDownloadProgress=b.getDownloadProgress;a.getDownloadStatus=b.getDownloadStatus;a.fireEvent=b.fireEvent;a.saveBlob=b.saveBlob;a.getBlob=b.getBlob;a.setCloseEndCardTracker=b.setCloseEndCardTracker;\na.openWithoutTracker=b.openWithoutTracker;a.impressionRendered=b.impressionRendered;a.onGestureDetected=b.onGestureDetected;a.onUserLandingCompleted=b.onUserLandingCompleted;a.customExpand=b.customExpand;a.closeCustomExpand=b.closeCustomExpand;a.customExpandInNative=b.customExpandInNative;a.impressionFired=b.impressionFired;a.getImraidVersion=b.getImraidVersion;a.getMaxDeviceVolume=b.getMaxDeviceVolume;a.onAudioStateChanged=b.onAudioStateChanged;a.onUserAudioMuteInteraction=b.onUserAudioMuteInteraction;\na.submitAdReport=b.submitAdReport;a.enableFallbackViewabilityFunctionality=b.enableFallbackViewabilityFunctionality;a.logTelemetryEvent=b.logTelemetryEvent;a.getSafeArea=b.getSafeArea;a.onReceviedSKANCallback=b.onReceviedSKANCallback;a.getOpenMode=b.getOpenMode;try{a.addEventListener(\"onUserLandingCompleted\",function(){1080>b.getSdkVersionInt()&&a.broadcastEvent(\"onUserLandingInitialized\")})}catch(c){}})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(f){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var d=-1;try{d=a.indexOf(b)}catch(e){}return d};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,f,d){if(!imIsObjValid(f)||!imIsObjValid(d))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+f+\",\"+d):a+(\"&u-tap-o=\"+f+\",\"+d));return a};b.performAdClick=function(a,f){f=f||event;if(imIsObjValid(a)){var d=a.clickConfig,e=a.landingConfig;if(!imIsObjValid(d)&&!imIsObjValid(e))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(f))try{m=f.changedTouches[0].pageX,n=f.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(e)?imIsObjValid(d)?(l=e.url,q=e.fallbackUrl,p=e.urlType,g=d.url,h=d.pingWV,k=d.fr):(l=e.url,p=e.urlType):(l=d.url,p=d.urlType);d=b.getPlatform();try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=!0;if(0>h||1<h)h=!0;if(\"number\"!=typeof p||null==p)p=0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(g)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==d?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+d);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,f){f=f||event;if(imIsObjValid(a)){var d=a.clickConfig,e=a.landingConfig;\nif(!imIsObjValid(d)&&!imIsObjValid(e))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null;if(imIsObjValid(f))try{m=f.changedTouches[0].pageX,n=f.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(d)&&(g=d.url,h=d.pingWV,k=d.fr);try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=\n!0;if(0>h||1<h)h=!0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");b.onUserInteraction(e)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){console.log(\"openEmbedded is deprecated, will be removed in future version\");\nmraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};b.openExternal=function(b,f){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,f)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=\nfunction(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();";
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 == null) {
            return strM1847a;
        }
        String TAG2 = f1696P0;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        ((C3162g5) interfaceC3147f53).m2147a(TAG2, "Returning fetched Mraid Js string.");
        return strM1847a;
    }

    public final C2847K9 getOrientationProperties() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "getOrientationProperties "));
        }
        return this.f1768r0;
    }

    public final long getPlacementId() {
        return this.f1720L;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public byte getPlacementType() {
        return this.f1735b;
    }

    public InterfaceC3411x getReferenceContainer() {
        return this.f1729S;
    }

    public final JSONArray getRenderableAdIndexes() {
        JSONArray jSONArrayM1574N;
        InterfaceC3052Z interfaceC3052Z = this.f1732V;
        return (interfaceC3052Z == null || (jSONArrayM1574N = ((AbstractC2928Q0) interfaceC3052Z).m1574N()) == null) ? new JSONArray() : jSONArrayM1574N;
    }

    public final AdConfig.RenderingConfig getRenderingConfig() {
        AdConfig adConfig = this.f1765q;
        if (adConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            adConfig = null;
        }
        return adConfig.getRendering();
    }

    public final JSONObject getSafeArea() {
        C2926Pd c2926Pd = this.f1782y0;
        if (c2926Pd == null) {
            return null;
        }
        Integer numM1390f = AbstractC2886N3.m1390f();
        C2911Od c2911Od = (numM1390f == null && (numM1390f = AbstractC2886N3.f1299g) == null) ? null : (C2911Od) c2926Pd.f1413d.get(Integer.valueOf(numM1390f.intValue()));
        if (c2911Od != null) {
            return c2911Od.m1424a();
        }
        return null;
    }

    public final boolean getShouldFireLandingPageBeacons() {
        return this.f1780x0;
    }

    public final long getShowTimeStamp() {
        InterfaceC3052Z interfaceC3052Z = this.f1732V;
        if (interfaceC3052Z != null) {
            return ((AbstractC2928Q0) interfaceC3052Z).m1575O();
        }
        return 0L;
    }

    public Map<String, C2955S0> getTelemetryManagerMap() {
        return this.f1699A0;
    }

    public C3334rc getTelemetryOnAdImpression() {
        Map<String, C2955S0> telemetryManagerMap = getTelemetryManagerMap();
        return new C3334rc(telemetryManagerMap != null ? telemetryManagerMap.get("AdImpressionSuccessful") : null, this.f1766q0, getCreativeId(), getMarkupType());
    }

    public final boolean getUnloaded() {
        return this.f1784z0;
    }

    public final InterfaceC3335rd getVISIBILITY_CHANGE_LISTENER() {
        return this.f1711G0;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public View getVideoContainerView() {
        return null;
    }

    public final String getViewState() {
        return this.f1761o;
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    public long getViewTouchTimestamp() {
        return this.f1745g;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    @Override // com.inmobi.media.InterfaceC3411x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.inmobi.media.AbstractC3260md getViewableAd() {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya.getViewableAd():com.inmobi.media.md");
    }

    public final int[] getViewableFrameArray() {
        return this.f1740d0;
    }

    public final AbstractC2881Md getWindowInsetListener() {
        return this.f1703C0;
    }

    /* JADX INFO: renamed from: h */
    public final void m1973h() {
        if (this.f1704D.get()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2151b(TAG, "fireAdReady called on destroyed view");
                return;
            }
            return;
        }
        if (this.f1784z0) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
            if (interfaceC3147f52 != null) {
                String TAG2 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2147a(TAG2, "fireAdReady " + this + " - Ad is already unloaded");
                return;
            }
            return;
        }
        C3153fb c3153fb = this.f1725O;
        if (c3153fb != null) {
            Map mapM2138a = c3153fb.m2138a();
            long j = c3153fb.f2077b;
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            mapM2138a.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("FireAdReady", mapM2138a, EnumC3259mc.f2349a);
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f53).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "fireAdReady "));
        }
        this.f1758m0 = true;
        if (this.f1751j == 0) {
            m1975j();
        }
        m1990y();
        getListener().mo1190h(this);
    }

    /* JADX INFO: renamed from: i */
    public final void m1974i() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "fireClickTrackers "));
        }
        C3055Z2 c3055z2 = this.f1715I0;
        if (c3055z2 != null && !c3055z2.f1799g.get()) {
            c3055z2.f1796d.f1982g = 1;
            Intrinsics.checkNotNull(c3055z2.f1795c);
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "fireOnUserInteraction "));
        }
        m1960b("window.imraidview.onUserInteraction();");
        getListener().mo1633b(this);
    }

    /* JADX INFO: renamed from: j */
    public final void m1975j() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "fireImpression "));
        }
        if (Intrinsics.areEqual(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.f1766q0) || Intrinsics.areEqual("audio", this.f1766q0)) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "recordContextualData "));
        }
        C3055Z2 c3055z2 = this.f1715I0;
        if (c3055z2 != null) {
            c3055z2.m2001a();
        }
        m1960b("window.imraidview.impressionRendered();");
        getListener().mo1649c(this);
    }

    /* JADX INFO: renamed from: k */
    public final boolean m1976k() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3208j6.m2261a(str, "TAG", "hasUserInteracted ").append(getViewTouchTimestamp()).append(' ').append(getRenderingConfig().getUserTouchResetTime()).toString());
        }
        return !getRenderingConfig().getAutoRedirectionEnforcement() || this.f1731U || (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < getRenderingConfig().getUserTouchResetTime());
    }

    /* JADX INFO: renamed from: l */
    public final boolean m1977l() {
        return (Intrinsics.areEqual(getAdType(), "banner") && getAdConfig().getMraid3().getBannerEnabled()) || (Intrinsics.areEqual(getAdType(), "int") && getAdConfig().getMraid3().getInterstitialEnabled());
    }

    /* JADX INFO: renamed from: m */
    public final void m1978m() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onUserLandingCompleted "));
        }
        m1960b("window.imraid.broadcastEvent('onUserLandingCompleted');");
    }

    /* JADX INFO: renamed from: n */
    public final void m1979n() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "processUnload "));
        }
        if (this.f1704D.get()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
            if (interfaceC3147f52 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG, "unload called on destroyed view");
                return;
            }
            return;
        }
        if (!m1977l()) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG2 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG2, "mraid 3.0 is not enabled");
                return;
            }
            return;
        }
        if (this.f1760n0) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1749i;
            if (interfaceC3147f54 != null) {
                String TAG3 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f54).m2151b(TAG3, "unload called on failed view");
                return;
            }
            return;
        }
        if (this.f1784z0) {
            return;
        }
        this.f1784z0 = true;
        ExecutorC2919P6 executorC2919P6 = (ExecutorC2919P6) AbstractC3251m4.f2321d.getValue();
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                GestureDetectorOnGestureListenerC3049Ya.m1948b(this.f$0);
            }
        };
        executorC2919P6.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC2919P6.f1374a.post(runnable);
    }

    /* JADX INFO: renamed from: o */
    public final void m1980o() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setCurrentPosition "));
        }
        this.f1773u = new JSONObject();
        getLocationOnScreen(new int[2]);
        try {
            JSONObject jSONObject = this.f1773u;
            if (jSONObject != null) {
                jSONObject.put(SvgConstants.Attributes.f3330X, AbstractC3429y2.m2609b(r0[0] / AbstractC2886N3.m1384b()));
            }
            JSONObject jSONObject2 = this.f1773u;
            if (jSONObject2 != null) {
                jSONObject2.put(SvgConstants.Attributes.f3333Y, AbstractC3429y2.m2609b(r0[1] / AbstractC2886N3.m1384b()));
            }
            int iM2609b = AbstractC3429y2.m2609b(getWidth() / AbstractC2886N3.m1384b());
            int iM2609b2 = AbstractC3429y2.m2609b(getHeight() / AbstractC2886N3.m1384b());
            JSONObject jSONObject3 = this.f1773u;
            if (jSONObject3 != null) {
                jSONObject3.put("width", iM2609b);
            }
            JSONObject jSONObject4 = this.f1773u;
            if (jSONObject4 != null) {
                jSONObject4.put("height", iM2609b2);
            }
        } catch (JSONException unused) {
        }
        synchronized (this.f1708F) {
            this.f1777w = false;
            this.f1708F.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onAttachedToWindow "));
        }
        super.onAttachedToWindow();
        C3149f7 c3149f7 = this.f1763p;
        if (c3149f7 != null) {
            C2961S6 c2961s6 = c3149f7.f2065d;
            if (c2961s6 != null) {
                c2961s6.mo1762b();
            }
            C2961S6 c2961s62 = c3149f7.f2066e;
            if (c2961s62 != null) {
                c2961s62.mo1762b();
            }
            C2961S6 c2961s63 = c3149f7.f2067f;
            if (c2961s63 != null) {
                c2961s63.mo1762b();
            }
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2152c(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "setIsViewHardwareAccelerated "));
        }
        this.f1767r = isHardwareAccelerated();
        if (this.f1755l == null) {
            ViewParent parent = getParent();
            this.f1755l = new WeakReference(parent instanceof ViewGroup ? (ViewGroup) parent : null);
        }
        m1987v();
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 != null) {
            String str3 = f1696P0;
            ((C3162g5) interfaceC3147f53).m2147a(str3, AbstractC3021Wa.m1893a(this, str3, "TAG", "startTrackingExposure "));
        }
        if (!m1977l() || this.f1741e) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1749i;
            if (interfaceC3147f54 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f54).m2151b(TAG, "exposureTracker is already initialized");
            }
        } else {
            this.f1776v0 = new C2807I(this, getAdConfig().getMraid3().getExposureChangeInterval(), this.f1748h0, this.f1749i);
        }
        C2807I c2807i = this.f1776v0;
        if (c2807i != null) {
            if (c2807i.f1097i.compareAndSet(false, true)) {
                Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(AbstractC3444z2.m2631a(new C2762F(c2807i)));
                if (thM3328exceptionOrNullimpl != null) {
                    InterfaceC3147f5 interfaceC3147f55 = c2807i.f1092d;
                    if (interfaceC3147f55 != null) {
                        ((C3162g5) interfaceC3147f55).m2151b("AdExposureTracker", "Error starting exposure tracking - " + thM3328exceptionOrNullimpl.getMessage());
                    }
                    c2807i.f1097i.set(false);
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3114d2 event = new C3114d2(thM3328exceptionOrNullimpl);
                    Intrinsics.checkNotNullParameter(event, "event");
                    C3402w5.f2712d.m2158a(event);
                }
            } else {
                InterfaceC3147f5 interfaceC3147f56 = c2807i.f1092d;
                if (interfaceC3147f56 != null) {
                    ((C3162g5) interfaceC3147f56).m2152c("AdExposureTracker", "Exposure tracking is already started");
                }
            }
        }
        InterfaceC3147f5 interfaceC3147f57 = this.f1749i;
        if (interfaceC3147f57 != null) {
            String str4 = f1696P0;
            ((C3162g5) interfaceC3147f57).m2147a(str4, AbstractC3021Wa.m1893a(this, str4, "TAG", "startTrackingAudioVolume "));
        }
        if (m1977l() && !this.f1741e) {
            C3336s c3336s = C3336s.f2517a;
            C3336s.m2387a(this.f1749i, this.f1746g0);
        }
        InterfaceC3147f5 interfaceC3147f58 = this.f1749i;
        if (interfaceC3147f58 != null) {
            String TAG2 = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f58).m2147a(TAG2, "==== CHECKPOINT REACHED - VISIBLE ====");
        }
        InterfaceC3147f5 interfaceC3147f59 = this.f1749i;
        if (interfaceC3147f59 != null) {
            ((C3162g5) interfaceC3147f59).m2150b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onDetachedFromWindow "));
        }
        C2986U3 c2986u3 = this.f1762o0;
        C3262n0 c3262n0 = null;
        if (c2986u3 != null) {
            C2986U3.m1833a(c2986u3, 8, true, null, 12);
        }
        C3149f7 c3149f7 = this.f1763p;
        if (c3149f7 != null) {
            C2961S6 c2961s6 = c3149f7.f2065d;
            if (c2961s6 != null) {
                c2961s6.mo1761a();
            }
            C2961S6 c2961s62 = c3149f7.f2066e;
            if (c2961s62 != null) {
                c2961s62.mo1761a();
            }
            C2961S6 c2961s63 = c3149f7.f2067f;
            if (c2961s63 != null) {
                c2961s63.mo1761a();
            }
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, "Detached from window");
        }
        C3262n0 c3262n02 = this.f1770s0;
        if (c3262n02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
        } else {
            c3262n0 = c3262n02;
        }
        if (c3262n0.f2359d.get()) {
            c3262n0.m2305a("session end is already triggered");
        } else if (!c3262n0.f2356a.getEnabled()) {
            c3262n0.m2305a("config kill switch - false. ad quality will skip");
        } else if (c3262n0.f2362g == null) {
            c3262n0.m2305a("setup not done. ignore trigger");
        } else {
            c3262n0.f2359d.set(true);
            c3262n0.m2307a(false);
        }
        if (this.f1772t0.get()) {
            ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).schedule(new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    GestureDetectorOnGestureListenerC3049Ya.m1943a(this.f$0);
                }
            }, 1L, TimeUnit.SECONDS);
        }
        m1987v();
        m1986u();
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f53).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "stopTrackingAudioVolume "));
        }
        C3336s c3336s = C3336s.f2517a;
        C3336s.m2392c(this.f1749i, this.f1746g0);
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1749i;
            if (interfaceC3147f54 != null) {
                String str3 = f1696P0;
                ((C3162g5) interfaceC3147f54).m2151b(str3, AbstractC3208j6.m2261a(str3, "TAG", "Detaching WebView from window encountered an error ( ").append(e.getMessage()).append(" )").toString());
            }
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (!getRenderingConfig().getSupportedGestures().contains(1)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "Double tap gesture is disabled from config");
            }
            return false;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "onDoubleTapEvent detected \n " + e);
        }
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        if (e.getAction() == 1) {
            JSONArray jSONArray = new JSONArray();
            try {
                jSONArray.put(AbstractC3429y2.m2610c(e.getX()));
                jSONArray.put(AbstractC3429y2.m2610c(e.getY()));
            } catch (JSONException e2) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
                if (interfaceC3147f53 != null) {
                    String TAG3 = f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f53).m2148a(TAG3, "Exception in onDoubleTap", e2);
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONArray);
            m1960b("window.imraidview.onGestureDetected('1', '" + jSONArray2 + "');");
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent e2, float f, float f2) {
        Intrinsics.checkNotNullParameter(e2, "e2");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (!getRenderingConfig().getSupportedGestures().contains(5)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "LongPress gesture is disabled from config");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "onLongPress detected \n " + e);
        }
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(AbstractC3429y2.m2610c(e.getX()));
            jSONArray.put(AbstractC3429y2.m2610c(e.getY()));
        } catch (JSONException e2) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG3 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f53).m2148a(TAG3, "Exception in onLongPress", e2);
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(jSONArray);
        m1960b("window.imraidview.onGestureDetected('5', '" + jSONArray2 + "');");
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent e2, float f, float f2) {
        Intrinsics.checkNotNullParameter(e2, "e2");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (!getRenderingConfig().getSupportedGestures().contains(0)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "Click gesture is disabled from config");
            }
            return false;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "onSingleTapConfirmed detected \n " + e);
        }
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(AbstractC3429y2.m2610c(e.getX()));
            jSONArray.put(AbstractC3429y2.m2610c(e.getY()));
        } catch (JSONException e2) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG3 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f53).m2148a(TAG3, "Exception in onSingleTapConfirmed", e2);
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(jSONArray);
        m1960b("window.imraidview.onGestureDetected('0', '" + jSONArray2 + "');");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "onSingleTapUp detected \n " + e);
        }
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        return false;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onSizeChanged "));
        }
        super.onSizeChanged(i, i2, i3, i4);
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, "onSizeChanged (" + i + ", " + i2 + ')');
        }
        if (i == 0 || i2 == 0) {
            return;
        }
        int iM2609b = AbstractC3429y2.m2609b(i / AbstractC2886N3.m1384b());
        int iM2609b2 = AbstractC3429y2.m2609b(i2 / AbstractC2886N3.m1384b());
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG2 = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f53).m2147a(TAG2, "fireSizeChanged " + this + " w-" + iM2609b + " h-" + iM2609b2);
        }
        m1960b("window.mraidview.broadcastEvent('sizeChange'," + iM2609b + ',' + iM2609b2 + ");");
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Float.isNaN(event.getX()) || Float.isNaN(event.getY())) {
            if (!this.f1774u0) {
                InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
                if (interfaceC3147f5 != null) {
                    String TAG = f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2151b(TAG, "onTouchEvent Invalid Coordinates " + event);
                }
                this.f1774u0 = true;
            }
            return super.onTouchEvent(event);
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onTouchEvent "));
        }
        if (this.f1735b == 1) {
            this.f1754k0.m2003a(event);
        }
        this.f1756l0.onTouchEvent(event);
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        return super.onTouchEvent(event);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    @Override // android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onWindowFocusChanged(boolean r5) {
        /*
            r4 = this;
            com.inmobi.media.f5 r0 = r4.f1749i
            if (r0 == 0) goto L29
            java.lang.String r1 = com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya.f1696P0
            java.lang.String r2 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "onWindowFocusChanged "
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r3 = " - "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            com.inmobi.media.g5 r0 = (com.inmobi.media.C3162g5) r0
            r0.m2147a(r1, r2)
        L29:
            super.onWindowFocusChanged(r5)
            r0 = 1
            if (r5 == 0) goto L4b
            boolean r5 = r4.isShown()
            if (r5 == 0) goto L4a
            com.inmobi.media.z4 r5 = com.inmobi.media.C2722C4.f870k
            int r1 = r4.f1752j0
            r2 = 0
            boolean r1 = r5.mo2404a(r4, r4, r1, r2)
            if (r1 == 0) goto L4a
            int r1 = r4.f1752j0
            boolean r5 = r5.mo2403a(r4, r4, r1)
            if (r5 == 0) goto L4a
            r5 = r0
            goto L4b
        L4a:
            r5 = 0
        L4b:
            android.app.Activity r1 = r4.getFullScreenActivity()
            if (r1 == 0) goto L58
            boolean r1 = r1.isInMultiWindowMode()
            if (r1 != r0) goto L58
            goto L5b
        L58:
            r4.m1965c(r5)
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya.onWindowFocusChanged(boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    @Override // android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onWindowVisibilityChanged(int r5) {
        /*
            r4 = this;
            com.inmobi.media.f5 r0 = r4.f1749i
            if (r0 == 0) goto L29
            java.lang.String r1 = com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya.f1696P0
            java.lang.String r2 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "onWindowVisibilityChanged "
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r4)
            r3 = 32
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            com.inmobi.media.g5 r0 = (com.inmobi.media.C3162g5) r0
            r0.m2152c(r1, r2)
        L29:
            super.onWindowVisibilityChanged(r5)
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L32
            r5 = r0
            goto L33
        L32:
            r5 = r1
        L33:
            if (r5 == 0) goto L51
            int r5 = r4.getVisibilityTrackingMinPercentage()
            boolean r2 = r4.isShown()
            if (r2 == 0) goto L4f
            com.inmobi.media.z4 r2 = com.inmobi.media.C2722C4.f870k
            r3 = 0
            boolean r3 = r2.mo2404a(r4, r4, r5, r3)
            if (r3 == 0) goto L4f
            boolean r5 = r2.mo2403a(r4, r4, r5)
            if (r5 == 0) goto L4f
            goto L52
        L4f:
            r0 = r1
            goto L52
        L51:
            r0 = r5
        L52:
            r4.m1965c(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya.onWindowVisibilityChanged(int):void");
    }

    /* JADX INFO: renamed from: p */
    public final void m1981p() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setDefaultPosition "));
        }
        int[] iArr = new int[2];
        this.f1771t = new JSONObject();
        if (this.f1755l == null) {
            ViewParent parent = getParent();
            this.f1755l = new WeakReference(parent instanceof ViewGroup ? (ViewGroup) parent : null);
        }
        WeakReference weakReference = this.f1755l;
        try {
            if ((weakReference != null ? (ViewGroup) weakReference.get() : null) != null) {
                WeakReference weakReference2 = this.f1755l;
                if (weakReference2 != null && (viewGroup3 = (ViewGroup) weakReference2.get()) != null) {
                    viewGroup3.getLocationOnScreen(iArr);
                }
                JSONObject jSONObject = this.f1771t;
                if (jSONObject != null) {
                    jSONObject.put(SvgConstants.Attributes.f3330X, AbstractC3429y2.m2609b(iArr[0] / AbstractC2886N3.m1384b()));
                }
                JSONObject jSONObject2 = this.f1771t;
                if (jSONObject2 != null) {
                    jSONObject2.put(SvgConstants.Attributes.f3333Y, AbstractC3429y2.m2609b(iArr[1] / AbstractC2886N3.m1384b()));
                }
                WeakReference weakReference3 = this.f1755l;
                int iM2609b = AbstractC3429y2.m2609b(((weakReference3 == null || (viewGroup2 = (ViewGroup) weakReference3.get()) == null) ? 0 : viewGroup2.getWidth()) / AbstractC2886N3.m1384b());
                WeakReference weakReference4 = this.f1755l;
                int iM2609b2 = AbstractC3429y2.m2609b(((weakReference4 == null || (viewGroup = (ViewGroup) weakReference4.get()) == null) ? 0 : viewGroup.getHeight()) / AbstractC2886N3.m1384b());
                JSONObject jSONObject3 = this.f1771t;
                if (jSONObject3 != null) {
                    jSONObject3.put("width", iM2609b);
                }
                JSONObject jSONObject4 = this.f1771t;
                if (jSONObject4 != null) {
                    jSONObject4.put("height", iM2609b2);
                }
            } else {
                JSONObject jSONObject5 = this.f1771t;
                if (jSONObject5 != null) {
                    jSONObject5.put(SvgConstants.Attributes.f3330X, 0);
                }
                JSONObject jSONObject6 = this.f1771t;
                if (jSONObject6 != null) {
                    jSONObject6.put(SvgConstants.Attributes.f3333Y, 0);
                }
                JSONObject jSONObject7 = this.f1771t;
                if (jSONObject7 != null) {
                    jSONObject7.put("width", 0);
                }
                JSONObject jSONObject8 = this.f1771t;
                if (jSONObject8 != null) {
                    jSONObject8.put("height", 0);
                }
            }
        } catch (JSONException unused) {
        }
        synchronized (this.f1706E) {
            this.f1775v = false;
            this.f1706E.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m1982q() {
        int webImpressionMinPercentageViewed;
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setFallbackImpressionMinPercentageViewed "));
        }
        AdConfig adConfig = null;
        if (Intrinsics.areEqual(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.f1766q0)) {
            AdConfig adConfig2 = this.f1765q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getVideoImpressionMinPercentageViewed();
        } else if (!Intrinsics.areEqual("audio", this.f1766q0)) {
            AdConfig adConfig3 = this.f1765q;
            if (adConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig3;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getWebImpressionMinPercentageViewed();
        } else if (Intrinsics.areEqual("audio", getAdType())) {
            AdConfig adConfig4 = this.f1765q;
            if (adConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig4;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getAudioImpressionMinPercentageViewed();
        } else {
            AdConfig adConfig5 = this.f1765q;
            if (adConfig5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig5;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getWebImpressionMinPercentageViewed();
        }
        this.f1752j0 = webImpressionMinPercentageViewed;
    }

    /* JADX INFO: renamed from: r */
    public final void m1983r() {
        int webImpressionMinTimeViewed;
        AdConfig adConfig = null;
        if (Intrinsics.areEqual(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.f1766q0)) {
            AdConfig adConfig2 = this.f1765q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getVideoImpressionMinTimeViewed();
        } else if (!Intrinsics.areEqual("audio", this.f1766q0)) {
            AdConfig adConfig3 = this.f1765q;
            if (adConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig3;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getWebImpressionMinTimeViewed();
        } else if (Intrinsics.areEqual("audio", getAdType())) {
            AdConfig adConfig4 = this.f1765q;
            if (adConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig4;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getAudioImpressionMinTimeViewed();
        } else {
            AdConfig adConfig5 = this.f1765q;
            if (adConfig5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig5;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getWebImpressionMinTimeViewed();
        }
        this.f1750i0 = webImpressionMinTimeViewed;
    }

    /* JADX INFO: renamed from: s */
    public final void m1984s() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setFallbackImpressionParams "));
        }
        m1983r();
        m1982q();
        m1985t();
    }

    public final void setAdPodHandler(InterfaceC3052Z interfaceC3052Z) {
        this.f1732V = interfaceC3052Z;
    }

    public final void setAdSize(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setAdSize "));
        }
        C2901O3 c2901o3 = AbstractC2886N3.f1293a;
        this.f1736b0 = (int) (AbstractC2886N3.m1384b() * Integer.parseInt(((String[]) new Regex(SvgConstants.Attributes.f3330X).split(adSize, 0).toArray(new String[0]))[0]));
        this.f1742e0 = ((int) (AbstractC2886N3.m1384b() * Integer.parseInt(((String[]) new Regex(SvgConstants.Attributes.f3330X).split(adSize, 0).toArray(new String[0]))[1]))) * this.f1736b0;
    }

    public void setAdType(String str) {
        this.f1726P = str;
    }

    public final void setAllowAutoRedirection(boolean z) {
        this.f1731U = z;
    }

    public final void setAndUpdateViewState(String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setAndUpdateViewState "));
        }
        this.f1761o = state;
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3208j6.m2261a(str2, "TAG", "set state:").append(this.f1761o).toString());
        }
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = state.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f53).m2147a(TAG, "fireStateChange " + this + ' ' + lowerCase);
        }
        m1960b("window.mraidview.broadcastEvent('stateChange','" + lowerCase + "');");
    }

    public final void setBeaconUrl(String str) {
        this.f1778w0 = str;
    }

    public final void setBlobProvider(InterfaceC3054Z1 interfaceC3054Z1) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setBlobProvider "));
        }
        this.f1728R = interfaceC3054Z1;
    }

    public final void setCloseAssetArea(C2896Nd value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!this.f1713H0) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            if (!AbstractC3429y2.m2606a(context)) {
                return;
            }
        }
        this.f1723M0 = new C2896Nd(0, value.f1323b, value.f1324c, 0);
    }

    public final void setCloseEndCardTracker(String url) {
        InterfaceC3230kd interfaceC3230kdM921d;
        C3080ad c3080ad;
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setCloseEndCardTracker "));
        }
        InterfaceC3411x referenceContainer = getReferenceContainer();
        if (!(referenceContainer instanceof C2696A8) || url == null) {
            return;
        }
        C2696A8 c2696a8 = (C2696A8) referenceContainer;
        c2696a8.getClass();
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f52 = c2696a8.f826W;
        if (interfaceC3147f52 != null) {
            String str2 = c2696a8.f827X;
            ((C3162g5) interfaceC3147f52).m2152c(str2, AbstractC3223k6.m2276a(str2, "TAG", "Setting close end tracker with URL : ", url));
        }
        View videoContainerView = c2696a8.getVideoContainerView();
        if (videoContainerView instanceof C2876M8) {
            Object tag = ((C2876M8) videoContainerView).getVideoView().getTag();
            C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (c2726c8 == null || (interfaceC3230kdM921d = c2726c8.m921d()) == null || (c3080ad = ((C3215jd) interfaceC3230kdM921d).f2240j) == null) {
                return;
            }
            C3375u8 tracker = new C3375u8(url, 0, "closeEndCard", null);
            Intrinsics.checkNotNullParameter(tracker, "tracker");
            c3080ad.f1860f.add(tracker);
        }
    }

    public final void setConfiguredArea(long j) {
        this.f1742e0 = ((long) getWidth()) * ((long) getHeight());
    }

    public final void setContentURL(String str) {
        this.f1738c0 = str;
    }

    public void setCreativeId(String str) {
        this.f1722M = str;
    }

    public final void setDisableBackButton(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setDisableBackButton "));
        }
        this.f1700B = z;
    }

    public final void setEmbeddedBrowserJSCallbacks(InterfaceC2958S3 interfaceC2958S3) {
        this.f1764p0 = interfaceC2958S3;
    }

    public void setExitAnimation(int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setExitAnimation "));
        }
        this.f1718K = i;
    }

    public void setFriendlyViews(Map<View, ? extends FriendlyObstructionPurpose> map) {
        this.f1727Q = map;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public void setFullScreenActivityContext(Activity activity) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setFullScreenActivityContext "));
        }
        this.f1753k = new WeakReference(activity);
        m1989x();
        if (this.f1741e || activity == null) {
            return;
        }
        C2926Pd c2926Pd = this.f1782y0;
        if (c2926Pd != null) {
            c2926Pd.m1535a();
        }
        this.f1782y0 = new C2926Pd(activity, this.f1703C0, this.f1749i);
    }

    public final void setImmersiveMode(boolean z) {
        this.f1713H0 = z;
    }

    public void setImpressionId(String str) {
        this.f1739d = str;
    }

    public final void setLandingPageTelemetryControlInfoOnWebViewClient(C3358t6 c3358t6) {
        C2986U3 c2986u3 = this.f1762o0;
        if (c2986u3 == null) {
            return;
        }
        c2986u3.f1564i = c3358t6;
        c2986u3.f1565j = new C3313q6(c3358t6, c2986u3);
    }

    public final void setLandingScheme(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f1743f = str;
    }

    public final void setMarkupTypeAdUnit(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f1705D0 = str;
    }

    public final void setOrientationProperties(C2847K9 orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setOrientationProperties "));
        }
        this.f1768r0 = orientationProperties;
        m1989x();
    }

    public final void setPlacementId(long j) {
        this.f1720L = j;
    }

    public final void setPreloadView(boolean z) {
        this.f1730T = z;
    }

    public void setReferenceContainer(InterfaceC3411x interfaceC3411x) {
        this.f1729S = interfaceC3411x;
    }

    public final void setRenderViewEventListener(AbstractC3078ab abstractC3078ab) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setRenderViewEventListener "));
        }
        this.f1757m = abstractC3078ab;
    }

    public final void setScrollable(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setScrollable "));
        }
        setScrollContainer(z);
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }

    public final void setShouldFireLandingPageBeacons(boolean z) {
        this.f1780x0 = z;
    }

    public void setTelemetryManagerMap(Map<String, C2955S0> map) {
        this.f1699A0 = map;
    }

    public final void setUnloaded(boolean z) {
        this.f1784z0 = z;
    }

    public final void setUseCustomClose(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "setUseCustomClose " + this + ' ' + z);
        }
        this.f1779x = z;
    }

    public void setViewTouchTimestamp(long j) {
        this.f1745g = j;
    }

    public final void setWatermark(final WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        if (getAdConfig().getWatermarkEnabled()) {
            final byte[] bArrDecode = Base64.decode(watermarkData.getWatermarkBase64EncodedString(), 0);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    GestureDetectorOnGestureListenerC3049Ya.m1946a(this.f$0, bArrDecode, watermarkData);
                }
            });
        } else {
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "Watermark disabled from config. ignoring...");
            }
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "stopLoading "));
        }
        if (this.f1704D.get()) {
            return;
        }
        super.stopLoading();
    }

    /* JADX INFO: renamed from: t */
    public final void m1985t() {
        byte interstitialImpressionType;
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "setFallbackImpressionType "));
        }
        String adType = getAdType();
        AdConfig adConfig = null;
        if (Intrinsics.areEqual(adType, "banner")) {
            AdConfig adConfig2 = this.f1765q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            interstitialImpressionType = adConfig.getViewability().getBannerImpressionType();
        } else if (Intrinsics.areEqual(adType, "audio")) {
            AdConfig adConfig3 = this.f1765q;
            if (adConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig3;
            }
            interstitialImpressionType = adConfig.getViewability().getAudioImpressionType();
        } else {
            AdConfig adConfig4 = this.f1765q;
            if (adConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig4;
            }
            interstitialImpressionType = adConfig.getViewability().getInterstitialImpressionType();
        }
        this.f1751j = interstitialImpressionType;
    }

    /* JADX INFO: renamed from: u */
    public final void m1986u() {
        InterfaceC3147f5 interfaceC3147f5;
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "stopTrackingExposure "));
        }
        C2807I c2807i = this.f1776v0;
        if (c2807i != null) {
            if (!c2807i.f1097i.compareAndSet(true, false)) {
                InterfaceC3147f5 interfaceC3147f53 = c2807i.f1092d;
                if (interfaceC3147f53 != null) {
                    ((C3162g5) interfaceC3147f53).m2152c("AdExposureTracker", "Exposure tracking is already stopped");
                    return;
                }
                return;
            }
            Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(AbstractC3444z2.m2631a(new C2777G(c2807i)));
            if (thM3328exceptionOrNullimpl == null || (interfaceC3147f5 = c2807i.f1092d) == null) {
                return;
            }
            ((C3162g5) interfaceC3147f5).m2151b("AdExposureTracker", "Error stopping exposure tracking - " + thM3328exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m1987v() {
        new C3414x2(this, !this.f1779x, !this.f1698A, this.f1749i).m2591a(this.f1723M0);
    }

    /* JADX INFO: renamed from: w */
    public final void m1988w() {
        getListener().mo1226d(this);
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "ad dismissed");
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2146a();
        }
        C3262n0 c3262n0 = this.f1770s0;
        if (c3262n0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            c3262n0 = null;
        }
        if (c3262n0.f2359d.get()) {
            c3262n0.m2305a("session end is already triggered");
            return;
        }
        if (!c3262n0.f2356a.getEnabled()) {
            c3262n0.m2305a("config kill switch - false. ad quality will skip");
        } else if (c3262n0.f2362g == null) {
            c3262n0.m2305a("setup not done. ignore trigger");
        } else {
            c3262n0.f2359d.set(true);
            c3262n0.m2307a(false);
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m1989x() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "updateActivitiesOrientationProperties "));
        }
        Activity activity = (Activity) this.f1753k.get();
        if (activity == null || !(activity instanceof InMobiAdActivity)) {
            return;
        }
        C2847K9 orientationProperties = this.f1768r0;
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        C2945R4 c2945r4 = ((InMobiAdActivity) activity).f790a;
        if (c2945r4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
            c2945r4 = null;
        }
        c2945r4.m1759a(orientationProperties);
    }

    /* JADX INFO: renamed from: y */
    public final void m1990y() {
        int i = AbstractC3251m4.f2318a;
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).execute(new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                GestureDetectorOnGestureListenerC3049Ya.m1949c(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: e */
    public final void mo1969e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "disableHardwareAcceleration called. "));
        }
        try {
            setLayerType(1, null);
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1955a(String url, String templateInfoStr, boolean z) {
        Activity activity;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(templateInfoStr, "templateInfoStr");
        try {
            JSONObject jSONObject = new JSONObject(templateInfoStr);
            InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2147a(TAG, "report - " + getAdType() + " type - sdk - " + Build.VERSION.SDK_INT);
            }
            if (Intrinsics.areEqual(getAdType(), "int") && Build.VERSION.SDK_INT >= 29 && (activity = (Activity) this.f1753k.get()) != null) {
                ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
                C3127e0.m2082a(activity, this, url, z, jSONObject, this.f1701B0);
            } else {
                ScheduledExecutorService scheduledExecutorService2 = C3127e0.f2033a;
                C3127e0.m2083a(this, this, url, z, jSONObject, this.f1701B0);
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
            if (interfaceC3147f52 != null) {
                String TAG2 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2148a(TAG2, "issue wile reporting ad", e);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1943a(GestureDetectorOnGestureListenerC3049Ya this$0) {
        InterfaceC3147f5 interfaceC3147f5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isAttachedToWindow() || (interfaceC3147f5 = this$0.f1749i) == null) {
            return;
        }
        ((C3162g5) interfaceC3147f5).m2146a();
    }

    /* JADX INFO: renamed from: a */
    public final void m1952a(AbstractC3078ab abstractC3078ab, AdConfig adConfig) {
        AdConfig adConfig2;
        int otherNetworkLoadsLimit;
        AdConfig adConfig3;
        AdConfig adConfig4;
        WebViewClient webViewClient;
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "initialize "));
        }
        if (Intrinsics.areEqual(this.f1705D0, "htmlUrl")) {
            getSettings().setMixedContentMode(2);
        }
        this.f1765q = adConfig;
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "setImpressionParams "));
        }
        if (this.f1737c == null) {
            m1984s();
        } else {
            try {
                m1984s();
                for (C2805Hc c2805Hc : this.f1737c) {
                    if (c2805Hc.f1084a == 2) {
                        if (c2805Hc.f1085b.containsKey("type")) {
                            Object obj = c2805Hc.f1085b.get("type");
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                            this.f1751j = (byte) ((Integer) obj).intValue();
                        } else {
                            m1985t();
                        }
                        if (c2805Hc.f1085b.containsKey("time")) {
                            Object obj2 = c2805Hc.f1085b.get("time");
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
                            this.f1750i0 = ((Integer) obj2).intValue();
                        } else {
                            m1983r();
                        }
                        if (c2805Hc.f1085b.containsKey("view")) {
                            Object obj3 = c2805Hc.f1085b.get("view");
                            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Int");
                            this.f1752j0 = ((Integer) obj3).intValue();
                        } else {
                            m1982q();
                        }
                        if (this.f1751j == 2) {
                            if (c2805Hc.f1085b.containsKey("pixel")) {
                                Object obj4 = c2805Hc.f1085b.get("pixel");
                                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Int");
                                this.f1744f0 = ((Integer) obj4).intValue();
                            } else {
                                m1985t();
                            }
                            if (c2805Hc.f1085b.containsKey(TypedValues.AttributesType.S_FRAME)) {
                                Object obj5 = c2805Hc.f1085b.get(TypedValues.AttributesType.S_FRAME);
                                JSONArray jSONArray = obj5 instanceof JSONArray ? (JSONArray) obj5 : null;
                                if (jSONArray != null) {
                                    this.f1740d0 = new int[jSONArray.length()];
                                    int length = jSONArray.length();
                                    for (int i = 0; i < length; i++) {
                                        int[] iArr = this.f1740d0;
                                        if (iArr != null) {
                                            Object obj6 = jSONArray.get(i);
                                            Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Int");
                                            iArr[i] = ((Integer) obj6).intValue();
                                        }
                                    }
                                }
                            } else {
                                m1985t();
                            }
                        }
                    }
                }
            } catch (JSONException unused) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
                if (interfaceC3147f53 != null) {
                    String TAG = f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b(TAG, "Exception in parsing the impressionType and pixel frame");
                }
                m1984s();
            } catch (Exception unused2) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1749i;
                if (interfaceC3147f54 != null) {
                    String TAG2 = f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f54).m2151b(TAG2, "SDK encountered an unexpected error in parsing impression parameters");
                }
                m1984s();
            }
        }
        this.f1757m = abstractC3078ab;
        ViewParent parent = getParent();
        this.f1755l = new WeakReference(parent instanceof ViewGroup ? (ViewGroup) parent : null);
        setBackgroundColor(getRenderingConfig().getWebviewBackgroundColor());
        new C3074a7(getMraidConfig().getUrl(), getMraidConfig().getMaxRetries(), getMraidConfig().getRetryInterval(), getMraidConfig().getExpiry(), this.f1749i).m2016a();
        setImportantForAccessibility(2);
        setScrollable(false);
        int i2 = Build.VERSION.SDK_INT;
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(getAdConfig().getRendering().getEnableDomStorage());
        getSettings().setGeolocationEnabled(true);
        if (this.f1741e) {
            InterfaceC3147f5 interfaceC3147f55 = this.f1749i;
            if (interfaceC3147f55 != null) {
                String TAG3 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f55).m2152c(TAG3, "view is in-app browser. Using EmbeddedBrowserViewClient.");
            }
            C2986U3 c2986u3 = new C2986U3("IN_CUSTOM_BROWSER", C2878Ma.f1266a, C2893Na.f1317a, this.f1749i);
            this.f1762o0 = c2986u3;
            webViewClient = c2986u3;
        } else {
            InterfaceC3147f5 interfaceC3147f56 = this.f1749i;
            if (interfaceC3147f56 != null) {
                String TAG4 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                ((C3162g5) interfaceC3147f56).m2152c(TAG4, "view is ad. Using RenderViewClient");
            }
            C3063Za c3063Za = new C3063Za(this.f1725O, this.f1749i, new C2908Oa(this));
            String adType = getAdType();
            if (Intrinsics.areEqual(adType, "banner")) {
                AdConfig adConfig5 = this.f1765q;
                if (adConfig5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
                    adConfig4 = null;
                } else {
                    adConfig4 = adConfig5;
                }
                otherNetworkLoadsLimit = adConfig4.getRendering().getBannerNetworkLoadsLimit();
            } else if (Intrinsics.areEqual(adType, "audio")) {
                AdConfig adConfig6 = this.f1765q;
                if (adConfig6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
                    adConfig3 = null;
                } else {
                    adConfig3 = adConfig6;
                }
                otherNetworkLoadsLimit = adConfig3.getRendering().getAudioNetworkLoadsLimit();
            } else {
                AdConfig adConfig7 = this.f1765q;
                if (adConfig7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
                    adConfig2 = null;
                } else {
                    adConfig2 = adConfig7;
                }
                otherNetworkLoadsLimit = adConfig2.getRendering().getOtherNetworkLoadsLimit();
            }
            c3063Za.f1616b = otherNetworkLoadsLimit;
            webViewClient = c3063Za;
        }
        setWebViewClient(webViewClient);
        if (this.f1741e && getAdConfig().getEnableCookiesOnInAppBrowser()) {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
        setWebChromeClient(this.f1719K0);
        if (!this.f1741e) {
            C3030X5 c3030x5 = new C3030X5(this.f1735b, this);
            InterfaceC3147f5 logger = this.f1749i;
            if (logger != null) {
                Intrinsics.checkNotNullParameter(logger, "logger");
                c3030x5.f1644d = logger;
            }
            addJavascriptInterface(c3030x5, "sdkController");
        }
        this.f1763p = new C3149f7(this, this.f1749i);
        this.f1770s0 = new C3262n0(adConfig.getAdQuality(), this.f1749i);
        if (i2 >= 29) {
            setWebViewRenderProcessClient((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue(), new C3123db(this.f1749i, this.f1725O));
        }
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: c */
    public final boolean mo1966c() {
        return this.f1704D.get();
    }

    /* JADX INFO: renamed from: c */
    public final void m1964c(String str) {
        C3153fb c3153fb = this.f1725O;
        if (c3153fb != null) {
            c3153fb.m2139b();
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "loadDataInWebView "));
        }
        this.f1710G = false;
        if (this.f1704D.get()) {
            return;
        }
        Intrinsics.checkNotNull(str);
        loadDataWithBaseURL("", str, "text/html", "UTF-8", null);
    }

    /* JADX INFO: renamed from: b */
    public final void m1960b(final String value) {
        Intrinsics.checkNotNullParameter(value, "js");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "injectJavaScript " + this + " - " + value);
        }
        Intrinsics.checkNotNullParameter(value, "value");
        new Handler(getContainerContext().getMainLooper()).postAtFrontOfQueue(new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GestureDetectorOnGestureListenerC3049Ya.m1944a(this.f$0, value);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public final void m1961b(String str, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "processMediaPlaybackRequest "));
        }
        if (this.f1784z0) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
            if (interfaceC3147f52 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG, "Media playback is not allowed after unload! Ignoring request ...");
                return;
            }
            return;
        }
        if (1 != this.f1735b) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG2 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG2, "Media playback is only supported on full screen ads! Ignoring request ...");
                return;
            }
            return;
        }
        Activity activity = (Activity) this.f1753k.get();
        if (activity == null) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1749i;
            if (interfaceC3147f54 != null) {
                String TAG3 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f54).m2151b(TAG3, "Media playback is  not allowed before it is visible! Ignoring request ...");
            }
            m1954a(str, "Media playback is  not allowed before it is visible! Ignoring request ...", "playVideo");
            return;
        }
        C3149f7 c3149f7 = this.f1763p;
        if (c3149f7 != null) {
            c3149f7.m2133a(url, activity);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1968d(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "processDisableCloseRegionRequest " + this + ' ' + z);
        }
        this.f1698A = z;
        m1987v();
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    /* JADX INFO: renamed from: d */
    public final boolean mo864d() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "canRedirectExternally Called");
        }
        return !getRenderingConfig().getAutoRedirectionEnforcement() || (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < getRenderingConfig().getUserTouchResetTime());
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: a */
    public final void mo1951a(byte b, Map map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "fireEvent " + this + " 2");
        }
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    /* JADX INFO: renamed from: a */
    public final void mo863a(String mraidApi) {
        Intrinsics.checkNotNullParameter(mraidApi, "mraidApi");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "sendFraudBeaconAndTelemetryEvent "));
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, "fireDetectAutoRedirectFraud " + this + ' ' + mraidApi);
        }
        m1960b("window.mraidview.fireRedirectFraudBeacon('" + mraidApi + "')");
        String adType = getAdType();
        if (adType == null) {
            adType = "banner";
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
        if (interfaceC3147f53 != null) {
            String TAG2 = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f53).m2152c(TAG2, "sendTelemetryForAutoRedirectFraud " + this + ' ' + mraidApi + ' ' + adType);
        }
        HashMap map = new HashMap();
        String creativeId = getCreativeId();
        if (creativeId != null) {
            map.put("creativeId", creativeId);
        }
        map.put("trigger", mraidApi);
        String impressionId = getImpressionId();
        if (impressionId != null) {
            map.put("impressionId", impressionId);
        }
        map.put("adType", adType);
        InterfaceC3147f5 interfaceC3147f54 = this.f1749i;
        if (interfaceC3147f54 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f54).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "processTelemetryEvent "));
        }
        getListener().mo1613a("BlockAutoRedirection", map);
    }

    /* JADX INFO: renamed from: c */
    public static final void m1949c(GestureDetectorOnGestureListenerC3049Ya this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        synchronized (this$0.f1759n) {
            if (Intrinsics.areEqual("Loading", this$0.f1761o)) {
                InterfaceC3147f5 interfaceC3147f5 = this$0.f1749i;
                if (interfaceC3147f5 != null) {
                    String TAG = f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "updateWebViewLoaded " + this$0);
                }
                this$0.getListener().mo1188f(this$0);
                this$0.setAndUpdateViewState(Profile.DEFAULT_PROFILE_NAME);
                InterfaceC3147f5 interfaceC3147f52 = this$0.f1749i;
                if (interfaceC3147f52 != null) {
                    String TAG2 = f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a(TAG2, "updateWebViewLoaded state changed to " + this$0.f1761o);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
    /* JADX INFO: renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1971e(java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya.m1971e(java.lang.String):boolean");
    }

    /* JADX INFO: renamed from: a */
    public final void m1958a(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "fireNextAdLoadComplete "));
        }
        String str2 = "window.imraidview.broadcastEvent('adLoadSuccess'," + z + ");";
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2152c(TAG, str2 + " Index: " + getCurrentRenderingPodAdIndex());
        }
        m1960b(str2);
    }

    /* JADX INFO: renamed from: b */
    public static final void m1948b(GestureDetectorOnGestureListenerC3049Ya this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListener().mo1681j(this$0);
    }

    /* JADX INFO: renamed from: b */
    public final void m1962b(String str, String contentId, String url) {
        Intrinsics.checkNotNullParameter(contentId, "contentId");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "processSaveContentRequest "));
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, "saveContent called: content ID: " + contentId + "; URL: " + url);
        }
        if (!m1971e("saveContent")) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1749i;
            if (interfaceC3147f53 != null) {
                String TAG2 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG2, "saveContent called despite the fact that it is not supported");
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", url);
                jSONObject.put("reason", 7);
            } catch (JSONException unused) {
            }
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            m1953a(str, "sendSaveContentResult(\"saveContent_" + contentId + "\", 'failed', \"" + StringsKt.replace$default(string, "\"", "\\\"", false, 4, (Object) null) + "\");");
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(new C3452za((byte) -1, url));
        String string2 = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        C3216k c3216k = new C3216k(string2, hashSet, this.f1721L0, contentId, 2);
        c3216k.f2245c = str;
        C3323r1 c3323r1 = C3323r1.f2477a;
        C3323r1.m2362a(c3216k);
    }

    /* JADX INFO: renamed from: a */
    public final void m1954a(String str, String message, String str2) {
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "fireError " + this + " - " + message + " - " + str2);
        }
        if (str == null || str2 == null) {
            return;
        }
        m1953a(str, "broadcastEvent('error',\"" + message + "\", \"" + str2 + "\")");
    }

    /* JADX INFO: renamed from: a */
    public final void m1953a(String str, String callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "fireJavaScriptCallback "));
        }
        if (str == null) {
            return;
        }
        m1960b(str + ClassUtils.PACKAGE_SEPARATOR_CHAR + callback);
    }

    /* JADX INFO: renamed from: b */
    public final void m1963b(boolean z) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(this, str, "TAG", "fireNextAdShowComplete "));
        }
        String str2 = "window.imraidview.broadcastEvent('adShowSuccess'," + z + ");";
        InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
        if (interfaceC3147f52 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, str2 + " Index: " + getCurrentRenderingPodAdIndex());
        }
        m1960b(str2);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1944a(GestureDetectorOnGestureListenerC3049Ya this$0, String js) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(js, "$js");
        try {
            if (this$0.f1704D.get()) {
                return;
            }
            String str = "javascript:try{" + js + "}catch(e){}";
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1749i;
            if (interfaceC3147f5 != null) {
                String TAG = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2147a(TAG, "Injecting javascript");
            }
            InterfaceC3147f5 interfaceC3147f52 = this$0.f1749i;
            if (interfaceC3147f52 != null) {
                String TAG2 = f1696P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2152c(TAG2, "evaluateScript " + this$0);
            }
            this$0.evaluateJavascript(str, null);
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f53 = this$0.f1749i;
            if (interfaceC3147f53 != null) {
                String str2 = f1696P0;
                ((C3162g5) interfaceC3147f53).m2151b(str2, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str2, "TAG", "SDK encountered an unexpected error injecting JavaScript in the Ad container; ")));
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: a */
    public final void mo1950a() {
        InterfaceC3052Z interfaceC3052Z;
        Activity fullScreenActivity;
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "dismissCurrentViewContainer "));
        }
        C3149f7 c3149f7 = this.f1763p;
        if (c3149f7 != null) {
            C3003V6 c3003v6 = c3149f7.f2064c;
            if (c3003v6 != null) {
                c3003v6.m1876b();
            }
            c3149f7.f2064c = null;
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f1761o)) {
            setAndUpdateViewState("Hidden");
            ViewParent parent = getParent();
            if (1 == this.f1735b) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1749i;
                if (interfaceC3147f52 != null) {
                    String str2 = f1696P0;
                    ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3021Wa.m1893a(this, str2, "TAG", "finishFullScreenActivity "));
                }
                SparseArray sparseArray = InMobiAdActivity.f787k;
                Intrinsics.checkNotNullParameter(this, "container");
                InMobiAdActivity.f787k.remove(hashCode());
                if (getFullScreenActivity() != null) {
                    InterfaceC3052Z interfaceC3052Z2 = this.f1732V;
                    if (interfaceC3052Z2 == null || !interfaceC3052Z2.mo1625a(this)) {
                        Activity fullScreenActivity2 = getFullScreenActivity();
                        Intrinsics.checkNotNull(fullScreenActivity2, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                        ((InMobiAdActivity) fullScreenActivity2).f794e = true;
                        Activity fullScreenActivity3 = getFullScreenActivity();
                        if (fullScreenActivity3 != null) {
                            fullScreenActivity3.finish();
                        }
                        if (this.f1718K != -1 && (fullScreenActivity = getFullScreenActivity()) != null) {
                            fullScreenActivity.overridePendingTransition(0, this.f1718K);
                        }
                    }
                } else {
                    if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f1761o)) {
                        setAndUpdateViewState("Hidden");
                    }
                    m1988w();
                }
            } else if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        if (this.f1783z != EnumC3320qd.f2472c || (interfaceC3052Z = this.f1732V) == null) {
            return;
        }
        interfaceC3052Z.mo1605a(this, getFullScreenActivity());
    }

    @Override // com.inmobi.media.InterfaceC2862L9
    /* JADX INFO: renamed from: a */
    public final void mo1312a(EnumC2817I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onOrientationUpdate "));
        }
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1947a(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, JsResult jsResult) {
        InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str, "TAG", "shouldRenderPopup "));
        }
        if (gestureDetectorOnGestureListenerC3049Ya.getRenderingConfig().getShouldRenderPopup()) {
            return true;
        }
        jsResult.cancel();
        InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f52 != null) {
            String str2 = f1696P0;
            ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str2, "TAG", "firePopupBlockedEvent "));
        }
        gestureDetectorOnGestureListenerC3049Ya.m1960b("window.mraidview.popupBlocked('popupBlocked')");
        return false;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1945a(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, String str, String str2, String str3) {
        InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "onUserLandingInitialized " + gestureDetectorOnGestureListenerC3049Ya + " isInAppBrowser: " + gestureDetectorOnGestureListenerC3049Ya.f1741e);
        }
        gestureDetectorOnGestureListenerC3049Ya.m1960b("window.imraid.broadcastEvent('onUserLandingInitialized');");
        if (str2 == null) {
            return;
        }
        gestureDetectorOnGestureListenerC3049Ya.m1953a(str2, "broadcastEvent('" + str + "Successful','" + str3 + "');");
    }

    /* JADX INFO: renamed from: a */
    public final void m1957a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "onCTLifeCycleEvent "));
        }
        m1960b("window.imraid.broadcastEvent('onCTLifeCycleEvent', " + jsonObject + ");");
    }

    /* JADX INFO: renamed from: a */
    public final void m1956a(String trackerName, Map macros) {
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String str = f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(this, str, "TAG", "fireLandingPageTracker "));
        }
        getListener().mo1606a(this, trackerName, macros);
    }

    /* JADX INFO: renamed from: a */
    public final void m1959a(boolean z, short s) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1749i;
        if (interfaceC3147f5 != null) {
            String TAG = f1696P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "fireRenderProcessGoneTelemetry");
        }
        C3153fb c3153fb = this.f1725O;
        if (c3153fb != null) {
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("source", "render_view_" + c3153fb.f2076a.f1887a.m1929b()), TuplesKt.m2729to("isCrashed", Boolean.valueOf(z)), TuplesKt.m2729to("creativeId", c3153fb.f2076a.f1892f), TuplesKt.m2729to("errorCode", Short.valueOf(s)));
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("WebViewRenderProcessGoneEvent", mapMutableMapOf, EnumC3259mc.f2349a);
        }
    }
}
