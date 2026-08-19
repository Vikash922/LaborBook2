package com.truecaller.android.sdk.common.imOtpVerification;

import android.content.Context;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import androidx.core.content.ContextCompat;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationDataBundle;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ImOtpReceiverClientHandler.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\fJ\u0006\u0010\u0015\u001a\u00020\fR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "countDownTimer", "Landroid/os/CountDownTimer;", "imOtpReceiver", "Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;", "mAppContext", "Ljava/lang/ref/WeakReference;", "registerReceiver", "", "verificationCallback", "Lcom/truecaller/android/sdk/common/VerificationCallback;", "action", "", "startCountDownTimer", VerificationDataBundle.KEY_TTL, "", "stopCountDownTimer", "unregisterReceiver", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class ImOtpReceiverClientHandler {
    private CountDownTimer countDownTimer;
    private TruecallerImOtpReceiver imOtpReceiver;
    private final WeakReference<Context> mAppContext;

    public ImOtpReceiverClientHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mAppContext = new WeakReference<>(context);
    }

    public final void registerReceiver(VerificationCallback verificationCallback, String action) {
        Intrinsics.checkNotNullParameter(verificationCallback, "verificationCallback");
        Intrinsics.checkNotNullParameter(action, "action");
        if (this.mAppContext.get() != null) {
            unregisterReceiver();
            this.imOtpReceiver = new TruecallerImOtpReceiver(verificationCallback);
            Context context = this.mAppContext.get();
            if (context != null) {
                ContextCompat.registerReceiver(context, this.imOtpReceiver, new IntentFilter(action), 2);
            }
        }
    }

    public final void unregisterReceiver() {
        TruecallerImOtpReceiver truecallerImOtpReceiver = this.imOtpReceiver;
        if (truecallerImOtpReceiver != null) {
            try {
                Context context = this.mAppContext.get();
                if (context != null) {
                    context.unregisterReceiver(truecallerImOtpReceiver);
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Exception unused) {
                Unit unit2 = Unit.INSTANCE;
            }
        }
        this.imOtpReceiver = null;
    }

    public final void startCountDownTimer(long ttl) {
        stopCountDownTimer();
        this.countDownTimer = new CountDownTimer(ttl) { // from class: com.truecaller.android.sdk.common.imOtpVerification.ImOtpReceiverClientHandler.startCountDownTimer.1
            @Override // android.os.CountDownTimer
            public void onTick(long l) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                this.unregisterReceiver();
            }
        };
    }

    public final void stopCountDownTimer() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.countDownTimer = null;
    }
}
