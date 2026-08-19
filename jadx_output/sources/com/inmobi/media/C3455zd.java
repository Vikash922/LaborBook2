package com.inmobi.media;

import com.boilerplate.navigator.FragmentStackStateMapper;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.zd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3455zd extends C3417x5 {

    /* JADX INFO: renamed from: g */
    public final StackTraceElement[] f2817g;

    public C3455zd(StackTraceElement[] stackTrace) {
        Intrinsics.checkNotNullParameter(stackTrace, "stackTrace");
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter("Blocked", "name");
        Intrinsics.checkNotNullParameter("MainThreadBlocked", "message");
        Intrinsics.checkNotNullParameter(stackTrace, "stackTrace");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", "Blocked");
            jSONObject.put("message", "MainThreadBlocked");
            jSONObject.put(FragmentStackStateMapper.MEDUSA_STACK, AbstractC3037Xc.m1915a(stackTrace));
        } catch (JSONException e) {
            e.toString();
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        super("ANRWatchDog", "ANRWatchDogEvent", string);
        this.f2817g = stackTrace;
    }
}
