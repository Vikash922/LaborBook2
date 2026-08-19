package com.razorpay;

import android.app.Activity;

/* JADX INFO: loaded from: classes5.dex */
class OtpElfData {
    public static String versionKey = "otpelf_version";
    Activity activity;
    private String l$1_I$l$;

    OtpElfData(Activity activity) {
        this.activity = activity;
    }

    void checkForUpdates() {
        Owl.get(GlobalUrlConfig.instance().getOtpelfVersionUrl(), new Callback() { // from class: com.razorpay.OtpElfData.1
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                if (responseObject.getResponseResult() == null) {
                    Logger.m2690d("No version received");
                    return;
                }
                try {
                    String versionFromJsonString = BaseUtils.getVersionFromJsonString(responseObject.getResponseResult(), OtpElfData.versionKey);
                    String localVersion = BaseUtils.getLocalVersion(OtpElfData.this.activity, OtpElfData.versionKey);
                    if (!localVersion.equals(versionFromJsonString)) {
                        Logger.m2690d("Updating OTPElf");
                        AnalyticsUtil.trackEvent(AnalyticsEvent.OTPELF_UPDATE_CALLED);
                        OtpElfData.this.l$1_I$l$(versionFromJsonString);
                    } else {
                        Logger.m2690d("OTPElf on latest version: " + localVersion);
                    }
                } catch (Exception unused) {
                    AnalyticsUtil.reportError(getClass().getName(), "S1", "Could not extract version from server json");
                    Logger.m2692e("Could not extract version from server json");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l$1_I$l$(final String str) {
        Owl.get(GlobalUrlConfig.instance().getOtpelfJsUrl(), new Callback() { // from class: com.razorpay.OtpElfData.2
            @Override // com.razorpay.Callback
            public void run(ResponseObject responseObject) {
                if (responseObject.getResponseResult() != null) {
                    if (BaseUtils.storeFileInInternal(OtpElfData.this.activity, BaseUtils.getVersionedAssetName(str, CoreConfig.getInstance().getOTPElfJsFileName()), responseObject.getResponseResult())) {
                        OtpElfData.this.l$1_I$l$ = responseObject.getResponseResult();
                        BaseUtils.updateLocalVersion(OtpElfData.this.activity, OtpElfData.versionKey, str);
                        return;
                    }
                    AnalyticsUtil.trackEvent(AnalyticsEvent.OTPELF_LOCAL_SAVE_FAILED);
                }
            }
        });
    }

    String getOtpElfJs() {
        if (this.l$1_I$l$ == null) {
            if (BaseUtils.getLocalVersion(this.activity, versionKey).equals(BaseUtils.getVersionFromJsonString("{\n  \"hash\" : \"c4171614448e750850bd4daca2c7e8d1\",\n  \"magic_hash\": \"e1ff492228196aa72f4892db1e05624e\"\n}\n", versionKey))) {
                this.l$1_I$l$ = CoreConfig.getOtpelfJsFromFile(this.activity, C3924R.raw.otpelf);
            } else {
                try {
                    String fileFromInternal = BaseUtils.getFileFromInternal(this.activity, CoreConfig.getInstance().getOTPElfJsFileName(), versionKey);
                    this.l$1_I$l$ = fileFromInternal;
                    if (fileFromInternal.equals("")) {
                        this.l$1_I$l$ = CoreConfig.getOtpelfJsFromFile(this.activity, C3924R.raw.otpelf);
                    }
                } catch (Exception unused) {
                    this.l$1_I$l$ = CoreConfig.getOtpelfJsFromFile(this.activity, C3924R.raw.otpelf);
                }
            }
        }
        return this.l$1_I$l$;
    }
}
