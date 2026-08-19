package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfah implements zzekh {
    private final Context zza;
    private final Executor zzb;
    private final zzcgl zzc;
    private final zzezx zzd;
    private final zzeyl zze;
    private final zzfbh zzf;
    private final zzfgq zzg;
    private final zzfbn zzh;
    private ListenableFuture zzi;

    public zzfah(Context context, Executor executor, zzcgl zzcglVar, zzeyl zzeylVar, zzezx zzezxVar, zzfbn zzfbnVar, zzfbh zzfbhVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcglVar;
        this.zze = zzeylVar;
        this.zzd = zzezxVar;
        this.zzh = zzfbnVar;
        this.zzf = zzfbhVar;
        this.zzg = zzcglVar.zzy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzdnm zzk(zzeyj zzeyjVar) {
        zzdnm zzdnmVarZzh = this.zzc.zzh();
        zzcuj zzcujVar = new zzcuj();
        zzcujVar.zzf(this.zza);
        zzcujVar.zzk(((zzfaf) zzeyjVar).zza);
        zzcujVar.zzj(this.zzf);
        zzdnmVarZzh.zzd(zzcujVar.zzl());
        zzdnmVarZzh.zzc(new zzdau().zzn());
        return zzdnmVarZzh;
    }

    @Override // com.google.android.gms.internal.ads.zzekh
    public final boolean zza() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
    @Override // com.google.android.gms.internal.ads.zzekh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm r12, java.lang.String r13, com.google.android.gms.internal.ads.zzekf r14, com.google.android.gms.internal.ads.zzekg r15) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfah.zzb(com.google.android.gms.ads.internal.client.zzm, java.lang.String, com.google.android.gms.internal.ads.zzekf, com.google.android.gms.internal.ads.zzekg):boolean");
    }

    final void zzj(int i) {
        this.zzh.zzp().zza(i);
    }
}
