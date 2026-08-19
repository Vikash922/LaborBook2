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

/* JADX INFO: renamed from: com.inmobi.media.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0216a0 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0246c0 f302a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0216a0(C0246c0 c0246c0) {
        super(0);
        this.f302a = c0246c0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C0246c0 c0246c0 = this.f302a;
        c0246c0.getClass();
        Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
        Intrinsics.checkNotNullParameter("beacon handler execute", "message");
        Log.i("AdQualityBeaconExecutor", "beacon handler execute");
        c0246c0.b.set(true);
        ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
        Lazy lazy = Db.f101a;
        int iA = R1.a((R1) lazy.getValue());
        C0293f0 c0293f0 = (C0293f0) lazy.getValue();
        c0293f0.getClass();
        Log.i("AdQualityDao", "peek");
        List<AdQualityResult> listA = R1.a(c0293f0, null, null, null, null, null, Integer.valueOf(iA), 31);
        if (listA.isEmpty()) {
            listA = CollectionsKt.emptyList();
        }
        for (AdQualityResult adQualityResult : listA) {
            if (adQualityResult != null) {
                AdConfig adConfig = c0246c0.f316a;
                C0222a6 c0222a6 = new C0222a6(adQualityResult, new Kc(adConfig.getIncludeIds()), adConfig.getAdQuality());
                C0231b0 onBeaconHit = new C0231b0(c0246c0, adQualityResult);
                Intrinsics.checkNotNullParameter(onBeaconHit, "onBeaconHit");
                Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
                Intrinsics.checkNotNullParameter("hitBeacon", "message");
                Log.i("JsonBeaconRequest", "hitBeacon");
                c0222a6.f();
                C0399lb retryPolicy = new C0399lb(c0222a6.z.getMaxRetries(), c0222a6.z.getRetryInterval());
                Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
                c0222a6.w = retryPolicy;
                c0222a6.a(new Z5(onBeaconHit));
            }
        }
        c0246c0.c.set(true);
        return Unit.INSTANCE;
    }
}
