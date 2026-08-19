package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzln implements Runnable {
    private final /* synthetic */ zzlh zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ zzlg zzc;

    zzln(zzlg zzlgVar, zzlh zzlhVar, long j) {
        this.zza = zzlhVar;
        this.zzb = j;
        this.zzc = zzlgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza(this.zza, false, this.zzb);
        this.zzc.zza = null;
        this.zzc.zzo().zza((zzlh) null);
    }
}
