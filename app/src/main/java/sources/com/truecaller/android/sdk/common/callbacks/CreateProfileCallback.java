package com.truecaller.android.sdk.common.callbacks;

import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.legacy.Utils;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
public class CreateProfileCallback implements Callback<JSONObject> {
    private final String mAccessToken;
    private final VerificationRequestManager mPresenter;
    public boolean mShouldRetryOnInternalError;
    private final TrueProfile mTrueProfile;

    @Override // retrofit2.Callback
    public void onFailure(Call<JSONObject> call, Throwable th) {
    }

    public CreateProfileCallback(String str, TrueProfile trueProfile, VerificationRequestManager verificationRequestManager, boolean z) {
        this.mAccessToken = str;
        this.mTrueProfile = trueProfile;
        this.mPresenter = verificationRequestManager;
        this.mShouldRetryOnInternalError = z;
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<JSONObject> call, Response<JSONObject> response) {
        if (response == null || response.errorBody() == null) {
            return;
        }
        String errorForMessage = Utils.parseErrorForMessage(response.errorBody());
        if (this.mShouldRetryOnInternalError && "internal service error".equals(errorForMessage)) {
            this.mShouldRetryOnInternalError = false;
            this.mPresenter.retryEnqueueCreateProfile(this.mAccessToken, this.mTrueProfile, this);
        }
    }
}
