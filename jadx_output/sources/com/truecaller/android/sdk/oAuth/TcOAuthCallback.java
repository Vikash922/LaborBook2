package com.truecaller.android.sdk.oAuth;

import kotlin.Metadata;

/* JADX INFO: compiled from: TcOAuthCallback.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;", "", "onFailure", "", "tcOAuthError", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "onSuccess", "tcOAuthData", "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "onVerificationRequired", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public interface TcOAuthCallback {
    void onFailure(TcOAuthError tcOAuthError);

    void onSuccess(TcOAuthData tcOAuthData);

    void onVerificationRequired(TcOAuthError tcOAuthError);
}
