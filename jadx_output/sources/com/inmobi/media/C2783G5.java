package com.inmobi.media;

import java.util.Calendar;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.G5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2783G5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2798H5 f1046a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783G5(C2798H5 c2798h5) {
        super(0);
        this.f1046a = c2798h5;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() throws JSONException {
        C2738D5 c2738d5 = this.f1046a.f1072a;
        JSONObject jSONObject = c2738d5.f915a;
        JSONArray jSONArray = c2738d5.f916b;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("vitals", jSONObject);
        jSONObject2.put("log", jSONArray);
        String string = jSONObject2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        AbstractC2889N6.m1395a("IncompleteLogFinalizer", string, this.f1046a.f1072a.f917c.f2791a);
        String str = this.f1046a.f1072a.f917c.f2791a;
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        C3448z6 c3448z6 = this.f1046a.f1072a.f917c;
        AbstractC2744Db.m969d().m839b(new C3448z6(str, timeInMillis, 0, c3448z6.f2794d, true, c3448z6.f2796f));
        return Unit.INSTANCE;
    }
}
