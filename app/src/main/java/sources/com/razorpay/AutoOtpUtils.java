package com.razorpay;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class AutoOtpUtils {
    AutoOtpUtils() {
    }

    static void incrementSmsPermissionAskedCount(Context context) {
        SharedPreferenceUtil.getPrivateEditor(context).putInt("rzp_permission_asked_count", SharedPreferenceUtil.getPrivatePrefs(context).getInt("rzp_permission_asked_count", 0) + 1).apply();
    }

    static int getSmsPermissionAskedCount(Context context) {
        return SharedPreferenceUtil.getPrivatePrefs(context).getInt("rzp_permission_asked_count", 0);
    }

    static JSONObject createStatsPayload(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("otp_read", z ? 1 : 0);
            return jSONObject;
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S1", e.getMessage());
            return null;
        }
    }
}
