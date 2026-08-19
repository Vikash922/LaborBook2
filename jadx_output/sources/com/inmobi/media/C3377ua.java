package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ua */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class C3377ua extends FunctionReferenceImpl implements Function1 {
    public C3377ua(C3407wa c3407wa) {
        super(1, c3407wa, C3407wa.class, "instantiateBillingClientV7", "instantiateBillingClientV7(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Context p0 = (Context) obj;
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((C3407wa) this.receiver).getClass();
        return C3407wa.m2557b(p0);
    }
}
