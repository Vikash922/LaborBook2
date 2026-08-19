package com.inmobi.media;

import com.boilerplate.navigator.FragmentStackStateMapper;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zd extends C0565x5 {
    public final StackTraceElement[] g;

    public zd(StackTraceElement[] stackTrace) {
        Intrinsics.checkNotNullParameter(stackTrace, "stackTrace");
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        Intrinsics.checkNotNullParameter("Blocked", "name");
        Intrinsics.checkNotNullParameter("MainThreadBlocked", "message");
        Intrinsics.checkNotNullParameter(stackTrace, "stackTrace");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", "Blocked");
            jSONObject.put("message", "MainThreadBlocked");
            jSONObject.put(FragmentStackStateMapper.MEDUSA_STACK, Xc.a(stackTrace));
        } catch (JSONException e) {
            e.toString();
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        super("ANRWatchDog", "ANRWatchDogEvent", string);
        this.g = stackTrace;
    }
}
