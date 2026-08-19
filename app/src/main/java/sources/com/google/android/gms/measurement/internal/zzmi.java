package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmi implements Runnable {
    private final /* synthetic */ boolean zza = true;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzaf zzd;
    private final /* synthetic */ zzaf zze;
    private final /* synthetic */ zzlp zzf;

    zzmi(zzlp zzlpVar, boolean z, zzp zzpVar, boolean z2, zzaf zzafVar, zzaf zzafVar2) {
        this.zzb = zzpVar;
        this.zzc = z2;
        this.zzd = zzafVar;
        this.zze = zzafVar2;
        this.zzf = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzf.zzb;
        if (zzgbVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zza) {
            Preconditions.checkNotNull(this.zzb);
            this.zzf.zza(zzgbVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze.zza)) {
                    Preconditions.checkNotNull(this.zzb);
                    zzgbVar.zza(this.zzd, this.zzb);
                } else {
                    zzgbVar.zza(this.zzd);
                }
            } catch (RemoteException e) {
                this.zzf.zzj().zzg().zza("Failed to send conditional user property to the service", e);
            }
        }
        this.zzf.zzar();
    }
}
