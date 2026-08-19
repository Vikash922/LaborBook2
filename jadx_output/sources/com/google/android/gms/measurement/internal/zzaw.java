package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaw implements Runnable {
    private final /* synthetic */ zzja zza;
    private final /* synthetic */ zzax zzb;

    zzaw(zzax zzaxVar, zzja zzjaVar) {
        this.zza = zzjaVar;
        this.zzb = zzaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzd();
        if (zzac.zza()) {
            this.zza.zzl().zzb(this);
            return;
        }
        boolean zZzc = this.zzb.zzc();
        this.zzb.zzd = 0L;
        if (zZzc) {
            this.zzb.zzb();
        }
    }
}
