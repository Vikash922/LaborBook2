package com.truecaller.android.sdk.common;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public interface VerificationCallback {
    public static final int TYPE_IM_OTP_INITIATED = 9;
    public static final int TYPE_IM_OTP_RECEIVED = 10;
    public static final int TYPE_MISSED_CALL_INITIATED = 3;
    public static final int TYPE_MISSED_CALL_RECEIVED = 4;
    public static final int TYPE_OTP_INITIATED = 1;
    public static final int TYPE_OTP_RECEIVED = 2;
    public static final int TYPE_PROFILE_VERIFIED_BEFORE = 6;
    public static final int TYPE_VERIFICATION_COMPLETE = 5;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CallbackType {
    }

    void onRequestFailure(int i, TrueException trueException);

    void onRequestSuccess(int i, VerificationDataBundle verificationDataBundle);
}
