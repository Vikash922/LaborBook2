package com.truecaller.android.sdk.legacy.clients;

/* JADX INFO: loaded from: classes5.dex */
public class SdkScopeEvaluator {
    private final int consentTitleOption;
    private CustomDataBundle customDataBundle;
    private final int sdkFlag;

    public SdkScopeEvaluator(int i, int i2, CustomDataBundle customDataBundle) {
        this.sdkFlag = i;
        this.consentTitleOption = i2;
        this.customDataBundle = customDataBundle;
    }

    public boolean isVerificationFeatureRequested() {
        return isScopeRequested(32);
    }

    public boolean isFullScreenConsentRequested() {
        return isScopeRequested(8);
    }

    public boolean isBottomSheetConsentRequested() {
        return isScopeRequested(128);
    }

    public boolean isSkipButtonRequested() {
        return isScopeRequested(1);
    }

    public boolean isAnotherMethodButtonRequested() {
        return isScopeRequested(256);
    }

    public boolean isEnterDetailsManuallyButtonRequested() {
        return isScopeRequested(512);
    }

    public boolean isEnterDetailsLaterButtonRequested() {
        return isScopeRequested(4096);
    }

    public boolean isNoCtaRequested() {
        return isScopeRequested(64);
    }

    public boolean isRoundShapeRequested() {
        return isScopeRequested(1024);
    }

    public boolean isRectangleShapeRequested() {
        return isScopeRequested(2048);
    }

    public int getConsentTitleIndex() {
        return this.consentTitleOption;
    }

    private boolean isScopeRequested(int i) {
        return (this.sdkFlag & i) == i;
    }

    public int getSdkFlag() {
        return this.sdkFlag;
    }

    public CustomDataBundle getCustomDataBundle() {
        return this.customDataBundle;
    }
}
