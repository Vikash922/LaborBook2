package com.truecaller.android.sdk.legacy.clients;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.truecaller.android.sdk.BuildConfig;
import com.truecaller.android.sdk.C3956R;
import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.android.sdk.legacy.ClientManager;
import com.truecaller.android.sdk.legacy.ITrueCallback;
import com.truecaller.android.sdk.legacy.ShareProfileHelper;
import com.truecaller.android.sdk.legacy.TrueError;
import com.truecaller.android.sdk.legacy.TrueResponse;
import com.truecaller.android.sdk.legacy.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class TrueClient extends TcClient {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final SdkScopeEvaluator sdkScopeEvaluator;

    @Deprecated
    public TrueClient(Context context, String str, ITrueCallback iTrueCallback) {
        this(context, str, iTrueCallback, new SdkScopeEvaluator(4, 0, null));
    }

    public TrueClient(Context context, String str, ITrueCallback iTrueCallback, SdkScopeEvaluator sdkScopeEvaluator) {
        super(context, str, iTrueCallback, 1);
        this.sdkScopeEvaluator = sdkScopeEvaluator;
    }

    public void getTrueCallerUserProfile(FragmentActivity fragmentActivity) {
        try {
            Intent shareProfileIntent = getShareProfileIntent(fragmentActivity);
            if (shareProfileIntent == null) {
                handleNullProfileIntent(fragmentActivity);
            } else {
                fragmentActivity.startActivityForResult(shareProfileIntent, 100);
            }
        } catch (ActivityNotFoundException unused) {
            handleActivityNotFound(fragmentActivity);
        }
    }

    public void getTrueCallerUserProfile(Fragment fragment) {
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            try {
                Intent shareProfileIntent = getShareProfileIntent(activity);
                if (shareProfileIntent == null) {
                    handleNullProfileIntent(activity);
                } else {
                    fragment.startActivityForResult(shareProfileIntent, 100);
                }
            } catch (ActivityNotFoundException unused) {
                handleActivityNotFound(activity);
            }
        }
    }

    private void handleActivityNotFound(FragmentActivity fragmentActivity) {
        handleShareProfileConsentFailure(fragmentActivity, 15);
    }

    Intent getShareProfileIntent(Activity activity) {
        String applicationSignature = Utils.getApplicationSignature(activity);
        if (applicationSignature == null) {
            throw new RuntimeException("Could not fetch application's signature");
        }
        String requestNonce = getRequestNonce();
        return ShareProfileHelper.getShareProfileIntent(activity, new PartnerInformation(BuildConfig.TRUESDK_VERSION, getPartnerKey(), activity.getPackageName(), applicationSignature, requestNonce, getLocale(), getTheme(), activity.getString(C3956R.string.sdk_variant), activity.getString(C3956R.string.sdk_variant_version)), this.sdkScopeEvaluator);
    }

    public boolean onActivityResultObtained(FragmentActivity fragmentActivity, int i, Intent intent) {
        TrueResponse trueResponse;
        if (intent == null || intent.getExtras() == null) {
            this.mCallback.onFailureProfileShared(new TrueError(5));
            return false;
        }
        Bundle extras = intent.getExtras();
        if (extras.containsKey(TrueResponse.TRUESDK_VERSION)) {
            trueResponse = new TrueResponse(extras);
        } else {
            trueResponse = (TrueResponse) extras.getParcelable(TrueResponse.TRUECALLER_RESPONSE_EXTRA);
        }
        if (trueResponse == null) {
            this.mCallback.onFailureProfileShared(new TrueError(7));
            return false;
        }
        if (-1 == i) {
            if (trueResponse.trueProfile == null) {
                return true;
            }
            this.mCallback.onSuccessProfileShared(trueResponse.trueProfile);
            return true;
        }
        TrueError trueError = trueResponse.trueError;
        if (trueError == null) {
            return true;
        }
        int errorType = trueError.getErrorType();
        if (errorType == 10 || errorType == 2 || errorType == 14 || errorType == 13) {
            handleShareProfileConsentFailure(fragmentActivity, errorType);
            return true;
        }
        this.mCallback.onFailureProfileShared(trueError);
        return true;
    }

    void handleNullProfileIntent(FragmentActivity fragmentActivity) {
        handleShareProfileConsentFailure(fragmentActivity, 11);
    }

    void handleShareProfileConsentFailure(FragmentActivity fragmentActivity, int i) {
        if (this.sdkScopeEvaluator.isVerificationFeatureRequested()) {
            ClientManager.getInstance().switchToVerificationFallback(this.mAppContext, getPartnerKey(), getRequestNonce(), this.mCallback, fragmentActivity, i);
        } else {
            this.mCallback.onFailureProfileShared(new TrueError(i));
        }
    }
}
