package com.truecaller.android.sdk.common.otpVerification;

import android.content.Context;
import android.content.IntentFilter;
import androidx.core.content.ContextCompat;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.truecaller.android.sdk.common.VerificationCallback;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class SmsRetrieverClientHandler {
    private final WeakReference<Context> mAppContext;

    public SmsRetrieverClientHandler(Context context) {
        this.mAppContext = new WeakReference<>(context);
    }

    public void startRetriever(VerificationCallback verificationCallback) {
        if (this.mAppContext.get() != null) {
            SmsRetriever.getClient(this.mAppContext.get()).startSmsRetriever();
            ContextCompat.registerReceiver(this.mAppContext.get(), new TruecallerOtpReceiver(verificationCallback), new IntentFilter(SmsRetriever.SMS_RETRIEVED_ACTION), 2);
        }
    }
}
