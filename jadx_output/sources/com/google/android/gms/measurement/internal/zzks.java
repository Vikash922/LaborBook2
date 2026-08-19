package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzks implements Runnable {
    private final /* synthetic */ Boolean zza;
    private final /* synthetic */ zzjk zzb;

    zzks(zzjk zzjkVar, Boolean bool) {
        this.zza = bool;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza, true);
    }
}
