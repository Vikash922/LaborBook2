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

/* JADX INFO: renamed from: com.inmobi.media.da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0272da extends Lambda implements Function1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0272da() {
        super(1);
        String str = C0304fa.f350a;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        C0284e6 c0284e6A;
        C0321ga c0321ga = (C0321ga) obj;
        String str = C0304fa.f350a;
        C0304fa.d = 2;
        if (c0321ga == null) {
            C0556wa c0556wa = C0304fa.b;
            if (c0556wa != null) {
                c0556wa.f516a = null;
                BillingClient billingClient = c0556wa.b;
                if (billingClient != null) {
                    billingClient.endConnection();
                }
            }
            C0304fa.b = null;
        } else {
            c0321ga.toString();
            JSONObject jSONObject = new JSONObject();
            int i = c0321ga.f362a;
            if (i > 0) {
                jSONObject.put("p", i);
            }
            int i2 = c0321ga.b;
            if (i2 > 0) {
                jSONObject.put(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, i2);
            }
            String nipMapJSON = jSONObject.length() == 0 ? null : jSONObject.toString();
            if (nipMapJSON != null) {
                C0304fa.f350a = nipMapJSON;
                Intrinsics.checkNotNullParameter(nipMapJSON, "nipMapJSON");
                Intrinsics.checkNotNullParameter(nipMapJSON, "nipMapJSON");
                Context contextD = Kb.d();
                if (contextD != null) {
                    ConcurrentHashMap concurrentHashMap = C0284e6.b;
                    c0284e6A = AbstractC0268d6.a(contextD, "purchase_store");
                } else {
                    c0284e6A = null;
                }
                if (c0284e6A != null) {
                    C0284e6.a(c0284e6A, "purchase_pref", nipMapJSON, false, 4, (Object) null);
                }
            }
            C0556wa c0556wa2 = C0304fa.b;
            if (c0556wa2 != null) {
                c0556wa2.f516a = null;
                BillingClient billingClient2 = c0556wa2.b;
                if (billingClient2 != null) {
                    billingClient2.endConnection();
                }
            }
            C0304fa.b = null;
        }
        return Unit.INSTANCE;
    }
}
