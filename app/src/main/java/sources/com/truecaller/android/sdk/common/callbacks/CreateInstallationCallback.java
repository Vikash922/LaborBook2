package com.truecaller.android.sdk.common.callbacks;

import com.truecaller.android.sdk.common.TrueException;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.models.CreateInstallationModel;
import com.truecaller.android.sdk.common.network.VerificationService;
import java.util.Map;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CreateInstallationCallback extends BaseApiCallback<Map<String, Object>> {
    static final int CLIENT_STATUS_NOT_VERIFIED = 0;
    static final int CLIENT_STATUS_VERIFIED = 1;
    static final String TOKEN_TTL = "tokenTtl";
    private final CreateInstallationModel mInstallationModel;
    protected final VerificationRequestManager mPresenter;

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback
    void handleRetryAttempt() {
    }

    abstract void onVerificationRequired(Map<String, Object> map);

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback, retrofit2.Callback
    public /* bridge */ /* synthetic */ void onFailure(Call call, Throwable th) {
        super.onFailure(call, th);
    }

    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback, retrofit2.Callback
    public /* bridge */ /* synthetic */ void onResponse(Call call, Response response) {
        super.onResponse(call, response);
    }

    CreateInstallationCallback(CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, boolean z, VerificationRequestManager verificationRequestManager, int i) {
        super(verificationCallback, z, i);
        this.mInstallationModel = createInstallationModel;
        this.mPresenter = verificationRequestManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.truecaller.android.sdk.common.callbacks.BaseApiCallback
    public void handleSuccessfulResponse(Map<String, Object> map) {
        Double d = (Double) map.get("status");
        if (d.doubleValue() == 0.0d) {
            this.mPresenter.setVerificationToken((String) map.get(VerificationService.JSON_KEY_VERIFICATION_TOKEN), System.currentTimeMillis());
            onVerificationRequired(map);
        } else {
            if (d.doubleValue() == 1.0d) {
                String str = (String) map.get("accessToken");
                this.mPresenter.enqueueFetchProfile((String) map.get("requestNonce"), str, this.mCallback);
                return;
            }
            this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(1, "Unknown error"));
        }
    }
}
