package com.inmobi.media;

import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.qa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0473qa implements BillingClientStateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0556wa f462a;
    public final /* synthetic */ C0500sa b;

    public C0473qa(C0556wa c0556wa, C0500sa c0500sa) {
        this.f462a = c0556wa;
        this.b = c0500sa;
    }

    public static final void a(Function1 onComplete, AbstractC0458pa result) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(result, "$result");
        onComplete.invoke(result);
    }

    public final void onBillingServiceDisconnected() {
        this.f462a.getClass();
        final C0500sa c0500sa = this.b;
        final C0556wa c0556wa = this.f462a;
        Kb.a(new Runnable() { // from class: com.inmobi.media.qa$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0473qa.a(c0500sa, c0556wa);
            }
        });
    }

    public final void onBillingSetupFinished(BillingResult billingResult) {
        final AbstractC0458pa c0428na;
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.f462a.getClass();
        Objects.toString(billingResult);
        if (billingResult.getResponseCode() == 0) {
            c0428na = C0443oa.f447a;
        } else {
            int responseCode = billingResult.getResponseCode();
            String debugMessage = billingResult.getDebugMessage();
            Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
            c0428na = new C0428na(debugMessage, responseCode);
        }
        final C0500sa c0500sa = this.b;
        Kb.a(new Runnable() { // from class: com.inmobi.media.qa$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0473qa.a(c0500sa, c0428na);
            }
        });
    }

    public static final void a(Function1 onComplete, C0556wa this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getClass();
        onComplete.invoke(new C0428na("Billing Service Disconnected", -1));
    }
}
