package com.truecaller.android.sdk.oAuth.clients;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.truecaller.android.sdk.BuildConfig;
import com.truecaller.android.sdk.C3956R;
import com.truecaller.android.sdk.oAuth.ClientManagerV2;
import com.truecaller.android.sdk.oAuth.OAuthResponse;
import com.truecaller.android.sdk.oAuth.SdkOptionsEvaluator;
import com.truecaller.android.sdk.oAuth.ShareProfileHelperV2;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import com.truecaller.android.sdk.oAuth.TcOAuthError;
import com.truecaller.android.sdk.oAuth.UtilsV2;

/* JADX INFO: loaded from: classes5.dex */
public class OAuthClient extends BaseClient {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final SdkOptionsEvaluator sdkOptionsEvaluator;

    public OAuthClient(Context context, String str, TcOAuthCallback tcOAuthCallback, SdkOptionsEvaluator sdkOptionsEvaluator) {
        super(context, str, tcOAuthCallback, 1);
        this.sdkOptionsEvaluator = sdkOptionsEvaluator;
    }

    public void getAuthorizationCode(FragmentActivity fragmentActivity) {
        try {
            Intent shareProfileIntent = getShareProfileIntent(fragmentActivity);
            if (shareProfileIntent == null) {
                handleNullProfileIntent(fragmentActivity);
            } else {
                fragmentActivity.startActivityForResult(shareProfileIntent, 100);
            }
        } catch (ActivityNotFoundException unused) {
            handleActivityNotFound();
        }
    }

    public void getAuthorizationCode(Fragment fragment) {
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
                handleActivityNotFound();
            }
        }
    }

    private void handleActivityNotFound() {
        this.mCallback.onFailure(TcOAuthError.TruecallerActivityNotFoundError.INSTANCE);
    }

    Intent getShareProfileIntent(Activity activity) {
        String applicationSignature = UtilsV2.getApplicationSignature(activity);
        if (applicationSignature == null) {
            throw new RuntimeException("Could not fetch application's signature");
        }
        return ShareProfileHelperV2.getShareProfileIntent(activity, new PartnerInformationV2(BuildConfig.TRUESDK_OAUTH_VERSION, getClientId(), activity.getPackageName(), applicationSignature, getLocale(), activity.getString(C3956R.string.sdk_variant), activity.getString(C3956R.string.sdk_variant_version), getCodeChallenge(), getScopes(), getState()), this.sdkOptionsEvaluator);
    }

    public boolean onActivityResultObtained(FragmentActivity fragmentActivity, int i, Intent intent) {
        if (intent == null || intent.getExtras() == null) {
            this.mCallback.onFailure(TcOAuthError.TruecallerClosedError.INSTANCE);
            return false;
        }
        OAuthResponse oAuthResponse = (OAuthResponse) intent.getParcelableExtra(OAuthResponse.OAUTH_RESPONSE_EXTRA);
        if (oAuthResponse == null) {
            this.mCallback.onFailure(TcOAuthError.RequestCodeCollisionError.INSTANCE);
            return false;
        }
        if (-1 == i && oAuthResponse.getIsSuccessful()) {
            this.mCallback.onSuccess(((OAuthResponse.SuccessResponse) oAuthResponse).getTcOAuthData());
            return true;
        }
        TcOAuthError tcOAuthError = ((OAuthResponse.FailureResponse) oAuthResponse).getTcOAuthError();
        if (tcOAuthError == TcOAuthError.UserDeniedError.INSTANCE || tcOAuthError == TcOAuthError.UserDeniedByPressingFooterError.INSTANCE || tcOAuthError == TcOAuthError.UserDeniedWhileLoadingError.INSTANCE || tcOAuthError == TcOAuthError.InvalidAccountStateError.INSTANCE) {
            handleConsentFailure(fragmentActivity, tcOAuthError);
            return true;
        }
        this.mCallback.onFailure(tcOAuthError);
        return true;
    }

    void handleNullProfileIntent(FragmentActivity fragmentActivity) {
        handleConsentFailure(fragmentActivity, TcOAuthError.TruecallerNotInstalledError.INSTANCE);
    }

    void handleConsentFailure(FragmentActivity fragmentActivity, TcOAuthError tcOAuthError) {
        if (this.sdkOptionsEvaluator.isVerificationFeatureRequested()) {
            ClientManagerV2.getInstance().switchToVerificationFallback(this.mAppContext, getClientId(), getState(), this.mCallback, fragmentActivity, tcOAuthError);
        } else {
            this.mCallback.onFailure(tcOAuthError);
        }
    }
}
