package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzir implements Runnable {
    private final /* synthetic */ zzbh zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzia zzc;

    zzir(zzia zziaVar, zzbh zzbhVar, String str) {
        this.zza = zzbhVar;
        this.zzb = str;
        this.zzc = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzr();
        this.zzc.zza.zza(this.zza, this.zzb);
    }
}
