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

/* JADX INFO: loaded from: classes6.dex */
public final class Ya extends V1 implements InterfaceC0559x, InterfaceC0218a2, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, L9, Aa {
    public static final Ia N0 = new Ia();
    public static final Ga O0 = new Ga();
    public static final String P0 = "Ya";
    public static final C0533v1 Q0 = new C0533v1((Object) Boolean.FALSE, (Function0) Ha.f131a, false, true);
    public boolean A;
    public Map A0;
    public boolean B;
    public final La B0;
    public String C;
    public final Xa C0;
    public final AtomicBoolean D;
    public String D0;
    public final Object E;
    public final Ra E0;
    public final Object F;
    public final Pa F0;
    public boolean G;
    public final Ja G0;
    public final boolean H;
    public boolean H0;
    public View I;
    public Z2 I0;
    public WebChromeClient.CustomViewCallback J;
    public final Sa J0;
    public int K;
    public final Ua K0;
    public long L;
    public final Ta L0;
    public String M;
    public Nd M0;
    public final AtomicBoolean N;
    public final C0305fb O;
    public String P;
    public Map Q;
    public Z1 R;
    public InterfaceC0559x S;
    public boolean T;
    public boolean U;
    public Z V;
    public AbstractC0416md W;
    public final boolean a0;
    public final byte b;
    public int b0;
    public final Set c;
    public String c0;
    public String d;
    public int[] d0;
    public final boolean e;
    public long e0;
    public String f;
    public int f0;
    public long g;
    public final Ka g0;
    public final C0242bb h;
    public final Qa h0;
    public final InterfaceC0298f5 i;
    public int i0;
    public byte j;
    public int j0;
    public WeakReference k;
    public final Z6 k0;
    public WeakReference l;
    public final GestureDetector l0;
    public AbstractC0227ab m;
    public boolean m0;
    public final Va n;
    public boolean n0;
    public String o;
    public U3 o0;
    public C0300f7 p;
    public S3 p0;
    public AdConfig q;
    public String q0;
    public boolean r;
    public K9 r0;
    public boolean s;
    public C0418n0 s0;
    public JSONObject t;
    public final AtomicBoolean t0;
    public JSONObject u;
    public boolean u0;
    public boolean v;
    public I v0;
    public boolean w;
    public String w0;
    public boolean x;
    public boolean x0;
    public boolean y;
    public Pd y0;
    public qd z;
    public boolean z0;

    /* JADX WARN: Illegal instructions before constructor call */
    public Ya(Context context, byte b, Set set, String str, boolean z, String landingScheme, long j, C0242bb c0242bb, InterfaceC0298f5 interfaceC0298f5, int i) {
        set = (i & 4) != 0 ? null : set;
        str = (i & 8) != 0 ? null : str;
        z = (i & 16) != 0 ? false : z;
        landingScheme = (i & 32) != 0 ? "DEFAULT" : landingScheme;
        j = (i & 64) != 0 ? -1L : j;
        c0242bb = (i & 128) != 0 ? null : c0242bb;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        super(applicationContext);
        this.b = b;
        this.c = set;
        this.d = str;
        this.e = z;
        this.f = landingScheme;
        this.g = j;
        this.h = c0242bb;
        this.i = interfaceC0298f5;
        this.k = new WeakReference(null);
        this.n = new Va();
        this.o = Profile.DEFAULT_PROFILE_NAME;
        this.v = true;
        this.w = true;
        this.y = true;
        this.z = qd.f465a;
        this.D = new AtomicBoolean(false);
        this.E = new Object();
        this.F = new Object();
        this.H = true;
        this.K = -1;
        this.L = Long.MIN_VALUE;
        this.N = new AtomicBoolean(false);
        this.g0 = new Ka(this);
        this.h0 = new Qa(this);
        this.i0 = Integer.MIN_VALUE;
        this.j0 = Integer.MIN_VALUE;
        this.t0 = new AtomicBoolean(true);
        this.B0 = new La(this);
        this.C0 = new Xa(this);
        this.D0 = "html";
        this.E0 = new Ra(this);
        this.F0 = new Pa(this);
        this.G0 = new Ja(this);
        String TAG = P0;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        toString();
        N0.getClass();
        Q0.a();
        this.S = this;
        this.a0 = true;
        this.r0 = new K9();
        this.k0 = new Z6(this);
        GestureDetector gestureDetector = new GestureDetector(context, this);
        gestureDetector.setOnDoubleTapListener(this);
        gestureDetector.setIsLongpressEnabled(b == 1);
        this.l0 = gestureDetector;
        if (c0242bb != null) {
            this.O = new C0305fb(c0242bb);
        }
        B6 b6 = Ea.f109a;
        Ea.a(this, interfaceC0298f5);
        this.J0 = new Sa(this);
        this.K0 = new Ua(this);
        this.L0 = new Ta(this);
        this.M0 = (this.H0 || AbstractC0576y2.a(context)) ? new Nd(0, 44, 44, 0) : new Nd(0, 0, 0, 0);
    }

    public static final void a(Ya renderView, byte[] overlayBytes, WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(renderView, "this$0");
        Intrinsics.checkNotNullParameter(overlayBytes, "$overlayBytes");
        Intrinsics.checkNotNullParameter(watermarkData, "$watermarkData");
        if (renderView.N.get()) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = renderView.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "adding overlay to renderview");
        }
        Context context = renderView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        FrameLayout overlayLayout = Ad.a(context, overlayBytes, watermarkData.getAlpha());
        Intrinsics.checkNotNullParameter(overlayLayout, "overlayLayout");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (renderView.getParent() != null) {
            ViewParent parent = renderView.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).addView(overlayLayout, 0);
        }
        renderView.getViewableAd().a(overlayLayout, FriendlyObstructionPurpose.NOT_VISIBLE);
        renderView.N.set(true);
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
        AdConfig adConfig = this.q;
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
            AdConfig adConfig2 = this.q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            return adConfig.getViewability().getAudioImpressionMinPercentageViewed();
        }
        AdConfig adConfig3 = this.q;
        if (adConfig3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        } else {
            adConfig = adConfig3;
        }
        return adConfig.getViewability().getWebImpressionMinPercentageViewed();
    }

    public static /* synthetic */ void getWindowInsetListener$annotations() {
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "destroyContainer "));
        }
        if (this.D.get()) {
            return;
        }
        if (!this.y) {
            this.y = true;
            return;
        }
        this.D.set(true);
        Pd pd = this.y0;
        if (pd != null) {
            pd.a();
        }
        Z2 z2 = this.I0;
        if (z2 != null) {
            z2.b();
        }
        this.G = true;
        this.K = -1;
        removeJavascriptInterface("sdkController");
        C0300f7 c0300f7 = this.p;
        AdConfig adConfig = null;
        if (c0300f7 != null) {
            S6 s6 = c0300f7.d;
            if (s6 != null) {
                s6.a();
            }
            c0300f7.d = null;
            S6 s62 = c0300f7.e;
            if (s62 != null) {
                s62.a();
            }
            c0300f7.e = null;
            S6 s63 = c0300f7.f;
            if (s63 != null) {
                s63.a();
            }
            c0300f7.f = null;
        }
        this.k.clear();
        WeakReference weakReference = this.l;
        if (weakReference != null) {
            weakReference.clear();
        }
        AbstractC0416md abstractC0416md = this.W;
        if (abstractC0416md != null) {
            abstractC0416md.e();
        }
        AbstractC0416md abstractC0416md2 = this.W;
        if (abstractC0416md2 != null) {
            abstractC0416md2.a();
        }
        u();
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).a(str2, Wa.a(this, str2, "TAG", "stopTrackingAudioVolume "));
        }
        C0489s c0489s = C0489s.f476a;
        C0489s.c(this.i, this.g0);
        setFriendlyViews(null);
        this.p0 = null;
        this.m = null;
        this.S = null;
        this.V = null;
        this.m0 = false;
        ViewParent parent = getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this);
            removeAllViews();
        }
        AdConfig adConfig2 = this.q;
        if (adConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        } else {
            adConfig = adConfig2;
        }
        AdConfig.OmidConfig omidConfig = adConfig.getViewability().getOmidConfig();
        if (this.a0 && omidConfig.isOmidEnabled()) {
            G9.f125a.getClass();
            if (Omid.isActive()) {
                new C0258cb(this, omidConfig.getWebViewRetainTime()).a();
                return;
            }
        }
        destroy();
    }

    public final void c(boolean z) {
        C0418n0 c0418n0;
        AdQualityControl adQualityControl;
        Activity activity;
        C0418n0 c0418n02;
        AdQualityControl adQualityControl2;
        qd qdVar = z ? qd.c : qd.b;
        if (this.z == qdVar || this.G) {
            return;
        }
        this.z = qdVar;
        if (z) {
            getListener().i(this);
        }
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "fireViewableChange " + this + ' ' + z);
        }
        b("window.mraidview.broadcastEvent('viewableChange'," + z + ");");
        C0418n0 c0418n03 = this.s0;
        if (c0418n03 != null) {
            qd adViewableStatus = this.z;
            Intrinsics.checkNotNullParameter(adViewableStatus, "adViewableStatus");
            c0418n03.h = adViewableStatus;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f52).a(str, AbstractC0363j6.a(str, "TAG", "fireAQSession - ").append(getAdType()).append(" type - sdk - ").append(Build.VERSION.SDK_INT).toString());
        }
        if (!Intrinsics.areEqual(getAdType(), "int") || Build.VERSION.SDK_INT < 29 || (activity = (Activity) this.k.get()) == null) {
            C0418n0 c0418n04 = this.s0;
            if (c0418n04 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
                c0418n0 = null;
            } else {
                c0418n0 = c0418n04;
            }
            c0418n0.getClass();
            Intrinsics.checkNotNullParameter(this, "adView");
            if (!c0418n0.a()) {
                c0418n0.a("session state invalid");
                return;
            }
            c0418n0.a("session start trigger...");
            c0418n0.c.set(true);
            AdQualityControl adQualityControl3 = c0418n0.g;
            if (adQualityControl3 == null || !adQualityControl3.getTakeScreenshot() || (adQualityControl = c0418n0.g) == null) {
                return;
            }
            c0418n0.a(this, (long) (adQualityControl.getScreenshotDelayInSeconds() * 1000), false, (La) null);
            return;
        }
        C0418n0 c0418n05 = this.s0;
        if (c0418n05 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            c0418n02 = null;
        } else {
            c0418n02 = c0418n05;
        }
        c0418n02.getClass();
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!c0418n02.a()) {
            c0418n02.a("session state invalid");
            return;
        }
        c0418n02.a("session start trigger...");
        c0418n02.c.set(true);
        AdQualityControl adQualityControl4 = c0418n02.g;
        if (adQualityControl4 == null || !adQualityControl4.getTakeScreenshot() || (adQualityControl2 = c0418n02.g) == null) {
            return;
        }
        c0418n02.a(activity, (long) (adQualityControl2.getScreenshotDelayInSeconds() * 1000), false, (La) null);
    }

    public final void d(String str) {
        C0305fb c0305fb = this.O;
        if (c0305fb != null) {
            c0305fb.b();
        }
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f5).a(str2, Wa.a(this, str2, "TAG", "loadUrlInWebView "));
        }
        this.G = false;
        if (this.D.get() || str == null) {
            return;
        }
        loadUrl(str);
    }

    public final void e(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "processUseCustomCloseRequest " + this + ' ' + z);
        }
        setUseCustomClose(z);
        v();
    }

    @Override // com.inmobi.media.V1
    public final C0439o6 f() {
        C0524u6 c0524u6;
        String str;
        Y y;
        String strB;
        Y y2;
        String strM;
        Y y3;
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f5).a(str2, Wa.a(this, str2, "TAG", "initLandingPageHandler "));
        }
        C0454p6 c0454p6 = new C0454p6(this.e, this.f, getAdConfig().getCctEnabled(), getAdConfig().getPartialTabsEnabled());
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        Pa pa = this.F0;
        Ra ra = this.E0;
        if (this.e) {
            c0524u6 = null;
        } else {
            C0242bb c0242bb = this.h;
            long jL = (c0242bb == null || (y3 = c0242bb.f313a) == null) ? 0L : y3.l();
            String impressionId = getImpressionId();
            String str3 = impressionId == null ? "" : impressionId;
            C0242bb c0242bb2 = this.h;
            String str4 = (c0242bb2 == null || (y2 = c0242bb2.f313a) == null || (strM = y2.m()) == null) ? "" : strM;
            C0242bb c0242bb3 = this.h;
            String str5 = (c0242bb3 == null || (y = c0242bb3.f313a) == null || (strB = y.b()) == null) ? "" : strB;
            C0242bb c0242bb4 = this.h;
            c0524u6 = new C0524u6(jL, str3, str4, str5, (c0242bb4 == null || (str = c0242bb4.b) == null) ? "" : str, c0242bb4 != null ? c0242bb4.e : "", c0242bb4 != null ? c0242bb4.c : "", c0242bb4 != null ? c0242bb4.g : false, this.f);
        }
        return new C0439o6(context, c0454p6, pa, ra, this, c0524u6, this.i);
    }

    public final void g() {
        if (this.z0) {
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).a(TAG, "fireAdFailed " + this + " - Ad is already unloaded");
                return;
            }
            return;
        }
        this.n0 = true;
        C0305fb c0305fb = this.O;
        if (c0305fb != null) {
            Map mapA = c0305fb.a();
            long j = c0305fb.b;
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            mapA.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("FireAdFailed", mapA, EnumC0415mc.f426a);
        }
        getListener().g(this);
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public AdConfig getAdConfig() {
        AdConfig adConfig = this.q;
        if (adConfig != null) {
            return adConfig;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
        return null;
    }

    public final Z getAdPodHandler() {
        return this.V;
    }

    public final C0418n0 getAdQualityManager() {
        C0418n0 c0418n0 = this.s0;
        if (c0418n0 != null) {
            return c0418n0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
        return null;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public String getAdType() {
        return this.P;
    }

    public final boolean getAllowAutoRedirection() {
        return this.U;
    }

    public final int getArea() {
        return getHeight() * getWidth();
    }

    public final String getBeaconUrl() {
        return this.w0;
    }

    public final Nd getCloseAssetArea() {
        return this.M0;
    }

    public final long getConfiguredArea() {
        return this.e0;
    }

    public Context getContainerContext() {
        Activity activity = (Activity) this.k.get();
        if (activity != null) {
            return activity;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return context;
    }

    public final String getContentURL() {
        return this.c0;
    }

    public final String getCreativeID() {
        String creativeId = getCreativeId();
        return creativeId == null ? "" : creativeId;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public String getCreativeId() {
        return this.M;
    }

    public final String getCurrentPosition() {
        JSONObject jSONObject = this.u;
        String string = jSONObject != null ? jSONObject.toString() : null;
        return string == null ? "" : string;
    }

    public final Object getCurrentPositionMonitor() {
        return this.F;
    }

    public final int getCurrentRenderingPodAdIndex() {
        Z z = this.V;
        if (z != null) {
            return ((Q0) z).l(this);
        }
        return 0;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public Object getDataModel() {
        return null;
    }

    public final String getDefaultPosition() {
        JSONObject jSONObject = this.t;
        String string = jSONObject != null ? jSONObject.toString() : null;
        return string == null ? "" : string;
    }

    public final Object getDefaultPositionMonitor() {
        return this.E;
    }

    public final S3 getEmbeddedBrowserJSCallbacks() {
        return this.p0;
    }

    public Map<View, FriendlyObstructionPurpose> getFriendlyViews() {
        return this.Q;
    }

    public final Activity getFullScreenActivity() {
        return (Activity) this.k.get();
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public InterfaceC0545w getFullScreenEventsListener() {
        return this.J0;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public String getImpressionId() {
        return this.d;
    }

    public final byte getImpressionType() {
        return this.j;
    }

    public final String getLandingScheme() {
        return this.f;
    }

    public final AbstractC0227ab getListener() {
        AbstractC0227ab abstractC0227ab = this.m;
        if (abstractC0227ab != null) {
            return abstractC0227ab;
        }
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "listener getter "));
        }
        Ga ga = O0;
        this.m = ga;
        return ga;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public String getMarkupType() {
        return this.D0;
    }

    public final String getMarkupTypeAdUnit() {
        return this.D0;
    }

    public final C0300f7 getMediaProcessor() {
        return this.p;
    }

    public final int getMinimumPixelsPainted() {
        return this.f0;
    }

    public final String getMraidJsString() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "mraidJsString getter "));
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String strA = new U9(context, "mraid_js_store").a("mraid_js_string");
        if (strA == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.i;
            if (interfaceC0298f52 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG, "Returning default Mraid Js string.");
            }
            return "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b=[];this.add=function(a){b.push(a);++this.count};this.remove=function(a){var f=!1,d=this;b=b.filter(function(b){if(b=b===a)--d.count,f=!0;return!b});return f};this.removeAll=function(){b=[];this.count=0};this.broadcast=function(a){b.forEach(function(f){try{f.apply({},a)}catch(b){}})};this.toString=function(){var c=[a,\":\"];b.forEach(function(a){c.push(\"|\",String(a),\"|\")});\nreturn c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&\nwindow.imraidview.startListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&window.imraidview.registerDownloaderCallbacks()}}catch(f){this.log(f)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&\nwindow.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&0==c[a].count&&window.imraidview.unregisterDownloaderCallbacks()}};\nthis.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(f){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var f=arguments[c],f=JSON.parse(f);b[c]=f}else b[c]=arguments[c];f=b[1];\"success\"!=f&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);\nwindow.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;window.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){f={};f.command=a;f.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b[arguments[c]]=\"\"+d);f.params=b}else for(var f=this.urlScheme+\"://\"+a,d,b=!0,c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b?(f+=\"?\",b=!1):f+=\"&\",f+=arguments[c]+\"=\"+escape(d));__im__iosNativeCall.executeNativeCall(f);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(f){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(f);return!1};a.popupBlocked=function(f){a.firePopupBlockedBeacon(f)};a.zeroPad=function(a){var c=\"\";10>a&&(c+=\"0\");return c+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\n\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"use CustomClose: \"+c)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,d){c?b.push(a):(eval(a),d&&(c=!0))};a.setOrientationProperties=function(f){try{f?(\"undefined\"!=typeof f.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=\nf.allowOrientationChange),\"undefined\"!=typeof f.forceOrientation&&(a.orientationProperties.forceOrientation=f.forceOrientation)):f=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(c){imraidview.showAlert(\"setOrientationProperties: \"+c+\", props = \"+f)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;\na.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"open: \"+c)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=function(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+a)}};a.isViewable=function(){if(imraidview.fallbackViewabilityEnabled())return imraidview.checkFallbackViewable();try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+\na)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var c=\"\";null!=a&&(c=a);try{sdkController.playVideo(\"window.mraidview\",c)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(c){if(\"undefined\"===\ntypeof JSON){var b=\"\",e;if(\"undefined\"==typeof c.length)return a.stringifyArg(c);for(e=0;e<c.length;e++)0<e&&(b+=\",\"),b+=a.stringifyArg(c[e]);return b+\"]\"}return JSON.stringify(c)};a.stringifyArg=function(a){var c,b,g;b=typeof a;c=\"\";if(\"number\"===b||\"boolean\"===b)c+=args;else if(a instanceof Array)c=c+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;c+=\"{\";for(g in a)null!==a[g]&&(b||(c+=\",\"),c=c+'\"'+g+'\":',b=typeof a[g],c=\"number\"===b||\"boolean\"===b?c+a[g]:\"function\"===typeof a[g]?c+'\"\"':a[g]instanceof\nObject?c+this.stringify(args[i][g]):c+'\"'+a[g]+'\"',b=!1);c+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,'\\\\\"'),c=c+'\"'+a+'\"';imraidview.showAlert(\"json:\"+c);return c};getPID=function(a){var c=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(c=a.id);return c};a.storePicture=function(c){console.log(\"bridge: storePicture\");if(\"string\"!=typeof c)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?\n(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",c);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,c){};a.fireMediaErrorEvent=function(a,c){};a.fireMediaTimeUpdateEvent=function(a,c,b){};a.fireMediaCloseEvent=function(a,c,b){};a.fireMediaVolumeChangeEvent=function(a,c,b){};\na.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)};a.unload=function(){try{sdkController.unload(\"window.mraidview\")}catch(a){}};a.getCurrentAppOrientation=function(){var c;switch(a.orientation){case 0:case 180:c=\"portrait\";break;case 90:case 270:c=\"landscape\";break;default:c=\"none\"}return{orientation:c,locked:!1}};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"executeNativeExpand: \"+\nc+\", URL = \"+a)}};a.setExpandProperties=function(c){try{c?this.props=c:c=null;if(\"undefined\"!=typeof c.lockOrientation&&null!=c.lockOrientation&&\"undefined\"!=typeof c.orientation&&null!=c.orientation){var b={};b.allowOrientationChange=!c.lockOrientation;b.forceOrientation=c.orientation;a.setOrientationProperties(b)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(c))}catch(e){imraidview.showAlert(\"executeNativesetExpandProperties: \"+e+\", props = \"+c)}};a.getExpandProperties=function(){try{return eval(\"(\"+\nsdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.resizeProps=null;a.setResizeProperties=function(c){var b,e;try{b=parseInt(c.width);e=parseInt(c.height);if(isNaN(b)||isNaN(e)||1>b||1>e)throw\"Invalid\";c.width=b;c.height=e;a.resizeProps=c;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(c))}catch(g){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+\nsdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(c){imraidview.showAlert(\"resize called in bridge\")}}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){imraidview.onUserInteraction();c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;c.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,c)}};b.getSdkVersionInt=function(){for(var a=imraid.getSdkVersion().split(\".\"),\nc=a.length,b=\"\",g=0;g<c;g++)b+=a[g];return parseInt(b)};b.firePopupBlockedBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;inmobi.recordEvent(136,c)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",function(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\n\"Method not supported\",\"getExpandProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getExpandProperties is deprecated\",\"getExpandProperties\");return b.getExpandProperties()};a.setExpandProperties=function(c){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"setExpandProperties\"):(\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose),window.mraid.broadcastEvent(\"error\",\n\"MRAID setExpandProperties is deprecated\",\"setExpandProperties\"),b.setExpandProperties(c))};a.getResizeProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"getResizeProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getResizeProperties is deprecated\",\"getResizeProperties\");return b.getResizeProperties()};a.setResizeProperties=function(a){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\n\"setResizeProperties\"):(window.mraid.broadcastEvent(\"error\",\"MRAID setResizeProperties is deprecated\",\"setResizeProperties\"),b.setResizeProperties(a))};a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=function(a){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"expand\"):(window.mraid.broadcastEvent(\"error\",\"MRAID expand is deprecated\",\"expand\"),b.expand(a))}catch(c){window.mraid.broadcastEvent(\"error\",\n\"error\",\"expand\")}};a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"createCalendarEvent\")};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=function(){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"MRAID resize not supported\",\"resize\"):(window.mraid.broadcastEvent(\"error\",\n\"MRAID resize is deprecated\",\"resize\"),b.expand())}catch(a){window.mraid.broadcastEvent(\"error\",\"error\",\"expand\")}};a.getVersion=function(){return\"3.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):\nb.storePicture(c)};a.unload=function(){b.unload()};a.getCurrentAppOrientation=b.getCurrentAppOrientation;a.getLocation=function(){return null};a.getAudioVolume=b.getAudioVolume})();\n(function(){var a=window.imraidview={},b=!1;a.setOrientationProperties=function(c){try{c?(\"undefined\"!=typeof c.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=c.allowOrientationChange),\"undefined\"!=typeof c.forceOrientation&&(mraidview.orientationProperties.forceOrientation=c.forceOrientation),\"undefined\"!=typeof c.direction&&(mraidview.orientationProperties.direction=c.direction)):c=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+c)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var d={};d.name=a;var e=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);window.imraid.broadcastEvent(e,d)};a.fireMediaErrorEvent=function(a,b){var d={name:\"error\"};d.code=b;var e=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);window.imraid.broadcastEvent(e,\nd)};a.fireMediaTimeUpdateEvent=function(a,b,d){var e={name:\"timeupdate\",target:{}};e.target.currentTime=b;e.target.duration=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.saveContent=function(a,b,d){window.imraid.addEventListener(\"saveContent_\"+a,d);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",\na)};a.fireGalleryImageSelectedEvent=function(a,b,d){var e=new Image;e.src=\"data:image/jpeg;base64,\"+a;e.width=b;e.height=d;window.imraid.broadcastEvent(\"galleryImageSelected\",e)};a.fireCameraPictureCatpturedEvent=function(a,b,d){var e=new Image;e.src=\"data:image/jpeg;base64,\"+a;e.width=b;e.height=d;window.imraid.broadcastEvent(\"cameraPictureCaptured\",e)};a.fireMediaCloseEvent=function(a,b,d){var e={name:\"close\"};e.viaUserInteraction=b;e.target={};e.target.currentTime=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=\ntypeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.fireMediaVolumeChangeEvent=function(a,b,d){var e={name:\"volumechange\",target:{}};e.target.volume=b;e.target.muted=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=\nfunction(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(c,b){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",c,b):sdkController.openExternal(\"window.imraidview\",c)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(c){try{sdkController.log(\"window.imraidview\",c)}catch(b){a.showAlert(\"log: \"+b)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(c){try{sdkController.asyncPing(\"window.imraidview\",\nc)}catch(b){a.showAlert(\"asyncPing: \"+b)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};a.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};\na.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=function(){for(var c=a.getSdkVersion().split(\".\"),b=c.length,d=\"\",e=0;e<b;e++)d+=c[e];return parseInt(d)};a.getSdkVersionInt=getSdkVersionInt;a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");\nif(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(c,b,d,e){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"postToSocial\");a.log(\"Method postToSocial not supported\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",\nJSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(c){a.showAlert(\"getOrientation: \"+c)}};a.acceptAction=function(c){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"acceptAction: \"+b+\", params = \"+c)}};a.rejectAction=function(c){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"rejectAction: \"+\nb+\", params = \"+c)}};a.updateToPassbook=function(c){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,\narguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};\na.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")};a.hideStatusBar=function(){};a.setOpaqueBackground=function(){};a.startDownloader=function(a,b,d){682<=getSdkVersionInt()&&sdkController.startDownloader(\"window.imraidview\",a,b,d)};a.registerDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.registerDownloaderCallbacks(\"window.imraidview\")};a.unregisterDownloaderCallbacks=function(){682<=getSdkVersionInt()&&\nsdkController.unregisterDownloaderCallbacks(\"window.imraidview\")};a.getDownloadProgress=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadProgress(\"window.imraidview\"):-1};a.getDownloadStatus=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadStatus(\"window.imraidview\"):-1};a.fireEvent=function(a){700<=getSdkVersionInt()&&(\"fireSkip\"===a?sdkController.fireSkip(\"window.imraidview\"):\"fireComplete\"===a?sdkController.fireComplete(\"window.imraidview\"):\"showEndCard\"===a&&\nsdkController.showEndCard(\"window.imraidview\"))};a.saveBlob=function(a){700<=getSdkVersionInt()&&sdkController.saveBlob(\"window.imraidview\",a)};a.getBlob=function(a,b){700<=getSdkVersionInt()&&sdkController.getBlob(a,b)};a.setCloseEndCardTracker=function(a){700<=getSdkVersionInt()&&sdkController.setCloseEndCardTracker(\"window.imraidview\",a)};a.getRenderableAdIndexes=function(){try{if(917<=getSdkVersionInt())return sdkController.getRenderableAdIndexes(\"window.imraidview\")}catch(a){}return\"[]\"};a.getCurrentRenderingIndex=\nfunction(){try{if(917<=getSdkVersionInt())return sdkController.getCurrentRenderingIndex(\"window.imraidview\")}catch(a){}return-1};a.showAd=function(a){try{917<=getSdkVersionInt()&&sdkController.showAd(\"window.imraidview\",a)}catch(b){}};a.timeSinceShow=function(){try{if(917<=getSdkVersionInt())return sdkController.timeSinceShow(\"window.imraidview\")}catch(a){}return-1};a.getShowTimeStamp=function(){try{if(917<=getSdkVersionInt())return sdkController.getShowTimeStamp(\"window.imraidview\")}catch(a){}return-1};\na.closeAll=function(){try{917<=getSdkVersionInt()&&sdkController.closeAll(\"window.imraidview\")}catch(a){}};a.loadAd=function(a){try{917<=getSdkVersionInt()&&sdkController.loadAd(\"window.imraidview\",a)}catch(b){}};a.setAdContext=function(a){try{917<=getSdkVersionInt()&&sdkController.setAdContext(\"window.imraidview\",a)}catch(b){}};a.getAdContext=function(){try{if(917<=getSdkVersionInt())return sdkController.getAdContext(\"window.imraidview\")}catch(a){}return\"\"};a.openWithoutTracker=function(a){try{\"undefined\"==\ntypeof a&&(a=null),sdkController.openWithoutTracker(\"window.imraidview\",a)}catch(b){}};a.impressionRendered=function(){window.imraid.broadcastEvent(\"impressionRendered\")};a.customExpandInNative=function(a,b,d){try{void 0==a||\"string\"!=typeof a?console.log(\"url called with invalid params\"):void 0==b||\"number\"!=typeof b?console.log(\"screenPercentage called with invalid params\"):void 0==d||\"boolean\"!=typeof d?console.log(\"hideCloseButton called with invalid params\"):sdkController.customExpandInNative(\"window.imraidview\",\na,b,d)}catch(e){}};a.customExpand=function(b,f,d,e,g){try{void 0==d||\"number\"!=typeof d?console.log(\"screenPercentage called with invalid params\"):void 0==f||\"number\"!=typeof f?console.log(\"inputType called with invalid params\"):void 0==e||\"boolean\"!=typeof e?console.log(\"topNavBarVisible called with invalid params\"):void 0==g||\"boolean\"!=typeof g?console.log(\"bottomNavBarVisible called with invalid params\"):sdkController.customExpand(\"window.imraidview\",b,f,d,e,g)}catch(h){a.showAlert(\"executeNativeCustomExpand: \"+\nh+\", input = \"+b+\", inputType = \"+f+\", screenPercentage = \"+d+\", bottomNavBarVisible = \"+g+\", topNavBarVisible = \"+e)}};a.closeCustomExpand=function(){try{sdkController.closeCustomExpand(\"window.imraidview\")}catch(a){}};a.onGestureDetected=function(a,b){window.imraid.broadcastEvent(\"onGestureDetected\",a,b)};a.onUserLandingCompleted=function(){window.imraid.broadcastEvent(\"onUserLandingCompleted\")};a.onUserInteraction=function(){window.imraid.broadcastEvent(\"onUserInteraction\")};a.impressionFired=\nfunction(){try{sdkController.impressionFired(\"window.imraidview\")}catch(a){}};a.getMaxDeviceVolume=function(){try{return sdkController.getMaxDeviceVolume(\"window.imraidview\")}catch(a){return 15}};a.zoom=function(a){try{sdkController.zoom(\"window.imraidview\",a)}catch(b){}};a.onAudioStateChanged=function(a){try{sdkController.onAudioStateChanged(\"window.imraidview\",a)}catch(b){}};a.submitAdReport=function(a){try{sdkController.submitAdReport(\"window.imraidview\",void 0!=a.adQualityUrl?a.adQualityUrl:null,\nvoid 0!=a.enableUserAdReportScreenshot?a.enableUserAdReportScreenshot:null,void 0!=a.templateInfo?a.templateInfo:null)}catch(b){}};a.logTelemetryEvent=function(a){try{var b=void 0!=a.eventType?a.eventType:null,d=void 0!=a.payload?a.payload:null;a=null;null!=d&&(a=mraidview.stringify(d));sdkController.logTelemetryEvent(\"window.imraidview\",b,a)}catch(e){}};a.onUserAudioMuteInteraction=function(a){try{sdkController.onUserAudioMuteInteraction(\"window.imraidview\",a)}catch(b){}};a.enableFallbackViewabilityFunctionality=\nfunction(){b=!0;a.checkFallbackViewable()&&window.mraid.broadcastEvent(\"viewableChange\",!0);mraid.addEventListener(\"sizeChange\",function(){window.mraid.broadcastEvent(\"viewableChange\",a.checkFallbackViewable())})};a.checkFallbackViewable=function(){try{var b=mraidview.getCurrentPosition(),f=b.height;return 40<=b.width&&40<=f?!0:!1}catch(d){a.showAlert(\"checkFallbackViewable: \"+d)}};a.fallbackViewabilityEnabled=function(){return b};a.getSafeArea=function(){try{return JSON.parse(sdkController.getSafeArea(\"window.imraidview\"))}catch(a){return null}}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var g=arguments.length,h,k=null;if(3>g){if(\"function\"===typeof arguments[g-1])h=arguments[g-1];else return;k={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],k={reason:11,url:arguments[1]});\"function\"!==!h&&(k?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(k))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,c){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,c)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):\nb.updateToPassbook(c))};a.postToSocial=function(a,c,e,g){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||b.postToSocial(a,c,e,g)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.skoverlay=b.skoverlay;a.skoverlayWithSkan=b.skoverlayWithSkan;a.zoom=b.zoom;a.dismissSKOverlay=b.dismissSKOverlay;a.supports=function(a){return b.supports(a)};a.isDeviceMuted=\nfunction(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};a.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.getRenderableAdIndexes=b.getRenderableAdIndexes;a.getCurrentRenderingIndex=b.getCurrentRenderingIndex;a.showAd=\nb.showAd;a.timeSinceShow=b.timeSinceShow;a.closeAll=b.closeAll;a.loadAd=b.loadAd;a.setAdContext=b.setAdContext;a.getAdContext=b.getAdContext;a.getShowTimeStamp=b.getShowTimeStamp;a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled;a.startDownloader=b.startDownloader;a.getDownloadProgress=b.getDownloadProgress;a.getDownloadStatus=b.getDownloadStatus;a.fireEvent=b.fireEvent;a.saveBlob=b.saveBlob;a.getBlob=b.getBlob;a.setCloseEndCardTracker=b.setCloseEndCardTracker;\na.openWithoutTracker=b.openWithoutTracker;a.impressionRendered=b.impressionRendered;a.onGestureDetected=b.onGestureDetected;a.onUserLandingCompleted=b.onUserLandingCompleted;a.customExpand=b.customExpand;a.closeCustomExpand=b.closeCustomExpand;a.customExpandInNative=b.customExpandInNative;a.impressionFired=b.impressionFired;a.getImraidVersion=b.getImraidVersion;a.getMaxDeviceVolume=b.getMaxDeviceVolume;a.onAudioStateChanged=b.onAudioStateChanged;a.onUserAudioMuteInteraction=b.onUserAudioMuteInteraction;\na.submitAdReport=b.submitAdReport;a.enableFallbackViewabilityFunctionality=b.enableFallbackViewabilityFunctionality;a.logTelemetryEvent=b.logTelemetryEvent;a.getSafeArea=b.getSafeArea;a.onReceviedSKANCallback=b.onReceviedSKANCallback;a.getOpenMode=b.getOpenMode;try{a.addEventListener(\"onUserLandingCompleted\",function(){1080>b.getSdkVersionInt()&&a.broadcastEvent(\"onUserLandingInitialized\")})}catch(c){}})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(f){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var d=-1;try{d=a.indexOf(b)}catch(e){}return d};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,f,d){if(!imIsObjValid(f)||!imIsObjValid(d))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+f+\",\"+d):a+(\"&u-tap-o=\"+f+\",\"+d));return a};b.performAdClick=function(a,f){f=f||event;if(imIsObjValid(a)){var d=a.clickConfig,e=a.landingConfig;if(!imIsObjValid(d)&&!imIsObjValid(e))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(f))try{m=f.changedTouches[0].pageX,n=f.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(e)?imIsObjValid(d)?(l=e.url,q=e.fallbackUrl,p=e.urlType,g=d.url,h=d.pingWV,k=d.fr):(l=e.url,p=e.urlType):(l=d.url,p=d.urlType);d=b.getPlatform();try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=!0;if(0>h||1<h)h=!0;if(\"number\"!=typeof p||null==p)p=0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(g)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==d?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+d);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,f){f=f||event;if(imIsObjValid(a)){var d=a.clickConfig,e=a.landingConfig;\nif(!imIsObjValid(d)&&!imIsObjValid(e))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null;if(imIsObjValid(f))try{m=f.changedTouches[0].pageX,n=f.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(d)&&(g=d.url,h=d.pingWV,k=d.fr);try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=\n!0;if(0>h||1<h)h=!0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");b.onUserInteraction(e)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){console.log(\"openEmbedded is deprecated, will be removed in future version\");\nmraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};b.openExternal=function(b,f){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,f)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=\nfunction(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();";
        }
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 == null) {
            return strA;
        }
        String TAG2 = P0;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        ((C0314g5) interfaceC0298f53).a(TAG2, "Returning fetched Mraid Js string.");
        return strA;
    }

    public final K9 getOrientationProperties() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "getOrientationProperties "));
        }
        return this.r0;
    }

    public final long getPlacementId() {
        return this.L;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public byte getPlacementType() {
        return this.b;
    }

    public InterfaceC0559x getReferenceContainer() {
        return this.S;
    }

    public final JSONArray getRenderableAdIndexes() {
        JSONArray jSONArrayN;
        Z z = this.V;
        return (z == null || (jSONArrayN = ((Q0) z).N()) == null) ? new JSONArray() : jSONArrayN;
    }

    public final AdConfig.RenderingConfig getRenderingConfig() {
        AdConfig adConfig = this.q;
        if (adConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            adConfig = null;
        }
        return adConfig.getRendering();
    }

    public final JSONObject getSafeArea() {
        Pd pd = this.y0;
        if (pd == null) {
            return null;
        }
        Integer numF = N3.f();
        Od od = (numF == null && (numF = N3.g) == null) ? null : (Od) pd.d.get(Integer.valueOf(numF.intValue()));
        if (od != null) {
            return od.a();
        }
        return null;
    }

    public final boolean getShouldFireLandingPageBeacons() {
        return this.x0;
    }

    public final long getShowTimeStamp() {
        Z z = this.V;
        if (z != null) {
            return ((Q0) z).O();
        }
        return 0L;
    }

    public Map<String, S0> getTelemetryManagerMap() {
        return this.A0;
    }

    public C0488rc getTelemetryOnAdImpression() {
        Map<String, S0> telemetryManagerMap = getTelemetryManagerMap();
        return new C0488rc(telemetryManagerMap != null ? telemetryManagerMap.get("AdImpressionSuccessful") : null, this.q0, getCreativeId(), getMarkupType());
    }

    public final boolean getUnloaded() {
        return this.z0;
    }

    public final rd getVISIBILITY_CHANGE_LISTENER() {
        return this.G0;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public View getVideoContainerView() {
        return null;
    }

    public final String getViewState() {
        return this.o;
    }

    @Override // com.inmobi.media.Aa
    public long getViewTouchTimestamp() {
        return this.g;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    @Override // com.inmobi.media.InterfaceC0559x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.inmobi.media.AbstractC0416md getViewableAd() {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ya.getViewableAd():com.inmobi.media.md");
    }

    public final int[] getViewableFrameArray() {
        return this.d0;
    }

    public final Md getWindowInsetListener() {
        return this.C0;
    }

    public final void h() {
        if (this.D.get()) {
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).b(TAG, "fireAdReady called on destroyed view");
                return;
            }
            return;
        }
        if (this.z0) {
            InterfaceC0298f5 interfaceC0298f52 = this.i;
            if (interfaceC0298f52 != null) {
                String TAG2 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "fireAdReady " + this + " - Ad is already unloaded");
                return;
            }
            return;
        }
        C0305fb c0305fb = this.O;
        if (c0305fb != null) {
            Map mapA = c0305fb.a();
            long j = c0305fb.b;
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            mapA.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("FireAdReady", mapA, EnumC0415mc.f426a);
        }
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f53).a(str, Wa.a(this, str, "TAG", "fireAdReady "));
        }
        this.m0 = true;
        if (this.j == 0) {
            j();
        }
        y();
        getListener().h(this);
    }

    public final void i() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "fireClickTrackers "));
        }
        Z2 z2 = this.I0;
        if (z2 != null && !z2.g.get()) {
            z2.d.g = 1;
            Intrinsics.checkNotNull(z2.c);
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).a(str2, Wa.a(this, str2, "TAG", "fireOnUserInteraction "));
        }
        b("window.imraidview.onUserInteraction();");
        getListener().b(this);
    }

    public final void j() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "fireImpression "));
        }
        if (Intrinsics.areEqual(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.q0) || Intrinsics.areEqual("audio", this.q0)) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).a(str2, Wa.a(this, str2, "TAG", "recordContextualData "));
        }
        Z2 z2 = this.I0;
        if (z2 != null) {
            z2.a();
        }
        b("window.imraidview.impressionRendered();");
        getListener().c(this);
    }

    public final boolean k() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0363j6.a(str, "TAG", "hasUserInteracted ").append(getViewTouchTimestamp()).append(' ').append(getRenderingConfig().getUserTouchResetTime()).toString());
        }
        return !getRenderingConfig().getAutoRedirectionEnforcement() || this.U || (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < getRenderingConfig().getUserTouchResetTime());
    }

    public final boolean l() {
        return (Intrinsics.areEqual(getAdType(), "banner") && getAdConfig().getMraid3().getBannerEnabled()) || (Intrinsics.areEqual(getAdType(), "int") && getAdConfig().getMraid3().getInterstitialEnabled());
    }

    public final void m() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "onUserLandingCompleted "));
        }
        b("window.imraid.broadcastEvent('onUserLandingCompleted');");
    }

    public final void n() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "processUnload "));
        }
        if (this.D.get()) {
            InterfaceC0298f5 interfaceC0298f52 = this.i;
            if (interfaceC0298f52 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG, "unload called on destroyed view");
                return;
            }
            return;
        }
        if (!l()) {
            InterfaceC0298f5 interfaceC0298f53 = this.i;
            if (interfaceC0298f53 != null) {
                String TAG2 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f53).b(TAG2, "mraid 3.0 is not enabled");
                return;
            }
            return;
        }
        if (this.n0) {
            InterfaceC0298f5 interfaceC0298f54 = this.i;
            if (interfaceC0298f54 != null) {
                String TAG3 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f54).b(TAG3, "unload called on failed view");
                return;
            }
            return;
        }
        if (this.z0) {
            return;
        }
        this.z0 = true;
        P6 p6 = (P6) AbstractC0407m4.d.getValue();
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Ya.b(this.f$0);
            }
        };
        p6.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        p6.f214a.post(runnable);
    }

    public final void o() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setCurrentPosition "));
        }
        this.u = new JSONObject();
        getLocationOnScreen(new int[2]);
        try {
            JSONObject jSONObject = this.u;
            if (jSONObject != null) {
                jSONObject.put(SvgConstants.Attributes.X, AbstractC0576y2.b(r0[0] / N3.b()));
            }
            JSONObject jSONObject2 = this.u;
            if (jSONObject2 != null) {
                jSONObject2.put(SvgConstants.Attributes.Y, AbstractC0576y2.b(r0[1] / N3.b()));
            }
            int iB = AbstractC0576y2.b(getWidth() / N3.b());
            int iB2 = AbstractC0576y2.b(getHeight() / N3.b());
            JSONObject jSONObject3 = this.u;
            if (jSONObject3 != null) {
                jSONObject3.put("width", iB);
            }
            JSONObject jSONObject4 = this.u;
            if (jSONObject4 != null) {
                jSONObject4.put("height", iB2);
            }
        } catch (JSONException unused) {
        }
        synchronized (this.F) {
            this.w = false;
            this.F.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "onAttachedToWindow "));
        }
        super.onAttachedToWindow();
        C0300f7 c0300f7 = this.p;
        if (c0300f7 != null) {
            S6 s6 = c0300f7.d;
            if (s6 != null) {
                s6.b();
            }
            S6 s62 = c0300f7.e;
            if (s62 != null) {
                s62.b();
            }
            S6 s63 = c0300f7.f;
            if (s63 != null) {
                s63.b();
            }
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).c(str2, Wa.a(this, str2, "TAG", "setIsViewHardwareAccelerated "));
        }
        this.r = isHardwareAccelerated();
        if (this.l == null) {
            ViewParent parent = getParent();
            this.l = new WeakReference(parent instanceof ViewGroup ? (ViewGroup) parent : null);
        }
        v();
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 != null) {
            String str3 = P0;
            ((C0314g5) interfaceC0298f53).a(str3, Wa.a(this, str3, "TAG", "startTrackingExposure "));
        }
        if (!l() || this.e) {
            InterfaceC0298f5 interfaceC0298f54 = this.i;
            if (interfaceC0298f54 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f54).b(TAG, "exposureTracker is already initialized");
            }
        } else {
            this.v0 = new I(this, getAdConfig().getMraid3().getExposureChangeInterval(), this.h0, this.i);
        }
        I i = this.v0;
        if (i != null) {
            if (i.i.compareAndSet(false, true)) {
                Throwable thM599exceptionOrNullimpl = Result.m599exceptionOrNullimpl(AbstractC0592z2.a(new F(i)));
                if (thM599exceptionOrNullimpl != null) {
                    InterfaceC0298f5 interfaceC0298f55 = i.d;
                    if (interfaceC0298f55 != null) {
                        ((C0314g5) interfaceC0298f55).b("AdExposureTracker", "Error starting exposure tracking - " + thM599exceptionOrNullimpl.getMessage());
                    }
                    i.i.set(false);
                    C0551w5 c0551w5 = C0551w5.f513a;
                    C0264d2 event = new C0264d2(thM599exceptionOrNullimpl);
                    Intrinsics.checkNotNullParameter(event, "event");
                    C0551w5.d.a(event);
                }
            } else {
                InterfaceC0298f5 interfaceC0298f56 = i.d;
                if (interfaceC0298f56 != null) {
                    ((C0314g5) interfaceC0298f56).c("AdExposureTracker", "Exposure tracking is already started");
                }
            }
        }
        InterfaceC0298f5 interfaceC0298f57 = this.i;
        if (interfaceC0298f57 != null) {
            String str4 = P0;
            ((C0314g5) interfaceC0298f57).a(str4, Wa.a(this, str4, "TAG", "startTrackingAudioVolume "));
        }
        if (l() && !this.e) {
            C0489s c0489s = C0489s.f476a;
            C0489s.a(this.i, this.g0);
        }
        InterfaceC0298f5 interfaceC0298f58 = this.i;
        if (interfaceC0298f58 != null) {
            String TAG2 = P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f58).a(TAG2, "==== CHECKPOINT REACHED - VISIBLE ====");
        }
        InterfaceC0298f5 interfaceC0298f59 = this.i;
        if (interfaceC0298f59 != null) {
            ((C0314g5) interfaceC0298f59).b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "onDetachedFromWindow "));
        }
        U3 u3 = this.o0;
        C0418n0 c0418n0 = null;
        if (u3 != null) {
            U3.a(u3, 8, true, null, 12);
        }
        C0300f7 c0300f7 = this.p;
        if (c0300f7 != null) {
            S6 s6 = c0300f7.d;
            if (s6 != null) {
                s6.a();
            }
            S6 s62 = c0300f7.e;
            if (s62 != null) {
                s62.a();
            }
            S6 s63 = c0300f7.f;
            if (s63 != null) {
                s63.a();
            }
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, "Detached from window");
        }
        C0418n0 c0418n02 = this.s0;
        if (c0418n02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
        } else {
            c0418n0 = c0418n02;
        }
        if (c0418n0.d.get()) {
            c0418n0.a("session end is already triggered");
        } else if (!c0418n0.f428a.getEnabled()) {
            c0418n0.a("config kill switch - false. ad quality will skip");
        } else if (c0418n0.g == null) {
            c0418n0.a("setup not done. ignore trigger");
        } else {
            c0418n0.d.set(true);
            c0418n0.a(false);
        }
        if (this.t0.get()) {
            ((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue()).schedule(new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ya.a(this.f$0);
                }
            }, 1L, TimeUnit.SECONDS);
        }
        v();
        u();
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f53).a(str2, Wa.a(this, str2, "TAG", "stopTrackingAudioVolume "));
        }
        C0489s c0489s = C0489s.f476a;
        C0489s.c(this.i, this.g0);
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
            InterfaceC0298f5 interfaceC0298f54 = this.i;
            if (interfaceC0298f54 != null) {
                String str3 = P0;
                ((C0314g5) interfaceC0298f54).b(str3, AbstractC0363j6.a(str3, "TAG", "Detaching WebView from window encountered an error ( ").append(e.getMessage()).append(" )").toString());
            }
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (!getRenderingConfig().getSupportedGestures().contains(1)) {
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "Double tap gesture is disabled from config");
            }
            return false;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG2 = P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "onDoubleTapEvent detected \n " + e);
        }
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        if (e.getAction() == 1) {
            JSONArray jSONArray = new JSONArray();
            try {
                jSONArray.put(AbstractC0576y2.c(e.getX()));
                jSONArray.put(AbstractC0576y2.c(e.getY()));
            } catch (JSONException e2) {
                InterfaceC0298f5 interfaceC0298f53 = this.i;
                if (interfaceC0298f53 != null) {
                    String TAG3 = P0;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f53).a(TAG3, "Exception in onDoubleTap", e2);
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONArray);
            b("window.imraidview.onGestureDetected('1', '" + jSONArray2 + "');");
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
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "LongPress gesture is disabled from config");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG2 = P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "onLongPress detected \n " + e);
        }
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(AbstractC0576y2.c(e.getX()));
            jSONArray.put(AbstractC0576y2.c(e.getY()));
        } catch (JSONException e2) {
            InterfaceC0298f5 interfaceC0298f53 = this.i;
            if (interfaceC0298f53 != null) {
                String TAG3 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f53).a(TAG3, "Exception in onLongPress", e2);
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(jSONArray);
        b("window.imraidview.onGestureDetected('5', '" + jSONArray2 + "');");
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
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "Click gesture is disabled from config");
            }
            return false;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG2 = P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "onSingleTapConfirmed detected \n " + e);
        }
        JSONArray jSONArray = new JSONArray();
        try {
            jSONArray.put(AbstractC0576y2.c(e.getX()));
            jSONArray.put(AbstractC0576y2.c(e.getY()));
        } catch (JSONException e2) {
            InterfaceC0298f5 interfaceC0298f53 = this.i;
            if (interfaceC0298f53 != null) {
                String TAG3 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f53).a(TAG3, "Exception in onSingleTapConfirmed", e2);
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(jSONArray);
        b("window.imraidview.onGestureDetected('0', '" + jSONArray2 + "');");
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "onSingleTapUp detected \n " + e);
        }
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        return false;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "onSizeChanged "));
        }
        super.onSizeChanged(i, i2, i3, i4);
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, "onSizeChanged (" + i + ", " + i2 + ')');
        }
        if (i == 0 || i2 == 0) {
            return;
        }
        int iB = AbstractC0576y2.b(i / N3.b());
        int iB2 = AbstractC0576y2.b(i2 / N3.b());
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 != null) {
            String TAG2 = P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f53).a(TAG2, "fireSizeChanged " + this + " w-" + iB + " h-" + iB2);
        }
        b("window.mraidview.broadcastEvent('sizeChange'," + iB + ',' + iB2 + ");");
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Float.isNaN(event.getX()) || Float.isNaN(event.getY())) {
            if (!this.u0) {
                InterfaceC0298f5 interfaceC0298f5 = this.i;
                if (interfaceC0298f5 != null) {
                    String TAG = P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).b(TAG, "onTouchEvent Invalid Coordinates " + event);
                }
                this.u0 = true;
            }
            return super.onTouchEvent(event);
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f52).a(str, Wa.a(this, str, "TAG", "onTouchEvent "));
        }
        if (this.b == 1) {
            this.k0.a(event);
        }
        this.l0.onTouchEvent(event);
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
            com.inmobi.media.f5 r0 = r4.i
            if (r0 == 0) goto L29
            java.lang.String r1 = com.inmobi.media.Ya.P0
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
            com.inmobi.media.g5 r0 = (com.inmobi.media.C0314g5) r0
            r0.a(r1, r2)
        L29:
            super.onWindowFocusChanged(r5)
            r0 = 1
            if (r5 == 0) goto L4b
            boolean r5 = r4.isShown()
            if (r5 == 0) goto L4a
            com.inmobi.media.z4 r5 = com.inmobi.media.C4.k
            int r1 = r4.j0
            r2 = 0
            boolean r1 = r5.a(r4, r4, r1, r2)
            if (r1 == 0) goto L4a
            int r1 = r4.j0
            boolean r5 = r5.a(r4, r4, r1)
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
            r4.c(r5)
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ya.onWindowFocusChanged(boolean):void");
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
            com.inmobi.media.f5 r0 = r4.i
            if (r0 == 0) goto L29
            java.lang.String r1 = com.inmobi.media.Ya.P0
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
            com.inmobi.media.g5 r0 = (com.inmobi.media.C0314g5) r0
            r0.c(r1, r2)
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
            com.inmobi.media.z4 r2 = com.inmobi.media.C4.k
            r3 = 0
            boolean r3 = r2.a(r4, r4, r5, r3)
            if (r3 == 0) goto L4f
            boolean r5 = r2.a(r4, r4, r5)
            if (r5 == 0) goto L4f
            goto L52
        L4f:
            r0 = r1
            goto L52
        L51:
            r0 = r5
        L52:
            r4.c(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ya.onWindowVisibilityChanged(int):void");
    }

    public final void p() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setDefaultPosition "));
        }
        int[] iArr = new int[2];
        this.t = new JSONObject();
        if (this.l == null) {
            ViewParent parent = getParent();
            this.l = new WeakReference(parent instanceof ViewGroup ? (ViewGroup) parent : null);
        }
        WeakReference weakReference = this.l;
        try {
            if ((weakReference != null ? (ViewGroup) weakReference.get() : null) != null) {
                WeakReference weakReference2 = this.l;
                if (weakReference2 != null && (viewGroup3 = (ViewGroup) weakReference2.get()) != null) {
                    viewGroup3.getLocationOnScreen(iArr);
                }
                JSONObject jSONObject = this.t;
                if (jSONObject != null) {
                    jSONObject.put(SvgConstants.Attributes.X, AbstractC0576y2.b(iArr[0] / N3.b()));
                }
                JSONObject jSONObject2 = this.t;
                if (jSONObject2 != null) {
                    jSONObject2.put(SvgConstants.Attributes.Y, AbstractC0576y2.b(iArr[1] / N3.b()));
                }
                WeakReference weakReference3 = this.l;
                int iB = AbstractC0576y2.b(((weakReference3 == null || (viewGroup2 = (ViewGroup) weakReference3.get()) == null) ? 0 : viewGroup2.getWidth()) / N3.b());
                WeakReference weakReference4 = this.l;
                int iB2 = AbstractC0576y2.b(((weakReference4 == null || (viewGroup = (ViewGroup) weakReference4.get()) == null) ? 0 : viewGroup.getHeight()) / N3.b());
                JSONObject jSONObject3 = this.t;
                if (jSONObject3 != null) {
                    jSONObject3.put("width", iB);
                }
                JSONObject jSONObject4 = this.t;
                if (jSONObject4 != null) {
                    jSONObject4.put("height", iB2);
                }
            } else {
                JSONObject jSONObject5 = this.t;
                if (jSONObject5 != null) {
                    jSONObject5.put(SvgConstants.Attributes.X, 0);
                }
                JSONObject jSONObject6 = this.t;
                if (jSONObject6 != null) {
                    jSONObject6.put(SvgConstants.Attributes.Y, 0);
                }
                JSONObject jSONObject7 = this.t;
                if (jSONObject7 != null) {
                    jSONObject7.put("width", 0);
                }
                JSONObject jSONObject8 = this.t;
                if (jSONObject8 != null) {
                    jSONObject8.put("height", 0);
                }
            }
        } catch (JSONException unused) {
        }
        synchronized (this.E) {
            this.v = false;
            this.E.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void q() {
        int webImpressionMinPercentageViewed;
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setFallbackImpressionMinPercentageViewed "));
        }
        AdConfig adConfig = null;
        if (Intrinsics.areEqual(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.q0)) {
            AdConfig adConfig2 = this.q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getVideoImpressionMinPercentageViewed();
        } else if (!Intrinsics.areEqual("audio", this.q0)) {
            AdConfig adConfig3 = this.q;
            if (adConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig3;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getWebImpressionMinPercentageViewed();
        } else if (Intrinsics.areEqual("audio", getAdType())) {
            AdConfig adConfig4 = this.q;
            if (adConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig4;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getAudioImpressionMinPercentageViewed();
        } else {
            AdConfig adConfig5 = this.q;
            if (adConfig5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig5;
            }
            webImpressionMinPercentageViewed = adConfig.getViewability().getWebImpressionMinPercentageViewed();
        }
        this.j0 = webImpressionMinPercentageViewed;
    }

    public final void r() {
        int webImpressionMinTimeViewed;
        AdConfig adConfig = null;
        if (Intrinsics.areEqual(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.q0)) {
            AdConfig adConfig2 = this.q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getVideoImpressionMinTimeViewed();
        } else if (!Intrinsics.areEqual("audio", this.q0)) {
            AdConfig adConfig3 = this.q;
            if (adConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig3;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getWebImpressionMinTimeViewed();
        } else if (Intrinsics.areEqual("audio", getAdType())) {
            AdConfig adConfig4 = this.q;
            if (adConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig4;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getAudioImpressionMinTimeViewed();
        } else {
            AdConfig adConfig5 = this.q;
            if (adConfig5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig5;
            }
            webImpressionMinTimeViewed = adConfig.getViewability().getWebImpressionMinTimeViewed();
        }
        this.i0 = webImpressionMinTimeViewed;
    }

    public final void s() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setFallbackImpressionParams "));
        }
        r();
        q();
        t();
    }

    public final void setAdPodHandler(Z z) {
        this.V = z;
    }

    public final void setAdSize(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setAdSize "));
        }
        O3 o3 = N3.f189a;
        this.b0 = (int) (N3.b() * Integer.parseInt(((String[]) new Regex(SvgConstants.Attributes.X).split(adSize, 0).toArray(new String[0]))[0]));
        this.e0 = ((int) (N3.b() * Integer.parseInt(((String[]) new Regex(SvgConstants.Attributes.X).split(adSize, 0).toArray(new String[0]))[1]))) * this.b0;
    }

    public void setAdType(String str) {
        this.P = str;
    }

    public final void setAllowAutoRedirection(boolean z) {
        this.U = z;
    }

    public final void setAndUpdateViewState(String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setAndUpdateViewState "));
        }
        this.o = state;
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).a(str2, AbstractC0363j6.a(str2, "TAG", "set state:").append(this.o).toString());
        }
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = state.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f53).a(TAG, "fireStateChange " + this + ' ' + lowerCase);
        }
        b("window.mraidview.broadcastEvent('stateChange','" + lowerCase + "');");
    }

    public final void setBeaconUrl(String str) {
        this.w0 = str;
    }

    public final void setBlobProvider(Z1 z1) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setBlobProvider "));
        }
        this.R = z1;
    }

    public final void setCloseAssetArea(Nd value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!this.H0) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            if (!AbstractC0576y2.a(context)) {
                return;
            }
        }
        this.M0 = new Nd(0, value.b, value.c, 0);
    }

    public final void setCloseEndCardTracker(String url) {
        InterfaceC0385kd interfaceC0385kdD;
        C0229ad c0229ad;
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setCloseEndCardTracker "));
        }
        InterfaceC0559x referenceContainer = getReferenceContainer();
        if (!(referenceContainer instanceof A8) || url == null) {
            return;
        }
        A8 a8 = (A8) referenceContainer;
        a8.getClass();
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f52 = a8.W;
        if (interfaceC0298f52 != null) {
            String str2 = a8.X;
            ((C0314g5) interfaceC0298f52).c(str2, AbstractC0378k6.a(str2, "TAG", "Setting close end tracker with URL : ", url));
        }
        View videoContainerView = a8.getVideoContainerView();
        if (videoContainerView instanceof M8) {
            Object tag = ((M8) videoContainerView).getVideoView().getTag();
            C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (c8 == null || (interfaceC0385kdD = c8.d()) == null || (c0229ad = ((C0370jd) interfaceC0385kdD).j) == null) {
                return;
            }
            C0526u8 tracker = new C0526u8(url, 0, "closeEndCard", null);
            Intrinsics.checkNotNullParameter(tracker, "tracker");
            c0229ad.f.add(tracker);
        }
    }

    public final void setConfiguredArea(long j) {
        this.e0 = ((long) getWidth()) * ((long) getHeight());
    }

    public final void setContentURL(String str) {
        this.c0 = str;
    }

    public void setCreativeId(String str) {
        this.M = str;
    }

    public final void setDisableBackButton(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setDisableBackButton "));
        }
        this.B = z;
    }

    public final void setEmbeddedBrowserJSCallbacks(S3 s3) {
        this.p0 = s3;
    }

    public void setExitAnimation(int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setExitAnimation "));
        }
        this.K = i;
    }

    public void setFriendlyViews(Map<View, ? extends FriendlyObstructionPurpose> map) {
        this.Q = map;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public void setFullScreenActivityContext(Activity activity) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setFullScreenActivityContext "));
        }
        this.k = new WeakReference(activity);
        x();
        if (this.e || activity == null) {
            return;
        }
        Pd pd = this.y0;
        if (pd != null) {
            pd.a();
        }
        this.y0 = new Pd(activity, this.C0, this.i);
    }

    public final void setImmersiveMode(boolean z) {
        this.H0 = z;
    }

    public void setImpressionId(String str) {
        this.d = str;
    }

    public final void setLandingPageTelemetryControlInfoOnWebViewClient(C0510t6 c0510t6) {
        U3 u3 = this.o0;
        if (u3 == null) {
            return;
        }
        u3.i = c0510t6;
        u3.j = new C0469q6(c0510t6, u3);
    }

    public final void setLandingScheme(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f = str;
    }

    public final void setMarkupTypeAdUnit(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.D0 = str;
    }

    public final void setOrientationProperties(K9 orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setOrientationProperties "));
        }
        this.r0 = orientationProperties;
        x();
    }

    public final void setPlacementId(long j) {
        this.L = j;
    }

    public final void setPreloadView(boolean z) {
        this.T = z;
    }

    public void setReferenceContainer(InterfaceC0559x interfaceC0559x) {
        this.S = interfaceC0559x;
    }

    public final void setRenderViewEventListener(AbstractC0227ab abstractC0227ab) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setRenderViewEventListener "));
        }
        this.m = abstractC0227ab;
    }

    public final void setScrollable(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "setScrollable "));
        }
        setScrollContainer(z);
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }

    public final void setShouldFireLandingPageBeacons(boolean z) {
        this.x0 = z;
    }

    public void setTelemetryManagerMap(Map<String, S0> map) {
        this.A0 = map;
    }

    public final void setUnloaded(boolean z) {
        this.z0 = z;
    }

    public final void setUseCustomClose(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "setUseCustomClose " + this + ' ' + z);
        }
        this.x = z;
    }

    public void setViewTouchTimestamp(long j) {
        this.g = j;
    }

    public final void setWatermark(final WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        if (getAdConfig().getWatermarkEnabled()) {
            final byte[] bArrDecode = Base64.decode(watermarkData.getWatermarkBase64EncodedString(), 0);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    Ya.a(this.f$0, bArrDecode, watermarkData);
                }
            });
        } else {
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "Watermark disabled from config. ignoring...");
            }
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "stopLoading "));
        }
        if (this.D.get()) {
            return;
        }
        super.stopLoading();
    }

    public final void t() {
        byte interstitialImpressionType;
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "setFallbackImpressionType "));
        }
        String adType = getAdType();
        AdConfig adConfig = null;
        if (Intrinsics.areEqual(adType, "banner")) {
            AdConfig adConfig2 = this.q;
            if (adConfig2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig2;
            }
            interstitialImpressionType = adConfig.getViewability().getBannerImpressionType();
        } else if (Intrinsics.areEqual(adType, "audio")) {
            AdConfig adConfig3 = this.q;
            if (adConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig3;
            }
            interstitialImpressionType = adConfig.getViewability().getAudioImpressionType();
        } else {
            AdConfig adConfig4 = this.q;
            if (adConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
            } else {
                adConfig = adConfig4;
            }
            interstitialImpressionType = adConfig.getViewability().getInterstitialImpressionType();
        }
        this.j = interstitialImpressionType;
    }

    public final void u() {
        InterfaceC0298f5 interfaceC0298f5;
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f52).a(str, Wa.a(this, str, "TAG", "stopTrackingExposure "));
        }
        I i = this.v0;
        if (i != null) {
            if (!i.i.compareAndSet(true, false)) {
                InterfaceC0298f5 interfaceC0298f53 = i.d;
                if (interfaceC0298f53 != null) {
                    ((C0314g5) interfaceC0298f53).c("AdExposureTracker", "Exposure tracking is already stopped");
                    return;
                }
                return;
            }
            Throwable thM599exceptionOrNullimpl = Result.m599exceptionOrNullimpl(AbstractC0592z2.a(new G(i)));
            if (thM599exceptionOrNullimpl == null || (interfaceC0298f5 = i.d) == null) {
                return;
            }
            ((C0314g5) interfaceC0298f5).b("AdExposureTracker", "Error stopping exposure tracking - " + thM599exceptionOrNullimpl.getMessage());
        }
    }

    public final void v() {
        new C0562x2(this, !this.x, !this.A, this.i).a(this.M0);
    }

    public final void w() {
        getListener().d(this);
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "ad dismissed");
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a();
        }
        C0418n0 c0418n0 = this.s0;
        if (c0418n0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adQualityManager");
            c0418n0 = null;
        }
        if (c0418n0.d.get()) {
            c0418n0.a("session end is already triggered");
            return;
        }
        if (!c0418n0.f428a.getEnabled()) {
            c0418n0.a("config kill switch - false. ad quality will skip");
        } else if (c0418n0.g == null) {
            c0418n0.a("setup not done. ignore trigger");
        } else {
            c0418n0.d.set(true);
            c0418n0.a(false);
        }
    }

    public final void x() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "updateActivitiesOrientationProperties "));
        }
        Activity activity = (Activity) this.k.get();
        if (activity == null || !(activity instanceof InMobiAdActivity)) {
            return;
        }
        K9 orientationProperties = this.r0;
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        R4 r4 = ((InMobiAdActivity) activity).f67a;
        if (r4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
            r4 = null;
        }
        r4.a(orientationProperties);
    }

    public final void y() {
        int i = AbstractC0407m4.f421a;
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue()).execute(new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ya.c(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "disableHardwareAcceleration called. "));
        }
        try {
            setLayerType(1, null);
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void a(String url, String templateInfoStr, boolean z) {
        Activity activity;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(templateInfoStr, "templateInfoStr");
        try {
            JSONObject jSONObject = new JSONObject(templateInfoStr);
            InterfaceC0298f5 interfaceC0298f5 = this.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).a(TAG, "report - " + getAdType() + " type - sdk - " + Build.VERSION.SDK_INT);
            }
            if (Intrinsics.areEqual(getAdType(), "int") && Build.VERSION.SDK_INT >= 29 && (activity = (Activity) this.k.get()) != null) {
                ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
                C0277e0.a(activity, this, url, z, jSONObject, this.B0);
            } else {
                ScheduledExecutorService scheduledExecutorService2 = C0277e0.f336a;
                C0277e0.a(this, this, url, z, jSONObject, this.B0);
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.i;
            if (interfaceC0298f52 != null) {
                String TAG2 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "issue wile reporting ad", e);
            }
        }
    }

    public static final void a(Ya this$0) {
        InterfaceC0298f5 interfaceC0298f5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isAttachedToWindow() || (interfaceC0298f5 = this$0.i) == null) {
            return;
        }
        ((C0314g5) interfaceC0298f5).a();
    }

    public final void a(AbstractC0227ab abstractC0227ab, AdConfig adConfig) {
        AdConfig adConfig2;
        int otherNetworkLoadsLimit;
        AdConfig adConfig3;
        AdConfig adConfig4;
        WebViewClient webViewClient;
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "initialize "));
        }
        if (Intrinsics.areEqual(this.D0, "htmlUrl")) {
            getSettings().setMixedContentMode(2);
        }
        this.q = adConfig;
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).a(str2, Wa.a(this, str2, "TAG", "setImpressionParams "));
        }
        if (this.c == null) {
            s();
        } else {
            try {
                s();
                for (Hc hc : this.c) {
                    if (hc.f132a == 2) {
                        if (hc.b.containsKey("type")) {
                            Object obj = hc.b.get("type");
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                            this.j = (byte) ((Integer) obj).intValue();
                        } else {
                            t();
                        }
                        if (hc.b.containsKey("time")) {
                            Object obj2 = hc.b.get("time");
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
                            this.i0 = ((Integer) obj2).intValue();
                        } else {
                            r();
                        }
                        if (hc.b.containsKey("view")) {
                            Object obj3 = hc.b.get("view");
                            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Int");
                            this.j0 = ((Integer) obj3).intValue();
                        } else {
                            q();
                        }
                        if (this.j == 2) {
                            if (hc.b.containsKey("pixel")) {
                                Object obj4 = hc.b.get("pixel");
                                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Int");
                                this.f0 = ((Integer) obj4).intValue();
                            } else {
                                t();
                            }
                            if (hc.b.containsKey(TypedValues.AttributesType.S_FRAME)) {
                                Object obj5 = hc.b.get(TypedValues.AttributesType.S_FRAME);
                                JSONArray jSONArray = obj5 instanceof JSONArray ? (JSONArray) obj5 : null;
                                if (jSONArray != null) {
                                    this.d0 = new int[jSONArray.length()];
                                    int length = jSONArray.length();
                                    for (int i = 0; i < length; i++) {
                                        int[] iArr = this.d0;
                                        if (iArr != null) {
                                            Object obj6 = jSONArray.get(i);
                                            Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Int");
                                            iArr[i] = ((Integer) obj6).intValue();
                                        }
                                    }
                                }
                            } else {
                                t();
                            }
                        }
                    }
                }
            } catch (JSONException unused) {
                InterfaceC0298f5 interfaceC0298f53 = this.i;
                if (interfaceC0298f53 != null) {
                    String TAG = P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f53).b(TAG, "Exception in parsing the impressionType and pixel frame");
                }
                s();
            } catch (Exception unused2) {
                InterfaceC0298f5 interfaceC0298f54 = this.i;
                if (interfaceC0298f54 != null) {
                    String TAG2 = P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f54).b(TAG2, "SDK encountered an unexpected error in parsing impression parameters");
                }
                s();
            }
        }
        this.m = abstractC0227ab;
        ViewParent parent = getParent();
        this.l = new WeakReference(parent instanceof ViewGroup ? (ViewGroup) parent : null);
        setBackgroundColor(getRenderingConfig().getWebviewBackgroundColor());
        new C0223a7(getMraidConfig().getUrl(), getMraidConfig().getMaxRetries(), getMraidConfig().getRetryInterval(), getMraidConfig().getExpiry(), this.i).a();
        setImportantForAccessibility(2);
        setScrollable(false);
        int i2 = Build.VERSION.SDK_INT;
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(getAdConfig().getRendering().getEnableDomStorage());
        getSettings().setGeolocationEnabled(true);
        if (this.e) {
            InterfaceC0298f5 interfaceC0298f55 = this.i;
            if (interfaceC0298f55 != null) {
                String TAG3 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f55).c(TAG3, "view is in-app browser. Using EmbeddedBrowserViewClient.");
            }
            U3 u3 = new U3("IN_CUSTOM_BROWSER", Ma.f182a, Na.f193a, this.i);
            this.o0 = u3;
            webViewClient = u3;
        } else {
            InterfaceC0298f5 interfaceC0298f56 = this.i;
            if (interfaceC0298f56 != null) {
                String TAG4 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                ((C0314g5) interfaceC0298f56).c(TAG4, "view is ad. Using RenderViewClient");
            }
            Za za = new Za(this.O, this.i, new Oa(this));
            String adType = getAdType();
            if (Intrinsics.areEqual(adType, "banner")) {
                AdConfig adConfig5 = this.q;
                if (adConfig5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
                    adConfig4 = null;
                } else {
                    adConfig4 = adConfig5;
                }
                otherNetworkLoadsLimit = adConfig4.getRendering().getBannerNetworkLoadsLimit();
            } else if (Intrinsics.areEqual(adType, "audio")) {
                AdConfig adConfig6 = this.q;
                if (adConfig6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
                    adConfig3 = null;
                } else {
                    adConfig3 = adConfig6;
                }
                otherNetworkLoadsLimit = adConfig3.getRendering().getAudioNetworkLoadsLimit();
            } else {
                AdConfig adConfig7 = this.q;
                if (adConfig7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAdConfig");
                    adConfig2 = null;
                } else {
                    adConfig2 = adConfig7;
                }
                otherNetworkLoadsLimit = adConfig2.getRendering().getOtherNetworkLoadsLimit();
            }
            za.b = otherNetworkLoadsLimit;
            webViewClient = za;
        }
        setWebViewClient(webViewClient);
        if (this.e && getAdConfig().getEnableCookiesOnInAppBrowser()) {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
        setWebChromeClient(this.K0);
        if (!this.e) {
            X5 x5 = new X5(this.b, this);
            InterfaceC0298f5 logger = this.i;
            if (logger != null) {
                Intrinsics.checkNotNullParameter(logger, "logger");
                x5.d = logger;
            }
            addJavascriptInterface(x5, "sdkController");
        }
        this.p = new C0300f7(this, this.i);
        this.s0 = new C0418n0(adConfig.getAdQuality(), this.i);
        if (i2 >= 29) {
            setWebViewRenderProcessClient((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue(), new C0273db(this.i, this.O));
        }
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final boolean c() {
        return this.D.get();
    }

    public final void c(String str) {
        C0305fb c0305fb = this.O;
        if (c0305fb != null) {
            c0305fb.b();
        }
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f5).a(str2, Wa.a(this, str2, "TAG", "loadDataInWebView "));
        }
        this.G = false;
        if (this.D.get()) {
            return;
        }
        Intrinsics.checkNotNull(str);
        loadDataWithBaseURL("", str, "text/html", "UTF-8", null);
    }

    public final void b(final String value) {
        Intrinsics.checkNotNullParameter(value, "js");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "injectJavaScript " + this + " - " + value);
        }
        Intrinsics.checkNotNullParameter(value, "value");
        new Handler(getContainerContext().getMainLooper()).postAtFrontOfQueue(new Runnable() { // from class: com.inmobi.media.Ya$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Ya.a(this.f$0, value);
            }
        });
    }

    public final void b(String str, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f5).a(str2, Wa.a(this, str2, "TAG", "processMediaPlaybackRequest "));
        }
        if (this.z0) {
            InterfaceC0298f5 interfaceC0298f52 = this.i;
            if (interfaceC0298f52 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG, "Media playback is not allowed after unload! Ignoring request ...");
                return;
            }
            return;
        }
        if (1 != this.b) {
            InterfaceC0298f5 interfaceC0298f53 = this.i;
            if (interfaceC0298f53 != null) {
                String TAG2 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f53).b(TAG2, "Media playback is only supported on full screen ads! Ignoring request ...");
                return;
            }
            return;
        }
        Activity activity = (Activity) this.k.get();
        if (activity == null) {
            InterfaceC0298f5 interfaceC0298f54 = this.i;
            if (interfaceC0298f54 != null) {
                String TAG3 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f54).b(TAG3, "Media playback is  not allowed before it is visible! Ignoring request ...");
            }
            a(str, "Media playback is  not allowed before it is visible! Ignoring request ...", "playVideo");
            return;
        }
        C0300f7 c0300f7 = this.p;
        if (c0300f7 != null) {
            c0300f7.a(url, activity);
        }
    }

    public final void d(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "processDisableCloseRegionRequest " + this + ' ' + z);
        }
        this.A = z;
        v();
    }

    @Override // com.inmobi.media.Aa
    public final boolean d() {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "canRedirectExternally Called");
        }
        return !getRenderingConfig().getAutoRedirectionEnforcement() || (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < getRenderingConfig().getUserTouchResetTime());
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void a(byte b, Map map) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "fireEvent " + this + " 2");
        }
    }

    @Override // com.inmobi.media.Aa
    public final void a(String mraidApi) {
        Intrinsics.checkNotNullParameter(mraidApi, "mraidApi");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "sendFraudBeaconAndTelemetryEvent "));
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, "fireDetectAutoRedirectFraud " + this + ' ' + mraidApi);
        }
        b("window.mraidview.fireRedirectFraudBeacon('" + mraidApi + "')");
        String adType = getAdType();
        if (adType == null) {
            adType = "banner";
        }
        InterfaceC0298f5 interfaceC0298f53 = this.i;
        if (interfaceC0298f53 != null) {
            String TAG2 = P0;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f53).c(TAG2, "sendTelemetryForAutoRedirectFraud " + this + ' ' + mraidApi + ' ' + adType);
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
        InterfaceC0298f5 interfaceC0298f54 = this.i;
        if (interfaceC0298f54 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f54).a(str2, Wa.a(this, str2, "TAG", "processTelemetryEvent "));
        }
        getListener().a("BlockAutoRedirection", map);
    }

    public static final void c(Ya this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        synchronized (this$0.n) {
            if (Intrinsics.areEqual("Loading", this$0.o)) {
                InterfaceC0298f5 interfaceC0298f5 = this$0.i;
                if (interfaceC0298f5 != null) {
                    String TAG = P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "updateWebViewLoaded " + this$0);
                }
                this$0.getListener().f(this$0);
                this$0.setAndUpdateViewState(Profile.DEFAULT_PROFILE_NAME);
                InterfaceC0298f5 interfaceC0298f52 = this$0.i;
                if (interfaceC0298f52 != null) {
                    String TAG2 = P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).a(TAG2, "updateWebViewLoaded state changed to " + this$0.o);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ya.e(java.lang.String):boolean");
    }

    public final void a(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "fireNextAdLoadComplete "));
        }
        String str2 = "window.imraidview.broadcastEvent('adLoadSuccess'," + z + ");";
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).c(TAG, str2 + " Index: " + getCurrentRenderingPodAdIndex());
        }
        b(str2);
    }

    public static final void b(Ya this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListener().j(this$0);
    }

    public final void b(String str, String contentId, String url) {
        Intrinsics.checkNotNullParameter(contentId, "contentId");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f5).c(str2, Wa.a(this, str2, "TAG", "processSaveContentRequest "));
        }
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, "saveContent called: content ID: " + contentId + "; URL: " + url);
        }
        if (!e("saveContent")) {
            InterfaceC0298f5 interfaceC0298f53 = this.i;
            if (interfaceC0298f53 != null) {
                String TAG2 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f53).b(TAG2, "saveContent called despite the fact that it is not supported");
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", url);
                jSONObject.put("reason", 7);
            } catch (JSONException unused) {
            }
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            a(str, "sendSaveContentResult(\"saveContent_" + contentId + "\", 'failed', \"" + StringsKt.replace$default(string, "\"", "\\\"", false, 4, (Object) null) + "\");");
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(new C0600za((byte) -1, url));
        String string2 = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        C0371k c0371k = new C0371k(string2, hashSet, this.L0, contentId, 2);
        c0371k.c = str;
        C0477r1 c0477r1 = C0477r1.f467a;
        C0477r1.a(c0371k);
    }

    public final void a(String str, String message, String str2) {
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "fireError " + this + " - " + message + " - " + str2);
        }
        if (str == null || str2 == null) {
            return;
        }
        a(str, "broadcastEvent('error',\"" + message + "\", \"" + str2 + "\")");
    }

    public final void a(String str, String callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f5).a(str2, Wa.a(this, str2, "TAG", "fireJavaScriptCallback "));
        }
        if (str == null) {
            return;
        }
        b(str + ClassUtils.PACKAGE_SEPARATOR_CHAR + callback);
    }

    public final void b(boolean z) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(this, str, "TAG", "fireNextAdShowComplete "));
        }
        String str2 = "window.imraidview.broadcastEvent('adShowSuccess'," + z + ");";
        InterfaceC0298f5 interfaceC0298f52 = this.i;
        if (interfaceC0298f52 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, str2 + " Index: " + getCurrentRenderingPodAdIndex());
        }
        b(str2);
    }

    public static final void a(Ya this$0, String js) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(js, "$js");
        try {
            if (this$0.D.get()) {
                return;
            }
            String str = "javascript:try{" + js + "}catch(e){}";
            InterfaceC0298f5 interfaceC0298f5 = this$0.i;
            if (interfaceC0298f5 != null) {
                String TAG = P0;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).a(TAG, "Injecting javascript");
            }
            InterfaceC0298f5 interfaceC0298f52 = this$0.i;
            if (interfaceC0298f52 != null) {
                String TAG2 = P0;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).c(TAG2, "evaluateScript " + this$0);
            }
            this$0.evaluateJavascript(str, null);
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f53 = this$0.i;
            if (interfaceC0298f53 != null) {
                String str2 = P0;
                ((C0314g5) interfaceC0298f53).b(str2, Ed.a(e, AbstractC0363j6.a(str2, "TAG", "SDK encountered an unexpected error injecting JavaScript in the Ad container; ")));
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void a() {
        Z z;
        Activity fullScreenActivity;
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "dismissCurrentViewContainer "));
        }
        C0300f7 c0300f7 = this.p;
        if (c0300f7 != null) {
            V6 v6 = c0300f7.c;
            if (v6 != null) {
                v6.b();
            }
            c0300f7.c = null;
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.o)) {
            setAndUpdateViewState("Hidden");
            ViewParent parent = getParent();
            if (1 == this.b) {
                InterfaceC0298f5 interfaceC0298f52 = this.i;
                if (interfaceC0298f52 != null) {
                    String str2 = P0;
                    ((C0314g5) interfaceC0298f52).a(str2, Wa.a(this, str2, "TAG", "finishFullScreenActivity "));
                }
                SparseArray sparseArray = InMobiAdActivity.k;
                Intrinsics.checkNotNullParameter(this, "container");
                InMobiAdActivity.k.remove(hashCode());
                if (getFullScreenActivity() != null) {
                    Z z2 = this.V;
                    if (z2 == null || !z2.a(this)) {
                        Activity fullScreenActivity2 = getFullScreenActivity();
                        Intrinsics.checkNotNull(fullScreenActivity2, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                        ((InMobiAdActivity) fullScreenActivity2).e = true;
                        Activity fullScreenActivity3 = getFullScreenActivity();
                        if (fullScreenActivity3 != null) {
                            fullScreenActivity3.finish();
                        }
                        if (this.K != -1 && (fullScreenActivity = getFullScreenActivity()) != null) {
                            fullScreenActivity.overridePendingTransition(0, this.K);
                        }
                    }
                } else {
                    if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.o)) {
                        setAndUpdateViewState("Hidden");
                    }
                    w();
                }
            } else if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        if (this.z != qd.c || (z = this.V) == null) {
            return;
        }
        z.a(this, getFullScreenActivity());
    }

    @Override // com.inmobi.media.L9
    public final void a(I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "onOrientationUpdate "));
        }
    }

    public static final boolean a(Ya ya, JsResult jsResult) {
        InterfaceC0298f5 interfaceC0298f5 = ya.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(ya, str, "TAG", "shouldRenderPopup "));
        }
        if (ya.getRenderingConfig().getShouldRenderPopup()) {
            return true;
        }
        jsResult.cancel();
        InterfaceC0298f5 interfaceC0298f52 = ya.i;
        if (interfaceC0298f52 != null) {
            String str2 = P0;
            ((C0314g5) interfaceC0298f52).a(str2, Wa.a(ya, str2, "TAG", "firePopupBlockedEvent "));
        }
        ya.b("window.mraidview.popupBlocked('popupBlocked')");
        return false;
    }

    public static final void a(Ya ya, String str, String str2, String str3) {
        InterfaceC0298f5 interfaceC0298f5 = ya.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "onUserLandingInitialized " + ya + " isInAppBrowser: " + ya.e);
        }
        ya.b("window.imraid.broadcastEvent('onUserLandingInitialized');");
        if (str2 == null) {
            return;
        }
        ya.a(str2, "broadcastEvent('" + str + "Successful','" + str3 + "');");
    }

    public final void a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "onCTLifeCycleEvent "));
        }
        b("window.imraid.broadcastEvent('onCTLifeCycleEvent', " + jsonObject + ");");
    }

    public final void a(String trackerName, Map macros) {
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String str = P0;
            ((C0314g5) interfaceC0298f5).a(str, Wa.a(this, str, "TAG", "fireLandingPageTracker "));
        }
        getListener().a(this, trackerName, macros);
    }

    public final void a(boolean z, short s) {
        InterfaceC0298f5 interfaceC0298f5 = this.i;
        if (interfaceC0298f5 != null) {
            String TAG = P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "fireRenderProcessGoneTelemetry");
        }
        C0305fb c0305fb = this.O;
        if (c0305fb != null) {
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("source", "render_view_" + c0305fb.f351a.f313a.b()), TuplesKt.to("isCrashed", Boolean.valueOf(z)), TuplesKt.to("creativeId", c0305fb.f351a.f), TuplesKt.to("errorCode", Short.valueOf(s)));
            C0353ic c0353ic = C0353ic.f388a;
            C0353ic.b("WebViewRenderProcessGoneEvent", mapMutableMapOf, EnumC0415mc.f426a);
        }
    }
}
