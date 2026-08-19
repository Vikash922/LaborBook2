package com.inmobi.media;

import com.boilerplate.navigator.FragmentStackStateMapper;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.b1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3083b1 extends C3417x5 {

    /* JADX INFO: renamed from: g */
    public final int f1870g;

    /* JADX INFO: renamed from: h */
    public final String f1871h;

    public C3083b1(String str, int i, String trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        String message = "reason - " + i + " description - " + (str == null ? "ApplicationExit" : str);
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter("AppExitEvent", "name");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(trace, "trace");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", "AppExitEvent");
            jSONObject.put("message", message);
            jSONObject.put(FragmentStackStateMapper.MEDUSA_STACK, trace);
        } catch (JSONException e) {
            e.toString();
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        super("AppExitReasonReporting", "AppExitReasonEvent", string);
        this.f1870g = i;
        this.f1871h = trace;
    }
}
