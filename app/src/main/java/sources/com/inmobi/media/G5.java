package com.inmobi.media;

import java.util.Calendar;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class G5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H5 f122a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G5(H5 h5) {
        super(0);
        this.f122a = h5;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() throws JSONException {
        D5 d5 = this.f122a.f130a;
        JSONObject jSONObject = d5.f96a;
        JSONArray jSONArray = d5.b;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("vitals", jSONObject);
        jSONObject2.put("log", jSONArray);
        String string = jSONObject2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        N6.a("IncompleteLogFinalizer", string, this.f122a.f130a.c.f546a);
        String str = this.f122a.f130a.c.f546a;
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        C0596z6 c0596z6 = this.f122a.f130a.c;
        Db.d().b(new C0596z6(str, timeInMillis, 0, c0596z6.d, true, c0596z6.f));
        return Unit.INSTANCE;
    }
}
