package com.inmobi.media;

import com.inmobi.unifiedId.InMobiUnifiedIdService;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.o5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC0438o5 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONObject f443a;

    public RunnableC0438o5(JSONObject jSONObject) {
        this.f443a = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Boolean boolC = Jc.f151a.c();
        boolean zBooleanValue = boolC != null ? boolC.booleanValue() : true;
        if (zBooleanValue) {
            InMobiUnifiedIdService.reset();
        }
        if (zBooleanValue) {
            return;
        }
        AbstractC0523u5.a(this.f443a);
    }
}
