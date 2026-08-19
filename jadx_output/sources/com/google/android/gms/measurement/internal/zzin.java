package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzin implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ zzia zzb;

    zzin(zzia zziaVar, zzp zzpVar) {
        this.zza = zzpVar;
        this.zzb = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        this.zzb.zza.zze(this.zza);
    }
}
