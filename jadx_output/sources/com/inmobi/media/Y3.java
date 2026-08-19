package com.inmobi.media;

import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Y3 extends V1 implements Aa {
    public long b;
    public final String c;
    public final String d;
    public final String e;
    public final InterfaceC0298f5 f;
    public final U3 g;
    public final String h;
    public final AdConfig.RenderingConfig i;
    public final Lazy j;
    public C0510t6 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y3(Context context, long j, String placementType, String impressionId, String creativeId, InterfaceC0298f5 interfaceC0298f5) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.b = j;
        this.c = placementType;
        this.d = impressionId;
        this.e = creativeId;
        this.f = interfaceC0298f5;
        this.h = "Y3";
        LinkedHashMap linkedHashMap = K2.f154a;
        this.i = ((AdConfig) V4.a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getRendering();
        this.j = LazyKt.lazy(V3.f260a);
        setImportantForAccessibility(2);
        getSettings().setJavaScriptEnabled(true);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        U3 u3 = new U3("IN_CUSTOM_EXPAND", new W3(this), new X3(this), interfaceC0298f5);
        setWebViewClient(u3);
        this.g = u3;
        if (getAdConfig().getEnableCookiesOnInAppBrowser()) {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
    }

    private final AdConfig getAdConfig() {
        return (AdConfig) this.j.getValue();
    }

    @Override // com.inmobi.media.Aa
    public final void a(String triggerApi) {
        Intrinsics.checkNotNullParameter(triggerApi, "triggerApi");
        HashMap map = new HashMap();
        map.put("creativeId", this.e);
        map.put("trigger", triggerApi);
        map.put("impressionId", this.d);
        map.put("adType", this.c);
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("BlockAutoRedirection", map, EnumC0415mc.f426a);
    }

    @Override // com.inmobi.media.Aa
    public final boolean d() {
        String TAG = this.h;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        return !this.i.getAutoRedirectionEnforcement() || ((getViewTouchTimestamp() > (-1L) ? 1 : (getViewTouchTimestamp() == (-1L) ? 0 : -1)) != 0 && ((SystemClock.elapsedRealtime() - getViewTouchTimestamp()) > this.i.getUserTouchResetTime() ? 1 : ((SystemClock.elapsedRealtime() - getViewTouchTimestamp()) == this.i.getUserTouchResetTime() ? 0 : -1)) < 0);
    }

    @Override // com.inmobi.media.V1
    public final C0439o6 f() {
        C0454p6 c0454p6 = new C0454p6(true, "DEFAULT", getAdConfig().getCctEnabled(), false);
        Context context = getContext();
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        Intrinsics.checkNotNull(context);
        return new C0439o6(context, c0454p6, null, null, this, null, interfaceC0298f5);
    }

    public final C0510t6 getLandingPageTelemetryControlInfo() {
        return this.k;
    }

    @Override // com.inmobi.media.Aa
    public long getViewTouchTimestamp() {
        return this.b;
    }

    @Override // android.webkit.WebView
    public final void loadData(String data, String str, String str2) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.loadData(data, str, str2);
        U3 u3 = this.g;
        if (u3 != null) {
            u3.d = true;
        }
    }

    @Override // android.webkit.WebView
    public final void loadUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        super.loadUrl(url);
        U3 u3 = this.g;
        if (u3 != null) {
            u3.d = true;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        return super.onTouchEvent(motionEvent);
    }

    public final void setLandingPageTelemetryControlInfo(C0510t6 c0510t6) {
        this.k = c0510t6;
        U3 u3 = this.g;
        if (u3 == null) {
            return;
        }
        u3.i = c0510t6;
        u3.j = new C0469q6(c0510t6, u3);
    }

    public void setViewTouchTimestamp(long j) {
        this.b = j;
    }
}
