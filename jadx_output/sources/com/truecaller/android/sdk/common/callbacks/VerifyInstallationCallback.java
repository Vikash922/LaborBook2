package com.truecaller.android.sdk.common.callbacks;

import com.truecaller.android.sdk.common.TrueException;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.common.models.VerifyInstallationModel;
import java.util.Map;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
public class VerifyInstallationCallback extends BaseApiCallback<Map<String, Object>> {
    private String mClientIdentifier;
    private VerificationRequestManager mPresenter;
    private TrueProfile mTrueProfile;
    private VerifyInstallationModel mVerifyInstallModel;

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback, retrofit2.Callback
    public /* bridge */ /* synthetic */ void onFailure(Call call, Throwable th) {
        super.onFailure(call, th);
    }

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback, retrofit2.Callback
    public /* bridge */ /* synthetic */ void onResponse(Call call, Response response) {
        super.onResponse(call, response);
    }

    public VerifyInstallationCallback(String str, VerifyInstallationModel verifyInstallationModel, VerificationCallback verificationCallback, TrueProfile trueProfile, VerificationRequestManager verificationRequestManager, boolean z) {
        super(verificationCallback, z, 5);
        this.mTrueProfile = trueProfile;
        this.mPresenter = verificationRequestManager;
        this.mClientIdentifier = str;
        this.mVerifyInstallModel = verifyInstallationModel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback
    public void handleSuccessfulResponse(Map<String, Object> map) {
        if (map.containsKey("accessToken")) {
            String str = (String) map.get("accessToken");
            VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
            verificationDataBundle.put("accessToken", str);
            verificationDataBundle.put("requestNonce", (String) map.get("requestNonce"));
            this.mCallback.onRequestSuccess(this.mCallbackType, verificationDataBundle);
            this.mPresenter.enqueueCreateProfile(str, this.mTrueProfile);
            return;
        }
        this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(1, "Unknown error"));
    }

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback
    void handleRetryAttempt() {
        this.mPresenter.retryEnqueueVerifyInstallationAndCreateProfile(this.mClientIdentifier, this.mVerifyInstallModel, this);
    }
}
