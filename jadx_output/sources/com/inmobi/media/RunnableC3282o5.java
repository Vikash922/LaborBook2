package com.inmobi.media;

import com.inmobi.unifiedId.InMobiUnifiedIdService;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.o5 */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC3282o5 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ JSONObject f2403a;

    public RunnableC3282o5(JSONObject jSONObject) {
        this.f2403a = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Boolean boolM1203c = C2835Jc.f1140a.m1203c();
        boolean zBooleanValue = boolM1203c != null ? boolM1203c.booleanValue() : true;
        if (zBooleanValue) {
            InMobiUnifiedIdService.reset();
        }
        if (zBooleanValue) {
            return;
        }
        AbstractC3372u5.m2490a(this.f2403a);
    }
}
