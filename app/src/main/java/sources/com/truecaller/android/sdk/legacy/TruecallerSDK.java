package com.truecaller.android.sdk.legacy;

import android.content.Intent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.truecaller.android.sdk.common.TrueException;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.legacy.clients.TcClient;
import com.truecaller.android.sdk.legacy.clients.TrueClient;
import com.truecaller.android.sdk.legacy.clients.VerificationClient;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class TruecallerSDK {
    public static final int SHARE_PROFILE_REQUEST_CODE = 100;
    private static TruecallerSDK sInstance;
    private final ClientManager mTcClientManager;

    public static synchronized void init(TruecallerSdkScope truecallerSdkScope) {
        sInstance = new TruecallerSDK(ClientManager.createInstance(truecallerSdkScope));
    }

    private TruecallerSDK(ClientManager clientManager) {
        this.mTcClientManager = clientManager;
    }

    public static TruecallerSDK getInstance() throws RuntimeException {
        TruecallerSDK truecallerSDK = sInstance;
        if (truecallerSDK != null) {
            return truecallerSDK;
        }
        throw new RuntimeException(TrueException.TYPE_SDK_NOT_INITIALIZED);
    }

    public boolean isUsable() {
        return this.mTcClientManager.hasUsableClient();
    }

    public void setRequestNonce(String str) {
        if (isUsable()) {
            this.mTcClientManager.getClient().setReqNonce(str);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void updateCallback(ITrueCallback iTrueCallback) {
        if (isUsable()) {
            ClientManager.getInstance().updateProfileCallback(iTrueCallback);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void getUserProfile(FragmentActivity fragmentActivity) {
        if (isUsable()) {
            TcClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 1) {
                ((TrueClient) client).getTrueCallerUserProfile(fragmentActivity);
                return;
            } else {
                ((VerificationClient) client).notifyOtpAuthenticationRequired(fragmentActivity);
                return;
            }
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void getUserProfile(Fragment fragment) {
        if (isUsable()) {
            TcClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 1) {
                ((TrueClient) client).getTrueCallerUserProfile(fragment);
                return;
            } else {
                ((VerificationClient) client).notifyOtpAuthenticationRequired(fragment.getActivity());
                return;
            }
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public boolean onActivityResultObtained(FragmentActivity fragmentActivity, int i, int i2, Intent intent) {
        if (i != 100) {
            return false;
        }
        if (isUsable()) {
            TcClient client = this.mTcClientManager.getClient();
            return client.getClientType() == 1 && ((TrueClient) client).onActivityResultObtained(fragmentActivity, i2, intent);
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void requestVerification(String str, String str2, VerificationCallback verificationCallback, FragmentActivity fragmentActivity) {
        if (isUsable()) {
            TcClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 2) {
                ((VerificationClient) client).checkClientInstallation(str, str2, verificationCallback, fragmentActivity);
                return;
            }
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void verifyOtp(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        if (isUsable()) {
            TcClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 2) {
                ((VerificationClient) client).verifyOtpInstallation(trueProfile, str, verificationCallback);
                return;
            }
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void verifyMissedCall(TrueProfile trueProfile, VerificationCallback verificationCallback) {
        if (isUsable()) {
            TcClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 2) {
                ((VerificationClient) client).verifyMissedCallInstallation(trueProfile, verificationCallback);
                return;
            }
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void setLocale(Locale locale) {
        if (isUsable()) {
            this.mTcClientManager.getClient().setLocale(locale);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void setTheme(int i) {
        if (isUsable()) {
            this.mTcClientManager.getClient().setTheme(i);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public static void clear() {
        TruecallerSDK truecallerSDK = sInstance;
        if (truecallerSDK != null) {
            TcClient client = truecallerSDK.mTcClientManager.getClient();
            if (client != null && client.getClientType() == 2) {
                ((VerificationClient) client).clear();
            }
            sInstance.mTcClientManager.clear();
            sInstance = null;
        }
    }
}
