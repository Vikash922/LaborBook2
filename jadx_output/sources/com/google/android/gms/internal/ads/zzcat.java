package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcat implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcau zzb;

    zzcat(zzcau zzcauVar, boolean z) {
        this.zza = z;
        this.zzb = zzcauVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzK("windowVisibilityChanged", "isVisible", String.valueOf(this.zza));
    }
}
