package com.google.firebase.analytics;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@22.1.0 */
/* JADX INFO: loaded from: classes6.dex */
final class zzd implements Callable<Long> {
    private final /* synthetic */ FirebaseAnalytics zza;

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Long call() throws Exception {
        return this.zza.zzb.zzc();
    }

    zzd(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }
}
