package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzut extends zzxf {
    private final boolean zzb;
    private final zzbk zzc;
    private final zzbj zzd;
    private zzur zze;
    private zzuq zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    public zzut(zzva zzvaVar, boolean z) {
        boolean z2;
        super(zzvaVar);
        if (z) {
            zzvaVar.zzv();
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzb = z2;
        this.zzc = new zzbk();
        this.zzd = new zzbj();
        zzvaVar.zzM();
        this.zze = zzur.zzq(zzvaVar.zzJ());
    }

    private final Object zzK(Object obj) {
        return (this.zze.zze == null || !obj.equals(zzur.zzc)) ? obj : this.zze.zze;
    }

    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    private final boolean zzL(long j) {
        zzuq zzuqVar = this.zzf;
        int iZza = this.zze.zza(zzuqVar.zza.zza);
        if (iZza == -1) {
            return false;
        }
        zzur zzurVar = this.zze;
        zzbj zzbjVar = this.zzd;
        zzurVar.zzd(iZza, zzbjVar, false);
        long j2 = zzbjVar.zzd;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        zzuqVar.zzs(j);
        return true;
    }

    public final zzbl zzC() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxf
    protected final zzuy zzD(zzuy zzuyVar) {
        Object obj = this.zze.zze;
        Object obj2 = zzuyVar.zza;
        if (obj != null && this.zze.zze.equals(obj2)) {
            obj2 = zzur.zzc;
        }
        return zzuyVar.zza(obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    @Override // com.google.android.gms.internal.ads.zzxf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzE(com.google.android.gms.internal.ads.zzbl r12) {
        /*
            r11 = this;
            boolean r0 = r11.zzh
            r1 = 0
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzur r0 = r11.zze
            com.google.android.gms.internal.ads.zzur r12 = r0.zzp(r12)
            r11.zze = r12
            com.google.android.gms.internal.ads.zzuq r12 = r11.zzf
            if (r12 == 0) goto L97
            long r2 = r12.zzn()
            r11.zzL(r2)
            goto L97
        L1a:
            boolean r0 = r12.zzo()
            if (r0 == 0) goto L36
            boolean r0 = r11.zzi
            if (r0 == 0) goto L2b
            com.google.android.gms.internal.ads.zzur r0 = r11.zze
            com.google.android.gms.internal.ads.zzur r12 = r0.zzp(r12)
            goto L33
        L2b:
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzbk.zza
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzur.zzc
            com.google.android.gms.internal.ads.zzur r12 = com.google.android.gms.internal.ads.zzur.zzr(r12, r0, r2)
        L33:
            r11.zze = r12
            goto L97
        L36:
            com.google.android.gms.internal.ads.zzbk r3 = r11.zzc
            r0 = 0
            r4 = 0
            r12.zze(r0, r3, r4)
            java.lang.Object r8 = r3.zzb
            com.google.android.gms.internal.ads.zzuq r2 = r11.zzf
            if (r2 == 0) goto L5d
            long r6 = r2.zzq()
            com.google.android.gms.internal.ads.zzur r9 = r11.zze
            com.google.android.gms.internal.ads.zzbj r10 = r11.zzd
            com.google.android.gms.internal.ads.zzuy r2 = r2.zza
            java.lang.Object r2 = r2.zza
            r9.zzn(r2, r10)
            com.google.android.gms.internal.ads.zzur r2 = r11.zze
            r2.zze(r0, r3, r4)
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L5d
            goto L5e
        L5d:
            r6 = r4
        L5e:
            com.google.android.gms.internal.ads.zzbj r4 = r11.zzd
            r5 = 0
            r2 = r12
            android.util.Pair r0 = r2.zzl(r3, r4, r5, r6)
            java.lang.Object r2 = r0.first
            java.lang.Object r0 = r0.second
            java.lang.Long r0 = (java.lang.Long) r0
            long r3 = r0.longValue()
            boolean r0 = r11.zzi
            if (r0 == 0) goto L7b
            com.google.android.gms.internal.ads.zzur r0 = r11.zze
            com.google.android.gms.internal.ads.zzur r12 = r0.zzp(r12)
            goto L7f
        L7b:
            com.google.android.gms.internal.ads.zzur r12 = com.google.android.gms.internal.ads.zzur.zzr(r12, r8, r2)
        L7f:
            r11.zze = r12
            com.google.android.gms.internal.ads.zzuq r12 = r11.zzf
            if (r12 == 0) goto L97
            boolean r0 = r11.zzL(r3)
            if (r0 == 0) goto L97
            com.google.android.gms.internal.ads.zzuy r12 = r12.zza
            java.lang.Object r0 = r12.zza
            java.lang.Object r0 = r11.zzK(r0)
            com.google.android.gms.internal.ads.zzuy r1 = r12.zza(r0)
        L97:
            r12 = 1
            r11.zzi = r12
            r11.zzh = r12
            com.google.android.gms.internal.ads.zzur r12 = r11.zze
            r11.zzo(r12)
            if (r1 == 0) goto Lae
            com.google.android.gms.internal.ads.zzuq r12 = r11.zzf
            r12.getClass()
            r0 = r12
            com.google.android.gms.internal.ads.zzuq r0 = (com.google.android.gms.internal.ads.zzuq) r0
            r12.zzr(r1)
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzut.zzE(com.google.android.gms.internal.ads.zzbl):void");
    }

    @Override // com.google.android.gms.internal.ads.zzxf
    public final void zzF() {
        if (this.zzb) {
            return;
        }
        this.zzg = true;
        zzB(null, ((zzxf) this).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzxf, com.google.android.gms.internal.ads.zzva
    public final void zzG(zzuw zzuwVar) {
        ((zzuq) zzuwVar).zzt();
        if (zzuwVar == this.zzf) {
            this.zzf = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxf, com.google.android.gms.internal.ads.zzva
    /* JADX INFO: renamed from: zzH, reason: merged with bridge method [inline-methods] */
    public final zzuq zzI(zzuy zzuyVar, zzze zzzeVar, long j) {
        zzuq zzuqVar = new zzuq(zzuyVar, zzzeVar, j);
        zzuqVar.zzu(this.zza);
        if (this.zzh) {
            zzuqVar.zzr(zzuyVar.zza(zzK(zzuyVar.zza)));
        } else {
            this.zzf = zzuqVar;
            if (!this.zzg) {
                this.zzg = true;
                zzB(null, ((zzxf) this).zza);
            }
        }
        return zzuqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzug, com.google.android.gms.internal.ads.zztx
    public final void zzq() {
        this.zzh = false;
        this.zzg = false;
        super.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zztx, com.google.android.gms.internal.ads.zzva
    public final void zzt(zzap zzapVar) {
        if (this.zzi) {
            this.zze = this.zze.zzp(new zzxb(this.zze.zzb, zzapVar));
        } else {
            this.zze = zzur.zzq(zzapVar);
        }
        this.zza.zzt(zzapVar);
    }

    @Override // com.google.android.gms.internal.ads.zzug, com.google.android.gms.internal.ads.zzva
    public final void zzz() {
    }
}
