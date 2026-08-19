package com.inmobi.media;

import android.util.Log;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0246c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AdConfig f316a;
    public final AtomicBoolean b;
    public final AtomicBoolean c;
    public final HashMap d;

    public C0246c0(AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.f316a = adConfig;
        this.b = new AtomicBoolean(false);
        this.c = new AtomicBoolean(false);
        this.d = new HashMap();
        Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
        Intrinsics.checkNotNullParameter("adding listener to dao", "message");
        Log.i("AdQualityBeaconExecutor", "adding listener to dao");
        Kb.a(new Runnable() { // from class: com.inmobi.media.c0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0246c0.a(this.f$0);
            }
        });
    }

    public static final void a(C0246c0 queueUpdateListener) {
        Intrinsics.checkNotNullParameter(queueUpdateListener, "this$0");
        ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
        C0293f0 c0293f0 = (C0293f0) Db.f101a.getValue();
        c0293f0.getClass();
        Intrinsics.checkNotNullParameter(queueUpdateListener, "queueUpdateListener");
        c0293f0.b = queueUpdateListener;
    }

    public final void a() {
        if (this.b.get()) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("executor already started. ignore.", "message");
            Log.i("AdQualityBeaconExecutor", "executor already started. ignore.");
        } else {
            if (!this.f316a.getAdQuality().getEnabled()) {
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                Intrinsics.checkNotNullParameter("kill switch encountered. skip", "message");
                Log.i("AdQualityBeaconExecutor", "kill switch encountered. skip");
                return;
            }
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("beacon executor starting", "message");
            Log.i("AdQualityBeaconExecutor", "beacon executor starting");
            C0216a0 execute = new C0216a0(this);
            Intrinsics.checkNotNullParameter(execute, "execute");
            ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
            C0277e0.a(new C0245c(execute));
        }
    }
}
