package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznf implements Runnable {
    long zza;
    long zzb;
    final /* synthetic */ zznc zzc;

    zznf(zznc zzncVar, long j, long j2) {
        this.zzc = zzncVar;
        this.zza = j;
        this.zzb = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzne
            @Override // java.lang.Runnable
            public final void run() {
                zznf zznfVar = this.zza;
                zznc zzncVar = zznfVar.zzc;
                long j = zznfVar.zza;
                long j2 = zznfVar.zzb;
                zzncVar.zza.zzt();
                zzncVar.zza.zzj().zzc().zza("Application going to the background");
                zzncVar.zza.zzk().zzn.zza(true);
                zzncVar.zza.zza(true);
                if (!zzncVar.zza.zze().zzy()) {
                    if (zzncVar.zza.zze().zza(zzbj.zzco)) {
                        zzncVar.zza.zza(false, false, j2);
                        zzncVar.zza.zzb.zzb(j2);
                    } else {
                        zzncVar.zza.zzb.zzb(j2);
                        zzncVar.zza.zza(false, false, j2);
                    }
                }
                zzncVar.zza.zzj().zzn().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j));
                if (zzncVar.zza.zze().zza(zzbj.zzdh)) {
                    zzncVar.zza.zzm().zzam();
                }
            }
        });
    }
}
