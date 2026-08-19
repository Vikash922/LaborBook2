package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkz {
    private final zzmg zzc;
    private final zzdq zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzis zzh;
    private zzkw zzi;
    private zzkw zzj;
    private zzkw zzk;
    private zzkw zzl;
    private zzkw zzm;
    private int zzn;
    private Object zzo;
    private long zzp;
    private final zzkd zzr;
    private final zzbj zza = new zzbj();
    private final zzbk zzb = new zzbk();
    private List zzq = new ArrayList();

    public zzkz(zzmg zzmgVar, zzdq zzdqVar, zzkd zzkdVar, zzis zzisVar) {
        this.zzc = zzmgVar;
        this.zzd = zzdqVar;
        this.zzr = zzkdVar;
        this.zzh = zzisVar;
    }

    private final int zzB(zzbl zzblVar) {
        zzkw zzkwVarZzg = this.zzi;
        if (zzkwVarZzg == null) {
            return 0;
        }
        int iZza = zzblVar.zza(zzkwVarZzg.zzb);
        while (true) {
            iZza = zzblVar.zzi(iZza, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                zzkwVarZzg.getClass();
                if (zzkwVarZzg.zzg() == null || zzkwVarZzg.zzg.zzh) {
                    break;
                }
                zzkwVarZzg = zzkwVarZzg.zzg();
            }
            zzkw zzkwVarZzg2 = zzkwVarZzg.zzg();
            if (iZza == -1 || zzkwVarZzg2 == null || zzblVar.zza(zzkwVarZzg2.zzb) != iZza) {
                break;
            }
            zzkwVarZzg = zzkwVarZzg2;
        }
        int iZza2 = zza(zzkwVarZzg);
        zzkwVarZzg.zzg = zzp(zzblVar, zzkwVarZzg.zzg);
        return iZza2;
    }

    private final long zzC(zzbl zzblVar, Object obj, int i) {
        zzbj zzbjVar = this.zza;
        zzblVar.zzn(obj, zzbjVar);
        zzbjVar.zzg(i);
        long j = zzbjVar.zzg.zza(i).zzh;
        return 0L;
    }

    private final long zzD(Object obj) {
        for (int i = 0; i < this.zzq.size(); i++) {
            zzkw zzkwVar = (zzkw) this.zzq.get(i);
            if (zzkwVar.zzb.equals(obj)) {
                return zzkwVar.zzg.zza.zzd;
            }
        }
        return -1L;
    }

    private final zzkx zzE(zzbl zzblVar, zzkw zzkwVar, long j) {
        Object obj;
        int i;
        long j2;
        long j3;
        long j4;
        zzkx zzkxVar = zzkwVar.zzg;
        long jZze = zzkwVar.zze();
        long j5 = zzkxVar.zze;
        long j6 = (jZze + j5) - j;
        if (zzkxVar.zzh) {
            zzuy zzuyVar = zzkxVar.zza;
            Object obj2 = zzuyVar.zza;
            int iZza = zzblVar.zza(obj2);
            int i2 = this.zzf;
            boolean z = this.zzg;
            zzbk zzbkVar = this.zzb;
            zzbj zzbjVar = this.zza;
            int iZzi = zzblVar.zzi(iZza, zzbjVar, zzbkVar, i2, z);
            if (iZzi != -1) {
                int i3 = zzblVar.zzd(iZzi, zzbjVar, true).zzc;
                Object obj3 = zzbjVar.zzb;
                obj3.getClass();
                long jZzD = zzuyVar.zzd;
                if (zzblVar.zze(i3, zzbkVar, 0L).zzn == iZzi) {
                    Pair pairZzm = zzblVar.zzm(zzbkVar, zzbjVar, i3, -9223372036854775807L, Math.max(0L, j6));
                    if (pairZzm != null) {
                        obj3 = pairZzm.first;
                        long jLongValue = ((Long) pairZzm.second).longValue();
                        zzkw zzkwVarZzg = zzkwVar.zzg();
                        if (zzkwVarZzg == null || !zzkwVarZzg.zzb.equals(obj3)) {
                            jZzD = zzD(obj3);
                            if (jZzD == -1) {
                                jZzD = this.zze;
                                this.zze = 1 + jZzD;
                            }
                        } else {
                            jZzD = zzkwVarZzg.zzg.zza.zzd;
                        }
                        j4 = jLongValue;
                        j3 = -9223372036854775807L;
                    }
                } else {
                    j3 = 0;
                    j4 = 0;
                }
                zzuy zzuyVarZzI = zzI(zzblVar, obj3, j4, jZzD, zzbkVar, zzbjVar);
                if (j3 != -9223372036854775807L && zzkxVar.zzc != -9223372036854775807L) {
                    zzblVar.zzn(obj2, zzbjVar).zzb();
                    int i4 = zzbjVar.zzg.zzd;
                }
                return zzF(zzblVar, zzuyVarZzI, j3, j4);
            }
        } else {
            zzuy zzuyVar2 = zzkxVar.zza;
            Object obj4 = zzuyVar2.zza;
            zzbj zzbjVar2 = this.zza;
            zzblVar.zzn(obj4, zzbjVar2);
            boolean z2 = zzkxVar.zzg;
            if (!zzuyVar2.zzb()) {
                int i5 = zzuyVar2.zze;
                if (i5 != -1) {
                    zzbjVar2.zzj(i5);
                }
                int iZze = zzbjVar2.zze(i5);
                zzbjVar2.zzk(i5);
                if (iZze != zzbjVar2.zza(i5)) {
                    return zzG(zzblVar, obj4, i5, iZze, j5, zzuyVar2.zzd, false);
                }
                zzC(zzblVar, obj4, i5);
                return zzH(zzblVar, obj4, 0L, j5, zzuyVar2.zzd, false);
            }
            int i6 = zzuyVar2.zzb;
            if (zzbjVar2.zza(i6) != -1) {
                int iZza2 = zzbjVar2.zzg.zza(i6).zza(zzuyVar2.zzc);
                if (iZza2 < 0) {
                    return zzG(zzblVar, obj4, i6, iZza2, zzkxVar.zzc, zzuyVar2.zzd, false);
                }
                long jLongValue2 = zzkxVar.zzc;
                if (jLongValue2 == -9223372036854775807L) {
                    obj = obj4;
                    i = i6;
                    Pair pairZzm2 = zzblVar.zzm(this.zzb, zzbjVar2, zzbjVar2.zzc, -9223372036854775807L, Math.max(0L, j6));
                    if (pairZzm2 != null) {
                        jLongValue2 = ((Long) pairZzm2.second).longValue();
                        j2 = -9223372036854775807L;
                    }
                } else {
                    obj = obj4;
                    i = i6;
                    j2 = jLongValue2;
                }
                zzC(zzblVar, obj, i);
                return zzH(zzblVar, obj, Math.max(0L, jLongValue2), j2, zzuyVar2.zzd, false);
            }
        }
        return null;
    }

    private final zzkx zzF(zzbl zzblVar, zzuy zzuyVar, long j, long j2) {
        Object obj = zzuyVar.zza;
        zzblVar.zzn(obj, this.zza);
        return zzuyVar.zzb() ? zzG(zzblVar, obj, zzuyVar.zzb, zzuyVar.zzc, j, zzuyVar.zzd, false) : zzH(zzblVar, obj, j2, j, zzuyVar.zzd, false);
    }

    private final zzkx zzG(zzbl zzblVar, Object obj, int i, int i2, long j, long j2, boolean z) {
        zzuy zzuyVar = new zzuy(obj, i, i2, j2);
        Object obj2 = zzuyVar.zza;
        int i3 = zzuyVar.zzb;
        int i4 = zzuyVar.zzc;
        zzbj zzbjVar = this.zza;
        long jZzf = zzblVar.zzn(obj2, zzbjVar).zzf(i3, i4);
        if (i2 == zzbjVar.zze(i)) {
            zzbjVar.zzh();
        }
        zzbjVar.zzk(i3);
        return new zzkx(zzuyVar, (jZzf == -9223372036854775807L || jZzf > 0) ? 0L : Math.max(0L, (-1) + jZzf), j, -9223372036854775807L, jZzf, false, false, false, false, false);
    }

    private final zzkx zzH(zzbl zzblVar, Object obj, long j, long j2, long j3, boolean z) {
        long j4;
        long j5;
        long j6;
        long jMax = j;
        zzbj zzbjVar = this.zza;
        zzblVar.zzn(obj, zzbjVar);
        int iZzc = zzbjVar.zzc(jMax);
        if (iZzc != -1) {
            zzbjVar.zzj(iZzc);
        }
        if (iZzc == -1) {
            zzbjVar.zzb();
        } else {
            zzbjVar.zzk(iZzc);
        }
        zzuy zzuyVar = new zzuy(obj, j3, iZzc);
        boolean zZzM = zzM(zzuyVar);
        boolean zZzL = zzL(zzblVar, zzuyVar);
        boolean zZzK = zzK(zzblVar, zzuyVar, zZzM);
        if (iZzc != -1) {
            zzbjVar.zzk(iZzc);
        }
        if (iZzc != -1) {
            zzbjVar.zzg(iZzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != -9223372036854775807L) {
            j6 = 0;
            j5 = 0;
        } else {
            j5 = zzbjVar.zzd;
            j6 = j4;
        }
        if (j5 != -9223372036854775807L && jMax >= j5) {
            jMax = Math.max(0L, j5 - 1);
        }
        return new zzkx(zzuyVar, jMax, j2, j6, j5, false, false, zZzM, zZzL, zZzK);
    }

    private static zzuy zzI(zzbl zzblVar, Object obj, long j, long j2, zzbk zzbkVar, zzbj zzbjVar) {
        zzblVar.zzn(obj, zzbjVar);
        zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L);
        zzblVar.zza(obj);
        zzbjVar.zzb();
        zzblVar.zzn(obj, zzbjVar);
        int iZzd = zzbjVar.zzd(j);
        return iZzd == -1 ? new zzuy(obj, j2, zzbjVar.zzc(j)) : new zzuy(obj, iZzd, zzbjVar.zze(iZzd), j2);
    }

    private final void zzJ() {
        int i = zzfww.zzd;
        final zzfwt zzfwtVar = new zzfwt();
        for (zzkw zzkwVarZzg = this.zzi; zzkwVarZzg != null; zzkwVarZzg = zzkwVarZzg.zzg()) {
            zzfwtVar.zzf(zzkwVarZzg.zzg.zza);
        }
        zzkw zzkwVar = this.zzj;
        final zzuy zzuyVar = zzkwVar == null ? null : zzkwVar.zzg.zza;
        this.zzd.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzky
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc.zzU(zzfwtVar.zzi(), zzuyVar);
            }
        });
    }

    private final boolean zzK(zzbl zzblVar, zzuy zzuyVar, boolean z) {
        int iZza = zzblVar.zza(zzuyVar.zza);
        zzbj zzbjVar = this.zza;
        int i = zzblVar.zzd(iZza, zzbjVar, false).zzc;
        zzbk zzbkVar = this.zzb;
        return !zzblVar.zze(i, zzbkVar, 0L).zzi && zzblVar.zzi(iZza, zzbjVar, zzbkVar, this.zzf, this.zzg) == -1 && z;
    }

    private final boolean zzL(zzbl zzblVar, zzuy zzuyVar) {
        if (!zzM(zzuyVar)) {
            return false;
        }
        Object obj = zzuyVar.zza;
        return zzblVar.zze(zzblVar.zzn(obj, this.zza).zzc, this.zzb, 0L).zzo == zzblVar.zza(obj);
    }

    private static final boolean zzM(zzuy zzuyVar) {
        return !zzuyVar.zzb() && zzuyVar.zze == -1;
    }

    static boolean zzx(long j, long j2) {
        return j == -9223372036854775807L || j == j2;
    }

    public final boolean zzA() {
        zzkw zzkwVar = this.zzl;
        if (zzkwVar == null) {
            return true;
        }
        if (zzkwVar.zzg.zzj || !zzkwVar.zzs() || this.zzl.zzg.zze == -9223372036854775807L) {
            return false;
        }
        return this.zzn < 100;
    }

    public final int zza(zzkw zzkwVar) {
        zzdc.zzb(zzkwVar);
        int i = 0;
        if (zzkwVar.equals(this.zzl)) {
            return 0;
        }
        this.zzl = zzkwVar;
        while (zzkwVar.zzg() != null) {
            zzkwVar = zzkwVar.zzg();
            zzkwVar.getClass();
            if (zzkwVar == this.zzj) {
                zzkw zzkwVar2 = this.zzi;
                this.zzj = zzkwVar2;
                this.zzk = zzkwVar2;
                i = 3;
            }
            if (zzkwVar == this.zzk) {
                this.zzk = this.zzj;
                i |= 2;
            }
            zzkwVar.zzo();
            this.zzn--;
        }
        zzkw zzkwVar3 = this.zzl;
        zzkwVar3.getClass();
        zzkwVar3.zzp(null);
        zzJ();
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0093, code lost:
    
        return zza(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzbl r15, long r16, long r18, long r20) {
        /*
            r14 = this;
            r0 = r14
            r1 = r15
            com.google.android.gms.internal.ads.zzkw r2 = r0.zzi
            r3 = 0
        L5:
            r4 = 0
            if (r2 == 0) goto L94
            com.google.android.gms.internal.ads.zzkx r5 = r2.zzg
            if (r3 != 0) goto L13
            com.google.android.gms.internal.ads.zzkx r3 = r14.zzp(r15, r5)
            r6 = r16
            goto L2e
        L13:
            r6 = r16
            com.google.android.gms.internal.ads.zzkx r8 = r14.zzE(r15, r3, r6)
            if (r8 == 0) goto L8f
            long r9 = r5.zzb
            long r11 = r8.zzb
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L8f
            com.google.android.gms.internal.ads.zzuy r9 = r5.zza
            com.google.android.gms.internal.ads.zzuy r10 = r8.zza
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto L8f
            r3 = r8
        L2e:
            long r8 = r5.zzc
            com.google.android.gms.internal.ads.zzkx r8 = r3.zza(r8)
            r2.zzg = r8
            long r8 = r5.zze
            long r10 = r3.zze
            boolean r3 = zzx(r8, r10)
            if (r3 != 0) goto L86
            r2.zzr()
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r1 != 0) goto L52
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L57
        L52:
            long r5 = r2.zze()
            long r5 = r5 + r10
        L57:
            com.google.android.gms.internal.ads.zzkw r1 = r0.zzj
            r7 = -9223372036854775808
            r3 = 1
            if (r2 != r1) goto L6c
            com.google.android.gms.internal.ads.zzkx r1 = r2.zzg
            boolean r1 = r1.zzg
            int r1 = (r18 > r7 ? 1 : (r18 == r7 ? 0 : -1))
            if (r1 == 0) goto L6a
            int r1 = (r18 > r5 ? 1 : (r18 == r5 ? 0 : -1))
            if (r1 < 0) goto L6c
        L6a:
            r1 = r3
            goto L6d
        L6c:
            r1 = r4
        L6d:
            com.google.android.gms.internal.ads.zzkw r9 = r0.zzk
            if (r2 != r9) goto L7a
            int r7 = (r20 > r7 ? 1 : (r20 == r7 ? 0 : -1))
            if (r7 == 0) goto L79
            int r5 = (r20 > r5 ? 1 : (r20 == r5 ? 0 : -1))
            if (r5 < 0) goto L7a
        L79:
            r4 = r3
        L7a:
            int r2 = r14.zza(r2)
            if (r2 == 0) goto L81
            return r2
        L81:
            if (r4 == 0) goto L85
            r1 = r1 | 2
        L85:
            return r1
        L86:
            com.google.android.gms.internal.ads.zzkw r3 = r2.zzg()
            r13 = r3
            r3 = r2
            r2 = r13
            goto L5
        L8f:
            int r1 = r14.zza(r3)
            return r1
        L94:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkz.zzb(com.google.android.gms.internal.ads.zzbl, long, long, long):int");
    }

    public final int zzc(zzbl zzblVar, int i) {
        this.zzf = i;
        return zzB(zzblVar);
    }

    public final int zzd(zzbl zzblVar, boolean z) {
        this.zzg = z;
        return zzB(zzblVar);
    }

    public final zzkw zze() {
        zzkw zzkwVar = this.zzi;
        if (zzkwVar == null) {
            return null;
        }
        if (zzkwVar == this.zzj) {
            this.zzj = zzkwVar.zzg();
        }
        if (zzkwVar == this.zzk) {
            this.zzk = zzkwVar.zzg();
        }
        zzkwVar.zzo();
        int i = this.zzn - 1;
        this.zzn = i;
        if (i == 0) {
            this.zzl = null;
            zzkw zzkwVar2 = this.zzi;
            this.zzo = zzkwVar2.zzb;
            this.zzp = zzkwVar2.zzg.zza.zzd;
        }
        this.zzi = this.zzi.zzg();
        zzJ();
        return this.zzi;
    }

    public final zzkw zzf() {
        zzkw zzkwVar = this.zzk;
        zzdc.zzb(zzkwVar);
        this.zzk = zzkwVar.zzg();
        zzJ();
        zzkw zzkwVar2 = this.zzk;
        zzdc.zzb(zzkwVar2);
        return zzkwVar2;
    }

    public final zzkw zzg() {
        zzkw zzkwVar = this.zzk;
        zzkw zzkwVar2 = this.zzj;
        if (zzkwVar == zzkwVar2) {
            zzdc.zzb(zzkwVar2);
            this.zzk = zzkwVar2.zzg();
        }
        zzkw zzkwVar3 = this.zzj;
        zzdc.zzb(zzkwVar3);
        this.zzj = zzkwVar3.zzg();
        zzJ();
        zzkw zzkwVar4 = this.zzj;
        zzdc.zzb(zzkwVar4);
        return zzkwVar4;
    }

    public final zzkw zzi() {
        return this.zzl;
    }

    public final zzkw zzj() {
        return this.zzi;
    }

    public final zzkw zzk(zzuw zzuwVar) {
        for (int i = 0; i < this.zzq.size(); i++) {
            zzkw zzkwVar = (zzkw) this.zzq.get(i);
            if (zzkwVar.zza == zzuwVar) {
                return zzkwVar;
            }
        }
        return null;
    }

    public final zzkw zzl() {
        return this.zzm;
    }

    public final zzkw zzm() {
        return this.zzk;
    }

    public final zzkw zzn() {
        return this.zzj;
    }

    public final zzkx zzo(long j, zzlm zzlmVar) {
        zzkw zzkwVar = this.zzl;
        return zzkwVar == null ? zzF(zzlmVar.zza, zzlmVar.zzb, zzlmVar.zzc, zzlmVar.zzs) : zzE(zzlmVar.zza, zzkwVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzkx zzp(com.google.android.gms.internal.ads.zzbl r22, com.google.android.gms.internal.ads.zzkx r23) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r2 = r23
            com.google.android.gms.internal.ads.zzuy r3 = r2.zza
            boolean r13 = zzM(r3)
            boolean r14 = r0.zzL(r1, r3)
            boolean r15 = r0.zzK(r1, r3, r13)
            java.lang.Object r4 = r3.zza
            com.google.android.gms.internal.ads.zzbj r5 = r0.zza
            r1.zzn(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r6 = 0
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L33
            int r1 = r3.zze
            if (r1 != r4) goto L2e
            goto L33
        L2e:
            r5.zzg(r1)
            r10 = r6
            goto L34
        L33:
            r10 = r8
        L34:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L48
            int r1 = r3.zzb
            int r6 = r3.zzc
            long r6 = r5.zzf(r1, r6)
        L42:
            r19 = r6
            r7 = r10
            r9 = r19
            goto L52
        L48:
            int r1 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r1 == 0) goto L4f
            r9 = r6
            r7 = r9
            goto L52
        L4f:
            long r6 = r5.zzd
            goto L42
        L52:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L5e
            int r1 = r3.zzb
            r5.zzk(r1)
            goto L65
        L5e:
            int r1 = r3.zze
            if (r1 == r4) goto L65
            r5.zzk(r1)
        L65:
            com.google.android.gms.internal.ads.zzkx r16 = new com.google.android.gms.internal.ads.zzkx
            long r4 = r2.zzb
            long r11 = r2.zzc
            boolean r1 = r2.zzf
            r17 = 0
            r18 = 0
            r1 = r16
            r2 = r3
            r3 = r4
            r5 = r11
            r11 = r17
            r12 = r18
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14, r15)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkz.zzp(com.google.android.gms.internal.ads.zzbl, com.google.android.gms.internal.ads.zzkx):com.google.android.gms.internal.ads.zzkx");
    }

    public final zzuy zzq(zzbl zzblVar, Object obj, long j) {
        long jZzD;
        int iZza;
        zzbj zzbjVar = this.zza;
        int i = zzblVar.zzn(obj, zzbjVar).zzc;
        Object obj2 = this.zzo;
        if (obj2 == null || (iZza = zzblVar.zza(obj2)) == -1 || zzblVar.zzd(iZza, zzbjVar, false).zzc != i) {
            zzkw zzkwVarZzg = this.zzi;
            while (true) {
                if (zzkwVarZzg == null) {
                    zzkw zzkwVarZzg2 = this.zzi;
                    while (true) {
                        if (zzkwVarZzg2 != null) {
                            int iZza2 = zzblVar.zza(zzkwVarZzg2.zzb);
                            if (iZza2 != -1 && zzblVar.zzd(iZza2, zzbjVar, false).zzc == i) {
                                jZzD = zzkwVarZzg2.zzg.zza.zzd;
                                break;
                            }
                            zzkwVarZzg2 = zzkwVarZzg2.zzg();
                        } else {
                            jZzD = zzD(obj);
                            if (jZzD == -1) {
                                jZzD = this.zze;
                                this.zze = 1 + jZzD;
                                if (this.zzi == null) {
                                    this.zzo = obj;
                                    this.zzp = jZzD;
                                }
                            }
                        }
                    }
                } else {
                    if (zzkwVarZzg.zzb.equals(obj)) {
                        jZzD = zzkwVarZzg.zzg.zza.zzd;
                        break;
                    }
                    zzkwVarZzg = zzkwVarZzg.zzg();
                }
            }
        } else {
            jZzD = this.zzp;
        }
        long j2 = jZzD;
        zzblVar.zzn(obj, zzbjVar);
        int i2 = zzbjVar.zzc;
        zzbk zzbkVar = this.zzb;
        zzblVar.zze(i2, zzbkVar, 0L);
        Object obj3 = obj;
        for (int iZza3 = zzblVar.zza(obj); iZza3 >= zzbkVar.zzn; iZza3--) {
            zzblVar.zzd(iZza3, zzbjVar, true);
            zzbjVar.zzb();
            if (zzbjVar.zzd(zzbjVar.zzd) != -1) {
                Object obj4 = zzbjVar.zzb;
                obj4.getClass();
                obj3 = obj4;
            }
        }
        return zzI(zzblVar, obj3, j, j2, zzbkVar, zzbjVar);
    }

    public final void zzs() {
        if (this.zzn == 0) {
            return;
        }
        zzkw zzkwVarZzg = this.zzi;
        zzdc.zzb(zzkwVarZzg);
        this.zzo = zzkwVarZzg.zzb;
        this.zzp = zzkwVarZzg.zzg.zza.zzd;
        while (zzkwVarZzg != null) {
            zzkwVarZzg.zzo();
            zzkwVarZzg = zzkwVarZzg.zzg();
        }
        this.zzi = null;
        this.zzl = null;
        this.zzj = null;
        this.zzk = null;
        this.zzn = 0;
        zzJ();
    }

    public final void zzt() {
        zzkw zzkwVar = this.zzm;
        if (zzkwVar == null || zzkwVar.zzt()) {
            this.zzm = null;
            for (int i = 0; i < this.zzq.size(); i++) {
                zzkw zzkwVar2 = (zzkw) this.zzq.get(i);
                if (!zzkwVar2.zzt()) {
                    this.zzm = zzkwVar2;
                    return;
                }
            }
        }
    }

    public final void zzu(long j) {
        zzkw zzkwVar = this.zzl;
        if (zzkwVar != null) {
            zzkwVar.zzn(j);
        }
    }

    public final void zzv() {
        if (this.zzq.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.zzq.size(); i++) {
            ((zzkw) this.zzq.get(i)).zzo();
        }
        this.zzq = arrayList;
        this.zzm = null;
        zzt();
    }

    public final void zzw(zzbl zzblVar, zzis zzisVar) {
        this.zzh = zzisVar;
        long j = zzisVar.zzb;
        zzv();
    }

    public final boolean zzy(zzuw zzuwVar) {
        zzkw zzkwVar = this.zzl;
        return zzkwVar != null && zzkwVar.zza == zzuwVar;
    }

    public final boolean zzz(zzuw zzuwVar) {
        zzkw zzkwVar = this.zzm;
        return zzkwVar != null && zzkwVar.zza == zzuwVar;
    }

    public final zzkw zzh(zzkx zzkxVar) {
        zzkw zzkwVarZzf;
        zzkw zzkwVar = this.zzl;
        long jZze = zzkwVar == null ? 1000000000000L : (zzkwVar.zze() + zzkwVar.zzg.zze) - zzkxVar.zzb;
        int i = 0;
        while (true) {
            if (i >= this.zzq.size()) {
                zzkwVarZzf = null;
                break;
            }
            zzkx zzkxVar2 = ((zzkw) this.zzq.get(i)).zzg;
            if (zzx(zzkxVar2.zze, zzkxVar.zze) && zzkxVar2.zzb == zzkxVar.zzb && zzkxVar2.zza.equals(zzkxVar.zza)) {
                zzkwVarZzf = (zzkw) this.zzq.remove(i);
                break;
            }
            i++;
        }
        if (zzkwVarZzf == null) {
            zzkwVarZzf = zzkn.zzf(this.zzr.zza, zzkxVar, jZze);
        } else {
            zzkwVarZzf.zzg = zzkxVar;
            zzkwVarZzf.zzq(jZze);
        }
        zzkw zzkwVar2 = this.zzl;
        if (zzkwVar2 != null) {
            zzkwVar2.zzp(zzkwVarZzf);
        } else {
            this.zzi = zzkwVarZzf;
            this.zzj = zzkwVarZzf;
            this.zzk = zzkwVarZzf;
        }
        this.zzo = null;
        this.zzl = zzkwVarZzf;
        this.zzn++;
        zzJ();
        return zzkwVarZzf;
    }
}
