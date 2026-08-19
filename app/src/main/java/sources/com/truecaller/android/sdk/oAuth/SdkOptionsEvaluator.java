package com.truecaller.android.sdk.oAuth;

/* JADX INFO: loaded from: classes.dex */
public class SdkOptionsEvaluator {
    private final int sdkFlag;
    private final SdkOptionsDataBundle sdkOptionsDataBundle;

    public SdkOptionsEvaluator(int i, SdkOptionsDataBundle sdkOptionsDataBundle) {
        this.sdkFlag = i;
        this.sdkOptionsDataBundle = sdkOptionsDataBundle;
    }

    public boolean isVerificationFeatureRequested() {
        return isScopeRequested(64);
    }

    public boolean isSkipButtonRequested() {
        return isScopeRequested(1);
    }

    public boolean isAnotherMethodButtonRequested() {
        return isScopeRequested(4);
    }

    public boolean isEnterDetailsManuallyButtonRequested() {
        return isScopeRequested(8);
    }

    public boolean isEnterDetailsLaterButtonRequested() {
        return isScopeRequested(16);
    }

    public boolean isRoundShapeRequested() {
        return isScopeRequested(128);
    }

    public boolean isRectangleShapeRequested() {
        return isScopeRequested(256);
    }

    public boolean isSecondaryCtaBorderRequested() {
        return isScopeRequested(512);
    }

    public boolean isCrossButtonRequested() {
        return isScopeRequested(1024);
    }

    private boolean isScopeRequested(int i) {
        return (this.sdkFlag & i) == i;
    }

    public int getSdkFlag() {
        return this.sdkFlag;
    }

    public SdkOptionsDataBundle getSdkOptionsDataBundle() {
        return this.sdkOptionsDataBundle;
    }
}
