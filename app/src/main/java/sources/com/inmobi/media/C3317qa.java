package com.inmobi.media;

import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.qa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3317qa implements BillingClientStateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3407wa f2462a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3347sa f2463b;

    public C3317qa(C3407wa c3407wa, C3347sa c3347sa) {
        this.f2462a = c3407wa;
        this.f2463b = c3347sa;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2355a(Function1 onComplete, AbstractC3302pa result) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(result, "$result");
        onComplete.invoke(result);
    }

    public final void onBillingServiceDisconnected() {
        this.f2462a.getClass();
        final C3347sa c3347sa = this.f2463b;
        final C3407wa c3407wa = this.f2462a;
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.qa$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3317qa.m2356a(c3347sa, c3407wa);
            }
        });
    }

    public final void onBillingSetupFinished(BillingResult billingResult) {
        final AbstractC3302pa c3272na;
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.f2462a.getClass();
        Objects.toString(billingResult);
        if (billingResult.getResponseCode() == 0) {
            c3272na = C3287oa.f2418a;
        } else {
            int responseCode = billingResult.getResponseCode();
            String debugMessage = billingResult.getDebugMessage();
            Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
            c3272na = new C3272na(debugMessage, responseCode);
        }
        final C3347sa c3347sa = this.f2463b;
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.qa$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3317qa.m2355a(c3347sa, c3272na);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2356a(Function1 onComplete, C3407wa this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getClass();
        onComplete.invoke(new C3272na("Billing Service Disconnected", -1));
    }
}
