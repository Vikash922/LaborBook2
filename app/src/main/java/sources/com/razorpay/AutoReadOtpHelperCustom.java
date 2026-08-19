package com.razorpay;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class AutoReadOtpHelperCustom extends BroadcastReceiver {
    private Activity $sS$$__s$S$;

    public AutoReadOtpHelperCustom(Activity activity) {
        this.$sS$$__s$S$ = activity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (SmsRetriever.SMS_RETRIEVED_ACTION.equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            Status status = (Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
            AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS);
            int statusCode = status.getStatusCode();
            if (statusCode != 0) {
                if (statusCode != 15) {
                    return;
                }
                AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT);
            } else if (((ComponentName) Objects.requireNonNull(this.$sS$$__s$S$.getCallingActivity())).getPackageName().equalsIgnoreCase("com.razorpay")) {
                try {
                    this.$sS$$__s$S$.startActivityForResult((Intent) extras.getParcelable(SmsRetriever.EXTRA_CONSENT_INTENT), 1001);
                    AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT);
                } catch (ActivityNotFoundException e) {
                    AnalyticsUtil.reportError("AutoReadOtpHelper", "S0", e.getLocalizedMessage());
                    e.printStackTrace();
                }
            }
        }
    }
}
