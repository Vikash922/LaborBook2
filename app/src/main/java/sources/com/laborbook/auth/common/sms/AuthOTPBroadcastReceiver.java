package com.laborbook.auth.common.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthOTPBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, m2722d2 = {"Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AuthOTPBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static SMSListener smsListener;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        SMSListener sMSListener;
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual(SmsRetriever.SMS_RETRIEVED_ACTION, intent.getAction())) {
            Bundle extras = intent.getExtras();
            Status status = extras != null ? (Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS") : null;
            if (status != null) {
                int statusCode = status.getStatusCode();
                if (statusCode != 0) {
                    if (statusCode == 15 && (sMSListener = smsListener) != null) {
                        sMSListener.onError("Failed to extract from Broadcast Receiver");
                        return;
                    }
                    return;
                }
                Intrinsics.checkNotNull(extras);
                String str = (String) extras.get(SmsRetriever.EXTRA_SMS_MESSAGE);
                SMSListener sMSListener2 = smsListener;
                if (sMSListener2 != null) {
                    sMSListener2.onSuccess(str);
                }
            }
        }
    }

    /* JADX INFO: compiled from: AuthOTPBroadcastReceiver.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, m2722d2 = {"Lcom/laborbook/auth/common/sms/AuthOTPBroadcastReceiver$Companion;", "", "<init>", "()V", "smsListener", "Lcom/laborbook/auth/common/sms/SMSListener;", "initSMSListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void initSMSListener(SMSListener listener) {
            AuthOTPBroadcastReceiver.smsListener = listener;
        }
    }
}
