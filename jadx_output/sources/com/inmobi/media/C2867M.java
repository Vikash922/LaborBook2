package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.M */
/* JADX INFO: loaded from: classes6.dex */
public final class C2867M extends AbstractC3026X1 {

    /* JADX INFO: renamed from: a */
    public final C2882N f1242a;

    /* JADX INFO: renamed from: b */
    public final C3334rc f1243b;

    public C2867M(C2882N adImpressionCallbackHandler, C3334rc c3334rc) {
        Intrinsics.checkNotNullParameter(adImpressionCallbackHandler, "adImpressionCallbackHandler");
        this.f1242a = adImpressionCallbackHandler;
        this.f1243b = c3334rc;
    }

    @Override // com.inmobi.media.AbstractC3026X1
    /* JADX INFO: renamed from: a */
    public final void mo1328a(C3189i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        this.f1242a.m1375a(this.f1243b);
    }

    @Override // com.inmobi.media.AbstractC3026X1
    /* JADX INFO: renamed from: a */
    public final void mo1329a(C3189i2 click, String reason) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(reason, "error");
        C3334rc c3334rc = this.f1243b;
        Intrinsics.checkNotNullParameter(reason, "reason");
        LinkedHashMap linkedHashMapM2382a = c3334rc.m2382a();
        linkedHashMapM2382a.put("networkType", C2751E3.m1005q());
        linkedHashMapM2382a.put("errorCode", (short) 2178);
        linkedHashMapM2382a.put("reason", reason);
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AdImpressionSuccessful", linkedHashMapM2382a, EnumC3259mc.f2349a);
    }
}
