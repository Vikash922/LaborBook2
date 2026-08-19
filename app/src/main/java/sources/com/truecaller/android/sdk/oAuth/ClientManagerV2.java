package com.truecaller.android.sdk.oAuth;

import android.app.Activity;
import android.content.Context;
import com.truecaller.android.sdk.oAuth.clients.BaseClient;
import com.truecaller.android.sdk.oAuth.clients.OAuthClient;
import com.truecaller.android.sdk.oAuth.clients.VerificationClientV2;

/* JADX INFO: loaded from: classes.dex */
public class ClientManagerV2 {
    public static ClientManagerV2 sClientManager;
    private BaseClient mTcClient;

    static ClientManagerV2 createInstance(TcSdkOptions tcSdkOptions) {
        ClientManagerV2 clientManagerV2 = new ClientManagerV2(tcSdkOptions);
        sClientManager = clientManagerV2;
        return clientManagerV2;
    }

    public static ClientManagerV2 getInstance() {
        return sClientManager;
    }

    private ClientManagerV2(TcSdkOptions tcSdkOptions) {
        BaseClient verificationClientV2;
        boolean zIsValidOAuthTcClientAvailable = ShareProfileHelperV2.isValidOAuthTcClientAvailable(tcSdkOptions.context);
        SdkOptionsEvaluator sdkOptionsEvaluator = new SdkOptionsEvaluator(tcSdkOptions.sdkFlag, tcSdkOptions.sdkOptionsDataBundle);
        if (zIsValidOAuthTcClientAvailable) {
            verificationClientV2 = new OAuthClient(tcSdkOptions.context, tcSdkOptions.clientId, tcSdkOptions.callback, sdkOptionsEvaluator);
        } else {
            verificationClientV2 = sdkOptionsEvaluator.isVerificationFeatureRequested() ? new VerificationClientV2(tcSdkOptions.context, tcSdkOptions.clientId, tcSdkOptions.callback, false) : null;
        }
        this.mTcClient = verificationClientV2;
    }

    public void switchToVerificationFallback(Context context, String str, String str2, TcOAuthCallback tcOAuthCallback, Activity activity, TcOAuthError tcOAuthError) {
        VerificationClientV2 verificationClientV2CreateInstanceForFallback = VerificationClientV2.createInstanceForFallback(context, str, tcOAuthCallback, activity, tcOAuthError);
        this.mTcClient = verificationClientV2CreateInstanceForFallback;
        verificationClientV2CreateInstanceForFallback.setState(str2);
    }

    boolean hasUsableOAuthClient() {
        return this.mTcClient != null;
    }

    BaseClient getClient() {
        return this.mTcClient;
    }

    public void clear() {
        this.mTcClient = null;
        sClientManager = null;
    }
}
