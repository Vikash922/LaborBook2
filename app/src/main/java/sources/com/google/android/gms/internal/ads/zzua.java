package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzua implements zzvt {
    private final zzadh zza;
    private zzadc zzb;
    private zzadd zzc;

    public zzua(zzadh zzadhVar) {
        this.zza = zzadhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvt
    public final int zza(zzady zzadyVar) throws IOException {
        zzadc zzadcVar = this.zzb;
        zzadcVar.getClass();
        zzadd zzaddVar = this.zzc;
        zzaddVar.getClass();
        return zzadcVar.zzb(zzaddVar, zzadyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvt
    public final long zzb() {
        zzadd zzaddVar = this.zzc;
        if (zzaddVar != null) {
            return zzaddVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzvt
    public final void zzc() {
        zzadc zzadcVar = this.zzb;
        if (zzadcVar != null && (zzadcVar instanceof zzahl)) {
            ((zzahl) zzadcVar).zza();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    @Override // com.google.android.gms.internal.ads.zzvt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzl r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzadf r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzua.zzd(com.google.android.gms.internal.ads.zzl, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzadf):void");
    }

    @Override // com.google.android.gms.internal.ads.zzvt
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvt
    public final void zzf(long j, long j2) {
        zzadc zzadcVar = this.zzb;
        zzadcVar.getClass();
        zzadcVar.zzf(j, j2);
    }
}
