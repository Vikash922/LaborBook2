package com.truecaller.android.sdk.common.callVerification;

import android.content.Context;
import android.telecom.TelecomManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CallRejector.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;", "Lcom/truecaller/android/sdk/common/callVerification/CallRejector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "telecomManager", "Landroid/telecom/TelecomManager;", "reject", "", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class CallRejectorPieImpl implements CallRejector {
    private final TelecomManager telecomManager;

    public CallRejectorPieImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("telecom");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telecom.TelecomManager");
        this.telecomManager = (TelecomManager) systemService;
    }

    @Override // com.truecaller.android.sdk.common.callVerification.CallRejector
    public boolean reject() {
        try {
            return this.telecomManager.endCall();
        } catch (Exception unused) {
            return false;
        }
    }
}
