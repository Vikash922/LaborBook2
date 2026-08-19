package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzit implements Runnable {
    private final /* synthetic */ zzok zza;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ zzia zzc;

    zzit(zzia zziaVar, zzok zzokVar, zzp zzpVar) {
        this.zza = zzokVar;
        this.zzb = zzpVar;
        this.zzc = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzr();
        if (this.zza.zza() == null) {
            this.zzc.zza.zza(this.zza.zza, this.zzb);
        } else {
            this.zzc.zza.zza(this.zza, this.zzb);
        }
    }
}
