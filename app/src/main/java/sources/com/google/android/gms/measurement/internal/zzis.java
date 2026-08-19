package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzis implements Runnable {
    private final /* synthetic */ zzbh zza;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ zzia zzc;

    zzis(zzia zziaVar, zzbh zzbhVar, zzp zzpVar) {
        this.zza = zzbhVar;
        this.zzb = zzpVar;
        this.zzc = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzc(this.zzc.zzb(this.zza, this.zzb), this.zzb);
    }
}
