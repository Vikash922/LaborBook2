package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.jacoco.core.runtime.AgentOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamn implements zzamg {
    private final zzank zza;
    private long zzf;
    private String zzh;
    private zzaei zzi;
    private zzamm zzj;
    private boolean zzk;
    private boolean zzm;
    private final String zzb = "video/mp2t";
    private final boolean[] zzg = new boolean[3];
    private final zzamy zzc = new zzamy(7, 128);
    private final zzamy zzd = new zzamy(8, 128);
    private final zzamy zze = new zzamy(6, 128);
    private long zzl = -9223372036854775807L;
    private final zzek zzn = new zzek();

    public zzamn(zzank zzankVar, boolean z, boolean z2, String str) {
        this.zza = zzankVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzg(byte[] bArr, int i, int i2) {
        if (!this.zzk) {
            this.zzc.zza(bArr, i, i2);
            this.zzd.zza(bArr, i, i2);
        }
        this.zze.zza(bArr, i, i2);
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzh(long j, int i, long j2) {
        if (!this.zzk) {
            this.zzc.zzc(i);
            this.zzd.zzc(i);
        }
        this.zze.zzc(i);
        this.zzj.zzd(j, i, j2, this.zzm);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    @Override // com.google.android.gms.internal.ads.zzamg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r16) {
        /*
            r15 = this;
            r7 = r15
            com.google.android.gms.internal.ads.zzaei r0 = r7.zzi
            com.google.android.gms.internal.ads.zzdc.zzb(r0)
            int r0 = com.google.android.gms.internal.ads.zzeu.zza
            int r0 = r16.zzc()
            int r8 = r16.zzd()
            byte[] r9 = r16.zzN()
            long r1 = r7.zzf
            int r3 = r16.zza()
            long r3 = (long) r3
            long r1 = r1 + r3
            r7.zzf = r1
            com.google.android.gms.internal.ads.zzaei r1 = r7.zzi
            int r2 = r16.zza()
            r3 = r16
            r1.zzr(r3, r2)
        L29:
            boolean[] r1 = r7.zzg
            int r1 = com.google.android.gms.internal.ads.zzfq.zza(r9, r0, r8, r1)
            if (r1 == r8) goto L6a
            int r2 = r1 + 3
            r2 = r9[r2]
            r10 = r2 & 31
            r2 = 3
            if (r1 <= 0) goto L44
            int r3 = r1 + (-1)
            r4 = r9[r3]
            if (r4 != 0) goto L44
            r2 = 4
            r12 = r2
            r11 = r3
            goto L46
        L44:
            r11 = r1
            r12 = r2
        L46:
            int r1 = r11 - r0
            if (r1 <= 0) goto L4d
            r15.zzg(r9, r0, r11)
        L4d:
            int r3 = r8 - r11
            long r4 = r7.zzf
            long r13 = (long) r3
            long r13 = r4 - r13
            if (r1 >= 0) goto L58
            int r0 = -r1
            goto L59
        L58:
            r0 = 0
        L59:
            r4 = r0
            long r5 = r7.zzl
            r0 = r15
            r1 = r13
            r0.zzf(r1, r3, r4, r5)
            long r4 = r7.zzl
            r3 = r10
            r0.zzh(r1, r3, r4)
            int r0 = r11 + r12
            goto L29
        L6a:
            r15.zzg(r9, r0, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamn.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzb(zzadf zzadfVar, zzanu zzanuVar) {
        zzanuVar.zzc();
        this.zzh = zzanuVar.zzb();
        this.zzi = zzadfVar.zzw(zzanuVar.zza(), 2);
        this.zzj = new zzamm(this.zzi, false, false);
        this.zza.zzd(zzadfVar, zzanuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzc(boolean z) {
        zzdc.zzb(this.zzi);
        int i = zzeu.zza;
        if (z) {
            this.zza.zze();
            zzf(this.zzf, 0, 0, this.zzl);
            zzh(this.zzf, 9, this.zzl);
            zzf(this.zzf, 0, 0, this.zzl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzd(long j, int i) {
        this.zzl = j;
        int i2 = i & 2;
        this.zzm = (i2 != 0) | this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zze() {
        this.zzf = 0L;
        this.zzm = false;
        this.zzl = -9223372036854775807L;
        zzfq.zzi(this.zzg);
        this.zzc.zzb();
        this.zzd.zzb();
        this.zze.zzb();
        this.zza.zzb();
        zzamm zzammVar = this.zzj;
        if (zzammVar != null) {
            zzammVar.zzc();
        }
    }

    @RequiresNonNull({AgentOptions.OUTPUT, "sampleReader"})
    private final void zzf(long j, int i, int i2, long j2) {
        if (!this.zzk) {
            zzamy zzamyVar = this.zzc;
            zzamyVar.zzd(i2);
            zzamy zzamyVar2 = this.zzd;
            zzamyVar2.zzd(i2);
            if (this.zzk) {
                if (zzamyVar.zze()) {
                    zzfp zzfpVarZzg = zzfq.zzg(zzamyVar.zza, 4, zzamyVar.zzb);
                    this.zza.zzf(zzfpVarZzg.zzm);
                    this.zzj.zzb(zzfpVarZzg);
                    zzamyVar.zzb();
                } else if (zzamyVar2.zze()) {
                    this.zzj.zza(zzfq.zzf(zzamyVar2.zza, 4, zzamyVar2.zzb));
                    zzamyVar2.zzb();
                }
            } else if (zzamyVar.zze() && zzamyVar2.zze()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(zzamyVar.zza, zzamyVar.zzb));
                arrayList.add(Arrays.copyOf(zzamyVar2.zza, zzamyVar2.zzb));
                zzfp zzfpVarZzg2 = zzfq.zzg(zzamyVar.zza, 4, zzamyVar.zzb);
                zzfo zzfoVarZzf = zzfq.zzf(zzamyVar2.zza, 4, zzamyVar2.zzb);
                String strZzc = zzdh.zzc(zzfpVarZzg2.zza, zzfpVarZzg2.zzb, zzfpVarZzg2.zzc);
                zzaei zzaeiVar = this.zzi;
                zzx zzxVar = new zzx();
                zzxVar.zzO(this.zzh);
                zzxVar.zzE(this.zzb);
                zzxVar.zzad("video/avc");
                zzxVar.zzC(strZzc);
                zzxVar.zzai(zzfpVarZzg2.zze);
                zzxVar.zzM(zzfpVarZzg2.zzf);
                zzi zziVar = new zzi();
                zziVar.zzc(zzfpVarZzg2.zzj);
                zziVar.zzb(zzfpVarZzg2.zzk);
                zziVar.zzd(zzfpVarZzg2.zzl);
                zziVar.zzf(zzfpVarZzg2.zzh + 8);
                zziVar.zza(zzfpVarZzg2.zzi + 8);
                zzxVar.zzD(zziVar.zzg());
                zzxVar.zzZ(zzfpVarZzg2.zzg);
                zzxVar.zzP(arrayList);
                int i3 = zzfpVarZzg2.zzm;
                zzxVar.zzU(i3);
                zzaeiVar.zzm(zzxVar.zzaj());
                this.zzk = true;
                this.zza.zzf(i3);
                this.zzj.zzb(zzfpVarZzg2);
                this.zzj.zza(zzfoVarZzf);
                zzamyVar.zzb();
                zzamyVar2.zzb();
            }
        }
        zzamy zzamyVar3 = this.zze;
        if (zzamyVar3.zzd(i2)) {
            int iZzc = zzfq.zzc(zzamyVar3.zza, zzamyVar3.zzb);
            zzek zzekVar = this.zzn;
            zzekVar.zzJ(zzamyVar3.zza, iZzc);
            zzekVar.zzL(4);
            this.zza.zzc(j2, zzekVar);
        }
        if (this.zzj.zze(j, i, this.zzk)) {
            this.zzm = false;
        }
    }
}
