package com.truecaller.android.sdk.common.callVerification;

import android.telephony.PhoneStateListener;
import com.truecaller.android.sdk.common.callbacks.MissedCallInstallationCallback;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingCallListener extends PhoneStateListener {
    private final MissedCallInstallationCallback mMissedCallInstallationCallback;

    public IncomingCallListener(MissedCallInstallationCallback missedCallInstallationCallback) {
        this.mMissedCallInstallationCallback = missedCallInstallationCallback;
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        super.onCallStateChanged(i, str);
        if (i == 1) {
            this.mMissedCallInstallationCallback.onCallReceivedFrom(str);
        }
    }
}
