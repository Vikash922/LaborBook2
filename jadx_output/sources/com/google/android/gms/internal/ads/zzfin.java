package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfin implements zzgbo {
    final /* synthetic */ zzfgc zza;
    final /* synthetic */ zzfgn zzb;
    final /* synthetic */ zzcxm zzc;
    final /* synthetic */ zzfio zzd;

    zzfin(zzfio zzfioVar, zzfgc zzfgcVar, zzfgn zzfgnVar, zzcxm zzcxmVar) {
        this.zza = zzfgcVar;
        this.zzb = zzfgnVar;
        this.zzc = zzcxmVar;
        this.zzd = zzfioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    public final void zza(Throwable th) {
        zzfgc zzfgcVar = this.zza;
        if (zzfgcVar == null) {
            return;
        }
        zzfgcVar.zzg(false);
        zzfgn zzfgnVar = this.zzb;
        if (zzfgnVar == null) {
            this.zzd.zzf.zzc(zzfgcVar.zzm());
        } else {
            zzfgnVar.zza(zzfgcVar);
            zzfgnVar.zzh();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e6  */
    @Override // com.google.android.gms.internal.ads.zzgbo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzb(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfin.zzb(java.lang.Object):void");
    }
}
