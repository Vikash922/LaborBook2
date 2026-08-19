package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaiq implements zzadc, zzaeb {
    private long zzA;
    private int zzB;
    private zzagt zzC;
    private final zzajy zza;
    private final int zzb;
    private final zzek zzc;
    private final zzek zzd;
    private final zzek zze;
    private final zzek zzf;
    private final ArrayDeque zzg;
    private final zzaiu zzh;
    private final List zzi;
    private zzfww zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private int zzn;
    private zzek zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private long zzv;
    private zzadf zzw;
    private zzaip[] zzx;
    private long[][] zzy;
    private int zzz;

    @Deprecated
    public zzaiq() {
        this(zzajy.zza, 16);
    }

    private static int zzj(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzk(zzaiz zzaizVar, long j) {
        int iZza = zzaizVar.zza(j);
        return iZza == -1 ? zzaizVar.zzb(j) : iZza;
    }

    private static long zzl(zzaiz zzaizVar, long j, long j2) {
        int iZzk = zzk(zzaizVar, j);
        return iZzk == -1 ? j2 : Math.min(zzaizVar.zzc[iZzk], j2);
    }

    private final void zzm() {
        this.zzk = 0;
        this.zzn = 0;
    }

    private final void zzn(long j) throws zzaz {
        zzav zzavVar;
        long j2;
        List list;
        int i;
        zzadq zzadqVar;
        zzav zzavVar2;
        int i2;
        ArrayList arrayList;
        while (true) {
            ArrayDeque arrayDeque = this.zzg;
            if (arrayDeque.isEmpty() || ((zzex) arrayDeque.peek()).zza != j) {
                break;
            }
            zzex zzexVar = (zzex) arrayDeque.pop();
            if (zzexVar.zzd == 1836019574) {
                zzex zzexVarZza = zzexVar.zza(1835365473);
                new ArrayList();
                zzav zzavVarZzb = zzexVarZza != null ? zzaie.zzb(zzexVarZza) : null;
                ArrayList arrayList2 = new ArrayList();
                boolean z = this.zzB == 1;
                zzadq zzadqVar2 = new zzadq();
                zzey zzeyVarZzb = zzexVar.zzb(1969517665);
                if (zzeyVarZzb != null) {
                    zzav zzavVarZzc = zzaie.zzc(zzeyVarZzb);
                    zzadqVar2.zzb(zzavVarZzc);
                    zzavVar = zzavVarZzc;
                } else {
                    zzavVar = null;
                }
                zzey zzeyVarZzb2 = zzexVar.zzb(1836476516);
                zzeyVarZzb2.getClass();
                zzav zzavVar3 = new zzav(-9223372036854775807L, zzaie.zzd(zzeyVarZzb2.zza));
                int i3 = this.zzb;
                ArrayList arrayList3 = arrayList2;
                zzadq zzadqVar3 = zzadqVar2;
                List listZzf = zzaie.zzf(zzexVar, zzadqVar2, -9223372036854775807L, null, 1 == (i3 & 1), z, new zzftl() { // from class: com.google.android.gms.internal.ads.zzaio
                    @Override // com.google.android.gms.internal.ads.zzftl
                    public final Object apply(Object obj) {
                        return (zzaiw) obj;
                    }
                });
                String strZza = zzain.zza(listZzf);
                long j3 = -9223372036854775807L;
                int i4 = 0;
                int i5 = 0;
                int size = -1;
                while (true) {
                    j2 = 0;
                    if (i4 >= listZzf.size()) {
                        break;
                    }
                    zzaiz zzaizVar = (zzaiz) listZzf.get(i4);
                    int i6 = zzaizVar.zzb;
                    if (i6 == 0) {
                        list = listZzf;
                        i = i5;
                        zzadqVar = zzadqVar3;
                        arrayList = arrayList3;
                    } else {
                        zzaiw zzaiwVar = zzaizVar.zza;
                        zzadf zzadfVar = this.zzw;
                        int i7 = i5 + 1;
                        list = listZzf;
                        int i8 = zzaiwVar.zzb;
                        zzaip zzaipVar = new zzaip(zzaiwVar, zzaizVar, zzadfVar.zzw(i5, i8));
                        long j4 = zzaiwVar.zze;
                        if (j4 == -9223372036854775807L) {
                            j4 = zzaizVar.zzh;
                        }
                        i = i7;
                        zzaei zzaeiVar = zzaipVar.zzc;
                        zzaeiVar.zzl(j4);
                        long jMax = Math.max(j3, j4);
                        zzz zzzVar = zzaiwVar.zzg;
                        int i9 = "audio/true-hd".equals(zzzVar.zzo) ? zzaizVar.zze * 16 : zzaizVar.zze + 30;
                        zzx zzxVarZzb = zzzVar.zzb();
                        zzxVarZzb.zzT(i9);
                        if (i8 == 2) {
                            int i10 = zzzVar.zzf;
                            if ((i3 & 8) != 0) {
                                i10 |= size == -1 ? 1 : 2;
                            }
                            if (zzzVar.zzx == -1.0f && j4 > 0) {
                                zzxVarZzb.zzK(i6 / (j4 / 1000000.0f));
                            }
                            zzxVarZzb.zzab(i10);
                            i8 = 2;
                        }
                        if (i8 == 1 && zzadqVar3.zza()) {
                            zzadqVar = zzadqVar3;
                            zzxVarZzb.zzI(zzadqVar.zza);
                            zzxVarZzb.zzJ(zzadqVar.zzb);
                        } else {
                            zzadqVar = zzadqVar3;
                        }
                        List list2 = this.zzi;
                        zzav[] zzavVarArr = new zzav[3];
                        if (list2.isEmpty()) {
                            i2 = 0;
                            zzavVar2 = null;
                        } else {
                            zzavVar2 = new zzav(list2);
                            i2 = 0;
                        }
                        zzavVarArr[i2] = zzavVar2;
                        zzavVarArr[1] = zzavVar;
                        zzavVarArr[2] = zzavVar3;
                        zzav zzavVar4 = new zzav(-9223372036854775807L, new zzau[i2]);
                        if (zzavVarZzb != null) {
                            for (int i11 = 0; i11 < zzavVarZzb.zza(); i11++) {
                                zzau zzauVarZzb = zzavVarZzb.zzb(i11);
                                if (zzauVarZzb instanceof zzew) {
                                    zzew zzewVar = (zzew) zzauVarZzb;
                                    if (!zzewVar.zza.equals("com.android.capture.fps")) {
                                        zzavVar4 = zzavVar4.zzc(zzewVar);
                                    } else if (i8 == 2) {
                                        zzavVar4 = zzavVar4.zzc(zzewVar);
                                    }
                                }
                            }
                        }
                        for (int i12 = 0; i12 < 3; i12++) {
                            zzavVar4 = zzavVar4.zzd(zzavVarArr[i12]);
                        }
                        if (zzavVar4.zza() > 0) {
                            zzxVarZzb.zzW(zzavVar4);
                        }
                        zzxVarZzb.zzE(strZza);
                        zzaeiVar.zzm(zzxVarZzb.zzaj());
                        if (i8 == 2 && size == -1) {
                            size = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(zzaipVar);
                        j3 = jMax;
                    }
                    i4++;
                    zzadqVar3 = zzadqVar;
                    arrayList3 = arrayList;
                    listZzf = list;
                    i5 = i;
                }
                this.zzz = size;
                this.zzA = j3;
                zzaip[] zzaipVarArr = (zzaip[]) arrayList3.toArray(new zzaip[0]);
                this.zzx = zzaipVarArr;
                int length = zzaipVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i13 = 0; i13 < zzaipVarArr.length; i13++) {
                    jArr[i13] = new long[zzaipVarArr[i13].zzb.zzb];
                    jArr2[i13] = zzaipVarArr[i13].zzb.zzf[0];
                }
                int i14 = 0;
                while (i14 < zzaipVarArr.length) {
                    long j5 = Long.MAX_VALUE;
                    int i15 = -1;
                    for (int i16 = 0; i16 < zzaipVarArr.length; i16++) {
                        if (!zArr[i16]) {
                            long j6 = jArr2[i16];
                            if (j6 <= j5) {
                                i15 = i16;
                                j5 = j6;
                            }
                        }
                    }
                    int i17 = iArr[i15];
                    long[] jArr3 = jArr[i15];
                    jArr3[i17] = j2;
                    zzaiz zzaizVar2 = zzaipVarArr[i15].zzb;
                    j2 += (long) zzaizVar2.zzd[i17];
                    int i18 = i17 + 1;
                    iArr[i15] = i18;
                    if (i18 < jArr3.length) {
                        jArr2[i15] = zzaizVar2.zzf[i18];
                    } else {
                        zArr[i15] = true;
                        i14++;
                    }
                }
                this.zzy = jArr;
                this.zzw.zzG();
                this.zzw.zzP(this);
                arrayDeque.clear();
                this.zzk = 2;
            } else if (!arrayDeque.isEmpty()) {
                ((zzex) arrayDeque.peek()).zzc(zzexVar);
            }
        }
        if (this.zzk != 2) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final long zza() {
        return this.zzA;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ zzadc zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ List zzd() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zze(zzadf zzadfVar) {
        if ((this.zzb & 16) == 0) {
            zzadfVar = new zzakb(zzadfVar, this.zza);
        }
        this.zzw = zzadfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzf(long j, long j2) {
        this.zzg.clear();
        this.zzn = 0;
        this.zzp = -1;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = false;
        if (j == 0) {
            if (this.zzk != 3) {
                zzm();
                return;
            } else {
                this.zzh.zzb();
                this.zzi.clear();
                return;
            }
        }
        for (zzaip zzaipVar : this.zzx) {
            zzaiz zzaizVar = zzaipVar.zzb;
            int iZza = zzaizVar.zza(j2);
            if (iZza == -1) {
                iZza = zzaizVar.zzb(j2);
            }
            zzaipVar.zze = iZza;
            zzaej zzaejVar = zzaipVar.zzd;
            if (zzaejVar != null) {
                zzaejVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final zzadz zzg(long j) {
        long j2;
        long j3;
        long jZzl;
        long j4;
        int iZzb;
        long j5 = j;
        zzaip[] zzaipVarArr = this.zzx;
        if (zzaipVarArr.length == 0) {
            zzaec zzaecVar = zzaec.zza;
            return new zzadz(zzaecVar, zzaecVar);
        }
        int i = this.zzz;
        if (i != -1) {
            zzaiz zzaizVar = zzaipVarArr[i].zzb;
            int iZzk = zzk(zzaizVar, j5);
            if (iZzk == -1) {
                zzaec zzaecVar2 = zzaec.zza;
                return new zzadz(zzaecVar2, zzaecVar2);
            }
            long[] jArr = zzaizVar.zzf;
            long j6 = jArr[iZzk];
            long[] jArr2 = zzaizVar.zzc;
            j2 = jArr2[iZzk];
            if (j6 >= j5 || iZzk >= zzaizVar.zzb - 1 || (iZzb = zzaizVar.zzb(j5)) == -1 || iZzb == iZzk) {
                j4 = -9223372036854775807L;
                jZzl = -1;
            } else {
                j4 = jArr[iZzb];
                jZzl = jArr2[iZzb];
            }
            j3 = j4;
            j5 = j6;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
            jZzl = -1;
        }
        int i2 = 0;
        while (true) {
            zzaip[] zzaipVarArr2 = this.zzx;
            if (i2 >= zzaipVarArr2.length) {
                break;
            }
            if (i2 != this.zzz) {
                zzaiz zzaizVar2 = zzaipVarArr2[i2].zzb;
                long jZzl2 = zzl(zzaizVar2, j5, j2);
                if (j3 != -9223372036854775807L) {
                    jZzl = zzl(zzaizVar2, j3, jZzl);
                }
                j2 = jZzl2;
            }
            i2++;
        }
        zzaec zzaecVar3 = new zzaec(j5, j2);
        return j3 == -9223372036854775807L ? new zzadz(zzaecVar3, zzaecVar3) : new zzadz(zzaecVar3, new zzaec(j3, jZzl));
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final boolean zzi(zzadd zzaddVar) throws IOException {
        zzaef zzaefVarZzb = zzaiv.zzb(zzaddVar, (this.zzb & 2) != 0);
        this.zzj = zzaefVarZzb != null ? zzfww.zzo(zzaefVarZzb) : zzfww.zzn();
        return zzaefVarZzb == null;
    }

    public zzaiq(zzajy zzajyVar, int i) {
        this.zza = zzajyVar;
        this.zzb = i;
        this.zzj = zzfww.zzn();
        this.zzk = (i & 4) != 0 ? 3 : 0;
        this.zzh = new zzaiu();
        this.zzi = new ArrayList();
        this.zzf = new zzek(16);
        this.zzg = new ArrayDeque();
        this.zzc = new zzek(zzfq.zza);
        this.zzd = new zzek(6);
        this.zze = new zzek();
        this.zzp = -1;
        this.zzw = zzadf.zza;
        this.zzx = new zzaip[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:299:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0179 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0154  */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadd r31, com.google.android.gms.internal.ads.zzady r32) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiq.zzb(com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzady):int");
    }
}
