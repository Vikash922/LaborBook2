package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaob implements zzadc {
    private zzadf zza;
    private zzaei zzb;
    private zzanz zze;
    private int zzc = 0;
    private long zzd = -1;
    private int zzf = -1;
    private long zzg = -1;

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ec, code lost:
    
        if (r1 != 65534) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010f  */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadd r19, com.google.android.gms.internal.ads.zzady r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaob.zzb(com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzady):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ zzadc zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ List zzd() {
        return zzfww.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zze(zzadf zzadfVar) {
        this.zza = zzadfVar;
        this.zzb = zzadfVar.zzw(0, 1);
        zzadfVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzf(long j, long j2) {
        this.zzc = j == 0 ? 0 : 4;
        zzanz zzanzVar = this.zze;
        if (zzanzVar != null) {
            zzanzVar.zzb(j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final boolean zzi(zzadd zzaddVar) throws IOException {
        return zzaoe.zzc(zzaddVar);
    }
}
