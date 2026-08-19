package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmj implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzbh zzd;
    private final /* synthetic */ String zze;
    private final /* synthetic */ zzlp zzf;

    zzmj(zzlp zzlpVar, boolean z, zzp zzpVar, boolean z2, zzbh zzbhVar, String str) {
        this.zza = z;
        this.zzb = zzpVar;
        this.zzc = z2;
        this.zzd = zzbhVar;
        this.zze = str;
        this.zzf = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzf.zzb;
        if (zzgbVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zza) {
            Preconditions.checkNotNull(this.zzb);
            this.zzf.zza(zzgbVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze)) {
                    Preconditions.checkNotNull(this.zzb);
                    zzgbVar.zza(this.zzd, this.zzb);
                } else {
                    zzgbVar.zza(this.zzd, this.zze, this.zzf.zzj().zzx());
                }
            } catch (RemoteException e) {
                this.zzf.zzj().zzg().zza("Failed to send event to the service", e);
            }
        }
        this.zzf.zzar();
    }
}
