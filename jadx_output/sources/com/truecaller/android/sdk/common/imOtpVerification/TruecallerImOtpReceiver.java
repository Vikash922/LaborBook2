package com.truecaller.android.sdk.common.imOtpVerification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TruecallerImOtpReceiver.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;", "Landroid/content/BroadcastReceiver;", "verificationCallback", "Lcom/truecaller/android/sdk/common/VerificationCallback;", "(Lcom/truecaller/android/sdk/common/VerificationCallback;)V", "mVerificationCallback", "Ljava/lang/ref/WeakReference;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class TruecallerImOtpReceiver extends BroadcastReceiver {
    private final WeakReference<VerificationCallback> mVerificationCallback;

    public TruecallerImOtpReceiver(VerificationCallback verificationCallback) {
        Intrinsics.checkNotNullParameter(verificationCallback, "verificationCallback");
        this.mVerificationCallback = new WeakReference<>(verificationCallback);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        context.unregisterReceiver(this);
        Bundle extras = intent.getExtras();
        String string = extras != null ? extras.getString(TruecallerImOtpReceiverKt.INTENT_EXTRA_IM_OTP) : null;
        if (string != null) {
            VerificationDataBundle verificationDataBundle = new VerificationDataBundle();
            verificationDataBundle.put("otp", string);
            VerificationCallback verificationCallback = this.mVerificationCallback.get();
            if (verificationCallback != null) {
                verificationCallback.onRequestSuccess(10, verificationDataBundle);
            }
        }
    }
}
