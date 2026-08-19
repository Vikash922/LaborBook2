package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkd implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzjk zzb;

    zzkd(zzjk zzjkVar, long j) {
        this.zza = j;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzk().zzf.zza(this.zza);
        this.zzb.zzj().zzc().zza("Session timeout duration set", Long.valueOf(this.zza));
    }
}
