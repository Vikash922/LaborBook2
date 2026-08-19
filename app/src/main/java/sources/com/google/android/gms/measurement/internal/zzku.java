package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzku implements Runnable {
    private final /* synthetic */ zzjc zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzjc zze;
    private final /* synthetic */ zzjk zzf;

    zzku(zzjk zzjkVar, zzjc zzjcVar, long j, long j2, boolean z, zzjc zzjcVar2) {
        this.zza = zzjcVar;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = z;
        this.zze = zzjcVar2;
        this.zzf = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzf.zza(this.zza);
        if (!zzpd.zza() || !this.zzf.zze().zza(zzbj.zzdb)) {
            this.zzf.zza(this.zzb, false);
        }
        zzjk.zza(this.zzf, this.zza, this.zzc, true, this.zzd);
        zzjk.zza(this.zzf, this.zza, this.zze);
    }
}
