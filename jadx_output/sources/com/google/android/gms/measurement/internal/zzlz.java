package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlz implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzdl zzb;
    private final /* synthetic */ zzlp zzc;

    zzlz(zzlp zzlpVar, zzp zzpVar, com.google.android.gms.internal.measurement.zzdl zzdlVar) {
        this.zza = zzpVar;
        this.zzb = zzdlVar;
        this.zzc = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!this.zzc.zzk().zzn().zzj()) {
                this.zzc.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                this.zzc.zzm().zzc((String) null);
                this.zzc.zzk().zze.zza(null);
                return;
            }
            zzgb zzgbVar = this.zzc.zzb;
            if (zzgbVar == null) {
                this.zzc.zzj().zzg().zza("Failed to get app instance id");
                return;
            }
            Preconditions.checkNotNull(this.zza);
            String strZzb = zzgbVar.zzb(this.zza);
            if (strZzb != null) {
                this.zzc.zzm().zzc(strZzb);
                this.zzc.zzk().zze.zza(strZzb);
            }
            this.zzc.zzar();
            this.zzc.zzq().zza(this.zzb, strZzb);
        } catch (RemoteException e) {
            this.zzc.zzj().zzg().zza("Failed to get app instance id", e);
        } finally {
            this.zzc.zzq().zza(this.zzb, (String) null);
        }
    }
}
