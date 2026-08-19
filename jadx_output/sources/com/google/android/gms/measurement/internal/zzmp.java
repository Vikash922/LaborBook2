package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmp implements Runnable {
    private final /* synthetic */ zzgb zza;
    private final /* synthetic */ zzmm zzb;

    zzmp(zzmm zzmmVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        this.zzb = zzmmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            this.zzb.zzb = false;
            if (!this.zzb.zza.zzal()) {
                this.zzb.zza.zzj().zzp().zza("Connected to service");
                this.zzb.zza.zza(this.zza);
            }
        }
    }
}
