package com.iab.omid.library.inmobi.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.inmobi.adsession.ErrorType;
import com.iab.omid.library.inmobi.utils.C2651d;
import com.laborbook.keep.screen.calendar.utils.Constants;
import kotlin.text.Typography;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.h */
/* JADX INFO: loaded from: classes6.dex */
public class C2638h {

    /* JADX INFO: renamed from: a */
    private static C2638h f646a = new C2638h();

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.h$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ WebView f647a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f648b;

        a(WebView webView, String str) {
            this.f647a = webView;
            this.f648b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2638h.this.m635c(this.f647a, this.f648b);
        }
    }

    private C2638h() {
    }

    /* JADX INFO: renamed from: a */
    public static final C2638h m619a() {
        return f646a;
    }

    /* JADX INFO: renamed from: a */
    public void m620a(WebView webView, String str) {
        m627a(webView, "finishSession", str);
    }

    /* JADX INFO: renamed from: a */
    public void m621a(WebView webView, String str, float f) {
        m627a(webView, "setDeviceVolume", Float.valueOf(f), str);
    }

    /* JADX INFO: renamed from: a */
    public void m622a(WebView webView, String str, ErrorType errorType, String str2) {
        m627a(webView, "error", errorType.toString(), str2, str);
    }

    /* JADX INFO: renamed from: a */
    public void m623a(WebView webView, String str, String str2) {
        m627a(webView, "setDeviceLockState", str2);
    }

    /* JADX INFO: renamed from: a */
    public void m624a(WebView webView, String str, String str2, JSONObject jSONObject) {
        m627a(webView, "publishMediaEvent", str2, jSONObject, str);
    }

    /* JADX INFO: renamed from: a */
    public void m625a(WebView webView, String str, JSONObject jSONObject) {
        m627a(webView, "init", jSONObject, str);
    }

    /* JADX INFO: renamed from: a */
    public void m626a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m627a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* JADX INFO: renamed from: a */
    void m627a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C2651d.m712a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m630a(sb, objArr);
        sb.append(")}");
        m628a(webView, sb);
    }

    /* JADX INFO: renamed from: a */
    void m628a(WebView webView, StringBuilder sb) {
        String string = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            m635c(webView, string);
        } else {
            handler.post(new a(webView, string));
        }
    }

    /* JADX INFO: renamed from: a */
    public void m629a(WebView webView, JSONObject jSONObject) {
        m627a(webView, "setLastActivity", jSONObject);
    }

    /* JADX INFO: renamed from: a */
    void m630a(StringBuilder sb, Object[] objArr) {
        String string;
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                string = Constants.ATTENDANCE_STATUS_NULL;
            } else {
                if (obj instanceof String) {
                    string = obj.toString();
                    if (!string.startsWith("{")) {
                        sb.append(Typography.quote).append(string).append(Typography.quote);
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.append(string);
            sb.append(",");
        }
        sb.setLength(sb.length() - 1);
    }

    /* JADX INFO: renamed from: b */
    public void m631b(WebView webView, String str) {
        m627a(webView, "publishImpressionEvent", str);
    }

    /* JADX INFO: renamed from: b */
    public void m632b(WebView webView, String str, String str2) {
        m627a(webView, "setNativeViewHierarchy", str2, str);
    }

    /* JADX INFO: renamed from: b */
    public void m633b(WebView webView, String str, JSONObject jSONObject) {
        m627a(webView, "publishLoadedEvent", jSONObject, str);
    }

    /* JADX INFO: renamed from: c */
    public void m634c(WebView webView, String str, String str2) {
        m627a(webView, "setState", str2, str);
    }

    /* JADX INFO: renamed from: c */
    public boolean m635c(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            webView.evaluateJavascript(str, null);
            return true;
        } catch (IllegalStateException unused) {
            webView.loadUrl("javascript: " + str);
            return true;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m636d(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        m635c(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};Object.defineProperty(this.omidVerificationProperties, 'injectionId', {get: function() {var currentScript = document && document.currentScript;return currentScript && currentScript.getAttribute('data-injection-id');}, configurable: true});var script = document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");script.setAttribute(\"data-injection-id\",\"%INJECTION_ID%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }
}
