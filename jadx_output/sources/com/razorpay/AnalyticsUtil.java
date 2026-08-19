package com.razorpay;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.amplitude.android.TrackingOptions;
import com.amplitude.core.events.Identify;
import com.boilerplate.navigator.FragmentStackStateMapper;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.AnalyticsEvents;
import com.razorpay.AnalyticsProperty;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
class AnalyticsUtil {
    private static int $I__I = 0;
    private static String $l$I1I11I1 = null;
    static String BUILD_TYPE = null;
    static String FRAMEWORK = null;
    static String KEY_TYPE = null;
    static int MERCHANT_APP_BUILD = 0;
    static CharSequence MERCHANT_APP_NAME = null;
    static CharSequence MERCHANT_APP_NAMESPACE = null;
    static int MERCHANT_APP_TARGET_SDK = 0;
    static CharSequence MERCHANT_APP_VERSION = null;
    private static String __l1_ = null;
    private static String _llI = null;
    private static boolean l$1_I$l$ = false;
    public static String libraryType;
    private static final Object _l_1l__ = new Object();
    private static final List<PendingEvent> I__1l = new ArrayList();
    private static String _1__ = "standealone";
    static int sessionErroredApiCalls = 0;

    AnalyticsUtil() {
    }

    static void setup(Context context, String str, String str2, int i, String str3) {
        _1__ = str2;
        $I__I = i;
        $l$I1I11I1 = str3;
        MonitoringUtil.setSdkInfo(str2, str3);
        setAppDetails(context, str);
        l$1_I$l$(context, str);
    }

    private static void l$1_I$l$(Context context, String str) {
        if (context == null) {
            throw new RuntimeException("Context not set");
        }
        if (str == null) {
            throw new RuntimeException("Merchant key not set");
        }
        Lumberjack.init(context, _1__, $l$I1I11I1);
        Lumberjack.addOrderProperty("merchant_key", str);
        Lumberjack.addOrderProperty("merchant_package", context.getPackageName());
        l$1_I$l$(context);
        RazorpayExceptionHandler.register(context);
        l$1_I$l$ = true;
        if (l$1_I$l$()) {
            Lumberjack.postData();
        }
        MonitoringUtil.capturePreviousProcessExit(context);
    }

    private static void l$1_I$l$(Context context) {
        try {
            String value = SharedPreferenceUtil.getValue(context, "country_code");
            if (value == null || value.isEmpty()) {
                return;
            }
            Lumberjack.addOrderProperty("country_code", value);
            Logger.m2690d("Loaded cached country code: " + value);
        } catch (Exception e) {
            Logger.m2693e("Failed to load cached country code", e);
        }
    }

    static String getBuildType() {
        return BUILD_TYPE;
    }

    static String getKeyType() {
        return KEY_TYPE;
    }

    static void trackEvent(AnalyticsEvent analyticsEvent) {
        Logger.m2690d(analyticsEvent.getEventName());
        if (l$1_I$l$(analyticsEvent.getEventName(), null, null)) {
            return;
        }
        Lumberjack.trackEvent(analyticsEvent.getEventName());
    }

    static void postData() {
        if (l$1_I$l$) {
            Lumberjack.postData();
        }
    }

    static void trackEvent(AnalyticsEvent analyticsEvent, Map<String, Object> map) {
        if (l$1_I$l$(analyticsEvent.getEventName(), map == null ? null : getJSONResponse(map), null)) {
            return;
        }
        Lumberjack.trackEvent(analyticsEvent.getEventName(), map);
    }

    static void trackEvent(AnalyticsEvent analyticsEvent, JSONObject jSONObject) {
        Logger.m2690d(analyticsEvent.getEventName());
        if (l$1_I$l$(analyticsEvent.getEventName(), jSONObject, null)) {
            return;
        }
        Lumberjack.trackEvent(analyticsEvent.getEventName(), jSONObject);
    }

    static void trackEventWithMetric(AnalyticsEvent analyticsEvent, JSONObject jSONObject, long j) {
        Logger.m2690d(analyticsEvent.getEventName());
        if (l$1_I$l$(analyticsEvent.getEventName(), jSONObject, Long.valueOf(j))) {
            return;
        }
        Lumberjack.trackEventWithMetric(analyticsEvent.getEventName(), jSONObject, j);
    }

    private static boolean l$1_I$l$(String str, JSONObject jSONObject, Long l) {
        if (l$1_I$l$) {
            return false;
        }
        synchronized (_l_1l__) {
            if (l$1_I$l$) {
                return false;
            }
            List<PendingEvent> list = I__1l;
            list.add(new PendingEvent(str, l$1_I$l$(jSONObject), l));
            Logger.m2690d("Analytics pending event queued: event=" + str + ", pending_count=" + list.size() + ", properties=" + jSONObject + ", metric=" + l);
            return true;
        }
    }

    private static boolean l$1_I$l$() {
        synchronized (_l_1l__) {
            List<PendingEvent> list = I__1l;
            if (list.isEmpty()) {
                return false;
            }
            ArrayList<PendingEvent> arrayList = new ArrayList(list);
            list.clear();
            Logger.m2690d("Analytics pending event flush: count=" + arrayList.size());
            for (PendingEvent pendingEvent : arrayList) {
                Logger.m2690d("Analytics pending event flush: event=" + pendingEvent.eventName + ", properties=" + pendingEvent.properties + ", metric=" + pendingEvent.metric);
                if (pendingEvent.metric == null) {
                    Lumberjack.trackEvent(pendingEvent.eventName, l$1_I$l$(pendingEvent.properties));
                } else {
                    Lumberjack.trackEventWithMetric(pendingEvent.eventName, l$1_I$l$(pendingEvent.properties), pendingEvent.metric.longValue());
                }
            }
            return true;
        }
    }

    private static JSONObject l$1_I$l$(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new JSONObject(jSONObject.toString());
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    static List<String> getPendingEventNames() {
        ArrayList arrayList;
        synchronized (_l_1l__) {
            arrayList = new ArrayList();
            Iterator<PendingEvent> it = I__1l.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().eventName);
            }
        }
        return arrayList;
    }

    private static class PendingEvent {
        final String eventName;
        final Long metric;
        final JSONObject properties;

        PendingEvent(String str, JSONObject jSONObject, Long l) {
            this.eventName = str;
            this.properties = jSONObject;
            this.metric = l;
        }
    }

    static void addProperty(String str, AnalyticsProperty analyticsProperty) {
        if (analyticsProperty.scope == AnalyticsProperty.Scope.PAYMENT) {
            Lumberjack.addPaymentProperty(str, analyticsProperty.value);
        } else if (analyticsProperty.scope == AnalyticsProperty.Scope.ORDER) {
            Lumberjack.addOrderProperty(str, analyticsProperty.value);
        }
    }

    static void addFilteredPropertiesFromPayload(JSONObject jSONObject) {
        Lumberjack.addFilteredPropertiesFromPayload(jSONObject);
    }

    static String getAppDetail() {
        if (l$1_I$l$) {
            return ((Object) MERCHANT_APP_NAME) + Identify.UNSET_VALUE + ((Object) MERCHANT_APP_VERSION) + Identify.UNSET_VALUE + MERCHANT_APP_BUILD;
        }
        return null;
    }

    static void trackPage(String str, String str2) {
        Lumberjack.trackPage(str, str2);
    }

    static void reportError(String str, String str2, String str3) {
        Lumberjack.trackErrorEvent(AnalyticsEvent.ERROR_LOGGED.getEventName(), getJSONErrorResponse(str, getErrorProperties(str2, str3)), str2);
        if ((str2.equalsIgnoreCase("S0") || str2.equalsIgnoreCase("S1")) && sessionErroredApiCalls < 1) {
            Lumberjack.logVajraCritialError(str2);
            sessionErroredApiCalls++;
        }
    }

    static void reportError(AbstractMethodError abstractMethodError, String str, String str2) {
        Lumberjack.trackErrorEvent(AnalyticsEvent.ERROR_LOGGED.getEventName(), getJSONErrorResponse(null, getErrorProperties(str, str2)), str);
        if ((str.equalsIgnoreCase("S0") || str.equalsIgnoreCase("S1")) && sessionErroredApiCalls < 1) {
            Lumberjack.logVajraCritialError(str);
            sessionErroredApiCalls++;
        }
    }

    static Map<String, Object> getErrorProperties(String str, String str2) {
        HashMap map = new HashMap();
        map.put(SDKConstants.PARAM_DEBUG_MESSAGE_SEVERITY, str);
        map.put("unhandled", true);
        map.put("source", "self");
        map.put(FragmentStackStateMapper.MEDUSA_STACK, "");
        map.put("message", str2);
        return map;
    }

    static JSONObject getAnalyticsDataForCheckout(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "mobile_sdk");
            jSONObject.put("platform_version", $l$I1I11I1);
            jSONObject.put("os", "android");
            jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, Build.VERSION.RELEASE);
            if (ResourceUtils.isTablet(context)) {
                jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, "tablet");
            } else {
                jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, "mobile");
            }
        } catch (Exception e) {
            reportError(e.getLocalizedMessage(), "critical", e.getMessage());
        }
        return jSONObject;
    }

    static void trackPageLoadStart(String str) {
        trackEvent(isCheckoutUrl(str) ? AnalyticsEvent.CHECKOUT_PAGE_LOAD_START : AnalyticsEvent.PAGE_LOAD_START, getJSONResponse(getPageLoadStartProperties(str)));
    }

    static Map<String, Object> getPageLoadStartProperties(String str) {
        HashMap map = new HashMap();
        map.put("url", str);
        return map;
    }

    static void trackPageLoadEnd(String str, long j) {
        trackEvent(isCheckoutUrl(str) ? AnalyticsEvent.CHECKOUT_PAGE_LOAD_FINISH : AnalyticsEvent.PAGE_LOAD_FINISH, getJSONResponse(getPageLoadEndProperties(str, j)));
    }

    static boolean isCheckoutUrl(String str) {
        return str.indexOf(CoreConfig.getInstance().getCheckoutEndpoint()) == 0;
    }

    static Map<String, Object> getPageLoadEndProperties(String str, long j) {
        HashMap map = new HashMap();
        map.put("url", str);
        map.put("page_load_time", Double.valueOf(j / 1.0E9d));
        return map;
    }

    static void reset() {
        l$1_I$l$ = false;
        __l1_ = null;
        _llI = null;
        synchronized (_l_1l__) {
            List<PendingEvent> list = I__1l;
            if (!list.isEmpty()) {
                Logger.m2690d("Analytics pending event clear on reset: count=" + list.size());
            }
            list.clear();
        }
        MonitoringUtil.reset();
        Lumberjack.destroy();
    }

    static void setAppDetails(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            MERCHANT_APP_NAME = returnUndefinedIfNull(packageInfo.applicationInfo.loadLabel(packageManager));
            MERCHANT_APP_VERSION = returnUndefinedIfNull(packageInfo.versionName);
            MERCHANT_APP_NAMESPACE = returnUndefinedIfNull(packageInfo.packageName);
            MERCHANT_APP_TARGET_SDK = packageInfo.applicationInfo.targetSdkVersion;
            MERCHANT_APP_BUILD = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            reportError(e.getMessage(), "S0", e.getMessage());
        }
        BUILD_TYPE = BaseUtils.getAppBuildType(context);
        KEY_TYPE = getKeyType(str);
    }

    static String getKeyType(String str) {
        if (!isNullOrEmpty(str) && str.length() >= 8) {
            String strSubstring = str.substring(0, 8);
            if (strSubstring.equals("rzp_live")) {
                return "live";
            }
            if (strSubstring.equals("rzp_test")) {
                return "test";
            }
        }
        return null;
    }

    static boolean isNullOrEmpty(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return true;
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) <= ' ') {
            i++;
        }
        while (length > i && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        return length - i == 0;
    }

    static CharSequence returnUndefinedIfNull(CharSequence charSequence) {
        return isNullOrEmpty(charSequence) ? "undefined" : charSequence;
    }

    static String getLocalPaymentId() {
        if (__l1_ == null) {
            __l1_ = getUniqueId();
        }
        return __l1_;
    }

    static String getLocalOrderId() {
        if (_llI == null) {
            _llI = getUniqueId();
        }
        return _llI;
    }

    static void refreshPaymentSession() {
        __l1_ = getUniqueId();
        Lumberjack.clearPaymentProperties();
    }

    static void refreshOrderSession() {
        _llI = getUniqueId();
        __l1_ = getUniqueId();
        Lumberjack.clearOrderProperties();
        Lumberjack.clearPaymentProperties();
    }

    static void setLocalOrderId(String str) {
        _llI = str;
    }

    static String getUniqueId() {
        String str = tobase62((System.currentTimeMillis() - 1388534400000L) * 1000000) + tobase62((long) Math.floor(Math.random() * 1.4776336E7d));
        return str.length() > 14 ? str.substring(0, 14) : str;
    }

    static String tobase62(long j) {
        String str = "";
        String[] strArrSplit = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("");
        while (j > 0) {
            str = String.valueOf(strArrSplit[(int) (j % 62)]) + str;
            j = (long) Math.floor(j / 62);
        }
        return str;
    }

    static void reportUncaughtException(Throwable th) {
        reportUncaughtException(th, null, null);
    }

    static void reportUncaughtException(Throwable th, Thread thread, Context context) {
        String stackTrace = getStackTrace(th);
        if (stackTrace.contains("com.razorpay")) {
            Logger.m2690d(stackTrace);
            HashMap map = new HashMap(getErrorProperties("S0", th.getMessage()));
            String strSanitizeStackTrace = sanitizeStackTrace(stackTrace);
            MonitoringUtil.trackSdkCrash(context, th, thread, strSanitizeStackTrace);
            Lumberjack.trackExceptionEvent(AnalyticsEvent.EXCEPTION_LOGGED.getEventName(), getJSONResponse(map), strSanitizeStackTrace);
        }
    }

    static void reportCaughtException(Throwable th) {
        String stackTrace = getStackTrace(th);
        Logger.m2690d(stackTrace);
        HashMap map = new HashMap(getErrorProperties("S1", th.getMessage()));
        Lumberjack.trackExceptionEvent(AnalyticsEvent.ERROR_LOGGED.getEventName(), getJSONResponse(map), sanitizeStackTrace(stackTrace));
    }

    static void reportBlockingCaughtException(Context context, Throwable th) {
        MonitoringUtil.trackBlockingCaughtException(context, th, Thread.currentThread(), sanitizeStackTrace(getStackTrace(th)));
    }

    static void logCheckoutFunctionEntry(String str, String str2, boolean z) {
        if (z) {
            try {
                HashMap map = new HashMap();
                map.put("class_name", str);
                map.put("function_name", str2);
                trackEvent(AnalyticsEvent.CHECKOUT_FUNCTION_ENTRY, map);
            } catch (Exception unused) {
            }
        }
    }

    static void logCheckoutFunctionExit(String str, String str2, boolean z) {
        if (z) {
            try {
                HashMap map = new HashMap();
                map.put("class_name", str);
                map.put("function_name", str2);
                trackEvent(AnalyticsEvent.CHECKOUT_FUNCTION_EXIT, map);
            } catch (Exception unused) {
            }
        }
    }

    static void logCustomUIFunctionEntry(String str, String str2, boolean z) {
        if (z) {
            try {
                HashMap map = new HashMap();
                map.put("class_name", str);
                map.put("function_name", str2);
                trackEvent(AnalyticsEvent.CUSTOMUI_FUNCTION_ENTRY, map);
            } catch (Exception unused) {
            }
        }
    }

    static void logCustomUIFunctionExit(String str, String str2, boolean z) {
        if (z) {
            try {
                HashMap map = new HashMap();
                map.put("class_name", str);
                map.put("function_name", str2);
                trackEvent(AnalyticsEvent.CUSTOMUI_FUNCTION_EXIT, map);
            } catch (Exception unused) {
            }
        }
    }

    static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    static String sanitizeStackTrace(String str) {
        if (isNullOrEmpty(str)) {
            return "";
        }
        try {
            String[] strArrSplit = str.split(StringUtils.f4768LF);
            StringBuilder sb = new StringBuilder();
            int iMin = Math.min(strArrSplit.length, 20);
            int i = 0;
            while (true) {
                if (i >= iMin) {
                    break;
                }
                String str2 = strArrSplit[i];
                if (!str2.trim().isEmpty()) {
                    String strReplaceAll = str2.replaceAll("\\b[a-zA-Z0-9_-]{32,}\\b", "<token>").replaceAll("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}", "<email>").replaceAll("\\b\\d{13,19}\\b", "****").replaceAll("\\b\\d{10,12}\\b", "<phone>");
                    if (strReplaceAll.length() > 500) {
                        strReplaceAll = strReplaceAll.substring(0, 497) + "...";
                    }
                    sb.append(strReplaceAll).append(StringUtils.f4768LF);
                    if (sb.length() > 5000) {
                        sb.append("... (truncated for size)");
                        break;
                    }
                }
                i++;
            }
            return sb.toString().trim();
        } catch (Exception e) {
            return "Stack trace sanitization failed: " + e.getClass().getSimpleName();
        }
    }

    static void setFramework(String str) {
        FRAMEWORK = str;
    }

    static String getFramework() {
        return isNullOrEmpty(FRAMEWORK) ? AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE : FRAMEWORK;
    }

    public static void saveEventsToPreferences(Context context) {
        Lumberjack.saveEventsToPreferences(context);
    }

    public static JSONObject getExtraAnalyticsPayload() {
        return Lumberjack.getContextPayload();
    }

    public static JSONObject getJSONResponse(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("response", str);
            return jSONObject;
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    public static JSONObject getJSONResponse(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                reportError(e.getLocalizedMessage(), "S0", "Error adding analytics property " + entry.getKey() + " to JSONObject");
            }
        }
        return jSONObject;
    }

    public static JSONObject getJSONErrorResponse(String str, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(SDKConstants.PARAM_DEBUG_MESSAGE_SEVERITY, map.get(SDKConstants.PARAM_DEBUG_MESSAGE_SEVERITY));
            jSONObject3.put("unhandled", map.get("unhandled"));
            jSONObject3.put("source", map.get("source"));
            JSONObject jSONObject4 = new JSONObject();
            if (str == null) {
                jSONObject4.put(FragmentStackStateMapper.MEDUSA_STACK, "AbstractMethodError");
            } else {
                jSONObject4.put(FragmentStackStateMapper.MEDUSA_STACK, str);
            }
            jSONObject4.put("message", map.get("message"));
            jSONObject4.put("tags", jSONObject3);
            jSONObject2.put("error", jSONObject4);
            jSONObject.put("data", jSONObject2);
            return jSONObject;
        } catch (JSONException e) {
            reportError(e.getLocalizedMessage(), "S0", "Error adding analytics property " + map.get("message") + " to JSONObject");
            return jSONObject;
        }
    }
}
