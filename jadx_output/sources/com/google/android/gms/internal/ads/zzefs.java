package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzefs implements zzgbo {
    final /* synthetic */ long zza;
    final /* synthetic */ zzfax zzb;
    final /* synthetic */ zzfau zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfik zze;
    final /* synthetic */ zzfbg zzf;
    final /* synthetic */ zzefu zzg;

    zzefs(zzefu zzefuVar, long j, zzfax zzfaxVar, zzfau zzfauVar, String str, zzfik zzfikVar, zzfbg zzfbgVar) {
        this.zza = j;
        this.zzb = zzfaxVar;
        this.zzc = zzfauVar;
        this.zzd = str;
        this.zze = zzfikVar;
        this.zzf = zzfbgVar;
        this.zzg = zzefuVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0061 A[PHI: r8
      0x0061: PHI (r8v1 int) = (r8v0 int), (r8v3 int), (r8v3 int), (r8v3 int) binds: [B:16:0x002f, B:21:0x004a, B:23:0x004e, B:25:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgbo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r17) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzefs.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    public final void zzb(Object obj) {
        zzefu zzefuVar = this.zzg;
        long jElapsedRealtime = zzefuVar.zza.elapsedRealtime() - this.zza;
        synchronized (zzefuVar) {
            if (zzefuVar.zze) {
                zzefuVar.zzb.zza(this.zzb, this.zzc, 0, null, jElapsedRealtime);
            }
            if (zzefuVar.zzg) {
                return;
            }
            zzfau zzfauVar = this.zzc;
            if (zzefuVar.zzq(zzfauVar)) {
                ((zzeft) zzefuVar.zzd.get(zzfauVar)).zzd = jElapsedRealtime;
            } else {
                zzefuVar.zzd.put(zzfauVar, new zzeft(this.zzd, zzfauVar.zzaf, 0, jElapsedRealtime, null));
            }
            zzefuVar.zzf.zzg(zzfauVar, jElapsedRealtime, null);
        }
    }
}
