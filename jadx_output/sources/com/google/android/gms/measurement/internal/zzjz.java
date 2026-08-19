package com.google.android.gms.measurement.internal;

import android.util.SparseArray;
import com.google.common.util.concurrent.FutureCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjz implements FutureCallback<Object> {
    private final /* synthetic */ zznk zza;
    private final /* synthetic */ zzjk zzb;

    zzjz(zzjk zzjkVar, zznk zznkVar) {
        this.zza = zznkVar;
        this.zzb = zzjkVar;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        this.zzb.zzt();
        this.zzb.zzh = false;
        if (!this.zzb.zze().zza(zzbj.zzcm)) {
            this.zzb.zzas();
            this.zzb.zzj().zzg().zza("registerTriggerAsync failed with throwable", th);
            return;
        }
        int iZza = (this.zzb.zze().zza(zzbj.zzck) ? zzjk.zza(this.zzb, th) : 2) - 1;
        if (iZza == 0) {
            this.zzb.zzj().zzu().zza("registerTriggerAsync failed with retriable error. Will try later. App ID, throwable", zzgi.zza(this.zzb.zzg().zzad()), zzgi.zza(th.toString()));
            this.zzb.zzi = 1;
            this.zzb.zzal().add(this.zza);
            return;
        }
        if (iZza != 1) {
            if (iZza != 2) {
                return;
            }
            this.zzb.zzj().zzg().zza("registerTriggerAsync failed. Dropping URI. App ID, Throwable", zzgi.zza(this.zzb.zzg().zzad()), th);
            zza();
            this.zzb.zzi = 1;
            this.zzb.zzas();
            return;
        }
        this.zzb.zzal().add(this.zza);
        if (this.zzb.zzi > 32) {
            this.zzb.zzi = 1;
            this.zzb.zzj().zzu().zza("registerTriggerAsync failed. May try later. App ID, throwable", zzgi.zza(this.zzb.zzg().zzad()), zzgi.zza(th.toString()));
            return;
        }
        this.zzb.zzj().zzu().zza("registerTriggerAsync failed. App ID, delay in seconds, throwable", zzgi.zza(this.zzb.zzg().zzad()), zzgi.zza(String.valueOf(this.zzb.zzi)), zzgi.zza(th.toString()));
        zzjk zzjkVar = this.zzb;
        zzjk.zzb(zzjkVar, zzjkVar.zzi);
        this.zzb.zzi <<= 1;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        this.zzb.zzt();
        if (this.zzb.zze().zza(zzbj.zzcm)) {
            zza();
            this.zzb.zzh = false;
            this.zzb.zzi = 1;
            this.zzb.zzj().zzc().zza("Successfully registered trigger URI", this.zza.zza);
            this.zzb.zzas();
            return;
        }
        this.zzb.zzh = false;
        this.zzb.zzas();
        this.zzb.zzj().zzc().zza("registerTriggerAsync ran. uri", this.zza.zza);
    }

    private final void zza() {
        SparseArray<Long> sparseArrayZzh = this.zzb.zzk().zzh();
        sparseArrayZzh.put(this.zza.zzc, Long.valueOf(this.zza.zzb));
        this.zzb.zzk().zza(sparseArrayZzh);
    }
}
