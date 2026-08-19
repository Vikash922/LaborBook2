package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznx implements Runnable {
    private final /* synthetic */ zzoh zza;
    private final /* synthetic */ zznv zzb;

    zznx(zznv zznvVar, zzoh zzohVar) {
        this.zza = zzohVar;
        this.zzb = zznvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv.zza(this.zzb, this.zza);
        this.zzb.zzv();
    }
}
