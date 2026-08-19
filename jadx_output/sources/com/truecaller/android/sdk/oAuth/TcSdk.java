package com.truecaller.android.sdk.oAuth;

import android.content.Intent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.oAuth.clients.BaseClient;
import com.truecaller.android.sdk.oAuth.clients.OAuthClient;
import com.truecaller.android.sdk.oAuth.clients.VerificationClientV2;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class TcSdk {
    public static final int SHARE_PROFILE_REQUEST_CODE = 100;
    private static TcSdk sInstance;
    private final ClientManagerV2 mTcClientManager;

    public static synchronized void init(TcSdkOptions tcSdkOptions) {
        sInstance = new TcSdk(ClientManagerV2.createInstance(tcSdkOptions));
    }

    private TcSdk(ClientManagerV2 clientManagerV2) {
        this.mTcClientManager = clientManagerV2;
    }

    public static TcSdk getInstance() throws RuntimeException {
        TcSdk tcSdk = sInstance;
        if (tcSdk != null) {
            return tcSdk;
        }
        throw new RuntimeException("Please call init() on TcSdk first");
    }

    public boolean isOAuthFlowUsable() {
        return this.mTcClientManager.hasUsableOAuthClient();
    }

    public void getAuthorizationCode(FragmentActivity fragmentActivity) {
        if (isOAuthFlowUsable()) {
            BaseClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 1) {
                OAuthClient oAuthClient = (OAuthClient) client;
                if (oAuthClient.getCodeChallenge() == null || oAuthClient.getCodeChallenge().trim().isEmpty()) {
                    throw new RuntimeException(TcException.TYPE_CODE_CHALLENGE_MISSING);
                }
                if (oAuthClient.getScopes() == null || oAuthClient.getScopes().length == 0) {
                    throw new RuntimeException("OAuth scopes cannot be null or empty");
                }
                if (oAuthClient.getState() == null || oAuthClient.getState().trim().isEmpty()) {
                    throw new RuntimeException("OAuth state cannot be null or empty");
                }
                oAuthClient.getAuthorizationCode(fragmentActivity);
                return;
            }
            ((VerificationClientV2) client).notifyOtpAuthenticationRequired(fragmentActivity);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void getAuthorizationCode(Fragment fragment) {
        if (isOAuthFlowUsable()) {
            BaseClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 1) {
                OAuthClient oAuthClient = (OAuthClient) client;
                if (oAuthClient.getCodeChallenge() == null || oAuthClient.getCodeChallenge().trim().isEmpty()) {
                    throw new RuntimeException(TcException.TYPE_CODE_CHALLENGE_MISSING);
                }
                if (oAuthClient.getScopes() == null || oAuthClient.getScopes().length == 0) {
                    throw new RuntimeException("OAuth scopes cannot be null or empty");
                }
                if (oAuthClient.getState() == null || oAuthClient.getState().trim().isEmpty()) {
                    throw new RuntimeException("OAuth state cannot be null or empty");
                }
                oAuthClient.getAuthorizationCode(fragment);
                return;
            }
            ((VerificationClientV2) client).notifyOtpAuthenticationRequired(fragment.getActivity());
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public boolean onActivityResultObtained(FragmentActivity fragmentActivity, int i, int i2, Intent intent) {
        if (i != 100) {
            return false;
        }
        if (isOAuthFlowUsable()) {
            BaseClient client = this.mTcClientManager.getClient();
            return client.getClientType() == 1 && ((OAuthClient) client).onActivityResultObtained(fragmentActivity, i2, intent);
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void requestVerification(String str, String str2, VerificationCallback verificationCallback, FragmentActivity fragmentActivity) {
        if (isOAuthFlowUsable()) {
            BaseClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 2) {
                ((VerificationClientV2) client).checkClientInstallation(str, str2, verificationCallback, fragmentActivity);
                return;
            }
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void verifyOtp(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        if (isOAuthFlowUsable()) {
            BaseClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 2) {
                ((VerificationClientV2) client).verifyOtpInstallation(trueProfile, str, verificationCallback);
                return;
            }
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void verifyMissedCall(TrueProfile trueProfile, VerificationCallback verificationCallback) {
        if (isOAuthFlowUsable()) {
            BaseClient client = this.mTcClientManager.getClient();
            if (client.getClientType() == 2) {
                ((VerificationClientV2) client).verifyMissedCallInstallation(trueProfile, verificationCallback);
                return;
            }
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void setOAuthState(String str) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.getClient().setState(str);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void setOAuthScopes(String[] strArr) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.getClient().setScopes(strArr);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void setCodeChallenge(String str) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.getClient().setCodeChallenge(str);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public void setLocale(Locale locale) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.getClient().setLocale(locale);
            return;
        }
        throw new RuntimeException("No compatible client available. Please change your scope");
    }

    public static void clear() {
        TcSdk tcSdk = sInstance;
        if (tcSdk != null) {
            BaseClient client = tcSdk.mTcClientManager.getClient();
            if (client != null && client.getClientType() == 2) {
                ((VerificationClientV2) client).clear();
            }
            sInstance.mTcClientManager.clear();
            sInstance = null;
        }
    }
}
