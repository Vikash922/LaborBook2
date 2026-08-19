package com.iab.omid.library.inmobi.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.adsession.VerificationScriptResource;
import com.iab.omid.library.inmobi.internal.C2637g;
import com.iab.omid.library.inmobi.internal.C2638h;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.utils.C2653f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.publisher.b */
/* JADX INFO: loaded from: classes6.dex */
public class C2647b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: g */
    private WebView f675g;

    /* JADX INFO: renamed from: h */
    private Long f676h;

    /* JADX INFO: renamed from: i */
    private final Map<String, VerificationScriptResource> f677i;

    /* JADX INFO: renamed from: j */
    private final String f678j;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.publisher.b$a */
    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (C2647b.this.getWebView() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                C2647b.this.m659a((WebView) null);
            }
            webView.destroy();
            return true;
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.publisher.b$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: a */
        private final WebView f680a;

        b() {
            this.f680a = C2647b.this.f675g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f680a.destroy();
        }
    }

    public C2647b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f676h = null;
        this.f677i = map;
        this.f678j = str2;
    }

    @Override // com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher
    /* JADX INFO: renamed from: a */
    public void mo663a(C2623a c2623a, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            C2650c.m698a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        m664a(c2623a, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher
    /* JADX INFO: renamed from: b */
    public void mo672b() {
        super.mo672b();
        new Handler().postDelayed(new b(), Math.max(4000 - (this.f676h == null ? 4000L : TimeUnit.MILLISECONDS.convert(C2653f.m718b() - this.f676h.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f675g = null;
    }

    @Override // com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher
    /* JADX INFO: renamed from: i */
    public void mo681i() {
        super.mo681i();
        m683j();
    }

    /* JADX INFO: renamed from: j */
    void m683j() {
        WebView webView = new WebView(C2637g.m616b().m617a());
        this.f675g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f675g.getSettings().setAllowContentAccess(false);
        this.f675g.getSettings().setAllowFileAccess(false);
        this.f675g.setWebViewClient(new a());
        m659a(this.f675g);
        C2638h.m619a().m635c(this.f675g, this.f678j);
        for (String str : this.f677i.keySet()) {
            C2638h.m619a().m636d(this.f675g, this.f677i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f676h = Long.valueOf(C2653f.m718b());
    }
}
