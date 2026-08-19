package com.inmobi.media;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryPurchasesParams;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.wa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3407wa {

    /* JADX INFO: renamed from: a */
    public C3122da f2725a;

    /* JADX INFO: renamed from: b */
    public BillingClient f2726b;

    /* JADX INFO: renamed from: c */
    public final AtomicInteger f2727c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d */
    public final C3167ga f2728d = new C3167ga();

    /* JADX INFO: renamed from: e */
    public final int f2729e = 2;

    /* JADX INFO: renamed from: a */
    public static final void m2554a(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    /* JADX INFO: renamed from: b */
    public static final void m2558b(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    /* JADX INFO: renamed from: b */
    public static BillingClient m2557b(Context context) {
        try {
            return BillingClient.newBuilder(context).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).setListener(new PurchasesUpdatedListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda3
                public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                    C3407wa.m2558b(billingResult, list);
                }
            }).build();
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        } catch (NoClassDefFoundError e2) {
            C3402w5 c3402w52 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2561a(Context context, C3122da onComplete) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        try {
            this.f2725a = onComplete;
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            String string = bundle != null ? bundle.getString("com.google.android.play.billingclient.version") : null;
            if (string == null) {
                m2562a(new C3197ia((short) 2236), (C3167ga) null);
                return;
            }
            BillingClient billingClient = (BillingClient) (StringsKt.startsWith$default(string, "6", false, 2, (Object) null) ? new C3362ta(this) : StringsKt.startsWith$default(string, "7", false, 2, (Object) null) ? new C3377ua(this) : new C3392va(this)).invoke(context);
            if (billingClient == null) {
                m2562a(new C3197ia((short) 2233), (C3167ga) null);
                return;
            }
            this.f2726b = billingClient;
            C3347sa onComplete2 = new C3347sa(this);
            Intrinsics.checkNotNullParameter(onComplete2, "onComplete");
            BillingClient billingClient2 = this.f2726b;
            if (billingClient2 != null) {
                billingClient2.startConnection(new C3317qa(this, onComplete2));
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            m2562a(new C3197ia((short) 2237), (C3167ga) null);
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2559b(final C3407wa this$0, final Function1 onComplete, BillingResult billingResult, List purchasesResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        C3167ga c3167ga = this$0.f2728d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchasesResult) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        c3167ga.f2112b = arrayList.size();
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3407wa.m2560b(onComplete, this$0);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public static final void m2560b(Function1 onComplete, C3407wa this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        onComplete.invoke(this$0.f2728d);
    }

    /* JADX INFO: renamed from: a */
    public final void m2562a(AbstractC3242la abstractC3242la, C3167ga c3167ga) {
        AbstractC3257ma.m2298a(abstractC3242la);
        C3122da c3122da = this.f2725a;
        if (c3122da != null) {
            c3122da.invoke(c3167ga);
        }
    }

    /* JADX INFO: renamed from: a */
    public static BillingClient m2553a(Context context) {
        try {
            return BillingClient.newBuilder(context).enablePendingPurchases().setListener(new PurchasesUpdatedListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda1
                public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                    C3407wa.m2554a(billingResult, list);
                }
            }).build();
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        } catch (NoClassDefFoundError e2) {
            C3402w5 c3402w52 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2563a(final C3332ra onComplete) {
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        QueryPurchasesParams.Builder builderNewBuilder = QueryPurchasesParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        builderNewBuilder.setProductType("inapp");
        QueryPurchasesParams.Builder builderNewBuilder2 = QueryPurchasesParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
        builderNewBuilder2.setProductType("subs");
        BillingClient billingClient = this.f2726b;
        if (billingClient != null) {
            billingClient.queryPurchasesAsync(builderNewBuilder.build(), new PurchasesResponseListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda4
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    C3407wa.m2555a(this.f$0, onComplete, billingResult, list);
                }
            });
        }
        BillingClient billingClient2 = this.f2726b;
        if (billingClient2 != null) {
            billingClient2.queryPurchasesAsync(builderNewBuilder2.build(), new PurchasesResponseListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda5
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    C3407wa.m2559b(this.f$0, onComplete, billingResult, list);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2555a(final C3407wa this$0, final Function1 onComplete, BillingResult billingResult, List purchasesResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        C3167ga c3167ga = this$0.f2728d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchasesResult) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        c3167ga.f2111a = arrayList.size();
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3407wa.m2556a(onComplete, this$0);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2556a(Function1 onComplete, C3407wa this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        onComplete.invoke(this$0.f2728d);
    }
}
