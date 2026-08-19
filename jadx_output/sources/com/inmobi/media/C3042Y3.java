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

/* JADX INFO: renamed from: com.inmobi.media.Y3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3042Y3 extends AbstractC2998V1 implements InterfaceC2698Aa {

    /* JADX INFO: renamed from: b */
    public long f1668b;

    /* JADX INFO: renamed from: c */
    public final String f1669c;

    /* JADX INFO: renamed from: d */
    public final String f1670d;

    /* JADX INFO: renamed from: e */
    public final String f1671e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3147f5 f1672f;

    /* JADX INFO: renamed from: g */
    public final C2986U3 f1673g;

    /* JADX INFO: renamed from: h */
    public final String f1674h;

    /* JADX INFO: renamed from: i */
    public final AdConfig.RenderingConfig f1675i;

    /* JADX INFO: renamed from: j */
    public final Lazy f1676j;

    /* JADX INFO: renamed from: k */
    public C3358t6 f1677k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3042Y3(Context context, long j, String placementType, String impressionId, String creativeId, InterfaceC3147f5 interfaceC3147f5) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.f1668b = j;
        this.f1669c = placementType;
        this.f1670d = impressionId;
        this.f1671e = creativeId;
        this.f1672f = interfaceC3147f5;
        this.f1674h = "Y3";
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        this.f1675i = ((AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getRendering();
        this.f1676j = LazyKt.lazy(C3000V3.f1578a);
        setImportantForAccessibility(2);
        getSettings().setJavaScriptEnabled(true);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        C2986U3 c2986u3 = new C2986U3("IN_CUSTOM_EXPAND", new C3014W3(this), new C3028X3(this), interfaceC3147f5);
        setWebViewClient(c2986u3);
        this.f1673g = c2986u3;
        if (getAdConfig().getEnableCookiesOnInAppBrowser()) {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
    }

    private final AdConfig getAdConfig() {
        return (AdConfig) this.f1676j.getValue();
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    /* JADX INFO: renamed from: a */
    public final void mo863a(String triggerApi) {
        Intrinsics.checkNotNullParameter(triggerApi, "triggerApi");
        HashMap map = new HashMap();
        map.put("creativeId", this.f1671e);
        map.put("trigger", triggerApi);
        map.put("impressionId", this.f1670d);
        map.put("adType", this.f1669c);
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("BlockAutoRedirection", map, EnumC3259mc.f2349a);
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    /* JADX INFO: renamed from: d */
    public final boolean mo864d() {
        String TAG = this.f1674h;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        return !this.f1675i.getAutoRedirectionEnforcement() || ((getViewTouchTimestamp() > (-1L) ? 1 : (getViewTouchTimestamp() == (-1L) ? 0 : -1)) != 0 && ((SystemClock.elapsedRealtime() - getViewTouchTimestamp()) > this.f1675i.getUserTouchResetTime() ? 1 : ((SystemClock.elapsedRealtime() - getViewTouchTimestamp()) == this.f1675i.getUserTouchResetTime() ? 0 : -1)) < 0);
    }

    @Override // com.inmobi.media.AbstractC2998V1
    /* JADX INFO: renamed from: f */
    public final C3283o6 mo1872f() {
        C3298p6 c3298p6 = new C3298p6(true, "DEFAULT", getAdConfig().getCctEnabled(), false);
        Context context = getContext();
        InterfaceC3147f5 interfaceC3147f5 = this.f1672f;
        Intrinsics.checkNotNull(context);
        return new C3283o6(context, c3298p6, null, null, this, null, interfaceC3147f5);
    }

    public final C3358t6 getLandingPageTelemetryControlInfo() {
        return this.f1677k;
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    public long getViewTouchTimestamp() {
        return this.f1668b;
    }

    @Override // android.webkit.WebView
    public final void loadData(String data, String str, String str2) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.loadData(data, str, str2);
        C2986U3 c2986u3 = this.f1673g;
        if (c2986u3 != null) {
            c2986u3.f1618d = true;
        }
    }

    @Override // android.webkit.WebView
    public final void loadUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        super.loadUrl(url);
        C2986U3 c2986u3 = this.f1673g;
        if (c2986u3 != null) {
            c2986u3.f1618d = true;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        return super.onTouchEvent(motionEvent);
    }

    public final void setLandingPageTelemetryControlInfo(C3358t6 c3358t6) {
        this.f1677k = c3358t6;
        C2986U3 c2986u3 = this.f1673g;
        if (c2986u3 == null) {
            return;
        }
        c2986u3.f1564i = c3358t6;
        c2986u3.f1565j = new C3313q6(c3358t6, c2986u3);
    }

    public void setViewTouchTimestamp(long j) {
        this.f1668b = j;
    }
}
