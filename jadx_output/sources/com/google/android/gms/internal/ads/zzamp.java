package com.google.android.gms.internal.ads;

import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.jacoco.core.runtime.AgentOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamp implements zzamg {
    private final zzank zza;
    private String zzb;
    private zzaei zzc;
    private zzamo zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzamy zzg = new zzamy(32, 128);
    private final zzamy zzh = new zzamy(33, 128);
    private final zzamy zzi = new zzamy(34, 128);
    private final zzamy zzj = new zzamy(39, 128);
    private final zzamy zzk = new zzamy(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzek zzn = new zzek();

    public zzamp(zzank zzankVar, String str) {
        this.zza = zzankVar;
    }

    @RequiresNonNull({AgentOptions.OUTPUT, "sampleReader"})
    private final void zzf(long j, int i, int i2, long j2) {
        this.zzd.zza(j, i, this.zze);
        if (!this.zze) {
            zzamy zzamyVar = this.zzg;
            zzamyVar.zzd(i2);
            zzamy zzamyVar2 = this.zzh;
            zzamyVar2.zzd(i2);
            zzamy zzamyVar3 = this.zzi;
            zzamyVar3.zzd(i2);
            if (zzamyVar.zze() && zzamyVar2.zze() && zzamyVar3.zze()) {
                String str = this.zzb;
                int i3 = zzamyVar.zzb;
                byte[] bArr = new byte[zzamyVar2.zzb + i3 + zzamyVar3.zzb];
                System.arraycopy(zzamyVar.zza, 0, bArr, 0, i3);
                System.arraycopy(zzamyVar2.zza, 0, bArr, zzamyVar.zzb, zzamyVar2.zzb);
                System.arraycopy(zzamyVar3.zza, 0, bArr, zzamyVar.zzb + zzamyVar2.zzb, zzamyVar3.zzb);
                String strZzd = null;
                zzfk zzfkVarZzd = zzfq.zzd(zzamyVar2.zza, 3, zzamyVar2.zzb, null);
                zzff zzffVar = zzfkVarZzd.zzb;
                if (zzffVar != null) {
                    int i4 = zzffVar.zzf;
                    int[] iArr = zzffVar.zze;
                    int i5 = zzffVar.zzd;
                    strZzd = zzdh.zzd(zzffVar.zza, zzffVar.zzb, zzffVar.zzc, i5, iArr, i4);
                }
                zzx zzxVar = new zzx();
                zzxVar.zzO(str);
                zzxVar.zzE("video/mp2t");
                zzxVar.zzad("video/hevc");
                zzxVar.zzC(strZzd);
                zzxVar.zzai(zzfkVarZzd.zze);
                zzxVar.zzM(zzfkVarZzd.zzf);
                zzi zziVar = new zzi();
                zziVar.zzc(zzfkVarZzd.zzi);
                zziVar.zzb(zzfkVarZzd.zzj);
                zziVar.zzd(zzfkVarZzd.zzk);
                zziVar.zzf(zzfkVarZzd.zzc + 8);
                zziVar.zza(zzfkVarZzd.zzd + 8);
                zzxVar.zzD(zziVar.zzg());
                zzxVar.zzZ(zzfkVarZzd.zzg);
                zzxVar.zzU(zzfkVarZzd.zzh);
                zzxVar.zzV(zzfkVarZzd.zza + 1);
                zzxVar.zzP(Collections.singletonList(bArr));
                zzz zzzVarZzaj = zzxVar.zzaj();
                this.zzc.zzm(zzzVarZzaj);
                int i6 = zzzVarZzaj.zzq;
                zzftw.zzl(i6 != -1);
                this.zza.zzf(i6);
                this.zze = true;
            }
        }
        zzamy zzamyVar4 = this.zzj;
        if (zzamyVar4.zzd(i2)) {
            int iZzc = zzfq.zzc(zzamyVar4.zza, zzamyVar4.zzb);
            zzek zzekVar = this.zzn;
            zzekVar.zzJ(zzamyVar4.zza, iZzc);
            zzekVar.zzM(5);
            this.zza.zzc(j2, zzekVar);
        }
        zzamy zzamyVar5 = this.zzk;
        if (zzamyVar5.zzd(i2)) {
            int iZzc2 = zzfq.zzc(zzamyVar5.zza, zzamyVar5.zzb);
            zzek zzekVar2 = this.zzn;
            zzekVar2.zzJ(zzamyVar5.zza, iZzc2);
            zzekVar2.zzM(5);
            this.zza.zzc(j2, zzekVar2);
        }
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzg(byte[] bArr, int i, int i2) {
        this.zzd.zzb(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzh(long j, int i, int i2, long j2) {
        this.zzd.zzd(j, i, i2, j2, this.zze);
        if (!this.zze) {
            this.zzg.zzc(i2);
            this.zzh.zzc(i2);
            this.zzi.zzc(i2);
        }
        this.zzj.zzc(i2);
        this.zzk.zzc(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    @Override // com.google.android.gms.internal.ads.zzamg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r18) {
        /*
            r17 = this;
            r7 = r17
            com.google.android.gms.internal.ads.zzaei r0 = r7.zzc
            com.google.android.gms.internal.ads.zzdc.zzb(r0)
            int r0 = com.google.android.gms.internal.ads.zzeu.zza
        L9:
            int r0 = r18.zza()
            if (r0 <= 0) goto L7b
            int r0 = r18.zzc()
            int r8 = r18.zzd()
            byte[] r9 = r18.zzN()
            long r1 = r7.zzl
            int r3 = r18.zza()
            long r3 = (long) r3
            long r1 = r1 + r3
            r7.zzl = r1
            com.google.android.gms.internal.ads.zzaei r1 = r7.zzc
            int r2 = r18.zza()
            r10 = r18
            r1.zzr(r10, r2)
        L30:
            if (r0 >= r8) goto L9
            boolean[] r1 = r7.zzf
            int r1 = com.google.android.gms.internal.ads.zzfq.zza(r9, r0, r8, r1)
            if (r1 == r8) goto L78
            int r2 = r1 + 3
            r2 = r9[r2]
            r2 = r2 & 126(0x7e, float:1.77E-43)
            r3 = 3
            if (r1 <= 0) goto L4d
            int r4 = r1 + (-1)
            r5 = r9[r4]
            if (r5 != 0) goto L4d
            r3 = 4
            r12 = r3
            r11 = r4
            goto L4f
        L4d:
            r11 = r1
            r12 = r3
        L4f:
            int r1 = r11 - r0
            if (r1 <= 0) goto L56
            r7.zzg(r9, r0, r11)
        L56:
            int r13 = r8 - r11
            long r3 = r7.zzl
            long r5 = (long) r13
            long r14 = r3 - r5
            if (r1 >= 0) goto L61
            int r0 = -r1
            goto L62
        L61:
            r0 = 0
        L62:
            r4 = r0
            int r16 = r2 >> 1
            long r5 = r7.zzm
            r0 = r17
            r1 = r14
            r3 = r13
            r0.zzf(r1, r3, r4, r5)
            long r5 = r7.zzm
            r4 = r16
            r0.zzh(r1, r3, r4, r5)
            int r0 = r11 + r12
            goto L30
        L78:
            r7.zzg(r9, r0, r8)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamp.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzb(zzadf zzadfVar, zzanu zzanuVar) {
        zzanuVar.zzc();
        this.zzb = zzanuVar.zzb();
        this.zzc = zzadfVar.zzw(zzanuVar.zza(), 2);
        this.zzd = new zzamo(this.zzc);
        this.zza.zzd(zzadfVar, zzanuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzc(boolean z) {
        zzdc.zzb(this.zzc);
        int i = zzeu.zza;
        if (z) {
            this.zza.zze();
            zzf(this.zzl, 0, 0, this.zzm);
            zzh(this.zzl, 0, 48, this.zzm);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zze() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzfq.zzi(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        this.zza.zzb();
        zzamo zzamoVar = this.zzd;
        if (zzamoVar != null) {
            zzamoVar.zzc();
        }
    }
}
