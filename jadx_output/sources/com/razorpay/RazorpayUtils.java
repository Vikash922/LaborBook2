package com.razorpay;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.razorpay.RazorpayUtils;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class RazorpayUtils {

    interface TimerCallback {
        void onTimerFinished();
    }

    RazorpayUtils() {
    }

    static String sanitize(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\f') {
                sb.append("\\f");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\"' || cCharAt == '\\') {
                sb.append('\\').append(cCharAt);
            } else {
                switch (cCharAt) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    default:
                        if (cCharAt <= 31) {
                            sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb.append(cCharAt);
                        }
                        break;
                }
            }
        }
        return sb.toString();
    }

    static void handleUpiIntentAutoPayPayment(Activity activity, String str, PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "handleUpiIntentAutoPayPayment", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            String value = SharedPreferenceUtil.getValue(activity, "razorpay_payment_id");
            if (value == null || TextUtils.isEmpty(value)) {
                AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleUpiIntentAutoPayPayment", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("recurring", AppEventsConstants.EVENT_PARAM_VALUE_YES);
                $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback, jSONObject);
            } catch (JSONException unused) {
                $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback);
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleUpiIntentAutoPayPayment", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    static void genericPollForPaymentStatus(Activity activity, String str, PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "genericPollForPaymentStatus", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            String value = SharedPreferenceUtil.getValue(activity, "razorpay_payment_id");
            if (value != null && !TextUtils.isEmpty(value)) {
                $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback);
                AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "genericPollForPaymentStatus", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "genericPollForPaymentStatus", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    static void handleUpiIntentPaymentWhenActivityDestroyed(JSONObject jSONObject, Activity activity, String str, PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        JSONObject jSONObject2;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "handleUpiIntentPaymentWhenActivityDestroyed", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            String value = SharedPreferenceUtil.getValue(activity, "razorpay_payment_id");
            if (value != null && !TextUtils.isEmpty(value)) {
                String strOptString = jSONObject.optString("txnId");
                try {
                    jSONObject2 = jSONObject.getJSONObject("data").getJSONObject("apiResponse").getJSONObject("request");
                } catch (JSONException unused) {
                    jSONObject2 = null;
                }
                if (!TextUtils.isEmpty(strOptString)) {
                    $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback);
                } else if (jSONObject2 != null && jSONObject2.has("url")) {
                    $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback, jSONObject);
                } else {
                    $sS$$__s$S$(value, str, paymentCompleteInternalCallback);
                }
                AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleUpiIntentPaymentWhenActivityDestroyed", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleUpiIntentPaymentWhenActivityDestroyed", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    static void handleGpayFeaturePaymentResponse(JSONObject jSONObject, Activity activity, String str, PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "handleGpayFeaturePaymentResponse", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            String value = SharedPreferenceUtil.getValue(activity, "razorpay_payment_id");
            if (value != null && !TextUtils.isEmpty(value)) {
                $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback, jSONObject);
                AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleGpayFeaturePaymentResponse", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleGpayFeaturePaymentResponse", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    static void handleCredIntentPaymentResponse(Activity activity, String str, PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "handleCredIntentPaymentResponse", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            String value = SharedPreferenceUtil.getValue(activity, "razorpay_payment_id");
            if (value != null && !TextUtils.isEmpty(value)) {
                $sS$$__s$S$(value, str, 0, paymentCompleteInternalCallback);
                AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleCredIntentPaymentResponse", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "handleCredIntentPaymentResponse", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private static void $sS$$__s$S$(final String str, final String str2, final PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "markPaymentCancelAndPollForPaymentStatus", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            Owl.get($sS$$__s$S$(str, str2), new Callback() { // from class: com.razorpay.RazorpayUtils.1
                @Override // com.razorpay.Callback
                public void run(ResponseObject responseObject) {
                    RazorpayUtils.$sS$$__s$S$(str, str2, 0, paymentCompleteInternalCallback);
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "markPaymentCancelAndPollForPaymentStatus", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private static String $sS$$__s$S$(String str, String str2) {
        return GlobalUrlConfig.instance().getPaymentsEndpoint() + str + "/cancel?key_id=" + str2;
    }

    private static String s$SSss(String str, String str2) {
        return GlobalUrlConfig.instance().getPaymentsEndpoint() + str + "/status?key_id=" + str2;
    }

    /* JADX INFO: renamed from: com.razorpay.RazorpayUtils$2 */
    class C39282 implements Callback {
        final /* synthetic */ String val$apiKey;
        final /* synthetic */ JSONObject val$appResponse;
        final /* synthetic */ PaymentCompleteInternalCallback val$callback;
        final /* synthetic */ String val$paymentId;
        final /* synthetic */ int val$pollCount;

        C39282(PaymentCompleteInternalCallback paymentCompleteInternalCallback, int i, String str, String str2, JSONObject jSONObject) {
            this.val$callback = paymentCompleteInternalCallback;
            this.val$pollCount = i;
            this.val$paymentId = str;
            this.val$apiKey = str2;
            this.val$appResponse = jSONObject;
        }

        @Override // com.razorpay.Callback
        public void run(ResponseObject responseObject) {
            String responseResult = responseObject.getResponseResult();
            if (responseResult != null && (responseResult.contains("razorpay_payment_id") || responseResult.contains("error"))) {
                this.val$callback.oncomplete(responseObject.getResponseResult());
                return;
            }
            final int i = this.val$pollCount;
            if (i < 12) {
                final String str = this.val$paymentId;
                final String str2 = this.val$apiKey;
                final PaymentCompleteInternalCallback paymentCompleteInternalCallback = this.val$callback;
                final JSONObject jSONObject = this.val$appResponse;
                RazorpayUtils.onTimer(new TimerCallback() { // from class: com.razorpay.RazorpayUtils$2$$ExternalSyntheticLambda0
                    @Override // com.razorpay.RazorpayUtils.TimerCallback
                    public final void onTimerFinished() {
                        RazorpayUtils.C39282.$sS$$__s$S$(str, str2, i, paymentCompleteInternalCallback, jSONObject);
                    }
                });
                return;
            }
            if (this.val$appResponse.has("recurring")) {
                this.val$callback.oncomplete("{\"error\": {\"code\": 0,\"description\": \"The status of your payment is pending. You can either wait or retry to pay successfully\"}}");
                return;
            }
            try {
                this.val$callback.oncomplete("{\"error\":{\"code\": \"" + this.val$appResponse.getInt("resultCode") + "\", \"description\": \"" + this.val$appResponse.getJSONObject("data").getJSONObject("apiResponse").getString("description") + "\"}}");
            } catch (JSONException unused) {
                this.val$callback.oncomplete(this.val$appResponse.toString());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void $sS$$__s$S$(String str, String str2, int i, PaymentCompleteInternalCallback paymentCompleteInternalCallback, JSONObject jSONObject) {
            RazorpayUtils.$sS$$__s$S$(str, str2, i + 1, paymentCompleteInternalCallback, jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void $sS$$__s$S$(String str, String str2, int i, PaymentCompleteInternalCallback paymentCompleteInternalCallback, JSONObject jSONObject) {
        Owl.get(s$SSss(str, str2), new C39282(paymentCompleteInternalCallback, i, str, str2, jSONObject));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void $sS$$__s$S$(final String str, final String str2, final int i, final PaymentCompleteInternalCallback paymentCompleteInternalCallback) {
        Owl.get(s$SSss(str, str2), new Callback() { // from class: com.razorpay.RazorpayUtils.3
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                String responseResult = responseObject.getResponseResult();
                if (responseResult != null && (responseResult.contains("razorpay_payment_id") || responseResult.contains("error"))) {
                    paymentCompleteInternalCallback.oncomplete(responseObject.getResponseResult());
                } else if (i < 12) {
                    new Timer().schedule(new TimerTask() { // from class: com.razorpay.RazorpayUtils.3.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            RazorpayUtils.$sS$$__s$S$(str, str2, i + 1, paymentCompleteInternalCallback);
                        }
                    }, 500L);
                } else {
                    paymentCompleteInternalCallback.oncomplete(responseResult);
                }
            }
        });
    }

    static String getLastPaymentAmount(Context context) {
        return SharedPreferenceUtil.getPrivatePrefs(context).getString("rzp_last_payment_amount", null);
    }

    static String getLastPaymentLocalOrderId(Context context) {
        return SharedPreferenceUtil.getPrivatePrefs(context).getString("rzp_last_payment_session_id", null);
    }

    static long getLastPaymentTimestamp(Context context) {
        return SharedPreferenceUtil.getPrivatePrefs(context).getLong("rzp_last_payment_timestamp", 0L);
    }

    static boolean wasLastPaymentSuccessful(Context context) {
        return SharedPreferenceUtil.getPrivatePrefs(context).getBoolean("rzp_last_payment_status", false);
    }

    static void setLastPaymentAmount(Context context, String str) {
        SharedPreferenceUtil.getPrivateEditor(context).putString("rzp_last_payment_amount", str).apply();
    }

    static void setLastPaymentLocalOrderId(Context context, String str) {
        SharedPreferenceUtil.getPrivateEditor(context).putString("rzp_last_payment_session_id", str).apply();
    }

    static void setLastPaymentTimestamp(Context context, long j) {
        SharedPreferenceUtil.getPrivateEditor(context).putLong("rzp_last_payment_timestamp", j).apply();
    }

    static void setLastPaymentSuccessful(Context context, boolean z) {
        SharedPreferenceUtil.getPrivateEditor(context).putBoolean("rzp_last_payment_status", z).apply();
    }

    static String getCardNetwork(String str) {
        String next;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayUtils", "getCardNetwork", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            JSONObject cardNetworkTypeRegexJson = C$sS$$__s$S$.getInstance().getCardNetworkTypeRegexJson();
            if (str != null && str.length() >= 6) {
                Iterator<String> itKeys = cardNetworkTypeRegexJson.keys();
                while (true) {
                    if (!itKeys.hasNext()) {
                        next = "unknown";
                        break;
                    }
                    next = itKeys.next();
                    try {
                    } catch (Exception e) {
                        AnalyticsUtil.reportError("RazorpayUtils", "S0", e.getLocalizedMessage());
                    }
                    if (str.matches(cardNetworkTypeRegexJson.getString(next) + ".*")) {
                        break;
                    }
                }
                AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "getCardNetwork", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return next;
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayUtils", "getCardNetwork", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            return "unknown";
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
            return "unknown";
        }
    }

    static int getCardNetworkLength(String str) {
        if (C$sS$$__s$S$.getInstance().getNetworkCardLengthJson().has(str.toLowerCase())) {
            try {
                return C$sS$$__s$S$.getInstance().getNetworkCardLengthJson().getInt(str.toLowerCase());
            } catch (Exception e) {
                AnalyticsUtil.reportError("RazorpayUtils", "error:exception", e.getLocalizedMessage());
            }
        }
        return -1;
    }

    static boolean isValidCardNumber(String str) {
        int length = str.length();
        int[] iArr = new int[length];
        for (int i = 0; i < str.length(); i++) {
            iArr[i] = Integer.parseInt(Character.valueOf(str.charAt(i)) + "");
        }
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[(length - i3) - 1];
            if (i3 % 2 == 1) {
                i4 *= 2;
            }
            if (i4 > 9) {
                i4 -= 9;
            }
            i2 += i4;
        }
        return i2 % 10 == 0;
    }

    static String getBankLogoUrl(String str) {
        if (GlobalUrlConfig.instance().getI__1l().isEmpty()) {
            return C$sS$$__s$S$.getInstance().getBankLogoBaseUrl() + str + "." + C$sS$$__s$S$.getInstance().getBankLogoExtension();
        }
        return GlobalUrlConfig.instance().getI__1l() + "/bank/" + str + "." + C$sS$$__s$S$.getInstance().getBankLogoExtension();
    }

    static String getWalletSqLogoUrl(String str) {
        if (GlobalUrlConfig.instance().getI__1l().isEmpty()) {
            return C$sS$$__s$S$.getInstance().getBankLogoBaseUrl() + str + "." + C$sS$$__s$S$.getInstance().getBankLogoExtension();
        }
        return GlobalUrlConfig.instance().getI__1l() + "/wallet-sq/" + str + "." + C$sS$$__s$S$.getInstance().getBankLogoExtension();
    }

    static String getWalletLogoUrl(String str) {
        if (GlobalUrlConfig.instance().getI__1l().isEmpty()) {
            return C$sS$$__s$S$.getInstance().getBankLogoBaseUrl() + str + "." + C$sS$$__s$S$.getInstance().getBankLogoExtension();
        }
        return GlobalUrlConfig.instance().getI__1l() + "/wallet/" + str + "." + C$sS$$__s$S$.getInstance().getBankLogoExtension();
    }

    public static void onTimer(final TimerCallback timerCallback) {
        new Timer().schedule(new TimerTask() { // from class: com.razorpay.RazorpayUtils.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                timerCallback.onTimerFinished();
            }
        }, 500L);
    }

    static JSONObject getNestedRazorpayPaymentData(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            String str$sS$$__s$S$ = $sS$$__s$S$(jSONObject, "razorpay_payment_id");
            if (str$sS$$__s$S$ != null) {
                jSONObject2.put("razorpay_payment_id", str$sS$$__s$S$);
            }
            String str$sS$$__s$S$2 = $sS$$__s$S$(jSONObject, "razorpay_order_id");
            if (str$sS$$__s$S$2 != null) {
                jSONObject2.put("razorpay_order_id", str$sS$$__s$S$2);
            }
            String str$sS$$__s$S$3 = $sS$$__s$S$(jSONObject, "razorpay_signature");
            if (str$sS$$__s$S$3 != null) {
                jSONObject2.put("razorpay_signature", str$sS$$__s$S$3);
            }
            return jSONObject2;
        } catch (JSONException e) {
            AnalyticsUtil.reportError("RazorpayUtils", "error:exception", e.getLocalizedMessage());
            return null;
        }
    }

    private static String $sS$$__s$S$(JSONObject jSONObject, String str) {
        String str$sS$$__s$S$;
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            Object obj = jSONObject.get(itKeys.next());
            if (obj instanceof JSONObject) {
                String str$sS$$__s$S$2 = $sS$$__s$S$((JSONObject) obj, str);
                if (str$sS$$__s$S$2 != null) {
                    return str$sS$$__s$S$2;
                }
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    Object obj2 = jSONArray.get(i);
                    if ((obj2 instanceof JSONObject) && (str$sS$$__s$S$ = $sS$$__s$S$((JSONObject) obj2, str)) != null) {
                        return str$sS$$__s$S$;
                    }
                }
            } else {
                continue;
            }
        }
        return null;
    }
}
