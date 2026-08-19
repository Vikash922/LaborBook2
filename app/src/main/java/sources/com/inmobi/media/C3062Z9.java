package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Z9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3062Z9 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3062Z9 f1821a = new C3062Z9();

    public C3062Z9() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3077aa.f1850a.getClass();
        Context contextM1254d = C2849Kb.m1254d();
        JSONObject jSONObject = null;
        if (contextM1254d != null) {
            if (C3077aa.f1852c == null) {
                C3077aa.f1852c = new C2992U9(contextM1254d, "pub_signals_store");
            }
            C2992U9 c2992u9 = C3077aa.f1852c;
            if (c2992u9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                c2992u9 = null;
            }
            String strM1847a = c2992u9.m1847a("saved_signals");
            if (strM1847a != null) {
                jSONObject = new JSONObject(strM1847a);
            }
        }
        return jSONObject == null ? new JSONObject() : jSONObject;
    }
}
