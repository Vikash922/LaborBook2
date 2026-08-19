package com.razorpay;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.razorpay.customui.lib.C3936R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.razorpay.$sS$$__s$S$, reason: invalid class name */
/* JADX INFO: compiled from: Config.java */
/* JADX INFO: loaded from: classes5.dex */
class C$sS$$__s$S$ extends BaseConfig {
    static String CONFIG_AUTH_KEY = "EPl0bxz9OvsD5IylM1M28Mv2n3v9XBsr";
    static String CONFIG_VERSION = "3.0.7";
    private static final JSONArray DEFAULT_APAY_DOMAINS;
    private static final Object INIT_LOCK = new Object();
    static boolean IS_MAGIC_ENABLED = true;
    static String SDK_TYPE = "custom";
    static String SDK_VERSION = "3.10.13";
    static int SDK_VERSION_CODE = 31013;
    private static C$sS$$__s$S$ sConfig = null;
    private static boolean sInitialized = false;
    private static boolean useDynamicConfigUrl;
    private String $S$S$s$__Ss;
    private JSONObject $S$_ss_;
    private String $SSs_$S_$$s;
    private boolean $sS$$__s$S$;
    private String $s_$$s$_ss;
    private ArrayList<String> $ss_$S_;
    private String $sss$$s;
    private String SSsS$sss__s;
    private String S_SS$s;
    private String Ss$$S__;
    private LinkedHashSet<String> _SS$$$$s;
    private HashSet<String> _Ssss$;
    private String _SsssS;
    private HashSet<String> __$$__s_$;
    private JSONObject __S_s;
    private boolean _sS$S_$$sss;
    private HashSet<String> s$SSss;
    private JSONObject s$S_SsS$SS;
    private JSONObject sS$$$ss_;
    private JSONObject s_SSsSss;
    private boolean ss__Ss$S$;

    static {
        JSONArray jSONArray = new JSONArray();
        DEFAULT_APAY_DOMAINS = jSONArray;
        jSONArray.put("amazonpay.amazon.in");
        jSONArray.put("amazon.in");
    }

    private C$sS$$__s$S$() {
    }

    public static C$sS$$__s$S$ getInstance() {
        if (sConfig == null) {
            C$sS$$__s$S$ c$sS$$__s$S$ = new C$sS$$__s$S$();
            sConfig = c$sS$$__s$S$;
            CoreConfig.setInstance(c$sS$$__s$S$);
        }
        return sConfig;
    }

    public void init(Context context) {
        setConfig(getConfigJson(context));
        sInitialized = true;
    }

    static void ensureInitialized(Context context) {
        if (sInitialized) {
            return;
        }
        synchronized (INIT_LOCK) {
            if (sInitialized) {
                return;
            }
            getInstance().init(context);
        }
    }

    @Override // com.razorpay.BaseConfig
    public void setConfig(JSONObject jSONObject) {
        try {
            __S_s(jSONObject);
            __$$__s_$(jSONObject);
            s$SSss(jSONObject);
            _Ssss$(jSONObject);
            $sS$$__s$S$(jSONObject);
            this.s_SSsSss = jSONObject;
        } catch (Exception e) {
            AnalyticsUtil.reportError(getClass().getName(), "S0", e.getLocalizedMessage());
            e.printStackTrace();
        }
        super.setConfig(jSONObject);
    }

    private void $sS$$__s$S$(JSONObject jSONObject) throws Exception {
        this.ss__Ss$S$ = ((Boolean) BaseUtils.getJsonValue("feature_flags.verbose_logging.enabled", jSONObject, false)).booleanValue();
    }

    private void s$SSss(JSONObject jSONObject) {
        try {
            this._sS$S_$$sss = ((Boolean) BaseUtils.getJsonValue("one_time_otp.enabled", jSONObject, false)).booleanValue();
        } catch (Exception e) {
            AnalyticsUtil.reportError(getClass().getName(), "S2", e.getLocalizedMessage());
            e.printStackTrace();
        }
    }

    private void _Ssss$(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = (JSONArray) BaseUtils.getJsonValue("apay_domains", jSONObject, DEFAULT_APAY_DOMAINS);
            this.$ss_$S_ = new ArrayList<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.$ss_$S_.add(jSONArray.getString(i));
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(getClass().getName(), "S2", e.getLocalizedMessage());
        }
    }

    private void __S_s(JSONObject jSONObject) throws Exception {
        this.$sS$$__s$S$ = ((Boolean) BaseUtils.getJsonValue("upi.isWhiteListingEnabled", jSONObject, true)).booleanValue();
        this.__S_s = (JSONObject) BaseUtils.getJsonValue("upi.shortcodes", jSONObject, new JSONObject());
        this.$S$_ss_ = (JSONObject) BaseUtils.getJsonValue("upi.intentAppCodes", jSONObject, new JSONObject());
        if (this.$sS$$__s$S$) {
            JSONArray jSONArray = (JSONArray) BaseUtils.getJsonValue("upi.whiteListedApps", jSONObject, new String[0]);
            this._Ssss$ = new HashSet<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                this._Ssss$.add(jSONArray.getString(i));
            }
            this.s$SSss = new HashSet<>();
        } else {
            JSONArray jSONArray2 = (JSONArray) BaseUtils.getJsonValue("upi.blackListedApps", jSONObject, new String[0]);
            this.s$SSss = new HashSet<>();
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                this.s$SSss.add(jSONArray2.getString(i2));
            }
            this._Ssss$ = new HashSet<>();
        }
        JSONArray jSONArray3 = (JSONArray) BaseUtils.getJsonValue("upi.upiAppsPreferredOrder", jSONObject, new String[0]);
        this._SS$$$$s = new LinkedHashSet<>();
        for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
            this._SS$$$$s.add(jSONArray3.getString(i3));
        }
        JSONArray jSONArray4 = (JSONArray) BaseUtils.getJsonValue("upi.recurringAutoPaySupportedApps", jSONObject, new String[0]);
        this.__$$__s_$ = new HashSet<>();
        for (int i4 = 0; i4 < jSONArray4.length(); i4++) {
            this.__$$__s_$.add(jSONArray4.getString(i4));
        }
    }

    private void __$$__s_$(JSONObject jSONObject) throws Exception {
        this.sS$$$ss_ = (JSONObject) BaseUtils.getJsonValue("static_rules.identify_network", jSONObject, new JSONObject());
        this.s$S_SsS$SS = (JSONObject) BaseUtils.getJsonValue("static_rules.network_card_length", jSONObject, new JSONObject());
        this._SsssS = (String) BaseUtils.getJsonValue("static_rules.logos.bank.base_url", jSONObject, null);
        this.S_SS$s = (String) BaseUtils.getJsonValue("static_rules.logos.bank.extension", jSONObject, null);
        this.$sss$$s = (String) BaseUtils.getJsonValue("static_rules.logos.upi.base_url", jSONObject, null);
        this.$SSs_$S_$$s = (String) BaseUtils.getJsonValue("static_rules.logos.upi.extension", jSONObject, null);
        this.$s_$$s$_ss = (String) BaseUtils.getJsonValue("static_rules.logos.wallet.base_url", jSONObject, null);
        this.$S$S$s$__Ss = (String) BaseUtils.getJsonValue("static_rules.logos.wallet.extension", jSONObject, null);
        this.SSsS$sss__s = (String) BaseUtils.getJsonValue("static_rules.logos.wallet_sq.base_url", jSONObject, null);
        this.Ss$$S__ = (String) BaseUtils.getJsonValue("static_rules.logos.wallet_sq.extension", jSONObject, null);
    }

    boolean isUpiWhiteListingEnabled() {
        return this.$sS$$__s$S$;
    }

    HashSet<String> getUpiWhiteListedApps() {
        return this._Ssss$;
    }

    JSONObject getUpiShortcodes() {
        return this.__S_s;
    }

    HashSet<String> getUpiBlackListedApps() {
        return this.s$SSss;
    }

    LinkedHashSet<String> getUpiAppsPreferredOrder() {
        return this._SS$$$$s;
    }

    HashSet<String> getUpiAutoPaySupportedApps() {
        return this.__$$__s_$;
    }

    private static JSONObject getConfigJson(Context context) {
        return BaseConfig.getConfig(context, C3936R.raw.rzp_config_customui);
    }

    static void fetchConfig(Context context, String str) {
        if (getInstance().isConfigEnabled()) {
            HashMap map = new HashMap();
            map.put("AuthKey", CONFIG_AUTH_KEY);
            map.put("Content-type", "application/json");
            map.put("CurrentSettingVersion", getCurrentConfigVersion(context));
            boolean zBooleanValue = ((Boolean) BaseUtils.getJsonValue("use_dynamic_config_url", getInstance().s_SSsSss, false)).booleanValue();
            useDynamicConfigUrl = zBooleanValue;
            if (zBooleanValue) {
                String strBuildConfigUrl = buildConfigUrl(GlobalUrlConfig.instance().getButlerUrl(), context, str);
                BaseConfig.fetchConfig(strBuildConfigUrl, strBuildConfigUrl, map, context);
            } else {
                BaseConfig.fetchConfig(buildConfigUrl("https://api.razorpay.com/v2/settings/sdk", context, str), buildConfigUrl("https://butler.razorpay.com/v1/settings", context, str), map, context);
            }
        }
    }

    private static String buildConfigUrl(String str, Context context, String str2) {
        String str3;
        try {
            str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str3 = __$$__s_$.VERSION_NAME;
        }
        Uri.Builder builderAppendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("tenant", "android_customui").appendQueryParameter("sdk_version", SDK_VERSION).appendQueryParameter("sdk_type", SDK_TYPE).appendQueryParameter("magic_enabled", String.valueOf(IS_MAGIC_ENABLED)).appendQueryParameter("sdk_version_code", String.valueOf(SDK_VERSION_CODE)).appendQueryParameter(ConstantEventAttributes.APP_VERSION, str3).appendQueryParameter("version", getCurrentConfigVersionTag(getCurrentConfigVersion(context)));
        BaseConfig.getFetchConfigBuilder(builderAppendQueryParameter, context, str2);
        return builderAppendQueryParameter.build().toString();
    }

    private static String getCurrentConfigVersion(Context context) {
        String baseCurrentConfigVersion = BaseConfig.getBaseCurrentConfigVersion(context);
        return baseCurrentConfigVersion == null ? CONFIG_VERSION : baseCurrentConfigVersion;
    }

    JSONObject getCardNetworkTypeRegexJson() {
        return this.sS$$$ss_;
    }

    JSONObject getNetworkCardLengthJson() {
        return this.s$S_SsS$SS;
    }

    String getWalletLogoBaseUrl() {
        return this.$s_$$s$_ss;
    }

    String getWalletLogoExtension() {
        return this.$S$S$s$__Ss;
    }

    String getWalletSqLogoBaseUrl() {
        return this.SSsS$sss__s;
    }

    String getWalletSqLogoExtension() {
        return this.Ss$$S__;
    }

    String getBankLogoBaseUrl() {
        return this._SsssS;
    }

    String getBankLogoExtension() {
        return this.S_SS$s;
    }

    String getAppLogoUrl(String str) {
        try {
            if (GlobalUrlConfig.instance().getI__1l().isEmpty()) {
                return this.$sss$$s + this.__S_s.getString(str) + "." + this.$SSs_$S_$$s;
            }
            return GlobalUrlConfig.instance().getI__1l() + "/app/" + this.__S_s.getString(str) + "." + this.$SSs_$S_$$s;
        } catch (JSONException unused) {
            AnalyticsUtil.reportError(getClass().getName(), "S2", "App logo not found;" + str);
            return "";
        }
    }

    String getIntentAppName(String str) {
        try {
            return this.$S$_ss_.getString(str);
        } catch (JSONException unused) {
            AnalyticsUtil.reportError(getClass().getName(), "S2", "Intent App name not found;" + str);
            return "";
        }
    }

    boolean getIsOtpReadEnabled() {
        return this._sS$S_$$sss;
    }

    ArrayList<String> getAmazonDomainUrlList() {
        return this.$ss_$S_;
    }

    @Override // com.razorpay.BaseConfig
    public boolean isVerboseLoggingEnabled() {
        return this.ss__Ss$S$;
    }
}
