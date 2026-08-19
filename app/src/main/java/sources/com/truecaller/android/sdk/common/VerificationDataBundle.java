package com.truecaller.android.sdk.common;

import com.truecaller.android.sdk.common.models.TrueProfile;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationDataBundle {
    public static final String KEY_ACCESS_TOKEN = "accessToken";
    public static final String KEY_OTP = "otp";
    public static final String KEY_REQUEST_NONCE = "requestNonce";
    public static final String KEY_TTL = "ttl";
    public static final String KEY_VERIFIED_PROFILE = "profile";
    private final Map<String, Object> mMap = new HashMap();

    public void put(String str, Object obj) {
        this.mMap.put(str, obj);
    }

    public String getString(String str) {
        try {
            return (String) this.mMap.get(str);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public TrueProfile getProfile() {
        try {
            return (TrueProfile) this.mMap.get("profile");
        } catch (ClassCastException unused) {
            return null;
        }
    }
}
