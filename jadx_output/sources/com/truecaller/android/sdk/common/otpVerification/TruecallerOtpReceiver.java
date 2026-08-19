package com.truecaller.android.sdk.common.otpVerification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.common.api.Status;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class TruecallerOtpReceiver extends BroadcastReceiver {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String OTP_PATTERN_TRUECALLER = "\\b\\d{6,}\\b";
    final WeakReference<VerificationCallback> mVerificationCallback;

    public TruecallerOtpReceiver(VerificationCallback verificationCallback) {
        this.mVerificationCallback = new WeakReference<>(verificationCallback);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        context.unregisterReceiver(this);
        if (SmsRetriever.SMS_RETRIEVED_ACTION.equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            if (((Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS")).getStatusCode() == 0) {
                Matcher matcher = Pattern.compile(OTP_PATTERN_TRUECALLER).matcher((String) extras.get(SmsRetriever.EXTRA_SMS_MESSAGE));
                VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
                if (matcher.find()) {
                    verificationDataBundle.put("otp", matcher.group());
                }
                if (this.mVerificationCallback.get() != null) {
                    this.mVerificationCallback.get().onRequestSuccess(2, verificationDataBundle);
                }
            }
        }
    }
}
