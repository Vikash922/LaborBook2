package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaup implements Runnable {
    final /* synthetic */ zzauq zza;

    zzaup(zzauq zzauqVar) {
        this.zza = zzauqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzauq zzauqVar = this.zza;
        synchronized (zzauqVar.zzo) {
            if (zzauqVar.zzp) {
                return;
            }
            zzauqVar.zzp = true;
            try {
                zzauq.zzj(zzauqVar);
            } catch (Exception e) {
                this.zza.zzh.zzc(2023, -1L, e);
            }
            zzauq zzauqVar2 = this.zza;
            synchronized (zzauqVar2.zzo) {
                zzauqVar2.zzp = false;
            }
        }
    }
}
