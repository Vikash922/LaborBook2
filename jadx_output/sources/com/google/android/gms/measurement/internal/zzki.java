package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzki implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzjk zzb;

    zzki(zzjk zzjkVar, long j) {
        this.zza = j;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb(this.zza);
        this.zzb.zzo().zza(new AtomicReference<>());
    }
}
