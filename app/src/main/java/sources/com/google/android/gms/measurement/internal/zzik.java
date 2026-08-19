package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzik implements Runnable {
    private final /* synthetic */ zzaf zza;
    private final /* synthetic */ zzia zzb;

    zzik(zzia zziaVar, zzaf zzafVar) {
        this.zza = zzafVar;
        this.zzb = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        if (this.zza.zzc.zza() == null) {
            this.zzb.zza.zza(this.zza);
        } else {
            this.zzb.zza.zzb(this.zza);
        }
    }
}
