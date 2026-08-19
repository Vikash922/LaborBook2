package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlv implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzp zzb;
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzlp zzd;

    zzlv(zzlp zzlpVar, AtomicReference atomicReference, zzp zzpVar, Bundle bundle) {
        this.zza = atomicReference;
        this.zzb = zzpVar;
        this.zzc = bundle;
        this.zzd = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.zza) {
            try {
                try {
                    zzgbVar = this.zzd.zzb;
                } catch (RemoteException e) {
                    this.zzd.zzj().zzg().zza("Failed to get trigger URIs; remote exception", e);
                }
                if (zzgbVar == null) {
                    this.zzd.zzj().zzg().zza("Failed to get trigger URIs; not connected to service");
                    return;
                }
                Preconditions.checkNotNull(this.zzb);
                this.zza.set(zzgbVar.zza(this.zzb, this.zzc));
                this.zzd.zzar();
                this.zza.notify();
            } finally {
                this.zza.notify();
            }
        }
    }
}
