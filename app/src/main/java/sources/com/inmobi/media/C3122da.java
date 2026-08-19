package com.inmobi.media;

import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.itextpdf.svg.SvgConstants;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.da */
/* JADX INFO: loaded from: classes6.dex */
public final class C3122da extends Lambda implements Function1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3122da() {
        super(1);
        String str = C3152fa.f2071a;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        C3133e6 c3133e6M2058a;
        C3167ga c3167ga = (C3167ga) obj;
        String str = C3152fa.f2071a;
        C3152fa.f2074d = 2;
        if (c3167ga == null) {
            C3407wa c3407wa = C3152fa.f2072b;
            if (c3407wa != null) {
                c3407wa.f2725a = null;
                BillingClient billingClient = c3407wa.f2726b;
                if (billingClient != null) {
                    billingClient.endConnection();
                }
            }
            C3152fa.f2072b = null;
        } else {
            c3167ga.toString();
            JSONObject jSONObject = new JSONObject();
            int i = c3167ga.f2111a;
            if (i > 0) {
                jSONObject.put("p", i);
            }
            int i2 = c3167ga.f2112b;
            if (i2 > 0) {
                jSONObject.put(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, i2);
            }
            String nipMapJSON = jSONObject.length() == 0 ? null : jSONObject.toString();
            if (nipMapJSON != null) {
                C3152fa.f2071a = nipMapJSON;
                Intrinsics.checkNotNullParameter(nipMapJSON, "nipMapJSON");
                Intrinsics.checkNotNullParameter(nipMapJSON, "nipMapJSON");
                Context contextM1254d = C2849Kb.m1254d();
                if (contextM1254d != null) {
                    ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                    c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "purchase_store");
                } else {
                    c3133e6M2058a = null;
                }
                if (c3133e6M2058a != null) {
                    C3133e6.m2101a(c3133e6M2058a, "purchase_pref", nipMapJSON, false, 4, (Object) null);
                }
            }
            C3407wa c3407wa2 = C3152fa.f2072b;
            if (c3407wa2 != null) {
                c3407wa2.f2725a = null;
                BillingClient billingClient2 = c3407wa2.f2726b;
                if (billingClient2 != null) {
                    billingClient2.endConnection();
                }
            }
            C3152fa.f2072b = null;
        }
        return Unit.INSTANCE;
    }
}
