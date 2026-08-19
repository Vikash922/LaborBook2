package com.truecaller.android.sdk.common;

import android.os.Handler;
import androidx.fragment.app.FragmentActivity;
import com.truecaller.android.sdk.common.callbacks.CreateProfileCallback;
import com.truecaller.android.sdk.common.callbacks.FetchProfileCallback;
import com.truecaller.android.sdk.common.callbacks.MissedCallInstallationCallback;
import com.truecaller.android.sdk.common.callbacks.VerifyInstallationCallback;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.common.models.VerifyInstallationModel;

/* JADX INFO: loaded from: classes5.dex */
public interface VerificationRequestManager {

    public interface Client {
        String getDeviceId(FragmentActivity fragmentActivity);

        Handler getHandler();

        int getSimState();

        boolean isAirplaneModeDisabled();

        boolean isDesiredPermissionEnabled();

        void registerImOtpReceiver(VerificationCallback verificationCallback, long j);

        void registerIncomingCallReceiver(MissedCallInstallationCallback missedCallInstallationCallback);

        void rejectCall();

        void unRegisterIncomingCallReceiver();
    }

    void enqueueCheckInstallation(String str, String str2, String str3, String str4, String str5, boolean z, VerificationCallback verificationCallback, String str6);

    void enqueueCreateProfile(String str, TrueProfile trueProfile);

    void enqueueFetchProfile(String str, String str2, VerificationCallback verificationCallback);

    void enqueueMissedCallVerification(TrueProfile trueProfile, String str, VerificationCallback verificationCallback);

    void enqueueVerificationAndCreateProfile(TrueProfile trueProfile, String str, String str2, VerificationCallback verificationCallback);

    void notifyAuthenticationRequired();

    void registerImOtpReceiver(VerificationCallback verificationCallback, long j);

    void registerIncomingCallListener(MissedCallInstallationCallback missedCallInstallationCallback);

    void rejectCall();

    void retryEnqueueCreateProfile(String str, TrueProfile trueProfile, CreateProfileCallback createProfileCallback);

    void retryEnqueueVerifyInstallationAndCreateProfile(String str, VerifyInstallationModel verifyInstallationModel, VerifyInstallationCallback verifyInstallationCallback);

    void retryFetchProfile(String str, FetchProfileCallback fetchProfileCallback);

    void setSecretToken(String str);

    void setVerificationToken(String str, long j);

    void unRegisterIncomingCallListener();
}
