package com.truecaller.android.sdk.common.callbacks;

import android.os.Handler;
import com.truecaller.android.sdk.common.TrueException;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.CreateInstallationModel;
import com.truecaller.android.sdk.common.otpVerification.SmsRetrieverClientHandler;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MissedCallInstallationCallback extends OtpInstallationCallback {
    static final String JSON_KEY_METHOD = "method";
    static final String METHOD_CALL = "call";
    private final double DEFAULT_MISSED_CALL_TTL;
    private final long MILLISECONDS_MULTIPLIER;
    Runnable handleTtlRunnable;
    private Handler handler;
    private String mCallingNumber;
    private String mPattern;

    public MissedCallInstallationCallback(CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, SmsRetrieverClientHandler smsRetrieverClientHandler, boolean z, VerificationRequestManager verificationRequestManager, Handler handler, int i) {
        super(createInstallationModel, verificationCallback, z, verificationRequestManager, smsRetrieverClientHandler, i);
        this.DEFAULT_MISSED_CALL_TTL = 40.0d;
        this.MILLISECONDS_MULTIPLIER = 1000L;
        this.handler = handler;
    }

    @Override // com.truecaller.android.sdk.common.callbacks.OtpInstallationCallback, com.truecaller.android.sdk.common.callbacks.CreateInstallationCallback
    void onVerificationRequired(Map<String, Object> map) {
        if ("call".equals((String) map.get("method"))) {
            this.mPresenter.registerIncomingCallListener(this);
            this.mPattern = (String) map.get("pattern");
            Double dValueOf = (Double) map.get("tokenTtl");
            if (dValueOf == null) {
                dValueOf = Double.valueOf(40.0d);
            }
            VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
            verificationDataBundle.put(VerificationDataBundle.KEY_TTL, dValueOf.toString());
            verificationDataBundle.put("requestNonce", (String) map.get("requestNonce"));
            this.mCallback.onRequestSuccess(3, verificationDataBundle);
            Runnable runnable = new Runnable() { // from class: com.truecaller.android.sdk.common.callbacks.MissedCallInstallationCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onVerificationRequired$0();
                }
            };
            this.handleTtlRunnable = runnable;
            this.handler.postDelayed(runnable, dValueOf.longValue() * 1000);
            return;
        }
        super.onVerificationRequired(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onVerificationRequired$0() {
        notifyMissedCallVerifiedMaybe(true);
    }

    public void onCallReceivedFrom(String str) {
        if (str == null || str.length() == 0) {
            removeTtlHandlerCallback();
            this.mCallback.onRequestFailure(4, new TrueException(4, "Required permissions missing"));
        } else {
            this.mCallingNumber = str;
            notifyMissedCallVerifiedMaybe(false);
        }
    }

    void notifyMissedCallVerifiedMaybe(boolean z) {
        if (z || this.mPattern != null) {
            this.mPresenter.rejectCall();
            this.mPresenter.unRegisterIncomingCallListener();
            if (this.mCallingNumber != null && this.mPattern != null) {
                this.mPresenter.setSecretToken(getSecretToken());
                this.mCallback.onRequestSuccess(4, null);
            }
            removeTtlHandlerCallback();
        }
    }

    private String getSecretToken() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.mPattern.split(",")) {
            sb.append(this.mCallingNumber.charAt((r5.length() - Integer.parseInt(str)) - 1));
        }
        return sb.toString();
    }

    private void removeTtlHandlerCallback() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.handleTtlRunnable);
            this.handler = null;
        }
    }
}
