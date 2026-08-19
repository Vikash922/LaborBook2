package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlk implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzlg zzb;

    zzlk(zzlg zzlgVar, long j) {
        this.zza = j;
        this.zzb = zzlgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc().zza(this.zza);
        this.zzb.zza = null;
    }
}
