package com.truecaller.android.sdk.common.callbacks;

import android.os.Handler;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.CreateInstallationModel;
import com.truecaller.android.sdk.common.otpVerification.SmsRetrieverClientHandler;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ImOtpCallInstallationCallback extends MissedCallInstallationCallback {
    static final double DEFAULT_IM_OTP_TTL = 30.0d;
    static final String JSON_KEY_METHOD = "method";
    static final String METHOD_IM = "im";
    private final long MILLISECONDS_MULTIPLIER;

    public ImOtpCallInstallationCallback(CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, SmsRetrieverClientHandler smsRetrieverClientHandler, boolean z, VerificationRequestManager verificationRequestManager, Handler handler) {
        super(createInstallationModel, verificationCallback, smsRetrieverClientHandler, z, verificationRequestManager, handler, 9);
        this.MILLISECONDS_MULTIPLIER = 1000L;
    }

    @Override // com.truecaller.android.sdk.common.callbacks.MissedCallInstallationCallback, com.truecaller.android.sdk.common.callbacks.OtpInstallationCallback, com.truecaller.android.sdk.common.callbacks.CreateInstallationCallback
    void onVerificationRequired(Map<String, Object> map) {
        if (METHOD_IM.equals((String) map.get("method"))) {
            Double dValueOf = (Double) map.get("tokenTtl");
            if (dValueOf == null) {
                dValueOf = Double.valueOf(DEFAULT_IM_OTP_TTL);
            }
            long jLongValue = dValueOf.longValue() * 1000;
            String str = (String) map.get("requestNonce");
            this.mPresenter.registerImOtpReceiver(this.mCallback, jLongValue);
            VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
            verificationDataBundle.put(VerificationDataBundle.KEY_TTL, dValueOf.toString());
            verificationDataBundle.put("requestNonce", str);
            this.mCallback.onRequestSuccess(this.mCallbackType, verificationDataBundle);
            return;
        }
        super.onVerificationRequired(map);
    }
}
