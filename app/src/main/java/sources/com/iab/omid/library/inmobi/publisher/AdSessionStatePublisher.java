package com.iab.omid.library.inmobi.publisher;

import android.webkit.WebView;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSessionConfiguration;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.adsession.ErrorType;
import com.iab.omid.library.inmobi.adsession.VerificationScriptResource;
import com.iab.omid.library.inmobi.adsession.media.MediaEvents;
import com.iab.omid.library.inmobi.internal.C2637g;
import com.iab.omid.library.inmobi.internal.C2638h;
import com.iab.omid.library.inmobi.utils.C2648a;
import com.iab.omid.library.inmobi.utils.C2649b;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.utils.C2653f;
import com.iab.omid.library.inmobi.weakreference.C2670b;
import com.itextpdf.forms.xfdf.XfdfConstants;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AdSessionStatePublisher {

    /* JADX INFO: renamed from: a */
    private String f665a;

    /* JADX INFO: renamed from: b */
    private C2670b f666b;

    /* JADX INFO: renamed from: c */
    private AdEvents f667c;

    /* JADX INFO: renamed from: d */
    private MediaEvents f668d;

    /* JADX INFO: renamed from: e */
    private EnumC2645a f669e;

    /* JADX INFO: renamed from: f */
    private long f670f;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher$a */
    enum EnumC2645a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        m657a();
        this.f665a = str;
        this.f666b = new C2670b(null);
    }

    /* JADX INFO: renamed from: a */
    public void m657a() {
        this.f670f = C2653f.m718b();
        this.f669e = EnumC2645a.AD_STATE_IDLE;
    }

    /* JADX INFO: renamed from: a */
    public void m658a(float f) {
        C2638h.m619a().m621a(getWebView(), this.f665a, f);
    }

    /* JADX INFO: renamed from: a */
    void m659a(WebView webView) {
        this.f666b = new C2670b(webView);
    }

    /* JADX INFO: renamed from: a */
    public void m660a(AdEvents adEvents) {
        this.f667c = adEvents;
    }

    /* JADX INFO: renamed from: a */
    public void m661a(AdSessionConfiguration adSessionConfiguration) {
        C2638h.m619a().m625a(getWebView(), this.f665a, adSessionConfiguration.toJsonObject());
    }

    /* JADX INFO: renamed from: a */
    public void m662a(ErrorType errorType, String str) {
        C2638h.m619a().m622a(getWebView(), this.f665a, errorType, str);
    }

    /* JADX INFO: renamed from: a */
    public void mo663a(C2623a c2623a, AdSessionContext adSessionContext) {
        m664a(c2623a, adSessionContext, null);
    }

    /* JADX INFO: renamed from: a */
    protected void m664a(C2623a c2623a, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String adSessionId = c2623a.getAdSessionId();
        JSONObject jSONObject2 = new JSONObject();
        C2650c.m698a(jSONObject2, "environment", "app");
        C2650c.m698a(jSONObject2, "adSessionType", adSessionContext.getAdSessionContextType());
        C2650c.m698a(jSONObject2, "deviceInfo", C2649b.m689d());
        C2650c.m698a(jSONObject2, "deviceCategory", C2648a.m684a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C2650c.m698a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C2650c.m698a(jSONObject3, "partnerName", adSessionContext.getPartner().getName());
        C2650c.m698a(jSONObject3, "partnerVersion", adSessionContext.getPartner().getVersion());
        C2650c.m698a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C2650c.m698a(jSONObject4, "libraryVersion", "1.5.2-Inmobi");
        C2650c.m698a(jSONObject4, RemoteConfigConstants.RequestFieldKey.APP_ID, C2637g.m616b().m617a().getApplicationContext().getPackageName());
        C2650c.m698a(jSONObject2, "app", jSONObject4);
        if (adSessionContext.getContentUrl() != null) {
            C2650c.m698a(jSONObject2, "contentUrl", adSessionContext.getContentUrl());
        }
        if (adSessionContext.getCustomReferenceData() != null) {
            C2650c.m698a(jSONObject2, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            C2650c.m698a(jSONObject5, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        C2638h.m619a().m626a(getWebView(), adSessionId, jSONObject2, jSONObject5, jSONObject);
    }

    /* JADX INFO: renamed from: a */
    public void m665a(MediaEvents mediaEvents) {
        this.f668d = mediaEvents;
    }

    /* JADX INFO: renamed from: a */
    public void m666a(String str) {
        m668a(str, (JSONObject) null);
    }

    /* JADX INFO: renamed from: a */
    public void m667a(String str, long j) {
        if (j >= this.f670f) {
            EnumC2645a enumC2645a = this.f669e;
            EnumC2645a enumC2645a2 = EnumC2645a.AD_STATE_NOTVISIBLE;
            if (enumC2645a != enumC2645a2) {
                this.f669e = enumC2645a2;
                C2638h.m619a().m632b(getWebView(), this.f665a, str);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public void m668a(String str, JSONObject jSONObject) {
        C2638h.m619a().m624a(getWebView(), this.f665a, str, jSONObject);
    }

    /* JADX INFO: renamed from: a */
    public void m669a(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        C2650c.m698a(jSONObject, SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, Long.valueOf(date.getTime()));
        C2638h.m619a().m629a(getWebView(), jSONObject);
    }

    /* JADX INFO: renamed from: a */
    public void m670a(JSONObject jSONObject) {
        C2638h.m619a().m633b(getWebView(), this.f665a, jSONObject);
    }

    /* JADX INFO: renamed from: a */
    public void m671a(boolean z) {
        if (m677e()) {
            C2638h.m619a().m634c(getWebView(), this.f665a, z ? "foregrounded" : "backgrounded");
        }
    }

    /* JADX INFO: renamed from: b */
    public void mo672b() {
        this.f666b.clear();
    }

    /* JADX INFO: renamed from: b */
    public void m673b(String str, long j) {
        if (j >= this.f670f) {
            this.f669e = EnumC2645a.AD_STATE_VISIBLE;
            C2638h.m619a().m632b(getWebView(), this.f665a, str);
        }
    }

    /* JADX INFO: renamed from: b */
    public void m674b(boolean z) {
        if (m677e()) {
            C2638h.m619a().m623a(getWebView(), this.f665a, z ? XfdfConstants.LOCKED : "unlocked");
        }
    }

    /* JADX INFO: renamed from: c */
    public AdEvents m675c() {
        return this.f667c;
    }

    /* JADX INFO: renamed from: d */
    public MediaEvents m676d() {
        return this.f668d;
    }

    /* JADX INFO: renamed from: e */
    public boolean m677e() {
        return this.f666b.get() != null;
    }

    /* JADX INFO: renamed from: f */
    public void m678f() {
        C2638h.m619a().m620a(getWebView(), this.f665a);
    }

    /* JADX INFO: renamed from: g */
    public void m679g() {
        C2638h.m619a().m631b(getWebView(), this.f665a);
    }

    public WebView getWebView() {
        return this.f666b.get();
    }

    /* JADX INFO: renamed from: h */
    public void m680h() {
        m670a((JSONObject) null);
    }

    /* JADX INFO: renamed from: i */
    public void mo681i() {
    }
}
