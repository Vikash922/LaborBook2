package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkv implements Runnable {
    private final /* synthetic */ zzaz zza;
    private final /* synthetic */ zzjk zzb;

    zzkv(zzjk zzjkVar, zzaz zzazVar) {
        this.zza = zzazVar;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzb.zzk().zza(this.zza)) {
            this.zzb.zzj().zzn().zza("Lower precedence consent source ignored, proposed source", Integer.valueOf(this.zza.zza()));
            return;
        }
        this.zzb.zzj().zzp().zza("Setting DMA consent(FE)", this.zza);
        if (this.zzb.zzo().zzao()) {
            this.zzb.zzo().zzaj();
        } else {
            this.zzb.zzo().zza(false);
        }
    }
}
