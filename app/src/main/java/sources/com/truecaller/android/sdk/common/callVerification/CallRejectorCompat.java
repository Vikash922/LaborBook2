package com.truecaller.android.sdk.common.callVerification;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public class CallRejectorCompat {
    public static CallRejector getCallRejectorInstance(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new CallRejectorPieImpl(context);
        }
        return new CallRejectorLegacyImpl(context);
    }
}
