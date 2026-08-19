package com.inmobi.media;

import android.util.Log;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3097c0 {

    /* JADX INFO: renamed from: a */
    public AdConfig f1901a;

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f1902b;

    /* JADX INFO: renamed from: c */
    public final AtomicBoolean f1903c;

    /* JADX INFO: renamed from: d */
    public final HashMap f1904d;

    public C3097c0(AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.f1901a = adConfig;
        this.f1902b = new AtomicBoolean(false);
        this.f1903c = new AtomicBoolean(false);
        this.f1904d = new HashMap();
        Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
        Intrinsics.checkNotNullParameter("adding listener to dao", "message");
        Log.i("AdQualityBeaconExecutor", "adding listener to dao");
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.c0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3097c0.m2037a(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2037a(C3097c0 queueUpdateListener) {
        Intrinsics.checkNotNullParameter(queueUpdateListener, "this$0");
        ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
        C3142f0 c3142f0 = (C3142f0) AbstractC2744Db.f948a.getValue();
        c3142f0.getClass();
        Intrinsics.checkNotNullParameter(queueUpdateListener, "queueUpdateListener");
        c3142f0.f2057b = queueUpdateListener;
    }

    /* JADX INFO: renamed from: a */
    public final void m2038a() {
        if (this.f1902b.get()) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("executor already started. ignore.", "message");
            Log.i("AdQualityBeaconExecutor", "executor already started. ignore.");
        } else {
            if (!this.f1901a.getAdQuality().getEnabled()) {
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                Intrinsics.checkNotNullParameter("kill switch encountered. skip", "message");
                Log.i("AdQualityBeaconExecutor", "kill switch encountered. skip");
                return;
            }
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("beacon executor starting", "message");
            Log.i("AdQualityBeaconExecutor", "beacon executor starting");
            C3067a0 execute = new C3067a0(this);
            Intrinsics.checkNotNullParameter(execute, "execute");
            ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
            C3127e0.m2084a(new C3096c(execute));
        }
    }
}
