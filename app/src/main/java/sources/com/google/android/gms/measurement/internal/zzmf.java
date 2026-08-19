package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmf implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ Bundle zzb;
    private final /* synthetic */ zzlp zzc;

    zzmf(zzlp zzlpVar, zzp zzpVar, Bundle bundle) {
        this.zza = zzpVar;
        this.zzb = bundle;
        this.zzc = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.zzc.zzb;
        if (zzgbVar == null) {
            this.zzc.zzj().zzg().zza("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzb(this.zzb, this.zza);
        } catch (RemoteException e) {
            this.zzc.zzj().zzg().zza("Failed to send default event parameters to service", e);
        }
    }
}
