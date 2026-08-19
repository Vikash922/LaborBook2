package com.truecaller.android.sdk.legacy;

import android.app.Activity;
import android.content.Context;
import com.truecaller.android.sdk.legacy.clients.SdkScopeEvaluator;
import com.truecaller.android.sdk.legacy.clients.TcClient;
import com.truecaller.android.sdk.legacy.clients.TrueClient;
import com.truecaller.android.sdk.legacy.clients.VerificationClient;

/* JADX INFO: loaded from: classes5.dex */
public class ClientManager {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static ClientManager sClientManager;
    private TcClient mTcClient;

    static ClientManager createInstance(TruecallerSdkScope truecallerSdkScope) {
        ClientManager clientManager = new ClientManager(truecallerSdkScope);
        sClientManager = clientManager;
        return clientManager;
    }

    public static ClientManager getInstance() {
        return sClientManager;
    }

    private ClientManager(TruecallerSdkScope truecallerSdkScope) {
        TcClient verificationClient;
        boolean zIsValidTcClientAvailable = ShareProfileHelper.isValidTcClientAvailable(truecallerSdkScope.context);
        SdkScopeEvaluator sdkScopeEvaluator = new SdkScopeEvaluator(truecallerSdkScope.sdkFlag, truecallerSdkScope.consentTitleOption, truecallerSdkScope.customDataBundle);
        if (zIsValidTcClientAvailable) {
            verificationClient = new TrueClient(truecallerSdkScope.context, truecallerSdkScope.partnerKey, truecallerSdkScope.callback, sdkScopeEvaluator);
        } else {
            verificationClient = sdkScopeEvaluator.isVerificationFeatureRequested() ? new VerificationClient(truecallerSdkScope.context, truecallerSdkScope.partnerKey, truecallerSdkScope.callback, false) : null;
        }
        this.mTcClient = verificationClient;
    }

    boolean hasUsableClient() {
        return this.mTcClient != null;
    }

    TcClient getClient() {
        return this.mTcClient;
    }

    public void switchToVerificationFallback(Context context, String str, String str2, ITrueCallback iTrueCallback, Activity activity, int i) {
        VerificationClient verificationClientCreateInstanceForFallback = VerificationClient.createInstanceForFallback(context, str, iTrueCallback, activity, i);
        this.mTcClient = verificationClientCreateInstanceForFallback;
        verificationClientCreateInstanceForFallback.setReqNonce(str2);
    }

    void updateProfileCallback(ITrueCallback iTrueCallback) {
        this.mTcClient.updateCallback(iTrueCallback);
    }

    public void clear() {
        this.mTcClient = null;
        sClientManager = null;
    }
}
