package com.google.android.gms.internal.ads;

import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaml implements zzamg {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private final zzanx zzb;
    private zzamk zzg;
    private long zzh;
    private String zzi;
    private zzaei zzj;
    private boolean zzk;
    private final boolean[] zzd = new boolean[4];
    private final zzamj zze = new zzamj(128);
    private long zzl = -9223372036854775807L;
    private final zzamy zzf = new zzamy(Opcodes.GETSTATIC, 128);
    private final zzek zzc = new zzek();

    zzaml(zzanx zzanxVar, String str) {
        this.zzb = zzanxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x010f  */
    @Override // com.google.android.gms.internal.ads.zzamg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r18) {
        /*
            Method dump skipped, instruction units count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaml.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzb(zzadf zzadfVar, zzanu zzanuVar) {
        zzanuVar.zzc();
        this.zzi = zzanuVar.zzb();
        this.zzj = zzadfVar.zzw(zzanuVar.zza(), 2);
        this.zzg = new zzamk(this.zzj);
        this.zzb.zzb(zzadfVar, zzanuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzc(boolean z) {
        zzdc.zzb(this.zzg);
        if (z) {
            this.zzg.zzb(this.zzh, 0, this.zzk);
            this.zzg.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzd(long j, int i) {
        this.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zze() {
        zzfq.zzi(this.zzd);
        this.zze.zzb();
        zzamk zzamkVar = this.zzg;
        if (zzamkVar != null) {
            zzamkVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = -9223372036854775807L;
    }
}
