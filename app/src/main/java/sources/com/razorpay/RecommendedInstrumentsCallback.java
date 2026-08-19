package com.razorpay;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public interface RecommendedInstrumentsCallback {
    void onError(String str);

    void onRecommendedInstrumentsReceived(JSONObject jSONObject);
}
