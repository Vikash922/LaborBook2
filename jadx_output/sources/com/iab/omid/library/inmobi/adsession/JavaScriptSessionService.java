package com.iab.omid.library.inmobi.adsession;

import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.iab.omid.library.inmobi.internal.C2635e;
import com.iab.omid.library.inmobi.internal.C2636f;
import com.iab.omid.library.inmobi.utils.C2651d;
import com.iab.omid.library.inmobi.utils.C2654g;
import com.iab.omid.library.inmobi.utils.C2656i;
import com.iab.omid.library.inmobi.weakreference.C2669a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class JavaScriptSessionService {
    private static String JS_MESSAGE_DATA_AD_SESSION_ID = "adSessionId";
    private static String JS_MESSAGE_KEY_DATA = "data";
    private static String JS_MESSAGE_KEY_METHOD = "method";
    private static String JS_MESSAGE_LISTENER_JS_SESSION_SERVICE = "omidJsSessionService";
    private static String JS_MESSAGE_METHOD_FINISH_SESSION = "finishSession";
    private static String JS_MESSAGE_METHOD_START_SESSION = "startSession";
    private static C2656i webViewUtil = new C2656i();
    private final HashMap<String, AdSession> adSessions = new HashMap<>();
    private final C2636f friendlyObstructions = new C2636f();
    private final boolean isHtmlAdView;
    private final Partner partner;
    private C2669a weakAdView;
    private final WebView webView;

    public interface TearDownHandler {
        void onTearDown(boolean z);
    }

    private JavaScriptSessionService(Partner partner, WebView webView, boolean z) {
        C2654g.m720a();
        C2654g.m723a(partner, "Partner is null");
        C2654g.m723a(webView, "WebView is null");
        this.partner = partner;
        this.webView = webView;
        this.isHtmlAdView = z;
        if (z) {
            setAdView(webView);
        }
        addWebViewListener();
    }

    private void addWebViewListener() {
        if (!WebViewFeature.isFeatureSupported("WEB_MESSAGE_LISTENER")) {
            throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
        }
        removeWebViewListener();
        webViewUtil.m741a(this.webView, JS_MESSAGE_LISTENER_JS_SESSION_SERVICE, new HashSet(Arrays.asList("*")), new WebViewCompat.WebMessageListener() { // from class: com.iab.omid.library.inmobi.adsession.JavaScriptSessionService.2
            @Override // androidx.webkit.WebViewCompat.WebMessageListener
            public void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
                try {
                    JSONObject jSONObject = new JSONObject(webMessageCompat.getData());
                    String string = jSONObject.getString(JavaScriptSessionService.JS_MESSAGE_KEY_METHOD);
                    String string2 = jSONObject.getJSONObject(JavaScriptSessionService.JS_MESSAGE_KEY_DATA).getString(JavaScriptSessionService.JS_MESSAGE_DATA_AD_SESSION_ID);
                    if (string.equals(JavaScriptSessionService.JS_MESSAGE_METHOD_START_SESSION)) {
                        JavaScriptSessionService.this.startSession(string2);
                    } else if (string.equals(JavaScriptSessionService.JS_MESSAGE_METHOD_FINISH_SESSION)) {
                        JavaScriptSessionService.this.finishSession(string2);
                    } else {
                        C2651d.m714b("Unexpected method in JavaScriptSessionService: " + string);
                    }
                } catch (JSONException e) {
                    C2651d.m713a("Error parsing JS message in JavaScriptSessionService.", e);
                }
            }
        });
    }

    public static JavaScriptSessionService create(Partner partner, WebView webView, boolean z) {
        return new JavaScriptSessionService(partner, webView, z);
    }

    private AdSessionConfiguration createAdSessionConfiguration() {
        CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
        ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
        Owner owner = Owner.JAVASCRIPT;
        return AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
    }

    private AdSessionContext createAdSessionContext() {
        return this.isHtmlAdView ? AdSessionContext.createHtmlAdSessionContext(this.partner, this.webView, null, null) : AdSessionContext.createJavascriptAdSessionContext(this.partner, this.webView, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishSession(String str) {
        AdSession adSession = this.adSessions.get(str);
        if (adSession != null) {
            adSession.finish();
            this.adSessions.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeWebViewListener() {
        webViewUtil.m740a(this.webView, JS_MESSAGE_LISTENER_JS_SESSION_SERVICE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSession(String str) {
        C2623a c2623a = new C2623a(createAdSessionConfiguration(), createAdSessionContext(), str);
        this.adSessions.put(str, c2623a);
        c2623a.registerAdView(getAdView());
        for (C2635e c2635e : this.friendlyObstructions.m612a()) {
            c2623a.addFriendlyObstruction(c2635e.m607c().get(), c2635e.m606b(), c2635e.m605a());
        }
        c2623a.start();
    }

    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        Iterator<AdSession> it = this.adSessions.values().iterator();
        while (it.hasNext()) {
            it.next().addFriendlyObstruction(view, friendlyObstructionPurpose, str);
        }
        this.friendlyObstructions.m613a(view, friendlyObstructionPurpose, str);
    }

    View getAdView() {
        C2669a c2669a = this.weakAdView;
        if (c2669a == null) {
            return null;
        }
        return c2669a.get();
    }

    public void removeAllFriendlyObstructions() {
        Iterator<AdSession> it = this.adSessions.values().iterator();
        while (it.hasNext()) {
            it.next().removeAllFriendlyObstructions();
        }
        this.friendlyObstructions.m614b();
    }

    public void removeFriendlyObstruction(View view) {
        Iterator<AdSession> it = this.adSessions.values().iterator();
        while (it.hasNext()) {
            it.next().removeFriendlyObstruction(view);
        }
        this.friendlyObstructions.m615c(view);
    }

    public void setAdView(View view) {
        if (getAdView() == view) {
            return;
        }
        Iterator<AdSession> it = this.adSessions.values().iterator();
        while (it.hasNext()) {
            it.next().registerAdView(view);
        }
        this.weakAdView = new C2669a(view);
    }

    public void tearDown(final TearDownHandler tearDownHandler) {
        Iterator<AdSession> it = this.adSessions.values().iterator();
        while (it.hasNext()) {
            it.next().finish();
        }
        final Timer timer = new Timer();
        timer.schedule(new TimerTask() { // from class: com.iab.omid.library.inmobi.adsession.JavaScriptSessionService.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                JavaScriptSessionService.this.removeWebViewListener();
                tearDownHandler.onTearDown(true);
                timer.cancel();
            }
        }, 1000L);
    }
}
