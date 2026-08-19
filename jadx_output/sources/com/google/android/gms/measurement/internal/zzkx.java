package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkx implements Runnable {
    private final /* synthetic */ zzjc zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzjc zzd;
    private final /* synthetic */ zzjk zze;

    zzkx(zzjk zzjkVar, zzjc zzjcVar, long j, boolean z, zzjc zzjcVar2) {
        this.zza = zzjcVar;
        this.zzb = j;
        this.zzc = z;
        this.zzd = zzjcVar2;
        this.zze = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza(this.zza);
        zzjk.zza(this.zze, this.zza, this.zzb, false, this.zzc);
        zzjk.zza(this.zze, this.zza, this.zzd);
    }
}
