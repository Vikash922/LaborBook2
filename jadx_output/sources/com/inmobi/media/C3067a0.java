package com.inmobi.media;

import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.a0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3067a0 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3097c0 f1830a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3067a0(C3097c0 c3097c0) {
        super(0);
        this.f1830a = c3097c0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3097c0 c3097c0 = this.f1830a;
        c3097c0.getClass();
        Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
        Intrinsics.checkNotNullParameter("beacon handler execute", "message");
        Log.i("AdQualityBeaconExecutor", "beacon handler execute");
        c3097c0.f1902b.set(true);
        ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
        Lazy lazy = AbstractC2744Db.f948a;
        int iM1750a = AbstractC2942R1.m1750a((AbstractC2942R1) lazy.getValue());
        C3142f0 c3142f0 = (C3142f0) lazy.getValue();
        c3142f0.getClass();
        Log.i("AdQualityDao", "peek");
        List<AdQualityResult> listM1751a = AbstractC2942R1.m1751a(c3142f0, null, null, null, null, null, Integer.valueOf(iM1750a), 31);
        if (listM1751a.isEmpty()) {
            listM1751a = CollectionsKt.emptyList();
        }
        for (AdQualityResult adQualityResult : listM1751a) {
            if (adQualityResult != null) {
                AdConfig adConfig = c3097c0.f1901a;
                C3073a6 c3073a6 = new C3073a6(adQualityResult, new C2850Kc(adConfig.getIncludeIds()), adConfig.getAdQuality());
                C3082b0 onBeaconHit = new C3082b0(c3097c0, adQualityResult);
                Intrinsics.checkNotNullParameter(onBeaconHit, "onBeaconHit");
                Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
                Intrinsics.checkNotNullParameter("hitBeacon", "message");
                Log.i("JsonBeaconRequest", "hitBeacon");
                c3073a6.mo1146f();
                C3243lb retryPolicy = new C3243lb(c3073a6.f1839z.getMaxRetries(), c3073a6.f1839z.getRetryInterval());
                Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
                c3073a6.f2296w = retryPolicy;
                c3073a6.m2286a(new C3058Z5(onBeaconHit));
            }
        }
        c3097c0.f1903c.set(true);
        return Unit.INSTANCE;
    }
}
