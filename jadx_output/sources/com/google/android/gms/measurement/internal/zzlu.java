package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlu implements Runnable {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ boolean zzb;
    private final /* synthetic */ zzok zzc;
    private final /* synthetic */ zzlp zzd;

    zzlu(zzlp zzlpVar, zzp zzpVar, boolean z, zzok zzokVar) {
        this.zza = zzpVar;
        this.zzb = z;
        this.zzc = zzokVar;
        this.zzd = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzd.zzb;
        if (zzgbVar == null) {
            this.zzd.zzj().zzg().zza("Discarding data. Failed to set user property");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zzd.zza(zzgbVar, this.zzb ? null : this.zzc, this.zza);
        this.zzd.zzar();
    }
}
