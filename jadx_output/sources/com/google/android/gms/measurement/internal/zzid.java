package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzid implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ zzia zzb;

    zzid(zzia zziaVar, zzp zzpVar) {
        this.zza = zzpVar;
        this.zzb = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        zznv zznvVar = this.zzb.zza;
        zzp zzpVar = this.zza;
        zznvVar.zzl().zzt();
        zznvVar.zzs();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zznvVar.zza(zzpVar);
    }
}
