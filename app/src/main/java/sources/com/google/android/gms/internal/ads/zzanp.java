package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzanp implements zzanh {
    final /* synthetic */ zzanq zza;
    private final zzej zzb = new zzej(new byte[5], 5);
    private final SparseArray zzc = new SparseArray();
    private final SparseIntArray zzd = new SparseIntArray();
    private final int zze;

    public zzanp(zzanq zzanqVar, int i) {
        this.zza = zzanqVar;
        this.zze = i;
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    public final void zza(zzek zzekVar) {
        zzer zzerVar;
        int i;
        zzer zzerVar2;
        int i2;
        zzej zzejVar;
        int i3;
        if (zzekVar.zzm() == 2) {
            zzanq zzanqVar = this.zza;
            zzer zzerVar3 = (zzer) zzanqVar.zzb.get(0);
            if ((zzekVar.zzm() & 128) != 0) {
                zzekVar.zzM(1);
                int iZzq = zzekVar.zzq();
                int i4 = 3;
                zzekVar.zzM(3);
                zzej zzejVar2 = this.zzb;
                zzekVar.zzG(zzejVar2, 2);
                zzejVar2.zzn(3);
                int i5 = 13;
                zzanqVar.zzr = zzejVar2.zzd(13);
                zzekVar.zzG(zzejVar2, 2);
                int i6 = 4;
                zzejVar2.zzn(4);
                int i7 = 12;
                zzekVar.zzM(zzejVar2.zzd(12));
                SparseArray sparseArray = this.zzc;
                sparseArray.clear();
                SparseIntArray sparseIntArray = this.zzd;
                sparseIntArray.clear();
                int iZza = zzekVar.zza();
                while (iZza > 0) {
                    int i8 = 5;
                    zzekVar.zzG(zzejVar2, 5);
                    int iZzd = zzejVar2.zzd(8);
                    zzejVar2.zzn(i4);
                    int iZzd2 = zzejVar2.zzd(i5);
                    zzejVar2.zzn(i6);
                    int iZzd3 = zzejVar2.zzd(i7);
                    int iZzc = zzekVar.zzc();
                    int i9 = iZzc + iZzd3;
                    String str = null;
                    ArrayList arrayList = null;
                    int i10 = -1;
                    int iZzm = 0;
                    while (zzekVar.zzc() < i9) {
                        int iZzm2 = zzekVar.zzm();
                        int iZzc2 = zzekVar.zzc() + zzekVar.zzm();
                        if (iZzc2 > i9) {
                            break;
                        }
                        if (iZzm2 == i8) {
                            long jZzu = zzekVar.zzu();
                            if (jZzu != 1094921523) {
                                if (jZzu != 1161904947) {
                                    if (jZzu != 1094921524) {
                                        if (jZzu == 1212503619) {
                                            i3 = 36;
                                            i10 = i3;
                                        }
                                        zzerVar2 = zzerVar3;
                                        i2 = iZzq;
                                        zzejVar = zzejVar2;
                                    }
                                    zzerVar2 = zzerVar3;
                                    i2 = iZzq;
                                    zzejVar = zzejVar2;
                                    i10 = 172;
                                }
                                zzerVar2 = zzerVar3;
                                i2 = iZzq;
                                zzejVar = zzejVar2;
                                i10 = 135;
                            }
                            zzerVar2 = zzerVar3;
                            i2 = iZzq;
                            zzejVar = zzejVar2;
                            i10 = 129;
                        } else {
                            if (iZzm2 != 106) {
                                if (iZzm2 != 122) {
                                    if (iZzm2 == 127) {
                                        int iZzm3 = zzekVar.zzm();
                                        if (iZzm3 != 21) {
                                            if (iZzm3 == 14) {
                                                i3 = 136;
                                            } else {
                                                if (iZzm3 == 33) {
                                                    i3 = Opcodes.F2I;
                                                }
                                                zzerVar2 = zzerVar3;
                                                i2 = iZzq;
                                                zzejVar = zzejVar2;
                                            }
                                            i10 = i3;
                                            zzerVar2 = zzerVar3;
                                            i2 = iZzq;
                                            zzejVar = zzejVar2;
                                        }
                                        zzerVar2 = zzerVar3;
                                        i2 = iZzq;
                                        zzejVar = zzejVar2;
                                        i10 = 172;
                                    } else if (iZzm2 == 123) {
                                        i3 = Opcodes.L2D;
                                        i10 = i3;
                                        zzerVar2 = zzerVar3;
                                        i2 = iZzq;
                                        zzejVar = zzejVar2;
                                    } else if (iZzm2 == 10) {
                                        String strTrim = zzekVar.zzB(3, StandardCharsets.UTF_8).trim();
                                        iZzm = zzekVar.zzm();
                                        str = strTrim;
                                        zzerVar2 = zzerVar3;
                                        i2 = iZzq;
                                        zzejVar = zzejVar2;
                                    } else if (iZzm2 == 89) {
                                        ArrayList arrayList2 = new ArrayList();
                                        while (zzekVar.zzc() < iZzc2) {
                                            zzej zzejVar3 = zzejVar2;
                                            String strTrim2 = zzekVar.zzB(3, StandardCharsets.UTF_8).trim();
                                            int iZzm4 = zzekVar.zzm();
                                            zzer zzerVar4 = zzerVar3;
                                            byte[] bArr = new byte[4];
                                            zzekVar.zzH(bArr, 0, 4);
                                            arrayList2.add(new zzanr(strTrim2, iZzm4, bArr));
                                            zzerVar3 = zzerVar4;
                                            zzejVar2 = zzejVar3;
                                            iZzq = iZzq;
                                        }
                                        zzerVar2 = zzerVar3;
                                        i2 = iZzq;
                                        zzejVar = zzejVar2;
                                        arrayList = arrayList2;
                                        i10 = 89;
                                    } else {
                                        zzerVar2 = zzerVar3;
                                        i2 = iZzq;
                                        zzejVar = zzejVar2;
                                        if (iZzm2 == 111) {
                                            i10 = 257;
                                        }
                                    }
                                }
                                zzerVar2 = zzerVar3;
                                i2 = iZzq;
                                zzejVar = zzejVar2;
                                i10 = 135;
                            }
                            zzerVar2 = zzerVar3;
                            i2 = iZzq;
                            zzejVar = zzejVar2;
                            i10 = 129;
                        }
                        zzekVar.zzM(iZzc2 - zzekVar.zzc());
                        zzerVar3 = zzerVar2;
                        zzejVar2 = zzejVar;
                        iZzq = i2;
                        i8 = 5;
                    }
                    zzer zzerVar5 = zzerVar3;
                    int i11 = iZzq;
                    zzej zzejVar4 = zzejVar2;
                    zzekVar.zzL(i9);
                    zzans zzansVar = new zzans(i10, str, iZzm, arrayList, Arrays.copyOfRange(zzekVar.zzN(), iZzc, i9));
                    if (iZzd == 6 || iZzd == 5) {
                        iZzd = zzansVar.zza;
                    }
                    iZza -= iZzd3 + 5;
                    if (!zzanqVar.zzh.get(iZzd2)) {
                        zzanv zzanvVarZzb = zzanqVar.zze.zzb(iZzd, zzansVar);
                        sparseIntArray.put(iZzd2, iZzd2);
                        sparseArray.put(iZzd2, zzanvVarZzb);
                    }
                    i6 = 4;
                    zzerVar3 = zzerVar5;
                    zzejVar2 = zzejVar4;
                    iZzq = i11;
                    i4 = 3;
                    i5 = 13;
                    i7 = 12;
                }
                zzer zzerVar6 = zzerVar3;
                int i12 = iZzq;
                int size = sparseIntArray.size();
                int i13 = 0;
                while (i13 < size) {
                    int iKeyAt = sparseIntArray.keyAt(i13);
                    int iValueAt = sparseIntArray.valueAt(i13);
                    zzanqVar.zzh.put(iKeyAt, true);
                    zzanqVar.zzi.put(iValueAt, true);
                    zzanv zzanvVar = (zzanv) sparseArray.valueAt(i13);
                    if (zzanvVar != null) {
                        zzadf zzadfVar = zzanqVar.zzl;
                        i = i12;
                        zzanu zzanuVar = new zzanu(i, iKeyAt, 8192);
                        zzerVar = zzerVar6;
                        zzanvVar.zzb(zzerVar, zzadfVar, zzanuVar);
                        zzanqVar.zzg.put(iValueAt, zzanvVar);
                    } else {
                        zzerVar = zzerVar6;
                        i = i12;
                    }
                    i13++;
                    zzerVar6 = zzerVar;
                    i12 = i;
                }
                zzanqVar.zzg.remove(this.zze);
                zzanqVar.zzm = 0;
                if (zzanqVar.zzm == 0) {
                    zzanqVar.zzl.zzG();
                    zzanqVar.zzn = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    public final void zzb(zzer zzerVar, zzadf zzadfVar, zzanu zzanuVar) {
    }
}
