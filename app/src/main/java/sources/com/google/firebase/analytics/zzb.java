package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.zzdd;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@22.1.0 */
/* JADX INFO: loaded from: classes6.dex */
final class zzb extends ThreadPoolExecutor {
    zzb(FirebaseAnalytics firebaseAnalytics, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue) {
        super(0, 1, 30L, timeUnit, blockingQueue);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        super.execute(zzdd.zza().zza(runnable));
    }
}
