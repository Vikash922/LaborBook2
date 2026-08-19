package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzih implements Runnable {
    private final /* synthetic */ zzaf zza;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ zzia zzc;

    zzih(zzia zziaVar, zzaf zzafVar, zzp zzpVar) {
        this.zza = zzafVar;
        this.zzb = zzpVar;
        this.zzc = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzr();
        if (this.zza.zzc.zza() == null) {
            this.zzc.zza.zza(this.zza, this.zzb);
        } else {
            this.zzc.zza.zzb(this.zza, this.zzb);
        }
    }
}
