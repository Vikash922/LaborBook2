package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhx implements Runnable {
    private final /* synthetic */ zzji zza;
    private final /* synthetic */ zzhw zzb;

    zzhx(zzhw zzhwVar, zzji zzjiVar) {
        this.zza = zzjiVar;
        this.zzb = zzhwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhw.zza(this.zzb, this.zza);
        this.zzb.zza(this.zza.zzg);
    }
}
