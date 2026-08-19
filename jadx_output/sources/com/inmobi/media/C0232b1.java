package com.inmobi.media;

import com.boilerplate.navigator.FragmentStackStateMapper;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0232b1 extends C0565x5 {
    public final int g;
    public final String h;

    public C0232b1(String str, int i, String trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        String message = "reason - " + i + " description - " + (str == null ? "ApplicationExit" : str);
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
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
        this.g = i;
        this.h = trace;
    }
}
