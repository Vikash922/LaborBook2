package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Z9 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Z9 f298a = new Z9();

    public Z9() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C0226aa.f307a.getClass();
        Context contextD = Kb.d();
        JSONObject jSONObject = null;
        if (contextD != null) {
            if (C0226aa.c == null) {
                C0226aa.c = new U9(contextD, "pub_signals_store");
            }
            U9 u9 = C0226aa.c;
            if (u9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                u9 = null;
            }
            String strA = u9.a("saved_signals");
            if (strA != null) {
                jSONObject = new JSONObject(strA);
            }
        }
        return jSONObject == null ? new JSONObject() : jSONObject;
    }
}
