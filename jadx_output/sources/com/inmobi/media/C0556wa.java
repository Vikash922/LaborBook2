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

/* JADX INFO: renamed from: com.inmobi.media.wa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0556wa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0272da f516a;
    public BillingClient b;
    public final AtomicInteger c = new AtomicInteger(0);
    public final C0321ga d = new C0321ga();
    public final int e = 2;

    public static final void a(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    public static final void b(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    public static BillingClient b(Context context) {
        try {
            return BillingClient.newBuilder(context).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).setListener(new PurchasesUpdatedListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda3
                public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                    C0556wa.b(billingResult, list);
                }
            }).build();
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return null;
        } catch (NoClassDefFoundError e2) {
            C0551w5 c0551w52 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return null;
        }
    }

    public final void a(Context context, C0272da onComplete) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        try {
            this.f516a = onComplete;
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            String string = bundle != null ? bundle.getString("com.google.android.play.billingclient.version") : null;
            if (string == null) {
                a(new C0351ia((short) 2236), (C0321ga) null);
                return;
            }
            BillingClient billingClient = (BillingClient) (StringsKt.startsWith$default(string, "6", false, 2, (Object) null) ? new C0514ta(this) : StringsKt.startsWith$default(string, "7", false, 2, (Object) null) ? new C0528ua(this) : new C0542va(this)).invoke(context);
            if (billingClient == null) {
                a(new C0351ia((short) 2233), (C0321ga) null);
                return;
            }
            this.b = billingClient;
            C0500sa onComplete2 = new C0500sa(this);
            Intrinsics.checkNotNullParameter(onComplete2, "onComplete");
            BillingClient billingClient2 = this.b;
            if (billingClient2 != null) {
                billingClient2.startConnection(new C0473qa(this, onComplete2));
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            a(new C0351ia((short) 2237), (C0321ga) null);
        }
    }

    public static final void b(final C0556wa this$0, final Function1 onComplete, BillingResult billingResult, List purchasesResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        C0321ga c0321ga = this$0.d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchasesResult) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        c0321ga.b = arrayList.size();
        Kb.a(new Runnable() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0556wa.b(onComplete, this$0);
            }
        });
    }

    public static final void b(Function1 onComplete, C0556wa this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        onComplete.invoke(this$0.d);
    }

    public final void a(AbstractC0398la abstractC0398la, C0321ga c0321ga) {
        AbstractC0413ma.a(abstractC0398la);
        C0272da c0272da = this.f516a;
        if (c0272da != null) {
            c0272da.invoke(c0321ga);
        }
    }

    public static BillingClient a(Context context) {
        try {
            return BillingClient.newBuilder(context).enablePendingPurchases().setListener(new PurchasesUpdatedListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda1
                public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                    C0556wa.a(billingResult, list);
                }
            }).build();
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return null;
        } catch (NoClassDefFoundError e2) {
            C0551w5 c0551w52 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return null;
        }
    }

    public final void a(final C0486ra onComplete) {
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        QueryPurchasesParams.Builder builderNewBuilder = QueryPurchasesParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        builderNewBuilder.setProductType("inapp");
        QueryPurchasesParams.Builder builderNewBuilder2 = QueryPurchasesParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
        builderNewBuilder2.setProductType("subs");
        BillingClient billingClient = this.b;
        if (billingClient != null) {
            billingClient.queryPurchasesAsync(builderNewBuilder.build(), new PurchasesResponseListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda4
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    C0556wa.a(this.f$0, onComplete, billingResult, list);
                }
            });
        }
        BillingClient billingClient2 = this.b;
        if (billingClient2 != null) {
            billingClient2.queryPurchasesAsync(builderNewBuilder2.build(), new PurchasesResponseListener() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda5
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    C0556wa.b(this.f$0, onComplete, billingResult, list);
                }
            });
        }
    }

    public static final void a(final C0556wa this$0, final Function1 onComplete, BillingResult billingResult, List purchasesResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        C0321ga c0321ga = this$0.d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchasesResult) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        c0321ga.f362a = arrayList.size();
        Kb.a(new Runnable() { // from class: com.inmobi.media.wa$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0556wa.a(onComplete, this$0);
            }
        });
    }

    public static final void a(Function1 onComplete, C0556wa this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        onComplete.invoke(this$0.d);
    }
}
