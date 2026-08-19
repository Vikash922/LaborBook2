package com.google.ads.mediation.inmobi;

import com.inmobi.sdk.InMobiSdk;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiConsent {
    private static JSONObject consentObj = new JSONObject();

    public static void updateGDPRConsent(JSONObject jSONObject) {
        if (InMobiSdk.isSDKInitialized()) {
            InMobiSdk.updateGDPRConsent(jSONObject);
        }
        consentObj = jSONObject;
    }

    static JSONObject getConsentObj() {
        return consentObj;
    }

    private InMobiConsent() {
    }
}
