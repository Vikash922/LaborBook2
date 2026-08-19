package com.truecaller.android.sdk.common.callbacks;

import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.CreateInstallationModel;
import com.truecaller.android.sdk.common.otpVerification.SmsRetrieverClientHandler;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class OtpInstallationCallback extends CreateInstallationCallback {
    private final double DEFAULT_OTP_TTL;
    private final SmsRetrieverClientHandler mSmsRetrieverClientHandler;

    public OtpInstallationCallback(CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, boolean z, VerificationRequestManager verificationRequestManager, SmsRetrieverClientHandler smsRetrieverClientHandler, int i) {
        super(createInstallationModel, verificationCallback, z, verificationRequestManager, i);
        this.DEFAULT_OTP_TTL = 300.0d;
        this.mSmsRetrieverClientHandler = smsRetrieverClientHandler;
    }

    @Override // com.truecaller.android.sdk.common.callbacks.CreateInstallationCallback
    void onVerificationRequired(Map<String, Object> map) {
        Double dValueOf = (Double) map.get("tokenTtl");
        if (dValueOf == null) {
            dValueOf = Double.valueOf(300.0d);
        }
        VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
        verificationDataBundle.put(VerificationDataBundle.KEY_TTL, dValueOf.toString());
        verificationDataBundle.put("requestNonce", (String) map.get("requestNonce"));
        this.mCallback.onRequestSuccess(1, verificationDataBundle);
        this.mSmsRetrieverClientHandler.startRetriever(this.mCallback);
    }
}
