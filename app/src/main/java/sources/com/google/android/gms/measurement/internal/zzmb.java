package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmb implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ zzlp zzb;

    zzmb(zzlp zzlpVar, zzp zzpVar) {
        this.zza = zzpVar;
        this.zzb = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzu().zza("Failed to send app backgrounded");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzc(this.zza);
            this.zzb.zzar();
        } catch (RemoteException e) {
            this.zzb.zzj().zzg().zza("Failed to send app backgrounded to the service", e);
        }
    }
}
