package com.truecaller.android.sdk.common.callbacks;

import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.TrueProfile;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
public class FetchProfileCallback extends BaseApiCallback<TrueProfile> {
    private String mAccessToken;
    private VerificationRequestManager mPresenter;
    private String mRequestNonce;
    public boolean mShouldRetryOnInternalError;

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback, retrofit2.Callback
    public /* bridge */ /* synthetic */ void onFailure(Call call, Throwable th) {
        super.onFailure(call, th);
    }

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback, retrofit2.Callback
    public /* bridge */ /* synthetic */ void onResponse(Call call, Response response) {
        super.onResponse(call, response);
    }

    public FetchProfileCallback(String str, String str2, VerificationCallback verificationCallback, VerificationRequestManager verificationRequestManager, boolean z) {
        super(verificationCallback, true, 6);
        this.mAccessToken = str2;
        this.mPresenter = verificationRequestManager;
        this.mShouldRetryOnInternalError = z;
        this.mRequestNonce = str;
    }

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback
    void handleRetryAttempt() {
        this.mPresenter.retryFetchProfile(this.mAccessToken, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback
    public void handleSuccessfulResponse(TrueProfile trueProfile) {
        trueProfile.accessToken = this.mAccessToken;
        trueProfile.requestNonce = this.mRequestNonce;
        VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
        verificationDataBundle.put("profile", trueProfile);
        this.mCallback.onRequestSuccess(this.mCallbackType, verificationDataBundle);
    }
}
