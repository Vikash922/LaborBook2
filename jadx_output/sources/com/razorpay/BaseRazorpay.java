package com.razorpay;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.ActivityCompat;
import com.amplitude.android.TrackingOptions;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.ServerProtocol;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.keep.screen.calendar.utils.Constants;
import com.razorpay.AnalyticsProperty;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseRazorpay implements OnAppSelectedListener, PaymentCompleteInternalCallback, RzpInternalCallback {
    private static int $S$S$s$__Ss = 0;
    public static final int INVALID_OPTIONS = 3;
    public static final int NETWORK_ERROR = 2;
    public static final int PARSING_ERROR = 4;
    public static final int PAYMENT_CANCELED = 0;
    public static final int PAYMENT_ERROR = 5;
    static final String RAZORPAY_ORDER_ID = "razorpay_order_id";
    static final String RAZORPAY_PAYMENT_ID = "razorpay_payment_id";
    static final String RAZORPAY_SIGNATURE = "razorpay_signature";
    public static final int TLS_ERROR = 6;
    public static UpiTurboUtilities UpiTurbo = UpiTurboUtilities.INSTANCE;
    private String $S$_ss_;
    private ArrayList<String> $SSs_$S_$$s;
    private String $sS$$__s$S$;
    private Application.ActivityLifecycleCallbacks $s_$$s$_ss;
    private HashMap<String, ApplicationDetails> $ss_$S_;
    private String $sss$$s;
    private boolean SSsS$sss__s;
    private HashSet<String> S_$S$$;
    private String S_SS$s;
    private LinkedHashSet<String> S__s_$$;
    private boolean Ss$$S__;
    private boolean _$S$$S;
    private ArrayList<String> _$_$_;
    private HashSet<String> _S$$SS;
    private JSONObject _SS$$$$s;
    private RazorpayWebViewClient _Ssss$;
    private String _SsssS;
    private String __$$__s_$;
    private JSONObject __S_s;
    private HashMap<String, ApplicationDetails> _sS$S_$$sss;
    protected Activity activity;
    public AmazonPayWallet amazonPayWallet;
    protected String apiKey;
    protected RzpPlugin extActiveRzpPluginInstance;
    protected boolean isExtRzpPluginActive;
    protected boolean mShouldDisplayLogo;
    protected ViewGroup magicView;
    public OtpAssist otpAssist;
    protected PaymentResultListener paymentResultListener;
    protected PaymentResultWithDataListener paymentResultWithDataListener;
    private RazorpayWebChromeClient s$SSss;
    private boolean s$S_SsS$SS;
    private HashSet<String> s$s___s$$_S;
    private JSONObject sS$$$ss_;
    private ArrayList<String> s_SSsSss;
    private ArrayList<String> ssS__$SS_S$;
    private HashSet<String> ss__Ss$S$;
    public UpiTurbo upiTurbo;
    protected boolean useBottomSheet;
    protected WebView webview;

    boolean isMagicPresent() {
        return false;
    }

    void onProgressChanged(WebView webView, int i) {
    }

    abstract void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    abstract void setPaymentIdInAddon(String str);

    protected abstract void setUpAddon(JSONObject jSONObject);

    abstract void trackBackPress();

    static /* synthetic */ int access$008() {
        int i = $S$S$s$__Ss;
        $S$S$s$__Ss = i + 1;
        return i;
    }

    public BaseRazorpay(Activity activity, String str) {
        this.useBottomSheet = true;
        this.isExtRzpPluginActive = false;
        this.$sS$$__s$S$ = "https://api.razorpay.com/v1/";
        this.__S_s = new JSONObject();
        this._SS$$$$s = new JSONObject();
        this.sS$$$ss_ = new JSONObject();
        this.s$S_SsS$SS = false;
        this.SSsS$sss__s = false;
        this.mShouldDisplayLogo = true;
        this.Ss$$S__ = false;
        this.$SSs_$S_$$s = new ArrayList<>();
        this.S_$S$$ = new HashSet<>();
        this._S$$SS = new HashSet<>();
        this.s$s___s$$_S = new HashSet<>();
        this.S__s_$$ = new LinkedHashSet<>();
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "BaseRazorpay(Activity,String)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.apiKey = str;
            $sS$$__s$S$(activity);
            GlobalUrlConfig.initiate(null);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "BaseRazorpay(Activity,String)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public BaseRazorpay(Activity activity, String str, JSONObject jSONObject) {
        this.useBottomSheet = true;
        this.isExtRzpPluginActive = false;
        this.$sS$$__s$S$ = "https://api.razorpay.com/v1/";
        this.__S_s = new JSONObject();
        this._SS$$$$s = new JSONObject();
        this.sS$$$ss_ = new JSONObject();
        this.s$S_SsS$SS = false;
        this.SSsS$sss__s = false;
        this.mShouldDisplayLogo = true;
        this.Ss$$S__ = false;
        this.$SSs_$S_$$s = new ArrayList<>();
        this.S_$S$$ = new HashSet<>();
        this._S$$SS = new HashSet<>();
        this.s$s___s$$_S = new HashSet<>();
        this.S__s_$$ = new LinkedHashSet<>();
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "BaseRazorpay(Activity,String,JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            GlobalUrlConfig.initiate(jSONObject);
            this.$sS$$__s$S$ = GlobalUrlConfig.instance().getL$1_I$l$() + "/v1/";
            this.mShouldDisplayLogo = false;
            this.apiKey = str.split("rzp_")[1];
            $sS$$__s$S$(activity);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "BaseRazorpay(Activity,String,JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public BaseRazorpay(Activity activity) {
        this.useBottomSheet = true;
        this.isExtRzpPluginActive = false;
        this.$sS$$__s$S$ = "https://api.razorpay.com/v1/";
        this.__S_s = new JSONObject();
        this._SS$$$$s = new JSONObject();
        this.sS$$$ss_ = new JSONObject();
        this.s$S_SsS$SS = false;
        this.SSsS$sss__s = false;
        this.mShouldDisplayLogo = true;
        this.Ss$$S__ = false;
        this.$SSs_$S_$$s = new ArrayList<>();
        this.S_$S$$ = new HashSet<>();
        this._S$$SS = new HashSet<>();
        this.s$s___s$$_S = new HashSet<>();
        this.S__s_$$ = new LinkedHashSet<>();
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "BaseRazorpay(Activity)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            $sS$$__s$S$(activity);
            GlobalUrlConfig.initiate(null);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "BaseRazorpay(Activity)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void $sS$$__s$S$(Activity activity) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "initRazorpay", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            String str = this.apiKey;
            if (str != null) {
                BaseUtils.apiKey = str;
            }
            String str2 = this.apiKey;
            if (str2 == null || str2.isEmpty()) {
                this.apiKey = BaseUtils.getKeyId(activity);
            }
            String str3 = this.apiKey;
            if (str3 == null || str3.isEmpty()) {
                throw new RuntimeException("Please set your Razorpay API key in AndroidManifest.xml");
            }
            AnalyticsUtil.libraryType = "CUSTOM";
            C$sS$$__s$S$.getAdvertisingIdFromUtil(activity);
            SharedPreferenceUtil.handleSdkUpdate(activity, C$sS$$__s$S$.SDK_VERSION);
            C$sS$$__s$S$.getInstance().init(activity);
            BaseUtils.checkForLatestVersion(activity, C$sS$$__s$S$.SDK_VERSION_CODE);
            BaseUtils.setup();
            CacheManager.init(activity);
            this.activity = activity;
            activity.getWindow().setSoftInputMode(16);
            if (activity instanceof PaymentResultListener) {
                this.paymentResultListener = (PaymentResultListener) activity;
            } else if (activity instanceof PaymentResultWithDataListener) {
                this.paymentResultWithDataListener = (PaymentResultWithDataListener) activity;
            }
            C$sS$$__s$S$.IS_MAGIC_ENABLED = isMagicPresent();
            C$sS$$__s$S$.fetchConfig(activity, this.apiKey);
            AnalyticsUtil.setup(activity, this.apiKey, C$sS$$__s$S$.SDK_TYPE, C$sS$$__s$S$.SDK_VERSION_CODE, C$sS$$__s$S$.SDK_VERSION);
            MonitoringUtil.startCheckout(activity, "custom_ui", this.apiKey);
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_INIT_END);
            AnalyticsUtil.postData();
            s$SSss();
            $sS$$__s$S$();
            $sS$$__s$S$(activity, this.apiKey);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "initRazorpay", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private void $sS$$__s$S$(Activity activity, String str) {
        String value;
        HashMap<String, String> allPluginsFromManifest = BaseUtils.getAllPluginsFromManifest(activity);
        if (allPluginsFromManifest == null || allPluginsFromManifest.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry : allPluginsFromManifest.entrySet()) {
            String key = entry.getKey();
            value = entry.getValue();
            key.hashCode();
            switch (key) {
                case "com.razorpay.plugin.edge":
                    OtpAssist otpAssist = new OtpAssist();
                    this.otpAssist = otpAssist;
                    otpAssist.initRazorpayOtpAssist(activity, str);
                    break;
                case "com.razorpay.plugin.upi_turbo":
                    this.upiTurbo = new UpiTurbo(activity);
                    break;
                case "com.razorpay.plugin.amazonpay_wallet":
                    AmazonPayWallet amazonPayWallet = new AmazonPayWallet();
                    this.amazonPayWallet = amazonPayWallet;
                    amazonPayWallet.initiate(activity, value, str);
                    break;
            }
        }
    }

    private void $sS$$__s$S$() {
        this.$SSs_$S_$$s = BaseUtils.getAppsWithPackageNames(this.activity, C$sS$$__s$S$.getInstance().getWalletsWithAppToAppRedirection());
        AnalyticsUtil.addProperty("wallets_with_app_to_app_redirection", new AnalyticsProperty(this.$SSs_$S_$$s.toString(), AnalyticsProperty.Scope.PAYMENT));
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_WALLETS_WITH_APP_TO_APP_REDIRECTION_IDENTIFIED);
    }

    private void s$SSss() {
        C$sS$$__s$S$ c$sS$$__s$S$ = C$sS$$__s$S$.getInstance();
        this.ss__Ss$S$ = BaseUtils.getSetOfPackageNamesSupportingUpi(this.activity);
        boolean zIsUpiWhiteListingEnabled = c$sS$$__s$S$.isUpiWhiteListingEnabled();
        this._$S$$S = zIsUpiWhiteListingEnabled;
        if (zIsUpiWhiteListingEnabled) {
            HashSet<String> upiWhiteListedApps = c$sS$$__s$S$.getUpiWhiteListedApps();
            this.s$s___s$$_S = upiWhiteListedApps;
            if (upiWhiteListedApps == null) {
                this.s$s___s$$_S = new HashSet<>();
            }
        } else {
            HashSet<String> upiBlackListedApps = c$sS$$__s$S$.getUpiBlackListedApps();
            this.S_$S$$ = upiBlackListedApps;
            if (upiBlackListedApps == null) {
                this.S_$S$$ = new HashSet<>();
            }
        }
        HashSet<String> upiAutoPaySupportedApps = c$sS$$__s$S$.getUpiAutoPaySupportedApps();
        this._S$$SS = upiAutoPaySupportedApps;
        if (upiAutoPaySupportedApps == null || upiAutoPaySupportedApps.isEmpty()) {
            this._S$$SS = new HashSet<>();
        }
        LinkedHashSet<String> upiAppsPreferredOrder = c$sS$$__s$S$.getUpiAppsPreferredOrder();
        this.S__s_$$ = upiAppsPreferredOrder;
        if (upiAppsPreferredOrder == null) {
            this.S__s_$$ = new LinkedHashSet<>();
        }
        _Ssss$();
        __$$__s_$();
    }

    private void _Ssss$() {
        if (this._sS$S_$$sss == null || this.$ss_$S_ == null) {
            this._sS$S_$$sss = new HashMap<>();
            this.$ss_$S_ = new HashMap<>();
            for (String str : this._S$$SS) {
                if (this.ss__Ss$S$.contains(str) && s$SSss(str)) {
                    try {
                        this.$ss_$S_.put(str, _Ssss$(this.activity, str));
                    } catch (Exception e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                    }
                }
            }
            if (this._$S$$S) {
                for (String str2 : this.s$s___s$$_S) {
                    if (this.ss__Ss$S$.contains(str2)) {
                        try {
                            this._sS$S_$$sss.put(str2, _Ssss$(this.activity, str2));
                        } catch (Exception e2) {
                            AnalyticsUtil.reportError("BaseRazorpay", "S1", e2.getMessage());
                        }
                    }
                }
                return;
            }
            for (String str3 : this.ss__Ss$S$) {
                if (!this.S_$S$$.contains(str3)) {
                    try {
                        this._sS$S_$$sss.put(str3, _Ssss$(this.activity, str3));
                    } catch (Exception e3) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e3.getMessage());
                    }
                }
            }
        }
    }

    private HashMap<String, ApplicationDetails> __S_s() {
        HashMap<String, ApplicationDetails> map = new HashMap<>();
        for (ApplicationDetails applicationDetails : $sS$$__s$S$((Context) this.activity)) {
            if (this.s$s___s$$_S.contains(applicationDetails.getPackageName())) {
                map.put(applicationDetails.getPackageName(), applicationDetails);
            }
        }
        return map;
    }

    private void __$$__s_$() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(__S_s().keySet());
        this.s_SSsSss = new ArrayList<>();
        for (String str : this.S__s_$$) {
            if (this._sS$S_$$sss.containsKey(str)) {
                arrayList.remove(str);
                this.s_SSsSss.add(str);
            }
        }
        this.s_SSsSss.addAll(arrayList);
    }

    private void $sS$$__s$S$(JSONArray jSONArray, JSONArray jSONArray2) {
        ArrayList<String> arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    arrayList.add(jSONArray.getString(i));
                } catch (Exception e) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                }
            }
        }
        if (jSONArray2 != null) {
            int length2 = jSONArray2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                try {
                    arrayList2.add(jSONArray2.getString(i2));
                } catch (Exception e2) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S1", e2.getMessage());
                }
            }
        }
        __$$__s_$();
        this._$_$_ = new ArrayList<>();
        this.ssS__$SS_S$ = new ArrayList<>();
        for (String str : arrayList) {
            if (this._sS$S_$$sss.containsKey(str)) {
                this._$_$_.add(str);
                this.s_SSsSss.remove(str);
            }
        }
        for (String str2 : arrayList2) {
            if (this._sS$S_$$sss.containsKey(str2)) {
                this.ssS__$SS_S$.add(str2);
                this.s_SSsSss.remove(str2);
            }
        }
    }

    public void setWebView(WebView webView) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "setWebView", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.webview = webView;
            BaseUtils.setWebViewSettings(this.activity, webView, true);
            webView.clearFormData();
            webView.addJavascriptInterface(this, "CheckoutBridge");
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "setWebView", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private boolean $S$_ss_() {
        try {
            if (this.__S_s.has("disable_hardware_acceleration")) {
                if (!this.__S_s.getBoolean("disable_hardware_acceleration")) {
                    $sS$$__s$S$(CommonCssConstants.ENABLED, "merchant_flag_not_set");
                    return false;
                }
                String str = Build.MANUFACTURER;
                PerformanceUtil.getPerformanceClass(this.activity);
                if (!PerformanceUtil.isLowEndDevice(this.activity)) {
                    $sS$$__s$S$(CommonCssConstants.ENABLED, "high_end_device");
                    return false;
                }
                if (str != null && str.equalsIgnoreCase("OPPO")) {
                    $sS$$__s$S$("disabled", "oppo_low_end_device");
                    Logger.m2690d("Hardware acceleration disabled: OPPO low-end device detected");
                    return true;
                }
                $sS$$__s$S$(CommonCssConstants.ENABLED, "not_oppo_manufacturer");
                return false;
            }
            $sS$$__s$S$(CommonCssConstants.ENABLED, "merchant_flag_not_set");
            return false;
        } catch (JSONException e) {
            Logger.m2692e("HW Accel: ERROR - Invalid flag value (expected boolean): " + e.getMessage());
            return false;
        } catch (Exception e2) {
            Logger.m2692e("HW Accel: ERROR - " + e2.getMessage());
            return false;
        }
    }

    private void $sS$$__s$S$(String str, String str2) {
        try {
            String str3 = Build.MANUFACTURER;
            int performanceClass = PerformanceUtil.getPerformanceClass(this.activity);
            boolean zIsLowEndDevice = PerformanceUtil.isLowEndDevice(this.activity);
            boolean z = this.__S_s.has("disable_hardware_acceleration") && this.__S_s.getBoolean("disable_hardware_acceleration");
            HashMap map = new HashMap();
            map.put("manufacturer", str3);
            map.put("performance_class", Integer.valueOf(performanceClass));
            map.put("is_low_end_device", Boolean.valueOf(zIsLowEndDevice));
            map.put("merchant_flag_enabled", Boolean.valueOf(z));
            map.put("hw_acceleration_status", str);
            map.put("reason", str2);
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOMUI_HARDWARE_ACCELERATION_CHECK, AnalyticsUtil.getJSONResponse(map));
        } catch (Exception e) {
            Logger.m2692e("Error tracking hardware acceleration: " + e.getMessage());
        }
    }

    public void setWebviewClient(RazorpayWebViewClient razorpayWebViewClient) {
        this._Ssss$ = razorpayWebViewClient;
    }

    public void setWebChromeClient(RazorpayWebChromeClient razorpayWebChromeClient) {
        this.s$SSss = razorpayWebChromeClient;
    }

    public final void setMagicView(ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new RuntimeException("Magic View cannot be null");
        }
        this.magicView = viewGroup;
        this.useBottomSheet = false;
    }

    void checkAndRestorePreviousSessionIfRetry(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString(ConstantEventAttributes.AMOUNT);
            if (string == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (RazorpayUtils.wasLastPaymentSuccessful(this.activity)) {
                RazorpayUtils.setLastPaymentSuccessful(this.activity, false);
            } else {
                String lastPaymentAmount = RazorpayUtils.getLastPaymentAmount(this.activity);
                long lastPaymentTimestamp = RazorpayUtils.getLastPaymentTimestamp(this.activity);
                if (lastPaymentAmount != null && lastPaymentTimestamp != 0 && string.equalsIgnoreCase(lastPaymentAmount) && jCurrentTimeMillis - lastPaymentTimestamp < AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED) {
                    AnalyticsUtil.setLocalOrderId(RazorpayUtils.getLastPaymentLocalOrderId(this.activity));
                }
            }
            RazorpayUtils.setLastPaymentAmount(this.activity, string);
            RazorpayUtils.setLastPaymentTimestamp(this.activity, jCurrentTimeMillis);
            RazorpayUtils.setLastPaymentLocalOrderId(this.activity, AnalyticsUtil.getLocalOrderId());
        } catch (Exception e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
        }
    }

    public static void getAppsWhichSupportUpi(final Context context, final RzpUpiSupportedAppsCallback rzpUpiSupportedAppsCallback) {
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_GET_APPS_SUPPORTING_UPI);
        final HashMap<String, String> allPluginsFromManifest = BaseUtils.getAllPluginsFromManifest(context);
        if (allPluginsFromManifest != null && allPluginsFromManifest.size() != 0) {
            Iterator<String> it = allPluginsFromManifest.values().iterator();
            while (it.hasNext()) {
                try {
                    ((RzpPlugin) RzpPlugin.class.getClassLoader().loadClass(it.next()).newInstance()).isRegistered(context, new RzpPluginRegisterCallback() { // from class: com.razorpay.BaseRazorpay.1
                        @Override // com.razorpay.RzpPluginRegisterCallback
                        public void onResponse(boolean z) {
                            BaseRazorpay.access$008();
                            if (BaseRazorpay.$S$S$s$__Ss == allPluginsFromManifest.size()) {
                                int unused = BaseRazorpay.$S$S$s$__Ss = 0;
                                rzpUpiSupportedAppsCallback.onReceiveUpiSupportedApps(BaseRazorpay.$sS$$__s$S$(context));
                            }
                        }
                    });
                } catch (Exception e) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getLocalizedMessage());
                    rzpUpiSupportedAppsCallback.onReceiveUpiSupportedApps($sS$$__s$S$(context));
                }
            }
            return;
        }
        rzpUpiSupportedAppsCallback.onReceiveUpiSupportedApps($sS$$__s$S$(context));
    }

    public static void getAppsWhichSupportAutoPayIntent(Context context, RzpUpiSupportedAppsCallback rzpUpiSupportedAppsCallback) {
        rzpUpiSupportedAppsCallback.onReceiveUpiSupportedApps(s$SSss(context, "upi://mandate"));
    }

    @Deprecated
    public static List<ApplicationDetails> getAppsWhichSupportUpi(Context context) {
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_GET_APPS_SUPPORTING_UPI);
        return $sS$$__s$S$(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<ApplicationDetails> $sS$$__s$S$(Context context) {
        HashSet<String> hashSetS$SSss = s$SSss(context);
        List<ResolveInfo> listOfAppsWhichHandleDeepLink = BaseUtils.getListOfAppsWhichHandleDeepLink(context, "upi://pay");
        ArrayList arrayList = new ArrayList();
        if (listOfAppsWhichHandleDeepLink != null && listOfAppsWhichHandleDeepLink.size() > 0) {
            for (ResolveInfo resolveInfo : listOfAppsWhichHandleDeepLink) {
                if (hashSetS$SSss.contains(resolveInfo.activityInfo.packageName)) {
                    try {
                        arrayList.add(_Ssss$(context, resolveInfo.activityInfo.packageName));
                    } catch (Exception e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
                    }
                }
            }
        }
        return arrayList;
    }

    private static List<String> $sS$$__s$S$(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> listOfAppsWhichHandleDeepLink = BaseUtils.getListOfAppsWhichHandleDeepLink(context, str);
        if (listOfAppsWhichHandleDeepLink != null && !listOfAppsWhichHandleDeepLink.isEmpty()) {
            Iterator<ResolveInfo> it = listOfAppsWhichHandleDeepLink.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().activityInfo.packageName);
            }
        }
        return arrayList;
    }

    private static List<ApplicationDetails> s$SSss(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> listOfAppsWhichHandleDeepLink = BaseUtils.getListOfAppsWhichHandleDeepLink(context, str);
        if (listOfAppsWhichHandleDeepLink != null && !listOfAppsWhichHandleDeepLink.isEmpty()) {
            Iterator<ResolveInfo> it = listOfAppsWhichHandleDeepLink.iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(_Ssss$(context, it.next().activityInfo.packageName));
                } catch (Exception e) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
                }
            }
        }
        return arrayList;
    }

    public static boolean isCredAppInstalled(Context context) {
        for (ApplicationDetails applicationDetails : s$SSss(context, "credpay://checkout")) {
            if (applicationDetails.getAppName().equalsIgnoreCase("cred") || applicationDetails.getAppName().equalsIgnoreCase("cred qa")) {
                return true;
            }
        }
        return false;
    }

    private static HashSet<String> s$SSss(Context context) {
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_START);
        HashMap map = new HashMap();
        HashSet<String> hashSet = new HashSet<>();
        C$sS$$__s$S$.ensureInitialized(context);
        boolean zIsUpiWhiteListingEnabled = C$sS$$__s$S$.getInstance().isUpiWhiteListingEnabled();
        HashSet<String> setOfPackageNamesSupportingUpi = BaseUtils.getSetOfPackageNamesSupportingUpi(context);
        map.put("allUpiDeviceApps", setOfPackageNamesSupportingUpi);
        if (zIsUpiWhiteListingEnabled) {
            HashSet<String> upiWhiteListedApps = C$sS$$__s$S$.getInstance().getUpiWhiteListedApps();
            if (upiWhiteListedApps == null || upiWhiteListedApps.isEmpty()) {
                return new HashSet<>();
            }
            for (String str : setOfPackageNamesSupportingUpi) {
                if (upiWhiteListedApps.contains(str)) {
                    hashSet.add(str);
                }
            }
        } else {
            HashSet<String> upiBlackListedApps = C$sS$$__s$S$.getInstance().getUpiBlackListedApps();
            if (upiBlackListedApps == null || upiBlackListedApps.isEmpty()) {
                return setOfPackageNamesSupportingUpi != null ? setOfPackageNamesSupportingUpi : new HashSet<>();
            }
            for (String str2 : setOfPackageNamesSupportingUpi) {
                if (!upiBlackListedApps.contains(str2)) {
                    hashSet.add(str2);
                }
            }
        }
        map.put("filteredApps", hashSet);
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS, AnalyticsUtil.getJSONResponse(map));
        return hashSet;
    }

    public static boolean canShowUpiIntentMethod(Context context) {
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_SHOULD_SHOW_UPI_INTENT_METHOD);
        HashSet<String> hashSetS$SSss = s$SSss(context);
        return (hashSetS$SSss == null || hashSetS$SSss.isEmpty()) ? false : true;
    }

    private static ApplicationDetails _Ssss$(Context context, String str) throws Exception {
        return new ApplicationDetails(BaseUtils.getAppNameOfPackageName(str, context), BaseUtils.getBase64FromOtherAppsResource(context, str), str, C$sS$$__s$S$.getInstance().getAppLogoUrl(str));
    }

    public void submit(JSONObject jSONObject, PaymentResultListener paymentResultListener) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "submit(JSONObject,PaymentResultListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.paymentResultListener = paymentResultListener;
            submit(jSONObject);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "submit(JSONObject,PaymentResultListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void submit(JSONObject jSONObject, PaymentResultWithDataListener paymentResultWithDataListener) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "submit(JSONObject,PaymentResultWithDataListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.paymentResultWithDataListener = paymentResultWithDataListener;
            submit(jSONObject);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "submit(JSONObject,PaymentResultWithDataListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void submit(HashMap<String, Object> map, PaymentResultWithDataListener paymentResultWithDataListener) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "submit(HashMap,PaymentResultWithDataListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.paymentResultWithDataListener = paymentResultWithDataListener;
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "submit(HashMap,PaymentResultWithDataListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void openCheckout(JSONObject jSONObject, PaymentResultListener paymentResultListener) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "openCheckout(JSONObject,PaymentResultListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.paymentResultListener = paymentResultListener;
            openCheckout(jSONObject);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "openCheckout(JSONObject,PaymentResultListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void openCheckout(JSONObject jSONObject, PaymentResultWithDataListener paymentResultWithDataListener) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "openCheckout(JSONObject,PaymentResultWithDataListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.paymentResultWithDataListener = paymentResultWithDataListener;
            openCheckout(jSONObject);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "openCheckout(JSONObject,PaymentResultWithDataListener)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    void setup(JSONObject jSONObject) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "setup", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (this.webview == null) {
                throw new Exception("WebView Inaccessible");
            }
            if (this.s$SSss == null) {
                this.s$SSss = new RazorpayWebChromeClient(this);
            }
            if (this._Ssss$ == null) {
                this._Ssss$ = new RazorpayWebViewClient(this);
            }
            this.webview.setWebViewClient(this._Ssss$);
            this.webview.setWebChromeClient(this.s$SSss);
            this._SsssS = null;
            this.SSsS$sss__s = true;
            checkAndRestorePreviousSessionIfRetry(jSONObject);
            setUpAddon(jSONObject);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "setup", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private void $sS$$__s$S$(JSONObject jSONObject) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "handlePayload", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.$sss$$s = null;
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PAYLOAD_PASSED, new JSONObject(jSONObject.toString()));
            if (jSONObject.has(FirebaseAnalytics.Param.METHOD)) {
                MonitoringUtil.setPaymentMethod(jSONObject.optString(FirebaseAnalytics.Param.METHOD));
            }
            if (jSONObject.has(FirebaseAnalytics.Param.METHOD) && jSONObject.getString(FirebaseAnalytics.Param.METHOD).equalsIgnoreCase("upi") && jSONObject.has("_[flow]") && jSONObject.getString("_[flow]").equalsIgnoreCase("intent")) {
                s$SSss();
                if (jSONObject.has("upi_app_package_name")) {
                    this.$sss$$s = jSONObject.getString("upi_app_package_name");
                    AnalyticsUtil.addProperty("upi_app_package_name", new AnalyticsProperty(this.$sss$$s, AnalyticsProperty.Scope.PAYMENT));
                    AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_APP_PASSED);
                } else if (jSONObject.has("preferred_apps_order") || jSONObject.has("other_apps_order")) {
                    AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_INTENT_APPS_PREFERENCE_PASSED);
                    JSONArray jSONArray = new JSONArray();
                    JSONArray jSONArray2 = new JSONArray();
                    if (jSONObject.has("preferred_apps_order")) {
                        jSONArray = jSONObject.getJSONArray("preferred_apps_order");
                        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_INTENT_APPS_PREFERRED_ORDER_PASSED);
                    }
                    if (jSONObject.has("other_apps_order")) {
                        jSONArray2 = jSONObject.getJSONArray("other_apps_order");
                        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_INTENT_APPS_OTHER_ORDER_PASSED);
                    }
                    $sS$$__s$S$(jSONArray, jSONArray2);
                }
            }
            if (jSONObject.has("display_logo")) {
                this.mShouldDisplayLogo = jSONObject.getBoolean("display_logo");
            }
            boolean z = false;
            this.s$S_SsS$SS = false;
            if (jSONObject.has(FirebaseAnalytics.Param.METHOD) && jSONObject.getString(FirebaseAnalytics.Param.METHOD).equalsIgnoreCase("wallet")) {
                boolean zHas = jSONObject.has("wallet");
                if (zHas && jSONObject.getString("wallet").equalsIgnoreCase("touchngo")) {
                    z = true;
                }
                this.s$S_SsS$SS = z;
                if (zHas) {
                    AnalyticsUtil.addProperty("wallet", new AnalyticsProperty(this.s$S_SsS$SS, AnalyticsProperty.Scope.PAYMENT));
                    AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_WALLET_SELECTED);
                }
            }
            BaseUtils.getInstance().setDeeplinkEnabled(this.activity, this.s$S_SsS$SS);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "handlePayload", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    protected void openCheckout(JSONObject jSONObject) throws Exception {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "openCheckout(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (!BaseUtils.isDeviceHaveCorrectTlsVersion()) {
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_TLS_ERROR);
                onError(6, "TLSv1  is not supported for security reasons");
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "openCheckout(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            $sS$$__s$S$(jSONObject);
            AnalyticsUtil.addFilteredPropertiesFromPayload(jSONObject);
            MonitoringUtil.setCheckoutStage("payment_submit");
            MonitoringUtil.persistActiveCheckout(this.activity);
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_SUBMIT_START);
            String str = "<input type='hidden' name='key_id' value='" + this.apiKey + "'>";
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (!next.equals("upi_app_package_name") && !next.equals("display_logo") && !next.equals("preferred_apps_order") && !next.equals("other_apps_order")) {
                    if (obj instanceof JSONObject) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        Iterator<String> itKeys2 = jSONObject2.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            str = str + String.format("<input type='hidden' name='%s' value='%s'>", RazorpayUtils.sanitize(String.format("%s[%s]", next, next2)), RazorpayUtils.sanitize(jSONObject2.getString(next2)));
                        }
                    } else {
                        str = str + String.format("<input type='hidden' name='%s' value='%s'>", next, RazorpayUtils.sanitize(jSONObject.getString(next)));
                    }
                }
            }
            String strReplace = "<html><head><title>Processing, Please Wait...</title><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><meta http-equiv=\"pragma\" content=\"no-cache\"><meta http-equiv=\"cache-control\" content=\"no-cache\"><style><style> html, body { width: 100%; } #content { width: 88%; max-width: 520px; text-align: center; position: absolute; transform: translate(-50%, -50%); top: 50%; left: 50%; } #title { color: #528ff0; font-size: 22px; } #ldr { width: 100%; height: 1px; position: relative; background: #e1e1e1; } #lding { height: 3px; top: -1px; background: #528ff0; position: absolute; animation: spin 20s cubic-bezier(0,0.1,0,1) forwards; animation-delay: 10; } @-webkit-keyframes spin { 0% { width: 0; } 100% { width: 90%; } } @keyframes spin { 0% { width: 0; } 100% { width: 90%; } } #desc { font-size: 16px; color: #8a8a8a; } #content > div { margin-bottom: 20px; } form { display: none; } .hide { display: none; }</style></head><body onload=\"document.forms[0].submit()\"><div id=\"content\"> <div id=\"title\">Processing Payment</div> <div id=\"ldr\"> <div id=\"lding\"></div> </div> <div id=\"desc\">Please wait while we fetch your transaction details and process your payment</div> <img id=\"rzplogo\" style=\"width:160px;margin-top:80px\" src=\"data:image/png;base64,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\"/>{{form}}</div></body><script></script></html>".replace("{{form}}", "<form method='post' action='" + this.$sS$$__s$S$ + "checkout/embedded'>" + _Ssss$(str) + "</form>");
            if (!this.mShouldDisplayLogo) {
                strReplace = strReplace.replace("<script></script>", "<script>document.getElementById('rzplogo').className = 'hide';</script>");
            }
            this.webview.loadDataWithBaseURL("https://api.razorpay.com", strReplace, "text/html", "UTF-8", null);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "openCheckout(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private void _SS$$$$s() {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "payWithGpayFeature", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            HashMap map = new HashMap();
            map.put("content-type", "application/json");
            this.webview.setVisibility(8);
            try {
                this.__S_s.put("key_id", this.apiKey);
                Owl.post(this.$sS$$__s$S$ + "payments/create/ajax", this.__S_s.toString(), map, new Callback() { // from class: com.razorpay.BaseRazorpay.12
                    @Override // com.razorpay.Callback
                    public void run(ResponseObject responseObject) {
                        try {
                            JSONObject jSONObject = new JSONObject(responseObject.getResponseResult());
                            JSONObject jSONObject2 = new JSONObject(responseObject.getResponseResult());
                            if (responseObject.getResponseCode() >= 400) {
                                BaseRazorpay.this.onError(5, "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An error occurred while fetching payment details\"}}");
                                return;
                            }
                            if (jSONObject2.has("error")) {
                                BaseRazorpay.this.onError(5, "{\"error\":{\"code\":3, \"description\": " + responseObject.toString() + "}}");
                            } else if (!jSONObject.has("type") || !jSONObject.getString("type").equalsIgnoreCase("application")) {
                                BaseRazorpay.this.onError(5, "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An error occurred while fetching payment details\"}}");
                            } else {
                                SharedPreferenceUtil.setValue(BaseRazorpay.this.activity, BaseRazorpay.RAZORPAY_PAYMENT_ID, jSONObject.getString("payment_id"));
                                BaseRazorpay.this.callNativeIntent(jSONObject.toString());
                            }
                        } catch (Exception e) {
                            AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
                        }
                    }
                });
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "payWithGpayFeature", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            } catch (JSONException e) {
                AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "payWithGpayFeature", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            }
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
        }
    }

    private void sS$$$ss_() {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "payWithCred", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            HashMap map = new HashMap();
            map.put("content-type", "application/json");
            this.webview.setVisibility(8);
            try {
                this.__S_s.put("key_id", this.apiKey);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "app");
                jSONObject.put("os", "android");
                jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, "mobile");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("agent", jSONObject);
                this.__S_s.put("_", jSONObject2);
                Owl.post(this.$sS$$__s$S$ + "payments/create/ajax", this.__S_s.toString(), map, new Callback() { // from class: com.razorpay.BaseRazorpay.15
                    @Override // com.razorpay.Callback
                    public void run(ResponseObject responseObject) {
                        try {
                            JSONObject jSONObject3 = new JSONObject(responseObject.getResponseResult());
                            JSONObject jSONObject4 = new JSONObject(responseObject.getResponseResult());
                            if (responseObject.getResponseCode() >= 400) {
                                BaseRazorpay.this.onError(5, "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An error occured while fetching payment details\"}}");
                                return;
                            }
                            if (jSONObject4.has("error")) {
                                BaseRazorpay.this.onError(5, "{\"error\":{\"code\":3, \"description\": " + responseObject.toString() + "}}");
                                return;
                            }
                            if (jSONObject3.has("request")) {
                                BaseRazorpay.this.$S$_ss_ = jSONObject3.getJSONObject("request").getString("url");
                            }
                            if (jSONObject3.has("data")) {
                                SharedPreferenceUtil.setValue(BaseRazorpay.this.activity, BaseRazorpay.RAZORPAY_PAYMENT_ID, jSONObject3.getString("payment_id"));
                                BaseRazorpay.this.$sS$$__s$S$(jSONObject3.getJSONObject("data").getString("intent_url"));
                            }
                        } catch (Exception e) {
                            AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
                        }
                    }
                });
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "payWithCred", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            } catch (JSONException e) {
                AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
            }
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void $sS$$__s$S$(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.activity.startActivityForResult(intent, 20);
    }

    protected void submit(JSONObject jSONObject) throws Exception {
        AmazonPayWallet amazonPayWallet;
        try {
            BaseConfig.paymentInProgress = true;
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "submit(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            MonitoringUtil.setCheckoutStage("payment_submit");
            MonitoringUtil.persistActiveCheckout(this.activity);
            if (!BaseUtils.isDeviceHaveCorrectTlsVersion()) {
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_TLS_ERROR);
                MonitoringUtil.trackCriticalDependencyFailure(this.activity, "tls", "check", AnalyticsEvent.CUSTOM_UI_TLS_ERROR.getEventName(), "TLSv1  is not supported for security reasons", true, false, "not_available");
                onError(6, "TLSv1  is not supported for security reasons");
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "submit(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            this.__S_s = jSONObject;
            $sS$$__s$S$(jSONObject);
            if ($S$_ss_()) {
                this.webview.setLayerType(1, null);
            }
            AnalyticsUtil.addFilteredPropertiesFromPayload(jSONObject);
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_SUBMIT_START);
            if (jSONObject.has("provider") && jSONObject.getString("provider").equalsIgnoreCase("google_pay")) {
                _SS$$$$s();
                return;
            }
            if (jSONObject.has("wallet") && jSONObject.getString("wallet").equalsIgnoreCase("amazonpay") && (amazonPayWallet = this.amazonPayWallet) != null) {
                jSONObject.put("payment_meta_data", amazonPayWallet.getPaymentMetadata(this.activity));
            }
            if (jSONObject.has(FirebaseAnalytics.Param.METHOD) && jSONObject.getString(FirebaseAnalytics.Param.METHOD).equalsIgnoreCase("upi") && jSONObject.has("recurring") && jSONObject.getString("recurring").equalsIgnoreCase("preferred")) {
                jSONObject.remove("recurring");
                if (!jSONObject.has("upi_app_package_name") || s$SSss(jSONObject.optString("upi_app_package_name"))) {
                    jSONObject.put("recurring", AppEventsConstants.EVENT_PARAM_VALUE_YES);
                }
            }
            String str = "<input type='hidden' name='key_id' value='" + this.apiKey + "'>";
            if (jSONObject.has("provider") && jSONObject.getString("provider").equalsIgnoreCase("cred")) {
                if (jSONObject.has("app_present") && jSONObject.getBoolean("app_present")) {
                    sS$$$ss_();
                    return;
                }
                try {
                    jSONObject.remove("app_present");
                    jSONObject.put("app_present", 0);
                } catch (JSONException e) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
                }
                str = str + "<input type='hidden' name='_[agent]' value='{\n  \"os\":\"android\",\n  \"platform\":\"app\",\n  \"device\":\"mobile\"\n}'>";
            }
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (next.equalsIgnoreCase(FirebaseAnalytics.Param.METHOD) && C$sS$$__s$S$.getInstance().getIsOtpReadEnabled() && ((Build.VERSION.SDK_INT >= 29 || ActivityCompat.checkSelfPermission(this.activity, "android.permission.RECEIVE_SMS") != 0) && (obj.toString().equalsIgnoreCase("netbanking") || obj.toString().equalsIgnoreCase("card")))) {
                    SmsRetriever.getClient(this.activity).startSmsUserConsent(null);
                    IntentFilter intentFilter = new IntentFilter(SmsRetriever.SMS_RETRIEVED_ACTION);
                    AutoReadOtpHelperCustom autoReadOtpHelperCustom = new AutoReadOtpHelperCustom(this.activity);
                    if (Build.VERSION.SDK_INT < 34 || this.activity.getApplicationInfo().targetSdkVersion < 34) {
                        this.activity.registerReceiver(autoReadOtpHelperCustom, intentFilter);
                    } else {
                        this.activity.registerReceiver(autoReadOtpHelperCustom, intentFilter, 2);
                    }
                    AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_TASK);
                }
                if (!next.equals("upi_app_package_name") && !next.equals("display_logo") && !next.equals("preferred_apps_order") && !next.equals("other_apps_order")) {
                    if (obj instanceof JSONObject) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        Iterator<String> itKeys2 = jSONObject2.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            str = str + String.format("<input type='hidden' name='%s' value='%s'>", RazorpayUtils.sanitize(String.format("%s[%s]", next, next2)), RazorpayUtils.sanitize(jSONObject2.getString(next2)));
                        }
                    } else {
                        str = str + String.format("<input type='hidden' name='%s' value='%s'>", next, RazorpayUtils.sanitize(jSONObject.getString(next)));
                    }
                }
            }
            String strReplace = "<html><head><title>Processing, Please Wait...</title><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><meta http-equiv=\"pragma\" content=\"no-cache\"><meta http-equiv=\"cache-control\" content=\"no-cache\"><style><style> html, body { width: 100%; } #content { width: 88%; max-width: 520px; text-align: center; position: absolute; transform: translate(-50%, -50%); top: 50%; left: 50%; } #title { color: #528ff0; font-size: 22px; } #ldr { width: 100%; height: 1px; position: relative; background: #e1e1e1; } #lding { height: 3px; top: -1px; background: #528ff0; position: absolute; animation: spin 20s cubic-bezier(0,0.1,0,1) forwards; animation-delay: 10; } @-webkit-keyframes spin { 0% { width: 0; } 100% { width: 90%; } } @keyframes spin { 0% { width: 0; } 100% { width: 90%; } } #desc { font-size: 16px; color: #8a8a8a; } #content > div { margin-bottom: 20px; } form { display: none; } .hide { display: none; }</style></head><body onload=\"document.forms[0].submit()\"><div id=\"content\"> <div id=\"title\">Processing Payment</div> <div id=\"ldr\"> <div id=\"lding\"></div> </div> <div id=\"desc\">Please wait while we fetch your transaction details and process your payment</div> <img id=\"rzplogo\" style=\"width:160px;margin-top:80px\" src=\"data:image/png;base64,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\"/>{{form}}</div></body><script></script></html>".replace("{{form}}", "<form method='post' action='" + this.$sS$$__s$S$ + "payments/create/checkout'>" + _Ssss$(str) + "</form>");
            if (!this.mShouldDisplayLogo) {
                strReplace = strReplace.replace("<script></script>", "<script>document.getElementById('rzplogo').className = 'hide';</script>");
            }
            this.webview.loadDataWithBaseURL(GlobalUrlConfig.instance().getL$1_I$l$(), strReplace, "text/html", "UTF-8", null);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "submit(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e2) {
            AnalyticsUtil.reportUncaughtException(e2);
            Lumberjack.saveEventsToPreferences(this.activity.getApplicationContext());
            throw e2;
        }
    }

    private boolean s$SSss(String str) {
        if (str == null) {
            return false;
        }
        Iterator<String> it = $sS$$__s$S$((Context) this.activity, "upi://mandate").iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private String _Ssss$(String str) {
        String str2 = ((((((((str + "<input type='hidden' name='_[checkout_id]' value='" + AnalyticsUtil.getLocalOrderId() + "'>") + "<input type='hidden' name='_[os]' value='android'>") + "<input type='hidden' name='_[package_name]' value='" + this.activity.getPackageName() + "'>") + "<input type='hidden' name='_[platform]' value='mobile_sdk'>") + "<input type='hidden' name='_[cellular_network_type]' value=" + BaseUtils.getCellularNetworkType(this.activity) + ">") + "<input type='hidden' name='_[data_network_type]' value='" + BaseUtils.getDataNetworkType(this.activity).getNetworkTypeName() + "'>") + "<input type='hidden' name='_[locale]' value='" + BaseUtils.getLocale() + "'>") + "<input type='hidden' name='_[library]' value='custom'>") + "<input type='hidden' name='_[library_version]' value='" + C$sS$$__s$S$.SDK_VERSION + "'>";
        return this.$sss$$s != null ? str2 + "<input type='hidden' name='_[app]' value='" + C$sS$$__s$S$.getInstance().getIntentAppName(this.$sss$$s) + "'>" : str2;
    }

    void onPageFinished(WebView webView, String str) {
        Logger.m2690d("onPageFinished called");
        OtpAssist otpAssist = this.otpAssist;
        if (otpAssist != null) {
            otpAssist.onPageFinished();
        }
    }

    void onPageStarted(WebView webView, String str) {
        Logger.m2690d("onPageStarted called");
    }

    public void validateFields(JSONObject jSONObject, ValidationListener validationListener) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "validateFields", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            Map<String, String> mapValidateFields = C$S$_ss_.validateFields(jSONObject);
            if (mapValidateFields == null) {
                validationListener.onValidationSuccess();
            } else {
                validationListener.onValidationError(mapValidateFields);
            }
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "validateFields", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @JavascriptInterface
    public final void callNativeIntent(String str) {
        this.__$$__s_$ = str;
        MonitoringUtil.setCheckoutStage("payment_handover");
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_NATIVE_INTENT_CALLED);
        try {
            if (str.contains("type") && str.contains("application") && str.contains("google_pay")) {
                sS$$$ss_(str);
                return;
            }
            if (this.__S_s.has("upi_app_package_name") && this.__S_s.getString("upi_app_package_name").equals("com.google.android.apps.nbu.paisa.user")) {
                openUpiApp("com.google.android.apps.nbu.paisa.user", this.__$$__s_$);
                return;
            }
            String str2 = this.$sss$$s;
            if (str2 != null && this.ss__Ss$S$.contains(str2)) {
                BaseUtils.startActivityForResult(str, this.$sss$$s, this.activity);
                HashMap map = new HashMap();
                if (str == null) {
                    str = Constants.ATTENDANCE_STATUS_NULL;
                }
                map.put("url", str);
                map.put("custom_chooser", false);
                map.put(InMobiNetworkValues.PACKAGE_NAME, this.$sss$$s);
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_MERCHANT_PASSED_APP_LAUNCHED, AnalyticsUtil.getJSONResponse(map));
                return;
            }
            if (this.s$S_SsS$SS) {
                BaseUtils.startActivityForResult(str, "my.com.tngdigital.ewallet", this.activity);
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_TNG_REDIRECT_TRIGGERED);
            } else {
                __S_s(str);
            }
        } catch (JSONException e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
        }
    }

    private void __S_s(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("url_data", str);
        bundle.putStringArrayList("merchant_preferred_upi_apps_order", this._$_$_);
        bundle.putStringArrayList("merchant_other_upi_apps_order", this.ssS__$SS_S$);
        bundle.putStringArrayList("list_remaining_apps", this.s_SSsSss);
        if (str.contains("upi://pay")) {
            bundle.putParcelableArrayList("upi_app_details_list", new ArrayList<>(__S_s().values()));
        } else if (str.contains("upi://mandate")) {
            bundle.putParcelableArrayList("upi_app_details_list", new ArrayList<>(this.$ss_$S_.values()));
        }
        AppSelectorFragment appSelectorFragment = new AppSelectorFragment();
        appSelectorFragment.setAppSelectListener(this);
        appSelectorFragment.setArguments(bundle);
        this.activity.getFragmentManager().beginTransaction().add(android.R.id.content, appSelectorFragment, "AppSelectorFragment").addToBackStack("AppSelectorFragment").commitAllowingStateLoss();
    }

    @Override // com.razorpay.PaymentCompleteInternalCallback
    @JavascriptInterface
    public final void oncomplete(final String str) {
        this.activity.runOnUiThread(new Runnable() { // from class: com.razorpay.BaseRazorpay.16
            @Override // java.lang.Runnable
            public void run() {
                BaseConfig.paymentInProgress = false;
                SharedPreferenceUtil.setValue(BaseRazorpay.this.activity, BaseRazorpay.RAZORPAY_PAYMENT_ID, null);
                MonitoringUtil.setCheckoutStage("payment_result_receive");
                try {
                    BaseRazorpay.this.s$SSss(new JSONObject(str));
                } catch (Exception e) {
                    BaseRazorpay.this.onError(4, e.getMessage());
                    AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                }
                AnalyticsUtil.postData();
                BaseRazorpay.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s$SSss(JSONObject jSONObject) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "oncomplete(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            int i = 5;
            if (jSONObject.has("error")) {
                AnalyticsUtil.addProperty("payment_status", new AnalyticsProperty("fail", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("payload", new AnalyticsProperty(jSONObject.toString(), AnalyticsProperty.Scope.PAYMENT));
                if (jSONObject.has("sdk_error_code")) {
                    i = jSONObject.getInt("sdk_error_code");
                    jSONObject.remove("sdk_error_code");
                }
                AnalyticsUtil.addProperty("return code", new AnalyticsProperty(i, AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PAYMENT_COMPLETE);
                onError(i, jSONObject.toString());
            } else if (jSONObject.has(RAZORPAY_PAYMENT_ID) || jSONObject.toString().contains(RAZORPAY_PAYMENT_ID)) {
                if (!jSONObject.has(RAZORPAY_PAYMENT_ID)) {
                    jSONObject = RazorpayUtils.getNestedRazorpayPaymentData(jSONObject);
                }
                PaymentData paymentData_Ssss$ = _Ssss$(jSONObject);
                AnalyticsUtil.addProperty("payment_id", new AnalyticsProperty(paymentData_Ssss$.getPaymentId(), AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("payment_status", new AnalyticsProperty("success", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("payload", new AnalyticsProperty(jSONObject.toString(), AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PAYMENT_COMPLETE);
                RazorpayUtils.setLastPaymentSuccessful(this.activity, true);
                onSuccess(paymentData_Ssss$.getPaymentId(), paymentData_Ssss$);
            } else if (jSONObject.length() == 0) {
                AnalyticsUtil.addProperty("payment_status", new AnalyticsProperty("fail", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("payload", new AnalyticsProperty("empty payload", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("return code", new AnalyticsProperty("4", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PAYMENT_COMPLETE);
                onError(5, "You may have canceled the payment or the payment would have timed out");
            } else {
                AnalyticsUtil.addProperty("payment_status", new AnalyticsProperty("fail", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("payload", new AnalyticsProperty(jSONObject.toString(), AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.addProperty("return code", new AnalyticsProperty("4", AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PAYMENT_COMPLETE);
                onError(4, "Post payment parsing error");
            }
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "oncomplete(JSONObject)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            onError(4, e.getMessage());
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    void onSuccess(String str, PaymentData paymentData) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "onSuccess", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            MonitoringUtil.setCheckoutStage("merchant_callback_handover");
            PaymentResultListener paymentResultListener = this.paymentResultListener;
            if (paymentResultListener != null) {
                paymentResultListener.onPaymentSuccess(str);
            } else {
                PaymentResultWithDataListener paymentResultWithDataListener = this.paymentResultWithDataListener;
                if (paymentResultWithDataListener != null) {
                    paymentResultWithDataListener.onPaymentSuccess(str, paymentData);
                }
            }
            MonitoringUtil.clearCheckout(this.activity);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "onSuccess", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    void onError(int i, String str) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "onError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            MonitoringUtil.setCheckoutStage("merchant_callback_handover");
            PaymentResultListener paymentResultListener = this.paymentResultListener;
            if (paymentResultListener != null) {
                paymentResultListener.onPaymentError(i, str);
            } else {
                PaymentResultWithDataListener paymentResultWithDataListener = this.paymentResultWithDataListener;
                if (paymentResultWithDataListener != null) {
                    paymentResultWithDataListener.onPaymentError(i, str, new PaymentData());
                }
            }
            MonitoringUtil.clearCheckout(this.activity);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "onError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private PaymentData _Ssss$(JSONObject jSONObject) {
        PaymentData paymentData = new PaymentData();
        try {
            paymentData.setData(jSONObject);
            if (jSONObject.has(RAZORPAY_PAYMENT_ID)) {
                paymentData.setPaymentId(jSONObject.getString(RAZORPAY_PAYMENT_ID));
            }
            if (jSONObject.has(RAZORPAY_ORDER_ID)) {
                paymentData.setOrderId(jSONObject.getString(RAZORPAY_ORDER_ID));
            }
            if (jSONObject.has(RAZORPAY_SIGNATURE)) {
                paymentData.setSignature(jSONObject.getString(RAZORPAY_SIGNATURE));
            }
        } catch (JSONException e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
        }
        return paymentData;
    }

    protected void finish() {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "finish", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            BaseConfig.paymentInProgress = false;
            AnalyticsUtil.postData();
            AnalyticsUtil.refreshOrderSession();
            this._SsssS = null;
            this.SSsS$sss__s = false;
            this.webview.loadUrl("about:blank");
            RazorpayExceptionHandler.unregister();
            OtpAssist otpAssist = this.otpAssist;
            if (otpAssist != null) {
                otpAssist.reset();
            }
            Ss$$S__();
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "finish", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public final void reset() {
        finish();
    }

    public void onBackPressed() {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "onBackPressed", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_BACK_PRESSED_HARD);
            if (this.SSsS$sss__s) {
                trackBackPress();
                s$S_SsS$SS();
            }
            oncomplete("{\"error\":{\"code\":\"BAD_REQUEST_ERROR\",\"description\":\"Payment processing cancelled by user\"}}");
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "onBackPressed", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @JavascriptInterface
    public final void setPaymentID(String str) {
        Logger.m2690d("setPaymentID called: " + str);
        this._SsssS = str;
        MonitoringUtil.setPaymentId(str);
        AmazonPayWallet amazonPayWallet = this.amazonPayWallet;
        if (amazonPayWallet != null) {
            amazonPayWallet.setDataForPolling(this.apiKey, this._SsssS);
        }
        setPaymentIdInAddon(str);
        AnalyticsUtil.addProperty("payment_id", new AnalyticsProperty(str, AnalyticsProperty.Scope.PAYMENT));
        SharedPreferenceUtil.setValue(this.activity, RAZORPAY_PAYMENT_ID, str);
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PAYMENT_ID_ATTACHED);
    }

    private final void s$S_SsS$SS() {
        if (this._SsssS == null) {
            return;
        }
        try {
            String strConstructBasicAuth = BaseUtils.constructBasicAuth(this.apiKey);
            HashMap map = new HashMap();
            map.put("Authorization", "Basic " + strConstructBasicAuth);
            String str = "https://api.razorpay.com/v1/payments/" + this._SsssS + "/cancel?platform=android_sdk";
            Logger.m2690d("Sending cancel request");
            Owl.get(str, map, new Callback() { // from class: com.razorpay.BaseRazorpay.17
                @Override // com.razorpay.Callback
                public void run(ResponseObject responseObject) {
                    Logger.m2690d("API Cancel hit: " + responseObject.getResponseResult());
                }
            });
            this._SsssS = null;
        } catch (Exception e) {
            Logger.m2690d("Exception in cancel req: " + e.getMessage());
            AnalyticsUtil.reportError("BaseRazorpay", "S2", e.getMessage());
        }
    }

    public void getCheckoutPreferences() {
        $sS$$__s$S$((String) null, new FetchPreferencesCallback() { // from class: com.razorpay.BaseRazorpay.18
            @Override // com.razorpay.FetchPreferencesCallback
            public void onError(String str) {
            }

            @Override // com.razorpay.FetchPreferencesCallback
            public void onResponse(String str) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    Boolean boolValueOf = false;
                    if (jSONObject.has("fee_bearer")) {
                        boolValueOf = Boolean.valueOf(jSONObject.getBoolean("fee_bearer"));
                    }
                    if (BaseRazorpay.this.upiTurbo != null) {
                        BaseRazorpay.this.upiTurbo.setFeeBearer(boolValueOf.booleanValue());
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public void getPaymentMethods(PaymentMethodsCallback paymentMethodsCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "getPaymentMethods(PaymentMethodsCallback)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            getPaymentMethods(null, paymentMethodsCallback);
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getPaymentMethods(PaymentMethodsCallback)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void getPaymentMethods(JSONObject jSONObject, final PaymentMethodsCallback paymentMethodsCallback) {
        String string;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "getPaymentMethods(JSONObject,PaymentMethodsCallback)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (jSONObject == null || !jSONObject.has("subscription_id")) {
                string = null;
            } else {
                try {
                    string = jSONObject.getString("subscription_id");
                } catch (Exception e) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                    string = null;
                }
            }
            $sS$$__s$S$(string, new FetchPreferencesCallback() { // from class: com.razorpay.BaseRazorpay.19
                @Override // com.razorpay.FetchPreferencesCallback
                public void onResponse(String str) {
                    paymentMethodsCallback.onPaymentMethodsReceived(BaseRazorpay.__$$__s_$(str));
                }

                @Override // com.razorpay.FetchPreferencesCallback
                public void onError(String str) {
                    paymentMethodsCallback.onError(str);
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getPaymentMethods(JSONObject,PaymentMethodsCallback)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
        }
    }

    public void getRecommendedInstruments(JSONObject jSONObject, final RecommendedInstrumentsCallback recommendedInstrumentsCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "getRecommendedInstruments", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (jSONObject == null) {
                recommendedInstrumentsCallback.onError("Invalid options");
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getRecommendedInstruments", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            JSONObject jSONObject__S_s = __S_s(jSONObject);
            HashMap map = new HashMap();
            map.put(HttpHeaders.CONTENT_TYPE, "application/json");
            Owl.post(Uri.parse("https://api.razorpay.com/pg_router/v1/checkout/activity").buildUpon().appendQueryParameter("key_id", this.apiKey).build().toString(), jSONObject__S_s.toString(), map, new Callback() { // from class: com.razorpay.BaseRazorpay.20
                @Override // com.razorpay.Callback
                public void run(ResponseObject responseObject) {
                    String responseResult = responseObject.getResponseResult();
                    Logger.m2690d(responseResult);
                    if (responseObject.getResponseCode() < 200 || responseObject.getResponseCode() >= 300 || responseResult == null || responseResult.isEmpty()) {
                        recommendedInstrumentsCallback.onError(responseResult);
                        return;
                    }
                    try {
                        JSONObject jSONObjectOptJSONObject = new JSONObject(responseResult).optJSONObject("get_recommended_instruments");
                        if (jSONObjectOptJSONObject != null) {
                            recommendedInstrumentsCallback.onRecommendedInstrumentsReceived(BaseRazorpay.this.__$$__s_$(jSONObjectOptJSONObject));
                        } else {
                            recommendedInstrumentsCallback.onError(responseResult);
                        }
                    } catch (Exception e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                        recommendedInstrumentsCallback.onError(responseResult);
                    }
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getRecommendedInstruments", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
            recommendedInstrumentsCallback.onError(e.getMessage());
        }
    }

    private JSONObject __S_s(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = new JSONObject(jSONObject.toString());
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("device_details");
        if (jSONObjectOptJSONObject == null) {
            jSONObject2 = new JSONObject();
            jSONObject2.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, ServerProtocol.DIALOG_PARAM_SDK_VERSION);
            jSONObject2.put("os", "android");
        } else {
            JSONObject jSONObject4 = new JSONObject(jSONObjectOptJSONObject.toString());
            if (!jSONObject4.has(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM)) {
                jSONObject4.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, ServerProtocol.DIALOG_PARAM_SDK_VERSION);
            }
            if (!jSONObject4.has("os")) {
                jSONObject4.put("os", "android");
            }
            jSONObject2 = jSONObject4;
        }
        jSONObject3.put("device_details", jSONObject2);
        jSONObject3.put("action", "get_recommended_instruments");
        return jSONObject3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject __$$__s_$(JSONObject jSONObject) throws JSONException {
        Logger.m2690d(jSONObject.toString(4));
        JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(FirebaseAnalytics.Param.ITEMS);
        if (jSONArrayOptJSONArray == null) {
            return jSONObject2;
        }
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && $S$_ss_(jSONObjectOptJSONObject)) {
                jSONArray.put(jSONObjectOptJSONObject);
            }
        }
        jSONObject2.put(FirebaseAnalytics.Param.ITEMS, jSONArray);
        jSONObject2.put("count", jSONArray.length());
        return jSONObject2;
    }

    private boolean $S$_ss_(JSONObject jSONObject) {
        String strOptString;
        if (!"upi".equalsIgnoreCase(jSONObject.optString(FirebaseAnalytics.Param.METHOD))) {
            return true;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("upi");
        if (jSONObjectOptJSONObject == null || (strOptString = jSONObjectOptJSONObject.optString("app_package")) == null || strOptString.isEmpty()) {
            return false;
        }
        Activity activity = this.activity;
        return activity != null && BaseUtils.isAppInstalled(activity.getApplicationContext(), strOptString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String __$$__s_$(String str) {
        try {
            return new JSONObject(str).getJSONObject("methods").toString();
        } catch (Exception e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long $S$_ss_(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("subscription");
            if (jSONObject != null) {
                return jSONObject.getLong(ConstantEventAttributes.AMOUNT);
            }
            return 0L;
        } catch (Exception e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
            return 0L;
        }
    }

    public void getSubscriptionAmount(String str, final SubscriptionAmountCallback subscriptionAmountCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "getSubscriptionAmount", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            $sS$$__s$S$(str, new FetchPreferencesCallback() { // from class: com.razorpay.BaseRazorpay.21
                @Override // com.razorpay.FetchPreferencesCallback
                public void onResponse(String str2) {
                    subscriptionAmountCallback.onSubscriptionAmountReceived(BaseRazorpay.$S$_ss_(str2));
                }

                @Override // com.razorpay.FetchPreferencesCallback
                public void onError(String str2) {
                    subscriptionAmountCallback.onError(str2);
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getSubscriptionAmount", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    private String $s_$$s$_ss() {
        if (CacheManager.hasExpired("rzp_payment_preferences")) {
            return null;
        }
        return CacheManager.get("rzp_payment_preferences");
    }

    private void $sS$$__s$S$(String str, final FetchPreferencesCallback fetchPreferencesCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "fetchPreferences", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            AnalyticsUtil.trackEvent(AnalyticsEvent.FETCH_PREFERENCES_CALLED);
            String str$s_$$s$_ss = $s_$$s$_ss();
            if (str$s_$$s$_ss != null && (str == null || (str != null && str$s_$$s$_ss.contains(str)))) {
                fetchPreferencesCallback.onResponse(str$s_$$s$_ss);
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "fetchPreferences", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            String str2 = GlobalUrlConfig.instance().getL$1_I$l$() + "/v1/preferences?key_id=" + this.apiKey;
            if (str != null) {
                str2 = str2 + "&subscription_id=" + str;
            }
            Owl.get(str2, new Callback() { // from class: com.razorpay.BaseRazorpay.2
                @Override // com.razorpay.Callback
                public void run(ResponseObject responseObject) {
                    String responseResult = responseObject.getResponseResult();
                    if (responseResult != null && !responseResult.isEmpty() && responseObject.getResponseCode() == 200) {
                        CacheManager.put("rzp_payment_preferences", responseResult, TimeUnit.MINUTES.toMillis(15L));
                        fetchPreferencesCallback.onResponse(responseResult);
                        AnalyticsUtil.trackEvent(AnalyticsEvent.FETCH_PREFERENCES_CALL_SUCCESS);
                    } else {
                        fetchPreferencesCallback.onError(responseResult);
                        AnalyticsUtil.trackEvent(AnalyticsEvent.FETCH_PREFERENCES_METHODS_CALL_FAIL);
                    }
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "fetchPreferences", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void isValidVpa(String str, final ValidateVpaCallback validateVpaCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "isValidVpa", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (!str.isEmpty() && BaseUtils.getDataNetworkType(this.activity) != NetworkType.UNKNOWN) {
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_VALIDATE_VPA_CALLED);
                String str2 = this.$sS$$__s$S$ + "payments/validate/account";
                HashMap map = new HashMap();
                map.put(HttpHeaders.CONTENT_TYPE, ShareTarget.ENCODING_TYPE_URL_ENCODED);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("entity", "vpa");
                    jSONObject.put("value", str);
                    jSONObject.put("key_id", this.apiKey);
                    Owl.post(str2, BaseUtils.makeUrlEncodedPayload(jSONObject), map, new Callback() { // from class: com.razorpay.BaseRazorpay.3
                        @Override // com.razorpay.Callback
                        public void run(ResponseObject responseObject) {
                            try {
                                validateVpaCallback.onResponse(new JSONObject(responseObject.getResponseResult()));
                            } catch (NullPointerException | JSONException e) {
                                validateVpaCallback.onFailure();
                                AnalyticsUtil.reportError("BaseRazorpay", "S2", e.getMessage());
                            }
                        }
                    });
                } catch (NullPointerException | JSONException e) {
                    validateVpaCallback.onFailure();
                    AnalyticsUtil.reportError("BaseRazorpay", "S2", e.getMessage());
                }
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "isValidVpa", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return;
            }
            validateVpaCallback.onFailure();
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "isValidVpa", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
        }
    }

    public static long calculateEmi(long j, int i, double d) {
        double d2 = d / 1200.0d;
        double dPow = Math.pow(d2 + 1.0d, i);
        return Math.round(((j * d2) * dPow) / (dPow - 1.0d));
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        onActivityResult(i, i2, intent, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00eb A[Catch: Exception -> 0x028b, TryCatch #0 {Exception -> 0x028b, blocks: (B:3:0x0010, B:5:0x001f, B:7:0x0025, B:9:0x0036, B:15:0x0042, B:17:0x0053, B:19:0x0057, B:21:0x0073, B:24:0x00a4, B:26:0x00ac, B:28:0x00b4, B:40:0x00f2, B:57:0x0180, B:60:0x018f, B:98:0x027f, B:61:0x0194, B:63:0x019d, B:65:0x01ad, B:68:0x01bb, B:71:0x01c1, B:73:0x01c7, B:75:0x01db, B:84:0x01fd, B:86:0x0230, B:83:0x01f4, B:85:0x0222, B:87:0x023f, B:97:0x0276, B:95:0x0262, B:96:0x026f, B:33:0x00c4, B:35:0x00c8, B:37:0x00d6, B:36:0x00cc, B:39:0x00eb, B:44:0x0103, B:46:0x0107, B:48:0x010b, B:49:0x0122, B:51:0x0150, B:53:0x0154, B:55:0x0162, B:54:0x0158, B:76:0x01e3, B:80:0x01ef), top: B:103:0x0010, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x026f A[Catch: Exception -> 0x028b, TryCatch #0 {Exception -> 0x028b, blocks: (B:3:0x0010, B:5:0x001f, B:7:0x0025, B:9:0x0036, B:15:0x0042, B:17:0x0053, B:19:0x0057, B:21:0x0073, B:24:0x00a4, B:26:0x00ac, B:28:0x00b4, B:40:0x00f2, B:57:0x0180, B:60:0x018f, B:98:0x027f, B:61:0x0194, B:63:0x019d, B:65:0x01ad, B:68:0x01bb, B:71:0x01c1, B:73:0x01c7, B:75:0x01db, B:84:0x01fd, B:86:0x0230, B:83:0x01f4, B:85:0x0222, B:87:0x023f, B:97:0x0276, B:95:0x0262, B:96:0x026f, B:33:0x00c4, B:35:0x00c8, B:37:0x00d6, B:36:0x00cc, B:39:0x00eb, B:44:0x0103, B:46:0x0107, B:48:0x010b, B:49:0x0122, B:51:0x0150, B:53:0x0154, B:55:0x0162, B:54:0x0158, B:76:0x01e3, B:80:0x01ef), top: B:103:0x0010, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r21, int r22, android.content.Intent r23, boolean r24) {
        /*
            Method dump skipped, instruction units count: 656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.razorpay.BaseRazorpay.onActivityResult(int, int, android.content.Intent, boolean):void");
    }

    private static String $sS$$__s$S$(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return null;
        }
        return extras.getString("RESULT");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void $S$S$s$__Ss() {
        String str = this.$S$_ss_;
        if (str == null || str.isEmpty()) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", "credStatusUrl is null or empty");
        } else {
            _SS$$$$s(this.$S$_ss_);
        }
    }

    private void _SS$$$$s(String str) {
        Owl.get(str, new Callback() { // from class: com.razorpay.BaseRazorpay.4
            /* JADX WARN: Type inference failed for: r9v12, types: [com.razorpay.BaseRazorpay$4$1] */
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                if (responseObject.getResponseCode() == 404) {
                    BaseRazorpay.this.onError(408, "{\"error\":{\"code\":408, \"description\": Payment Unsuccessful}}");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(responseObject.getResponseResult());
                    if (jSONObject.has(BaseRazorpay.RAZORPAY_PAYMENT_ID) && jSONObject.has(BaseRazorpay.RAZORPAY_ORDER_ID) && jSONObject.has(BaseRazorpay.RAZORPAY_SIGNATURE)) {
                        BaseRazorpay.this.s$SSss(jSONObject);
                    } else if (jSONObject.has("status") && jSONObject.getString("status").equalsIgnoreCase("created")) {
                        new CountDownTimer(3000L, 1000L) { // from class: com.razorpay.BaseRazorpay.4.1
                            @Override // android.os.CountDownTimer
                            public void onTick(long j) {
                            }

                            @Override // android.os.CountDownTimer
                            public void onFinish() {
                                BaseRazorpay.this.$S$S$s$__Ss();
                            }
                        }.start();
                    } else if (jSONObject.has("error")) {
                        BaseRazorpay.this.s$SSss(jSONObject);
                    }
                } catch (JSONException e) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getLocalizedMessage());
                }
            }
        });
    }

    private void s$SSss(Intent intent) {
        String stringExtra = intent.getStringExtra(SmsRetriever.EXTRA_SMS_MESSAGE);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sender", "razorpay");
            jSONObject.put("message", stringExtra);
            this.webview.loadUrl(String.format("javascript:OTPElf.elfBridge.setSms(%s)", jSONObject.toString()));
            AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_OTP_POPULATION_JS);
        } catch (Exception e) {
            AnalyticsUtil.reportError("BaseRazorpay", "error:exception", e.getLocalizedMessage());
            Logger.m2693e("Exception", e);
        }
    }

    public void changeApiKey(String str) {
        CacheManager.expireKey("rzp_payment_preferences");
        this.apiKey = str;
        $sS$$__s$S$(this.activity);
    }

    public boolean isValidCardNumber(String str) {
        return RazorpayUtils.isValidCardNumber(str);
    }

    public String getCardNetwork(String str) {
        return RazorpayUtils.getCardNetwork(str);
    }

    public String getBankLogoUrl(String str) {
        return RazorpayUtils.getBankLogoUrl(str);
    }

    public String getWalletLogoUrl(String str) {
        return RazorpayUtils.getWalletLogoUrl(str);
    }

    public String getWalletSqLogoUrl(String str) {
        return RazorpayUtils.getWalletSqLogoUrl(str);
    }

    public int getCardNetworkLength(String str) {
        return RazorpayUtils.getCardNetworkLength(str);
    }

    @Override // com.razorpay.OnAppSelectedListener
    public void onUpiAppLaunched(String str, String str2) {
        this.S_SS$s = str;
    }

    @Override // com.razorpay.OnAppSelectedListener
    public void openUpiApp(String str, String str2) {
        HashMap<String, String> allPluginsFromManifest = BaseUtils.getAllPluginsFromManifest(this.activity);
        if (allPluginsFromManifest == null || allPluginsFromManifest.size() == 0 || !$sS$$__s$S$(allPluginsFromManifest, str) || this.__S_s.has("recurring")) {
            s$SSss(str, str2);
            return;
        }
        Iterator<String> it = allPluginsFromManifest.values().iterator();
        while (it.hasNext()) {
            try {
                RzpPlugin rzpPlugin = (RzpPlugin) RzpPlugin.class.getClassLoader().loadClass(it.next()).newInstance();
                if (str.equalsIgnoreCase("com.google.android.apps.nbu.paisa.user")) {
                    rzpPlugin.isRegistered(this.activity, new RzpPluginRegisterCallback() { // from class: com.razorpay.BaseRazorpay.5
                        @Override // com.razorpay.RzpPluginRegisterCallback
                        public void onResponse(boolean z) {
                        }
                    });
                    try {
                        this.__S_s.put("_[app]", str);
                        this.__S_s.put("url_data", str2);
                    } catch (JSONException e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                    }
                }
                if (rzpPlugin.doesHandlePayload(this.apiKey, this.__S_s, this.activity)) {
                    this.isExtRzpPluginActive = true;
                    this.extActiveRzpPluginInstance = rzpPlugin;
                    rzpPlugin.processPayment(this.apiKey, this.__S_s, this.activity, this);
                    return;
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NullPointerException e2) {
                s$SSss(str, str2);
                AnalyticsUtil.reportError("BaseRazorpay", "S1", e2.getMessage());
                return;
            }
        }
    }

    private void sS$$$ss_(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            try {
                RzpPlugin rzpPlugin = (RzpPlugin) RzpPlugin.class.getClassLoader().loadClass("com.razorpay.RzpGpayMerged").newInstance();
                RzpPluginCompatibilityResponse rzpPluginCompatibilityResponseIsCompatible = rzpPlugin.isCompatible(C$sS$$__s$S$.SDK_TYPE, C$sS$$__s$S$.SDK_VERSION_CODE, C$sS$$__s$S$.SDK_VERSION);
                if (!rzpPluginCompatibilityResponseIsCompatible.isCompatible()) {
                    onError(-1, rzpPluginCompatibilityResponseIsCompatible.getErrorMessage());
                } else if (rzpPlugin.doesHandlePayload(this.apiKey, jSONObject, this.activity)) {
                    this.isExtRzpPluginActive = true;
                    this.extActiveRzpPluginInstance = rzpPlugin;
                    rzpPlugin.processPayment(this.apiKey, jSONObject, this.activity, this);
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NullPointerException e) {
                AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
            }
        } catch (JSONException e2) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e2.getMessage());
        }
    }

    public void isUserRegisteredOnGpay(final Activity activity, String str, final GpayRegisteredListener gpayRegisteredListener) {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, ShareTarget.ENCODING_TYPE_URL_ENCODED);
        Owl.get(this.$sS$$__s$S$ + "preferences?key_id=" + str + "&currency%5B0%5D=INR&amount=100&_%5Bcheckout_id%5D=" + AnalyticsUtil.getLocalOrderId() + "&_%5Bos%5D=android&_%5Bpackage_name%5D=" + activity.getPackageName() + "&_%5Bplatform%5D=mobile_sdk&_%5Blocale%5D=" + BaseUtils.getLocale() + "&_%5Blibrary%5D=custom&_%5Blibrary_version%5D=" + C$sS$$__s$S$.SDK_VERSION, map, new Callback() { // from class: com.razorpay.BaseRazorpay.6
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                try {
                    if (new JSONObject(responseObject.getResponseResult()).getJSONObject("methods").getBoolean("gpay")) {
                        try {
                            RzpPlugin rzpPlugin = (RzpPlugin) RzpPlugin.class.getClassLoader().loadClass("com.razorpay.RzpGpayMerged").newInstance();
                            try {
                                if (Class.forName("com.google.android.apps.nbu.paisa.inapp.client.api.PaymentsClient").newInstance() != null) {
                                    rzpPlugin.isRegistered(activity, new RzpPluginRegisterCallback() { // from class: com.razorpay.BaseRazorpay.6.1
                                        @Override // com.razorpay.RzpPluginRegisterCallback
                                        public void onResponse(boolean z) {
                                            gpayRegisteredListener.isUserRegistered(z);
                                        }
                                    });
                                    BaseRazorpay.this.Ss$$S__ = true;
                                }
                            } catch (ClassNotFoundException unused) {
                                gpayRegisteredListener.isUserRegistered(false);
                                AnalyticsUtil.reportError("BaseRazorpay", "S1", "GooglePay SDK is not included");
                            } catch (IllegalAccessException | InstantiationException unused2) {
                                gpayRegisteredListener.isUserRegistered(false);
                            }
                            RzpPluginCompatibilityResponse rzpPluginCompatibilityResponseIsCompatible = rzpPlugin.isCompatible(C$sS$$__s$S$.SDK_TYPE, C$sS$$__s$S$.SDK_VERSION_CODE, C$sS$$__s$S$.SDK_VERSION);
                            if (rzpPluginCompatibilityResponseIsCompatible.isCompatible()) {
                                return;
                            }
                            BaseRazorpay.this.onError(-1, rzpPluginCompatibilityResponseIsCompatible.getErrorMessage());
                            return;
                        } catch (Exception e) {
                            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                            gpayRegisteredListener.isUserRegistered(false);
                            return;
                        }
                    }
                    gpayRegisteredListener.isUserRegistered(false);
                } catch (JSONException e2) {
                    AnalyticsUtil.reportError("BaseRazorpay", "S1", e2.getMessage());
                    gpayRegisteredListener.isUserRegistered(false);
                }
            }
        });
    }

    private boolean $sS$$__s$S$(HashMap<String, String> map, String str) {
        return str.equalsIgnoreCase("com.google.android.apps.nbu.paisa.user") && ((map.containsKey("com.razorpay.plugin.googlepay_all") && this.Ss$$S__) || (map.containsKey("com.razorpay.plugin.googlepay") && map.containsKey("com.razorpay.plugin.googlepay_all")));
    }

    private void s$SSss(String str, String str2) {
        BaseUtils.startActivityForResult(str2, str, this.activity);
        HashMap map = new HashMap();
        if (str2 == null) {
            str2 = Constants.ATTENDANCE_STATUS_NULL;
        }
        map.put("url", str2);
        map.put("custom_chooser", true);
        map.put(InMobiNetworkValues.PACKAGE_NAME, str);
        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_UPI_APP_LAUNCHED, AnalyticsUtil.getJSONResponse(map));
    }

    @Override // com.razorpay.RzpInternalCallback
    public void onPaymentSuccess(String str) {
        try {
            try {
                AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "onPaymentSuccess", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("provider") && jSONObject.getString("provider").equalsIgnoreCase("GOOGLE_PAY")) {
                    HashMap map = new HashMap();
                    WebView webView = this.webview;
                    boolean z = true;
                    if (webView != null && webView.getUrl() != null && this.webview.getUrl().contains("https://api.razorpay.com")) {
                        map.put("activity_destroyed", false);
                        try {
                            if (this.webview.getVisibility() != 0) {
                                z = false;
                            }
                            jSONObject.put("isWebviewVisible", z);
                        } catch (Exception e) {
                            AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
                        }
                        this.webview.loadUrl(String.format("javascript: pollStatus(%s)", jSONObject.toString()));
                    } else {
                        map.put("activity_destroyed", true);
                        RazorpayUtils.handleUpiIntentPaymentWhenActivityDestroyed(jSONObject, this.activity, this.apiKey, this);
                    }
                    map.put("result", jSONObject);
                    AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT, AnalyticsUtil.getJSONResponse(map));
                }
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "onPaymentSuccess", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            } catch (JSONException e2) {
                AnalyticsUtil.reportError("BaseRazorpay", "S0", e2.getMessage());
            }
        } catch (Exception e3) {
            AnalyticsUtil.reportCaughtException(e3);
        }
    }

    @Override // com.razorpay.RzpInternalCallback
    public void onPaymentError(int i, String str) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "onPaymentError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            HashMap map = new HashMap();
            map.put("response", str);
            map.put("code", Integer.valueOf(i));
            AnalyticsUtil.trackEvent(AnalyticsEvent.CHECKOUT_PLUGIN_INTERNAL_CALLBACK_ERROR, AnalyticsUtil.getJSONResponse(map));
            if (str.contains("provider") && str.contains("GOOGLE_PAY")) {
                try {
                    RazorpayUtils.handleGpayFeaturePaymentResponse(new JSONObject(str), this.activity, this.apiKey, this);
                    AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "onPaymentError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                    return;
                } catch (JSONException unused) {
                }
            }
            try {
                oncomplete(new JSONObject(str).toString());
            } catch (Exception e) {
                AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getLocalizedMessage());
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_PLUGIN_INTERNAL_CALLBACK_ERROR_EXCEPTION);
                oncomplete(str);
            }
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "onPaymentError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
        }
    }

    public void getCardsFlow(JSONObject jSONObject, final CardsFlowCallback cardsFlowCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "getCardsFlow", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            $sS$$__s$S$("https://api.razorpay.com/v1/payments/create/checkout/json?key_id=" + this.apiKey, jSONObject.toString(), new NativeOtpCallback() { // from class: com.razorpay.BaseRazorpay.7
                @Override // com.razorpay.NativeOtpCallback
                public void onResponse(String str) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str);
                        JSONArray jSONArray = jSONObject2.getJSONArray("next");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            if (jSONArray.getJSONObject(i).getString("action").equalsIgnoreCase("otp_generate")) {
                                BaseRazorpay.this._SS$$$$s = jSONObject2;
                                cardsFlowCallback.isNativeOtpEnabled(true);
                                return;
                            }
                        }
                        cardsFlowCallback.isNativeOtpEnabled(false);
                    } catch (JSONException e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                        onError(4, BaseUtils.makeErrorPayload("JSON_PARSING_ERROR", "An error occurred while parsing the JSON payload"));
                    }
                }

                @Override // com.razorpay.NativeOtpCallback
                public void onError(int i, String str) {
                    BaseRazorpay.this.onError(5, BaseUtils.makeErrorPayload("BAD_REQUEST_ERROR", "An error occurred while fetch Payment Details from API"));
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getCardsFlow", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void getCardOtpData(final CardsFlowCallback cardsFlowCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "getCardOtpData", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (!this._SS$$$$s.has(RAZORPAY_PAYMENT_ID)) {
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getCardOtpData", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            } else {
                $sS$$__s$S$($sS$$__s$S$("otp_generate", this._SS$$$$s), null, new NativeOtpCallback() { // from class: com.razorpay.BaseRazorpay.8
                    @Override // com.razorpay.NativeOtpCallback
                    public void onResponse(String str) {
                        try {
                            JSONObject jSONObject = new JSONObject(str);
                            JSONArray jSONArray = jSONObject.getJSONArray("next");
                            for (int i = 0; i < jSONArray.length(); i++) {
                                if (jSONArray.getJSONObject(i).getString("action").equalsIgnoreCase("otp_submit")) {
                                    BaseRazorpay.this.sS$$$ss_ = jSONObject;
                                    cardsFlowCallback.otpGenerateResponse(true);
                                    return;
                                }
                            }
                            cardsFlowCallback.otpGenerateResponse(false);
                        } catch (JSONException e) {
                            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                            cardsFlowCallback.otpGenerateResponse(false);
                        }
                    }

                    @Override // com.razorpay.NativeOtpCallback
                    public void onError(int i, String str) {
                        BaseRazorpay.this.onError(i, str);
                    }
                });
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "getCardOtpData", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            }
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void otpResend(final CardsFlowCallback cardsFlowCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "otpResend", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            $sS$$__s$S$($sS$$__s$S$("otp_resend", this.sS$$$ss_), null, new NativeOtpCallback() { // from class: com.razorpay.BaseRazorpay.9
                @Override // com.razorpay.NativeOtpCallback
                public void onResponse(String str) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        JSONArray jSONArray = jSONObject.getJSONArray("next");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            if (jSONArray.getJSONObject(i).getString("action").equalsIgnoreCase("otp_submit")) {
                                BaseRazorpay.this.sS$$$ss_ = jSONObject;
                                cardsFlowCallback.otpResendResponse(true);
                                return;
                            }
                        }
                        cardsFlowCallback.otpResendResponse(false);
                    } catch (JSONException e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                        cardsFlowCallback.otpGenerateResponse(false);
                    }
                }

                @Override // com.razorpay.NativeOtpCallback
                public void onError(int i, String str) {
                    BaseRazorpay.this.onError(i, str);
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "otpResend", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    public void otpSubmit(String str, final CardsFlowCallback cardsFlowCallback) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "otpSubmit", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("otp", str);
            $sS$$__s$S$($sS$$__s$S$("otp_submit", this.sS$$$ss_), jSONObject.toString(), new NativeOtpCallback() { // from class: com.razorpay.BaseRazorpay.10
                @Override // com.razorpay.NativeOtpCallback
                public void onResponse(String str2) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str2);
                        if (!jSONObject2.has("next")) {
                            BaseRazorpay.this.s$SSss(jSONObject2);
                        } else {
                            cardsFlowCallback.onOtpSubmitError(true);
                        }
                    } catch (JSONException e) {
                        AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
                        cardsFlowCallback.onOtpSubmitError(true);
                    }
                }

                @Override // com.razorpay.NativeOtpCallback
                public void onError(int i, String str2) {
                    BaseRazorpay.this.onError(i, str2);
                }
            });
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "otpSubmit", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (JSONException e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", e.getMessage());
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
        }
    }

    public void redirectToBankPage() {
        this.webview.loadUrl($sS$$__s$S$("redirect", this._SS$$$$s));
    }

    private String $sS$$__s$S$(String str, JSONObject jSONObject) {
        if (!jSONObject.has(RAZORPAY_PAYMENT_ID) || !jSONObject.has("next")) {
            return null;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("next");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getJSONObject(i).getString("action").equalsIgnoreCase(str)) {
                    return jSONArray.getJSONObject(i).getString("url");
                }
            }
            return null;
        } catch (JSONException e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
            return null;
        }
    }

    private void $sS$$__s$S$(String str, String str2, final NativeOtpCallback nativeOtpCallback) {
        HashMap map = new HashMap();
        map.put("content-type", "application/json");
        Owl.post(str, str2, map, new Callback() { // from class: com.razorpay.BaseRazorpay.11
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                if (BaseRazorpay.this.$sS$$__s$S$(responseObject)) {
                    nativeOtpCallback.onResponse(responseObject.getResponseResult());
                } else {
                    nativeOtpCallback.onError(responseObject.getResponseCode(), responseObject.getResponseResult());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean $sS$$__s$S$(ResponseObject responseObject) {
        try {
            JSONObject jSONObject = new JSONObject(responseObject.getResponseResult());
            if (responseObject.getResponseCode() >= 400) {
                return false;
            }
            return !jSONObject.has("error");
        } catch (JSONException e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S0", e.getMessage());
            return false;
        }
    }

    private void SSsS$sss__s() {
        try {
            Ss$$S__();
            this.$s_$$s$_ss = new Application.ActivityLifecycleCallbacks() { // from class: com.razorpay.BaseRazorpay.13
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    if (activity == BaseRazorpay.this.activity) {
                        BaseRazorpay.this.Ss$$S__();
                        RazorpayUtils.genericPollForPaymentStatus(BaseRazorpay.this.activity, BaseRazorpay.this.apiKey, BaseRazorpay.this);
                        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_TNG_POLLING_STARTED_ON_RETURN);
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    if (activity == BaseRazorpay.this.activity) {
                        BaseRazorpay.this.Ss$$S__();
                    }
                }
            };
            this.activity.getApplication().registerActivityLifecycleCallbacks(this.$s_$$s$_ss);
        } catch (Exception e) {
            AnalyticsUtil.reportError("BaseRazorpay", "S1", "Error registering TNG lifecycle callback: " + e.getMessage());
            RazorpayUtils.genericPollForPaymentStatus(this.activity, this.apiKey, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ss$$S__() {
        Activity activity;
        try {
            if (this.$s_$$s$_ss == null || (activity = this.activity) == null) {
                return;
            }
            activity.getApplication().unregisterActivityLifecycleCallbacks(this.$s_$$s$_ss);
            this.$s_$$s$_ss = null;
        } catch (Exception unused) {
        }
    }

    public Boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (this.amazonPayWallet != null && _SsssS()) {
                return Boolean.valueOf(this.amazonPayWallet.shouldOverrideUrlLoading(webView, str, this.activity, new RzpInternalCallback() { // from class: com.razorpay.BaseRazorpay.14
                    @Override // com.razorpay.RzpInternalCallback
                    public void onPaymentSuccess(String str2) {
                        BaseRazorpay.this.oncomplete(str2);
                    }

                    @Override // com.razorpay.RzpInternalCallback
                    public void onPaymentError(int i, String str2) {
                        BaseRazorpay.this.onError(i, str2);
                    }
                }));
            }
            if (str.startsWith("razorpay://")) {
                try {
                    String queryParameter = Uri.parse(str).getQueryParameter("fallback");
                    if (queryParameter != null) {
                        webView.loadUrl(queryParameter);
                        AnalyticsUtil.addProperty("webview:url", new AnalyticsProperty(str, AnalyticsProperty.Scope.PAYMENT));
                        AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_WEBVIEW_URL_OVERRIDE);
                        AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                        return true;
                    }
                } catch (Exception e) {
                    Log.e("RazorpayWebView", "Error parsing deep link URL: " + e.getMessage());
                    AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                    return false;
                }
            }
            if (C$sS$$__s$S$.getInstance().isTNGRedirectionEnabled() && this.s$S_SsS$SS) {
                if (!str.contains("tngdigital")) {
                    AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                    return false;
                }
                if (!this.$SSs_$S_$$s.contains("my.com.tngdigital.ewallet")) {
                    AnalyticsUtil.addProperty("url", new AnalyticsProperty(str, AnalyticsProperty.Scope.PAYMENT));
                    AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_TNG_WALLET_WEB_FLOW_TRIGGERED);
                    AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                    return false;
                }
                SSsS$sss__s();
                callNativeIntent(str);
                AnalyticsUtil.addProperty("url", new AnalyticsProperty(str, AnalyticsProperty.Scope.PAYMENT));
                AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_WEBVIEW_URL_OVERRIDE);
                AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
                return true;
            }
            AnalyticsUtil.logCustomUIFunctionExit("BaseRazorpay", "shouldOverrideUrlLoading", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            return false;
        } catch (Exception e2) {
            AnalyticsUtil.reportCaughtException(e2);
            return false;
        }
    }

    private boolean _SsssS() {
        JSONObject jSONObject = this.__S_s;
        if (jSONObject == null) {
            return false;
        }
        try {
            if (jSONObject.has(FirebaseAnalytics.Param.METHOD) && this.__S_s.getString(FirebaseAnalytics.Param.METHOD).equalsIgnoreCase("wallet") && this.__S_s.has("wallet") && this.__S_s.getString("wallet").equalsIgnoreCase("amazonpay")) {
                return true;
            }
            if (this.__S_s.has(FirebaseAnalytics.Param.METHOD) && this.__S_s.getString(FirebaseAnalytics.Param.METHOD).equalsIgnoreCase("paylater") && this.__S_s.has("provider")) {
                if (this.__S_s.getString("provider").equalsIgnoreCase("amazonpay")) {
                    return true;
                }
            }
        } catch (Exception e) {
            Logger.m2692e("Error checking Amazon Pay payload: " + e.getMessage());
        }
        return false;
    }
}
