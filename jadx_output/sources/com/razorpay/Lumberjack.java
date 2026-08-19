package com.razorpay;

import android.content.Context;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.amplitude.android.TrackingOptions;
import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.android.plugins.AndroidContextPlugin;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.mixpanel.android.mpmetrics.MPDbAdapter;
import com.razorpay.AnalyticsProperty;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.function.BiFunction;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
final class Lumberjack {
    private static int $$_$I1l1_ = 0;
    private static final Set<String> $lIII_$$;
    private static float $l_I$1 = 0.0f;
    private static boolean $lll$_lIl = false;
    private static int I1lII = 0;
    private static String IIII$1$_I = null;
    private static ScheduledFuture<?> I__1l = null;
    private static String _$_l_$1l$ = null;
    private static boolean __II$$ = false;
    private static boolean __Il11I1l = false;
    private static JSONObject ___Il$ = null;
    private static final int __l1_ = 10;
    private static ScheduledExecutorService _l_1l__ = null;
    private static String _l_l_1IlI = null;
    private static final int _llI = 10;
    private static JSONObject l$$$11Il1 = null;
    private static final String l$1_I$l$ = "SavedEventsData";
    private static final String lI$$I1$l = "default";
    private static final Map<String, Set<String>> l_lIl;
    private static String ll_$$111;
    private static final Object _1__ = new Object();
    private static String $I__I = Build.MANUFACTURER;
    private static String $l$I1I11I1 = Build.MODEL;
    private static String lI_l1Il_ = Build.DEVICE;
    private static boolean llIl = false;
    private static String I1I_l1 = "standalone";
    private static ArrayList<JSONObject> ___I1$lI = new ArrayList<>();
    private static Map<String, Object> $$II__1$l_ = new ConcurrentHashMap();
    private static Map<String, Object> II1$II$_1 = new ConcurrentHashMap();
    private static final Set<String> Il__I1Il = new HashSet(Arrays.asList(AnalyticsEvent.DEVICE_UPI_APPS_DISCOVERY_START.getEventName(), AnalyticsEvent.DEVICE_UPI_APPS_DISCOVERY_SUCCESS.getEventName(), AnalyticsEvent.CUSTOM_UI_GET_APPS_SUPPORTING_UPI.getEventName(), AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_START.getEventName(), AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS.getEventName(), AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS.getEventName(), AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT.getEventName(), AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT.getEventName(), AnalyticsEvent.PHONE_NUMBER_HINT_INTENT_LAUNCH_FAILED.getEventName(), AnalyticsEvent.WEB_VIEW_PRIMARY_TO_SECONDARY_SWITCH.getEventName(), AnalyticsEvent.WEB_VIEW_SECONDARY_TO_PRIMARY_SWITCH.getEventName(), AnalyticsEvent.CHECKOUT_HARD_BACK_PRESSED.getEventName()));
    private static Map<String, Integer> l$Illl = new ConcurrentHashMap();

    Lumberjack() {
    }

    static {
        HashMap map = new HashMap();
        l_lIl = map;
        map.put(AnalyticsEvent.DEVICE_UPI_APPS_DISCOVERY_SUCCESS.getEventName(), new HashSet(Arrays.asList("deviceApps")));
        map.put(AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS.getEventName(), new HashSet(Arrays.asList("allUpiDeviceApps")));
        map.put(AnalyticsEvent.DEVICE_UPI_APPS_DISCOVERY_START.getEventName(), new HashSet());
        map.put(AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_START.getEventName(), new HashSet());
        map.put(AnalyticsEvent.CUSTOM_UI_GET_APPS_SUPPORTING_UPI.getEventName(), new HashSet());
        map.put(AnalyticsEvent.CHECKOUT_HARD_BACK_PRESSED.getEventName(), new HashSet());
        map.put(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS.getEventName(), new HashSet());
        map.put(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT.getEventName(), new HashSet());
        map.put(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT.getEventName(), new HashSet());
        map.put(AnalyticsEvent.PHONE_NUMBER_HINT_INTENT_LAUNCH_FAILED.getEventName(), new HashSet());
        map.put(AnalyticsEvent.WEB_VIEW_PRIMARY_TO_SECONDARY_SWITCH.getEventName(), new HashSet());
        map.put(AnalyticsEvent.WEB_VIEW_SECONDARY_TO_PRIMARY_SWITCH.getEventName(), new HashSet());
        HashSet hashSet = new HashSet();
        $lIII_$$ = hashSet;
        hashSet.add(AnalyticsEvent.CUSTOM_UI_INIT_END.getEventName());
        hashSet.add(AnalyticsEvent.FETCH_PREFERENCES_CALLED.getEventName());
        hashSet.add(AnalyticsEvent.FETCH_PREFERENCES_CALL_SUCCESS.getEventName());
        hashSet.add(AnalyticsEvent.FETCH_PREFERENCES_METHODS_CALL_FAIL.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_SUBMIT_START.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_PAYLOAD_PASSED.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_TLS_ERROR.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_NATIVE_INTENT_CALLED.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_UPI_APP_LAUNCHED.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_PAYMENT_COMPLETE.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_BACK_PRESSED_HARD.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_BACK_PRESSED_SOFT.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_START.getEventName());
        hashSet.add(AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_INIT.getEventName());
        hashSet.add(AnalyticsEvent.ACTIVITY_ONCREATE_CALLED.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_LOADED.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_RENDERED_COMPLETE.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_SUBMIT.getEventName());
        hashSet.add(AnalyticsEvent.NATIVE_INTENT_CALLED.getEventName());
        hashSet.add(AnalyticsEvent.NATIVE_INTENT_ONACTIVITY_RESULT.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_PAYMENT_COMPLETE.getEventName());
        hashSet.add(AnalyticsEvent.CALLING_ON_SUCCESS.getEventName());
        hashSet.add(AnalyticsEvent.CALLING_ON_ERROR.getEventName());
        hashSet.add(AnalyticsEvent.HANDOVER_ERROR.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_SOFT_BACK_PRESSED.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_HARD_BACK_PRESSED.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_JS_DISMISSED.getEventName());
        hashSet.add(AnalyticsEvent.ACTIVITY_ONDESTROY_CALLED.getEventName());
        hashSet.add(AnalyticsEvent.CHECKOUT_TLS_ERROR.getEventName());
        hashSet.add(AnalyticsEvent.WEBVIEW_CREATION_FAILED.getEventName());
        hashSet.add(AnalyticsEvent.WEBVIEW_RENDERER_CRASHED.getEventName());
        hashSet.add(AnalyticsEvent.WEB_VIEW_NETWORK_ERROR_RETRY.getEventName());
        hashSet.add(AnalyticsEvent.WEB_VIEW_NETWORK_RETRY_EXHAUSTED.getEventName());
        hashSet.add(AnalyticsEvent.WEB_VIEW_NETWORK_ERROR.getEventName());
        hashSet.add(AnalyticsEvent.WEB_VIEW_SECONDARY_NETWORK_ERROR.getEventName());
        hashSet.add(AnalyticsEvent.SDK_CRASH_LOGGED.getEventName());
        hashSet.add(AnalyticsEvent.SDK_PROCESS_EXIT_LOGGED.getEventName());
        hashSet.add(AnalyticsEvent.CRITICAL_DEPENDENCY_FAILED.getEventName());
    }

    private static boolean l$1_I$l$(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    private static CharSequence l$1_I$l$() {
        return AnalyticsUtil.returnUndefinedIfNull(System.getProperty("http.agent"));
    }

    private static CharSequence __l1_() {
        return AnalyticsUtil.returnUndefinedIfNull(TimeZone.getDefault().getID());
    }

    private static void l$1_I$l$(Context context) {
        _$_l_$1l$ = BaseUtils.getCellularNetworkType(context);
        IIII$1$_I = BaseUtils.getCellularNetworkProviderName(context);
        int i = C39213.$SwitchMap$com$razorpay$NetworkType[BaseUtils.getDataNetworkType(context).ordinal()];
        if (i == 1) {
            __Il11I1l = true;
        } else if (i == 2) {
            $lll$_lIl = true;
        } else {
            if (i != 3) {
                return;
            }
            __II$$ = true;
        }
    }

    /* JADX INFO: renamed from: com.razorpay.Lumberjack$3 */
    static /* synthetic */ class C39213 {
        static final /* synthetic */ int[] $SwitchMap$com$razorpay$NetworkType;

        static {
            int[] iArr = new int[NetworkType.values().length];
            $SwitchMap$com$razorpay$NetworkType = iArr;
            try {
                iArr[NetworkType.WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$razorpay$NetworkType[NetworkType.CELLULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$razorpay$NetworkType[NetworkType.BLUETOOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static void __l1_(Context context) {
        Display defaultDisplay = ((WindowManager) BaseUtils.getSystemService(context, "window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        $l_I$1 = displayMetrics.density;
        $$_$I1l1_ = displayMetrics.heightPixels;
        I1lII = displayMetrics.widthPixels;
    }

    private static String _llI() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    private static String _l_1l__() {
        if ("custom".equalsIgnoreCase(I1I_l1)) {
            return "checkout-custom";
        }
        return "checkout";
    }

    private static String I__1l() {
        if ("custom".equalsIgnoreCase(I1I_l1)) {
            return "customui_android";
        }
        return "checkout_android";
    }

    private static String _1__() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date());
    }

    private static String $I__I() {
        Object obj = II1$II$_1.get("merchant_key");
        return obj != null ? obj.toString() : "";
    }

    private static JSONObject _llI(Context context) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", BaseConfig.getAdvertisingId(context));
        jSONObject.put("manufacturer", $I__I);
        jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, $l$I1I11I1);
        jSONObject.put("name", lI_l1Il_);
        jSONObject.put("type", "phone");
        jSONObject.put("version", AndroidContextPlugin.PLATFORM + Build.VERSION.RELEASE);
        jSONObject.put($I__I, Build.MANUFACTURER);
        jSONObject.put($l$I1I11I1, Build.MODEL);
        jSONObject.put("device_size", BaseUtils.getDisplayWidth(context) + "w X " + BaseUtils.getDisplayHeight(context) + SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H);
        jSONObject.put("device_resolution", BaseUtils.getDisplayResolution(context));
        long totalRamMB = BaseUtils.getTotalRamMB(context);
        jSONObject.put("total_ram_mb", totalRamMB);
        jSONObject.put("free_ram_mb", BaseUtils.getFreeRamMB(context));
        jSONObject.put("cpu_cores", BaseUtils.getCpuCores());
        jSONObject.put("performance_class", PerformanceUtil.getPerformanceClass(context));
        jSONObject.put("is_low_end_device", PerformanceUtil.isLowEndDevice(context));
        jSONObject.put("power_save_mode", BaseUtils.isPowerSaveMode(context));
        jSONObject.put("battery_level", BaseUtils.getBatteryLevel(context));
        jSONObject.put("is_charging", BaseUtils.isCharging(context));
        jSONObject.put("is_low_ram_device", totalRamMB <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
        jSONObject.put("gpu_renderer", GpuInfoUtil.getGpuRenderer());
        jSONObject.put("gpu_vendor", GpuInfoUtil.getGpuVendor());
        return jSONObject;
    }

    private static JSONObject $l$I1I11I1() throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", ll_$$111);
        jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "android");
        jSONObject.put("type", I1I_l1);
        jSONObject.put("framework", AnalyticsUtil.getFramework());
        jSONObject.put("name", I1I_l1 + "_android_" + AnalyticsUtil.getFramework());
        return jSONObject;
    }

    private static JSONObject _l_1l__(Context context) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bluetooth", __II$$);
        jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_CARRIER, IIII$1$_I);
        jSONObject.put("cellular", $lll$_lIl);
        jSONObject.put("cellular_network_type", _$_l_$1l$);
        jSONObject.put("wifi", __Il11I1l);
        jSONObject.put("carrier_network", BaseUtils.getCarrierOperatorName(context));
        jSONObject.put("network_type", BaseUtils.getNetworkType(context));
        jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_IP_ADDRESS, BaseUtils.ipAddress);
        jSONObject.put("is_roming", BaseUtils.isNetworkRoaming(context));
        Map<String, String> deviceAttributes = BaseUtils.getDeviceAttributes(context);
        jSONObject.put("device_Id", deviceAttributes.get("device_Id"));
        String str = $I__I;
        jSONObject.put(str, deviceAttributes.get(str));
        String str2 = $l$I1I11I1;
        jSONObject.put(str2, deviceAttributes.get(str2));
        return jSONObject;
    }

    private static JSONObject lI_l1Il_() throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("density", $l_I$1);
        jSONObject.put("width", I1lII);
        jSONObject.put("height", $$_$I1l1_);
        return jSONObject;
    }

    private static JSONObject I__1l(Context context) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mode", AnalyticsUtil.getKeyType());
        jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, _llI(context));
        jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, $l$I1I11I1());
        jSONObject.put("network", _l_1l__(context));
        jSONObject.put(CommonCssConstants.SCREEN, lI_l1Il_());
        jSONObject.put("locale", BaseUtils.getLocale());
        jSONObject.put("timezone", __l1_());
        jSONObject.put("framework", I1I_l1 + "_android_" + AnalyticsUtil.getFramework());
        jSONObject.put("user_agent", l$1_I$l$());
        jSONObject.put("checkout_id", AnalyticsUtil.getLocalOrderId());
        jSONObject.put("local_order_id", AnalyticsUtil.getLocalOrderId());
        jSONObject.put("webview_user_agent", BaseUtils.getWebViewUserAgent(context));
        return jSONObject;
    }

    static void setBaseImportJSON(Context context) {
        try {
            l$1_I$l$(context);
            __l1_(context);
            GpuInfoUtil.loadFromCache(context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", CoreConfig.getInstance().getLumberjackKey());
            jSONObject.put(DatabaseConstants.EVENT_TABLE_NAME, new JSONArray());
            JSONObject jSONObjectI__1l = I__1l(context);
            ___Il$ = jSONObjectI__1l;
            jSONObject.put("context", jSONObjectI__1l);
            jSONObject.put("mode", "live");
            l$$$11Il1 = jSONObject;
            Logger.m2690d(jSONObject.toString());
            _llI(getSessionCreatedJson());
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", "Error in creating BaseImportJSON");
            l$$$11Il1 = new JSONObject();
        }
    }

    static void updateGpuInfo() {
        JSONObject jSONObjectOptJSONObject;
        try {
            if (___Il$ == null || !GpuInfoUtil.isGpuInfoAvailable() || (jSONObjectOptJSONObject = ___Il$.optJSONObject(DeviceRequestsHelper.DEVICE_INFO_DEVICE)) == null) {
                return;
            }
            jSONObjectOptJSONObject.put("gpu_renderer", GpuInfoUtil.getGpuRenderer());
            jSONObjectOptJSONObject.put("gpu_vendor", GpuInfoUtil.getGpuVendor());
            Logger.m2690d("GPU info updated: " + GpuInfoUtil.getGpuRenderer());
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S2", "Error updating GPU info in context");
        }
    }

    private static void l$1_I$l$(JSONObject jSONObject) {
        int length;
        int iIntValue;
        if (!llIl) {
            ___I1$lI.add(jSONObject);
            return;
        }
        try {
            JSONObject jSONObjectAddGlobalProperties = addGlobalProperties(jSONObject);
            String strOptString = jSONObjectAddGlobalProperties.optString("event", "");
            if (Il__I1Il.contains(strOptString) && (iIntValue = l$Illl.merge(strOptString, 1, new BiFunction() { // from class: com.razorpay.Lumberjack$$ExternalSyntheticLambda0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Integer.valueOf(Integer.sum(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
                }
            }).intValue()) > 1) {
                if (l$1_I$l$(strOptString, jSONObjectAddGlobalProperties, iIntValue)) {
                    return;
                } else {
                    jSONObjectAddGlobalProperties.put("attempt", iIntValue);
                }
            }
            synchronized (l$$$11Il1) {
                JSONArray jSONArray = l$$$11Il1.getJSONArray(DatabaseConstants.EVENT_TABLE_NAME);
                jSONArray.put(jSONObjectAddGlobalProperties);
                length = jSONArray.length();
            }
            if (length == 1) {
                __Il11I1l();
            }
            if (length >= 10) {
                Logger.m2690d("Lumberjack: Auto-flushing batch (" + length + " events exceeded threshold of 10)");
                postData();
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", e.getMessage());
        }
    }

    private static boolean l$1_I$l$(String str, JSONObject jSONObject, int i) {
        JSONArray jSONArray;
        int i2;
        synchronized (l$$$11Il1) {
            try {
                try {
                    jSONArray = l$$$11Il1.getJSONArray(DatabaseConstants.EVENT_TABLE_NAME);
                } catch (Exception e) {
                    AnalyticsUtil.reportError(e.getMessage(), "S0", "Error merging dedup event properties");
                }
                for (i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    if (str.equals(jSONObject2.optString("event"))) {
                        Set<String> set = l_lIl.get(str);
                        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("properties");
                        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("properties");
                        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject2 != null && set != null) {
                            String str2 = "attempt" + i + "_";
                            for (String str3 : set) {
                                if (jSONObjectOptJSONObject2.has(str3)) {
                                    jSONObjectOptJSONObject.put(str2 + str3, jSONObjectOptJSONObject2.get(str3));
                                }
                            }
                        }
                        return true;
                    }
                    return false;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void addPaymentProperty(String str, Object obj) {
        $$II__1$l_.put(str, obj);
    }

    static void addOrderProperty(String str, Object obj) {
        II1$II$_1.put(str, obj);
    }

    static JSONObject createBaseTrackEvent(String str) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event", str);
            jSONObject.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, jCurrentTimeMillis);
            return jSONObject;
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", "Error in creating base for trackEvent");
            return null;
        }
    }

    static void trackEvent(String str, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                AnalyticsUtil.reportError(e.getMessage(), "S0", "Error adding analytics property " + entry.getKey() + " to JSONObject");
            }
        }
        trackEvent(str, jSONObject);
    }

    static void trackEvent(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObjectCreateBaseTrackEvent = createBaseTrackEvent(str);
            if (jSONObjectCreateBaseTrackEvent == null) {
                jSONObjectCreateBaseTrackEvent = new JSONObject();
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            jSONObject.put("local_order_id", AnalyticsUtil.getLocalOrderId());
            jSONObject.put("checkout_id", AnalyticsUtil.getLocalOrderId());
            jSONObject.put("local_payment_id", AnalyticsUtil.getLocalPaymentId());
            jSONObjectCreateBaseTrackEvent.put("properties", jSONObject);
            l$1_I$l$(jSONObjectCreateBaseTrackEvent);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", "Error in adding properties to base json for event tracking");
        }
    }

    static void trackEvent(String str) {
        trackEvent(str, new JSONObject());
    }

    static void trackErrorEvent(String str, JSONObject jSONObject, String str2) {
        l$1_I$l$(str, jSONObject, str2);
    }

    static void trackExceptionEvent(String str, JSONObject jSONObject, String str2) {
        l$1_I$l$(str, jSONObject, str2);
    }

    private static void l$1_I$l$(String str, JSONObject jSONObject, String str2) {
        try {
            JSONObject jSONObjectCreateBaseTrackEvent = createBaseTrackEvent(str);
            if (jSONObjectCreateBaseTrackEvent == null) {
                jSONObjectCreateBaseTrackEvent = new JSONObject();
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            jSONObject.put("local_order_id", AnalyticsUtil.getLocalOrderId());
            jSONObject.put("checkout_id", AnalyticsUtil.getLocalOrderId());
            jSONObject.put("local_payment_id", AnalyticsUtil.getLocalPaymentId());
            jSONObjectCreateBaseTrackEvent.put("properties", jSONObject);
            if (str2 != null && !str2.isEmpty()) {
                jSONObjectCreateBaseTrackEvent.put("value", str2);
            }
            l$1_I$l$(jSONObjectCreateBaseTrackEvent);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", "Error in tracking event with value/content");
        }
    }

    static void trackEventWithMetric(String str, JSONObject jSONObject, long j) {
        try {
            JSONObject jSONObjectCreateBaseTrackEvent = createBaseTrackEvent(str);
            if (jSONObjectCreateBaseTrackEvent == null) {
                jSONObjectCreateBaseTrackEvent = new JSONObject();
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            jSONObject.put("local_order_id", AnalyticsUtil.getLocalOrderId());
            jSONObject.put("checkout_id", AnalyticsUtil.getLocalOrderId());
            jSONObject.put("local_payment_id", AnalyticsUtil.getLocalPaymentId());
            jSONObjectCreateBaseTrackEvent.put("properties", jSONObject);
            jSONObjectCreateBaseTrackEvent.put("metric", j);
            l$1_I$l$(jSONObjectCreateBaseTrackEvent);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", "Error in tracking event with metric");
        }
    }

    static void trackPage(String str, String str2) {
        HashMap map = new HashMap();
        map.put("url", str2);
        trackEvent("Viewed " + str + " Page", map);
    }

    static JSONObject addGlobalProperties(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.has("properties") ? jSONObject.getJSONObject("properties") : null;
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            jSONObject2.put("merchant_app_name", AnalyticsUtil.MERCHANT_APP_NAME);
            jSONObject2.put("merchant_app_version", AnalyticsUtil.MERCHANT_APP_VERSION);
            jSONObject2.put("merchant_app_package", AnalyticsUtil.MERCHANT_APP_NAMESPACE);
            jSONObject2.put("merchant_app_target_sdk", AnalyticsUtil.MERCHANT_APP_TARGET_SDK);
            jSONObject2.put("merchant_app_build", AnalyticsUtil.MERCHANT_APP_BUILD);
            jSONObject2.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "mobile_sdk");
            jSONObject2.put("platform_version", ll_$$111);
            jSONObject2.put("os", "android");
            jSONObject2.put(TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, Build.VERSION.RELEASE);
            jSONObject2.put("library", AnalyticsUtil.libraryType);
            for (Map.Entry<String, Object> entry : $$II__1$l_.entrySet()) {
                try {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                } catch (Exception e) {
                    AnalyticsUtil.reportError(e.getMessage(), "S0", "Error adding analytics property " + entry.getKey() + " to JSONObject");
                }
            }
            for (Map.Entry<String, Object> entry2 : II1$II$_1.entrySet()) {
                try {
                    jSONObject2.put(entry2.getKey(), entry2.getValue());
                } catch (Exception e2) {
                    AnalyticsUtil.reportError(e2.getMessage(), "S0", "Error adding analytics property " + entry2.getKey() + " to JSONObject");
                }
            }
            jSONObject.put("properties", jSONObject2);
            if (CoreConfig.getInstance().isLumberjackV2Enabled().booleanValue()) {
                jSONObject.put(ConstantEventAttributes.EVENT_TYPE, _l_1l__());
                jSONObject.put("event_version", "v2");
                jSONObject.put("origin", I__1l());
                jSONObject.put("uuid", _l_l_1IlI);
                jSONObject.put("checkout_id", AnalyticsUtil.getLocalOrderId());
                jSONObject.put("build_id", ll_$$111);
                jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, 2L);
                jSONObject.put("env", 1L);
                jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, Build.VERSION.RELEASE);
                jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_DEVICE_MANUFACTURER, Build.MANUFACTURER);
                Object obj = II1$II$_1.get("merchant_key");
                if (obj != null) {
                    jSONObject.put("merchant_key", obj.toString());
                }
                jSONObject.put("merchant_id", "");
                Object obj2 = II1$II$_1.get("order_id");
                if (obj2 != null) {
                    jSONObject.put("order_id", obj2.toString());
                }
                Object obj3 = $$II__1$l_.get(FirebaseAnalytics.Param.METHOD);
                if (obj3 != null) {
                    jSONObject.put(FirebaseAnalytics.Param.METHOD, obj3.toString());
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    static void postData() {
        synchronized (l$$$11Il1) {
            JSONObject jSONObjectFilterPayload = filterPayload(l$$$11Il1);
            l$$$11Il1 = jSONObjectFilterPayload;
            Logger.m2690d(jSONObjectFilterPayload.toString());
            __l1_(l$$$11Il1);
        }
        _$_l_$1l$();
    }

    private static void __l1_(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(DatabaseConstants.EVENT_TABLE_NAME);
            if (!CoreConfig.getInstance().isLumberjackEnabled().booleanValue() || CoreConfig.getInstance().isVersionBlocked(ll_$$111) || jSONArray.length() == 0) {
                return;
            }
            HashMap map = new HashMap();
            map.put("x-identifier", CoreConfig.getInstance().getLumberjackSdkIdentifier());
            map.put(HttpHeaders.CONTENT_TYPE, "application/json");
            Logger.m2690d("Sending data to lumberjack");
            l$1_I$l$(jSONObject, jSONArray);
            String string = jSONObject.toString();
            String str$I__I = $I__I();
            String trackUrl = GlobalUrlConfig.instance().getTrackUrl();
            if (!str$I__I.isEmpty()) {
                trackUrl = trackUrl + "?key_id=" + str$I__I;
            }
            Owl.post(trackUrl, string, map, new Callback() { // from class: com.razorpay.Lumberjack.1
                @Override // com.razorpay.Callback
                public void run(ResponseObject responseObject) {
                    Logger.m2690d("Response from lumberjack: " + responseObject.getResponseResult());
                }
            });
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", "makePostRequest: failed to read events array");
        }
    }

    private static void l$1_I$l$(JSONObject jSONObject, JSONArray jSONArray) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("context");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject2 = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject2 == null) {
                Logger.m2690d("Lumberjack event verification: index=" + i + ", event=<non-json>, properties={}, context=" + jSONObjectOptJSONObject);
            } else {
                Logger.m2690d("Lumberjack event verification: index=" + i + ", event=" + jSONObjectOptJSONObject2.optString("event") + ", properties=" + jSONObjectOptJSONObject2.optJSONObject("properties") + ", context=" + jSONObjectOptJSONObject);
            }
        }
    }

    private static void _$_l_$1l$() {
        try {
            JSONObject jSONObject = l$$$11Il1;
            if (jSONObject == null) {
                return;
            }
            synchronized (jSONObject) {
                l$$$11Il1.put(DatabaseConstants.EVENT_TABLE_NAME, new JSONArray());
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", e.getMessage());
        }
    }

    static void init(Context context, String str, String str2) {
        $l_I$1();
        I1I_l1 = str;
        ll_$$111 = str2;
        _l_l_1IlI = BaseConfig.getAdvertisingId(context);
        l$Illl.clear();
        setBaseImportJSON(context);
        llIl = true;
        IIII$1$_I();
        transmitSavedEvents(context);
    }

    static void transmitSavedEvents(Context context) {
        String protectedValue = SharedPreferenceUtil.getProtectedValue(context, l$1_I$l$, null);
        if (protectedValue == null || protectedValue.isEmpty()) {
            return;
        }
        try {
            __l1_(new JSONObject(protectedValue));
            SharedPreferenceUtil.removeValue(context, l$1_I$l$);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S1", e.getMessage());
        }
    }

    private static void IIII$1$_I() {
        Iterator<JSONObject> it = ___I1$lI.iterator();
        while (it.hasNext()) {
            l$1_I$l$(it.next());
        }
        $lll$_lIl();
    }

    private static void $lll$_lIl() {
        ___I1$lI = new ArrayList<>();
    }

    private static void l$1_I$l$(JSONObject jSONObject, String str, AnalyticsProperty.Scope scope) {
        try {
            Object valueFromJsonObject = getValueFromJsonObject(jSONObject, str);
            if (valueFromJsonObject != null) {
                if (scope == AnalyticsProperty.Scope.PAYMENT) {
                    addPaymentProperty(str, valueFromJsonObject);
                } else if (scope == AnalyticsProperty.Scope.ORDER) {
                    addOrderProperty(str, valueFromJsonObject);
                }
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S2", e.getMessage());
        }
    }

    static Object getValueFromJsonObject(JSONObject jSONObject, String str) {
        try {
            return jSONObject.get(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S2", e.getMessage());
            return null;
        }
    }

    static String getStringFromJsonObject(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S2", e.getMessage());
            return null;
        }
    }

    static boolean getBooleanFromJsonObject(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S2", e.getMessage());
            return false;
        }
    }

    static void addAmountToProperties(JSONObject jSONObject) {
        try {
            addOrderProperty(ConstantEventAttributes.AMOUNT, Long.valueOf(Long.parseLong(getStringFromJsonObject(jSONObject, ConstantEventAttributes.AMOUNT))));
        } catch (Exception unused) {
        }
    }

    static void addFrameworkToProperties(JSONObject jSONObject) {
        try {
            addOrderProperty("framework", jSONObject.has("framework") ? getStringFromJsonObject(jSONObject, "framework") : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE);
        } catch (Exception unused) {
        }
    }

    static void addFilteredPropertiesFromPayload(JSONObject jSONObject) {
        try {
            addAmountToProperties(jSONObject);
            addFrameworkToProperties(jSONObject);
            l$1_I$l$(jSONObject, "contact", AnalyticsProperty.Scope.ORDER);
            l$1_I$l$(jSONObject, "email", AnalyticsProperty.Scope.ORDER);
            l$1_I$l$(jSONObject, "order_id", AnalyticsProperty.Scope.ORDER);
            String stringFromJsonObject = getStringFromJsonObject(jSONObject, FirebaseAnalytics.Param.METHOD);
            if (stringFromJsonObject == null) {
                return;
            }
            if (jSONObject.has(MPDbAdapter.KEY_TOKEN)) {
                stringFromJsonObject = "saved card";
            }
            addPaymentProperty(FirebaseAnalytics.Param.METHOD, stringFromJsonObject);
            if (stringFromJsonObject.equals("card")) {
                String stringFromJsonObject2 = getStringFromJsonObject(jSONObject, "card[number]");
                if (!AnalyticsUtil.isNullOrEmpty(stringFromJsonObject2) && stringFromJsonObject2.length() >= 6) {
                    addPaymentProperty("card_number", stringFromJsonObject2.substring(0, 6));
                }
            } else if (stringFromJsonObject.equals("saved card")) {
                addOrderProperty("Checkout Login", (!getBooleanFromJsonObject(jSONObject, "razorpay_otp")) + "");
            } else if (stringFromJsonObject.equals("netbanking")) {
                l$1_I$l$(jSONObject, "bank", AnalyticsProperty.Scope.PAYMENT);
            } else if (stringFromJsonObject.equals("wallet")) {
                l$1_I$l$(jSONObject, "wallet", AnalyticsProperty.Scope.PAYMENT);
            } else if (stringFromJsonObject.equals("upi")) {
                addPaymentProperty("flow", getStringFromJsonObject(jSONObject, "_[flow]"));
            }
        } catch (Exception e) {
            Logger.m2690d("Failed to add props to lumberjack: " + e.getMessage());
            AnalyticsUtil.reportError(e.getMessage(), "S2", e.getMessage());
        }
    }

    static void destroy() {
        $l_I$1();
        I1lII();
        clearOrderProperties();
        clearPaymentProperties();
        __II$$();
        l$Illl.clear();
        llIl = false;
    }

    static void clearPaymentProperties() {
        $$II__1$l_ = new ConcurrentHashMap();
    }

    static void clearOrderProperties() {
        II1$II$_1 = new ConcurrentHashMap();
    }

    private static void __II$$() {
        _$_l_$1l$();
        $lll$_lIl();
    }

    private static void __Il11I1l() {
        if (llIl) {
            synchronized (_1__) {
                ScheduledFuture<?> scheduledFuture = I__1l;
                if (scheduledFuture == null || scheduledFuture.isCancelled() || I__1l.isDone()) {
                    ScheduledExecutorService scheduledExecutorService = _l_1l__;
                    if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                        _l_1l__ = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.razorpay.Lumberjack$$ExternalSyntheticLambda1
                            @Override // java.util.concurrent.ThreadFactory
                            public final Thread newThread(Runnable runnable) {
                                return Lumberjack.l$1_I$l$(runnable);
                            }
                        });
                    }
                    I__1l = _l_1l__.scheduleWithFixedDelay(new Runnable() { // from class: com.razorpay.Lumberjack$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Lumberjack.$$_$I1l1_();
                        }
                    }, 10L, 10L, TimeUnit.SECONDS);
                    Logger.m2690d("Lumberjack: Started time-based flush timer (10s interval)");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread l$1_I$l$(Runnable runnable) {
        Thread thread = new Thread(runnable, "Lumberjack-FlushTimer");
        thread.setDaemon(true);
        return thread;
    }

    private static void $l_I$1() {
        synchronized (_1__) {
            ScheduledFuture<?> scheduledFuture = I__1l;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                I__1l = null;
                Logger.m2690d("Lumberjack: Stopped time-based flush timer");
            }
        }
    }

    private static void I1lII() {
        synchronized (_1__) {
            ScheduledExecutorService scheduledExecutorService = _l_1l__;
            if (scheduledExecutorService != null) {
                try {
                    scheduledExecutorService.shutdownNow();
                } catch (Exception e) {
                    Logger.m2693e("Error shutting down flush scheduler", e);
                }
                _l_1l__ = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void $$_$I1l1_() {
        int length;
        if (!llIl) {
            $l_I$1();
            return;
        }
        try {
            synchronized (l$$$11Il1) {
                JSONArray jSONArrayOptJSONArray = l$$$11Il1.optJSONArray(DatabaseConstants.EVENT_TABLE_NAME);
                length = jSONArrayOptJSONArray != null ? jSONArrayOptJSONArray.length() : 0;
            }
            if (length > 0) {
                Logger.m2690d("Lumberjack: Time-based flush triggered (" + length + " events)");
                postData();
            }
            synchronized (l$$$11Il1) {
                JSONArray jSONArrayOptJSONArray2 = l$$$11Il1.optJSONArray(DatabaseConstants.EVENT_TABLE_NAME);
                if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() == 0) {
                    $l_I$1();
                }
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e.getMessage(), "S2", "Error in timed flush");
        }
    }

    static JSONObject filterPayload(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(DatabaseConstants.EVENT_TABLE_NAME);
            String lumberjackAllowedEventsRegex = CoreConfig.getInstance().getLumberjackAllowedEventsRegex();
            Logger.m2690d("Lumberjack event verification: allowed_events_regex=" + lumberjackAllowedEventsRegex);
            JSONArray jSONArray2 = new JSONArray();
            int i = 0;
            if (lumberjackAllowedEventsRegex == null || lumberjackAllowedEventsRegex.trim().isEmpty()) {
                while (i < jSONArray.length()) {
                    jSONArray2.put(filterEvent(jSONArray.getJSONObject(i)));
                    i++;
                }
            } else {
                ArrayList arrayList = new ArrayList();
                for (String str : lumberjackAllowedEventsRegex.split(",")) {
                    String strTrim = str.trim();
                    if (lI$$I1$l.equals(strTrim)) {
                        arrayList.addAll($lIII_$$);
                    } else if (!strTrim.isEmpty()) {
                        arrayList.add(strTrim);
                    }
                }
                while (i < jSONArray.length()) {
                    JSONObject jSONObjectFilterEvent = filterEvent(jSONArray.getJSONObject(i));
                    if (l$1_I$l$(jSONObjectFilterEvent.optString("event", ""), arrayList)) {
                        jSONArray2.put(jSONObjectFilterEvent);
                    } else {
                        Logger.m2690d("Lumberjack event verification: dropped event=" + jSONObjectFilterEvent.optString("event", "") + ", allowed_events_regex=" + lumberjackAllowedEventsRegex + ", properties=" + jSONObjectFilterEvent.optJSONObject("properties"));
                    }
                    i++;
                }
            }
            jSONObject.put(DatabaseConstants.EVENT_TABLE_NAME, jSONArray2);
        } catch (JSONException e) {
            Logger.m2693e("Error in filtering payload", e);
        }
        return jSONObject;
    }

    private static boolean l$1_I$l$(String str, List<String> list) {
        for (String str2 : list) {
            try {
                if (str2.contains(")+") || str2.contains(")*") || str2.contains(")?") || str2.contains("}+") || str2.contains("}*")) {
                    Logger.m2698w("Lumberjack: skipping potentially unsafe regex pattern");
                } else if (str.matches(str2)) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    static JSONObject filterEvent(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("properties")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("properties");
            if (jSONObject2.has("url")) {
                jSONObject2.put("url", filterUrl(jSONObject2.getString("url")));
            }
            jSONObject.put("properties", jSONObject2);
        }
        return jSONObject;
    }

    static String filterUrl(String str) {
        return str.startsWith(ResourceResolver.DATA_SCHEMA_PREFIX) ? "Data present in url" : str;
    }

    static JSONObject getLumberjackPayload() {
        return l$$$11Il1;
    }

    static JSONObject getContextPayload() {
        return ___Il$;
    }

    static ArrayList<JSONObject> getPreInitBatch() {
        return ___I1$lI;
    }

    static Map<String, Object> getPaymentProperties() {
        return $$II__1$l_;
    }

    static Map<String, Object> getOrderProperties() {
        return II1$II$_1;
    }

    static void saveEventsToPreferences(Context context) {
        synchronized (l$$$11Il1) {
            SharedPreferenceUtil.setProtectedValue(context, l$1_I$l$, filterPayload(l$$$11Il1).toString(), ll_$$111);
        }
    }

    static JSONObject getSessionCreatedJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", CoreConfig.getInstance().getLumberjackKey());
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("name", "checkout.mobile.sessionCreated.metrics");
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("type", "session_created");
            jSONObject3.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "android");
            jSONObject3.put("framework", I1I_l1 + "_android_" + AnalyticsUtil.getFramework());
            jSONArray2.put(jSONObject3);
            jSONObject2.put("labels", jSONArray2);
            jSONArray.put(jSONObject2);
            jSONObject.put("metrics", jSONArray);
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", e.getLocalizedMessage());
        }
        return jSONObject;
    }

    static JSONObject getSessionErroredJson(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", CoreConfig.getInstance().getLumberjackKey());
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("name", "checkout.mobile.sessionErrored.metrics");
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("type", "session_errored");
            jSONObject3.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "android");
            jSONObject3.put("framework", I1I_l1 + "_android_" + AnalyticsUtil.getFramework());
            jSONObject3.put(SDKConstants.PARAM_DEBUG_MESSAGE_SEVERITY, str);
            jSONArray2.put(jSONObject3);
            jSONObject2.put("labels", jSONArray2);
            jSONArray.put(jSONObject2);
            jSONObject.put("metrics", jSONArray);
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e.getMessage(), "S0", e.getLocalizedMessage());
        }
        return jSONObject;
    }

    static void logVajraCritialError(String str) {
        _llI(getSessionErroredJson(str));
    }

    private static void _llI(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("accept", "application/json");
        map.put("content-type", "applications/json");
        Owl.post("https://lumberjack-metrics.razorpay.com/v1/frontend-metrics", jSONObject.toString(), map, new Callback() { // from class: com.razorpay.Lumberjack.2
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                Logger.m2690d("Response from vjDash: " + responseObject.getResponseResult());
            }
        });
    }
}
