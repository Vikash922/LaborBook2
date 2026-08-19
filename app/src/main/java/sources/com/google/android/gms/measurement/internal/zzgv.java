package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgv implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzgs zzb;

    zzgv(zzgs zzgsVar, boolean z) {
        this.zza = z;
        this.zzb = zzgsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zza(this.zza);
    }
}
