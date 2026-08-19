package com.razorpay;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public interface ValidateVpaCallback {
    void onFailure();

    void onResponse(JSONObject jSONObject);
}
