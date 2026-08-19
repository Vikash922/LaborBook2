package com.truecaller.android.sdk.common.callbacks;

import com.truecaller.android.sdk.common.ErrorResponse;
import com.truecaller.android.sdk.common.ErrorResponseKt;
import com.truecaller.android.sdk.common.TrueException;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.legacy.Utils;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
abstract class BaseApiCallback<T> implements Callback<T> {
    protected final VerificationCallback mCallback;
    final int mCallbackType;
    public boolean mShouldRetryOnInternalError;

    abstract void handleRetryAttempt();

    abstract void handleSuccessfulResponse(T t);

    BaseApiCallback(VerificationCallback verificationCallback, boolean z, int i) {
        this.mCallback = verificationCallback;
        this.mShouldRetryOnInternalError = z;
        this.mCallbackType = i;
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<T> call, Response<T> response) {
        if (response == null) {
            this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(1, "Unknown error"));
            return;
        }
        if (response.isSuccessful() && response.body() != null) {
            handleSuccessfulResponse(response.body());
        } else if (response.errorBody() == null) {
            this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(1, "Unknown error"));
        } else {
            handleFailureWithMessage(Utils.parseError(response.errorBody()));
        }
    }

    void handleFailureWithMessage(ErrorResponse errorResponse) {
        if (this.mShouldRetryOnInternalError && "internal service error".equalsIgnoreCase(errorResponse.getMessage())) {
            this.mShouldRetryOnInternalError = false;
            handleRetryAttempt();
            return;
        }
        switch (errorResponse.getCode()) {
            case ErrorResponseKt.PERMISSION_MISSING_ERROR /* 4003 */:
                this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(4, errorResponse.getMessage()));
                break;
            case ErrorResponseKt.SIM_STATE_NOT_READY /* 4004 */:
                this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(6, errorResponse.getMessage()));
                break;
            case ErrorResponseKt.AIRPLANE_MODE_ENABLED /* 4005 */:
                this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(7, errorResponse.getMessage()));
                break;
            default:
                this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(2, errorResponse.getMessage()));
                break;
        }
    }

    @Override // retrofit2.Callback
    public void onFailure(Call<T> call, Throwable th) {
        this.mCallback.onRequestFailure(this.mCallbackType, new TrueException(2, th.getMessage()));
    }
}
