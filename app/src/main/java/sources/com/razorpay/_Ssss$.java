package com.razorpay;

import android.app.Activity;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: OtpelfBaseRazorpay.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class _Ssss$ extends BaseRazorpay {
    private RzpAssist $sS$$__s$S$;
    boolean isRzpAssistEnabled;

    @Override // com.razorpay.BaseRazorpay
    protected void setUpAddon(JSONObject jSONObject) {
    }

    _Ssss$(Activity activity, String str) {
        super(activity, str);
        this.isRzpAssistEnabled = true;
    }

    _Ssss$(Activity activity) {
        super(activity);
        this.isRzpAssistEnabled = true;
    }

    _Ssss$(Activity activity, String str, JSONObject jSONObject) {
        super(activity, str, jSONObject);
        this.isRzpAssistEnabled = true;
    }

    @Override // com.razorpay.BaseRazorpay
    protected final void finish() {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("OtpelfBaseRazorpay", "finish", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            RzpAssist rzpAssist = this.$sS$$__s$S$;
            if (rzpAssist != null && this.isRzpAssistEnabled) {
                rzpAssist.reset();
                this.$sS$$__s$S$.paymentFlowEnd();
            }
            super.finish();
            AnalyticsUtil.logCustomUIFunctionExit("OtpelfBaseRazorpay", "finish", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @Override // com.razorpay.BaseRazorpay
    void trackBackPress() {
        RzpAssist rzpAssist;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("OtpelfBaseRazorpay", "trackBackPress", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            HashMap map = new HashMap();
            if (this.isRzpAssistEnabled && (rzpAssist = this.$sS$$__s$S$) != null) {
                map.put("current_loading_url", rzpAssist.getCurrentLoadingUrl());
                map.put("last_loaded_url", this.$sS$$__s$S$.getLastLoadedUrl());
            }
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_BACK_PRESSED_SOFT, AnalyticsUtil.getJSONResponse(map));
            AnalyticsUtil.logCustomUIFunctionExit("OtpelfBaseRazorpay", "trackBackPress", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @Override // com.razorpay.BaseRazorpay
    void setPaymentIdInAddon(String str) {
        RzpAssist rzpAssist;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("OtpelfBaseRazorpay", "setPaymentIdInAddon", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (this.isRzpAssistEnabled && (rzpAssist = this.$sS$$__s$S$) != null) {
                rzpAssist.setPaymentId(str);
            }
            AnalyticsUtil.logCustomUIFunctionExit("OtpelfBaseRazorpay", "setPaymentIdInAddon", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @Override // com.razorpay.BaseRazorpay
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        RzpAssist rzpAssist;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("OtpelfBaseRazorpay", "onRequestPermissionsResult", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (this.isRzpAssistEnabled && (rzpAssist = this.$sS$$__s$S$) != null) {
                rzpAssist.onRequestPermissionsResult(i, strArr, iArr);
            }
            AnalyticsUtil.logCustomUIFunctionExit("OtpelfBaseRazorpay", "onRequestPermissionsResult", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }
}
