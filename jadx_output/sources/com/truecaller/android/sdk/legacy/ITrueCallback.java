package com.truecaller.android.sdk.legacy;

import com.truecaller.android.sdk.common.models.TrueProfile;

/* JADX INFO: loaded from: classes5.dex */
public interface ITrueCallback {
    void onFailureProfileShared(TrueError trueError);

    void onSuccessProfileShared(TrueProfile trueProfile);

    void onVerificationRequired(TrueError trueError);
}
