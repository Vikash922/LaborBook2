package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzob implements Callable<String> {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ zznv zzb;

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        if (!this.zzb.zzb((String) Preconditions.checkNotNull(this.zza.zza)).zzj() || !zzjc.zzb(this.zza.zzt).zzj()) {
            this.zzb.zzj().zzp().zza("Analytics storage consent denied. Returning null app instance id");
            return null;
        }
        zzh zzhVarZza = this.zzb.zza(this.zza);
        if (zzhVarZza != null) {
            return zzhVarZza.zzad();
        }
        this.zzb.zzj().zzu().zza("App info was null when attempting to get app instance id");
        return null;
    }

    zzob(zznv zznvVar, zzp zzpVar) {
        this.zza = zzpVar;
        this.zzb = zznvVar;
    }
}
