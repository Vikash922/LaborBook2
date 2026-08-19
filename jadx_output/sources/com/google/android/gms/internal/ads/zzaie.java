package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaie {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb;

    static {
        int i = zzeu.zza;
        zzb = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int zza(int i) {
        return (i >> 24) & 255;
    }

    public static zzav zzb(zzex zzexVar) {
        zzew zzewVar;
        zzey zzeyVarZzb = zzexVar.zzb(1751411826);
        zzey zzeyVarZzb2 = zzexVar.zzb(1801812339);
        zzey zzeyVarZzb3 = zzexVar.zzb(1768715124);
        if (zzeyVarZzb != null && zzeyVarZzb2 != null && zzeyVarZzb3 != null && zzi(zzeyVarZzb.zza) == 1835299937) {
            zzek zzekVar = zzeyVarZzb2.zza;
            zzekVar.zzL(12);
            int iZzg = zzekVar.zzg();
            String[] strArr = new String[iZzg];
            for (int i = 0; i < iZzg; i++) {
                int iZzg2 = zzekVar.zzg();
                zzekVar.zzM(4);
                strArr[i] = zzekVar.zzB(iZzg2 - 8, StandardCharsets.UTF_8);
            }
            zzek zzekVar2 = zzeyVarZzb3.zza;
            zzekVar2.zzL(8);
            ArrayList arrayList = new ArrayList();
            while (zzekVar2.zza() > 8) {
                int iZzc = zzekVar2.zzc() + zzekVar2.zzg();
                int iZzg3 = zzekVar2.zzg() - 1;
                if (iZzg3 < 0 || iZzg3 >= iZzg) {
                    zzdx.zzf("BoxParsers", "Skipped metadata with unknown key index: " + iZzg3);
                } else {
                    String str = strArr[iZzg3];
                    while (true) {
                        int iZzc2 = zzekVar2.zzc();
                        if (iZzc2 >= iZzc) {
                            zzewVar = null;
                            break;
                        }
                        int iZzg4 = zzekVar2.zzg();
                        if (zzekVar2.zzg() == 1684108385) {
                            int iZzg5 = zzekVar2.zzg();
                            int iZzg6 = zzekVar2.zzg();
                            int i2 = iZzg4 - 16;
                            byte[] bArr = new byte[i2];
                            zzekVar2.zzH(bArr, 0, i2);
                            zzewVar = new zzew(str, bArr, iZzg6, iZzg5);
                            break;
                        }
                        zzekVar2.zzL(iZzc2 + iZzg4);
                    }
                    if (zzewVar != null) {
                        arrayList.add(zzewVar);
                    }
                }
                zzekVar2.zzL(iZzc);
            }
            if (!arrayList.isEmpty()) {
                return new zzav(arrayList);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzav zzc(com.google.android.gms.internal.ads.zzey r14) {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaie.zzc(com.google.android.gms.internal.ads.zzey):com.google.android.gms.internal.ads.zzav");
    }

    public static zzfc zzd(zzek zzekVar) {
        long jZzt;
        long jZzt2;
        zzekVar.zzL(8);
        if (zza(zzekVar.zzg()) == 0) {
            jZzt = zzekVar.zzu();
            jZzt2 = zzekVar.zzu();
        } else {
            jZzt = zzekVar.zzt();
            jZzt2 = zzekVar.zzt();
        }
        return new zzfc(jZzt, jZzt2, zzekVar.zzu());
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x02a6 A[ADDED_TO_REGION, LOOP:14: B:107:0x02a6->B:111:0x02b0, LOOP_START, PHI: r16
      0x02a6: PHI (r16v15 int) = (r16v3 int), (r16v16 int) binds: [B:106:0x02a4, B:111:0x02b0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x029d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b6 A[PHI: r11
      0x01b6: PHI (r11v4 int) = (r11v3 int), (r11v3 int), (r11v22 int), (r11v3 int) binds: [B:40:0x00fe, B:47:0x011a, B:64:0x01b5, B:46:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzaiz zze(com.google.android.gms.internal.ads.zzaiw r49, com.google.android.gms.internal.ads.zzex r50, com.google.android.gms.internal.ads.zzadq r51) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 1751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaie.zze(com.google.android.gms.internal.ads.zzaiw, com.google.android.gms.internal.ads.zzex, com.google.android.gms.internal.ads.zzadq):com.google.android.gms.internal.ads.zzaiz");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0d58  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x0d5c  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x0d91  */
    /* JADX WARN: Removed duplicated region for block: B:591:0x0dc4  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x0dd1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:606:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List zzf(com.google.android.gms.internal.ads.zzex r65, com.google.android.gms.internal.ads.zzadq r66, long r67, com.google.android.gms.internal.ads.zzs r69, boolean r70, boolean r71, com.google.android.gms.internal.ads.zzftl r72) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 3547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaie.zzf(com.google.android.gms.internal.ads.zzex, com.google.android.gms.internal.ads.zzadq, long, com.google.android.gms.internal.ads.zzs, boolean, boolean, com.google.android.gms.internal.ads.zzftl):java.util.List");
    }

    public static void zzg(zzek zzekVar) {
        int iZzc = zzekVar.zzc();
        zzekVar.zzM(4);
        if (zzekVar.zzg() != 1751411826) {
            iZzc += 4;
        }
        zzekVar.zzL(iZzc);
    }

    private static int zzh(zzek zzekVar) {
        int iZzm = zzekVar.zzm();
        int i = iZzm & 127;
        while ((iZzm & 128) == 128) {
            iZzm = zzekVar.zzm();
            i = (i << 7) | (iZzm & 127);
        }
        return i;
    }

    private static int zzi(zzek zzekVar) {
        zzekVar.zzL(16);
        return zzekVar.zzg();
    }

    private static Pair zzj(zzek zzekVar, int i, int i2) throws zzaz {
        Integer num;
        zzaix zzaixVar;
        Pair pairCreate;
        int i3;
        int i4;
        byte[] bArr;
        int iZzc = zzekVar.zzc();
        while (iZzc - i < i2) {
            zzekVar.zzL(iZzc);
            int iZzg = zzekVar.zzg();
            zzadg.zzb(iZzg > 0, "childAtomSize must be positive");
            if (zzekVar.zzg() == 1936289382) {
                int i5 = iZzc + 8;
                int i6 = 0;
                int i7 = -1;
                String strZzB = null;
                Integer numValueOf = null;
                while (i5 - iZzc < iZzg) {
                    zzekVar.zzL(i5);
                    int iZzg2 = zzekVar.zzg();
                    int iZzg3 = zzekVar.zzg();
                    if (iZzg3 == 1718775137) {
                        numValueOf = Integer.valueOf(zzekVar.zzg());
                    } else if (iZzg3 == 1935894637) {
                        zzekVar.zzM(4);
                        strZzB = zzekVar.zzB(4, StandardCharsets.UTF_8);
                    } else if (iZzg3 == 1935894633) {
                        i7 = i5;
                        i6 = iZzg2;
                    }
                    i5 += iZzg2;
                }
                if ("cenc".equals(strZzB) || "cbc1".equals(strZzB) || "cens".equals(strZzB) || "cbcs".equals(strZzB)) {
                    zzadg.zzb(numValueOf != null, "frma atom is mandatory");
                    zzadg.zzb(i7 != -1, "schi atom is mandatory");
                    int i8 = i7 + 8;
                    while (true) {
                        if (i8 - i7 >= i6) {
                            num = numValueOf;
                            zzaixVar = null;
                            break;
                        }
                        zzekVar.zzL(i8);
                        int iZzg4 = zzekVar.zzg();
                        if (zzekVar.zzg() == 1952804451) {
                            int iZza = zza(zzekVar.zzg());
                            zzekVar.zzM(1);
                            if (iZza == 0) {
                                zzekVar.zzM(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int iZzm = zzekVar.zzm();
                                int i9 = (iZzm & 240) >> 4;
                                i3 = iZzm & 15;
                                i4 = i9;
                            }
                            boolean z = zzekVar.zzm() == 1;
                            int iZzm2 = zzekVar.zzm();
                            byte[] bArr2 = new byte[16];
                            zzekVar.zzH(bArr2, 0, 16);
                            if (z && iZzm2 == 0) {
                                int iZzm3 = zzekVar.zzm();
                                byte[] bArr3 = new byte[iZzm3];
                                zzekVar.zzH(bArr3, 0, iZzm3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = numValueOf;
                            zzaixVar = new zzaix(z, strZzB, iZzm2, bArr2, i4, i3, bArr);
                        } else {
                            i8 += iZzg4;
                        }
                    }
                    zzadg.zzb(zzaixVar != null, "tenc atom is mandatory");
                    int i10 = zzeu.zza;
                    pairCreate = Pair.create(num, zzaixVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            iZzc += iZzg;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzk zzk(com.google.android.gms.internal.ads.zzek r15) {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaie.zzk(com.google.android.gms.internal.ads.zzek):com.google.android.gms.internal.ads.zzk");
    }

    private static zzav zzl(zzek zzekVar) {
        short sZzE = zzekVar.zzE();
        zzekVar.zzM(2);
        String strZzB = zzekVar.zzB(sZzE, StandardCharsets.UTF_8);
        int iMax = Math.max(strZzB.lastIndexOf(43), strZzB.lastIndexOf(45));
        try {
            return new zzav(-9223372036854775807L, new zzfb(Float.parseFloat(strZzB.substring(0, iMax)), Float.parseFloat(strZzB.substring(iMax, strZzB.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzahs zzm(zzek zzekVar, int i) {
        zzekVar.zzL(i + 8);
        zzekVar.zzM(4);
        return new zzahs(zzekVar.zzu(), zzekVar.zzu());
    }

    private static zzahu zzn(zzek zzekVar, int i) {
        zzekVar.zzL(i + 12);
        zzekVar.zzM(1);
        zzh(zzekVar);
        zzekVar.zzM(2);
        int iZzm = zzekVar.zzm();
        if ((iZzm & 128) != 0) {
            zzekVar.zzM(2);
        }
        if ((iZzm & 64) != 0) {
            zzekVar.zzM(zzekVar.zzm());
        }
        if ((iZzm & 32) != 0) {
            zzekVar.zzM(2);
        }
        zzekVar.zzM(1);
        zzh(zzekVar);
        String strZzd = zzay.zzd(zzekVar.zzm());
        if ("audio/mpeg".equals(strZzd) || "audio/vnd.dts".equals(strZzd) || "audio/vnd.dts.hd".equals(strZzd)) {
            return new zzahu(strZzd, null, -1L, -1L);
        }
        zzekVar.zzM(4);
        long jZzu = zzekVar.zzu();
        long jZzu2 = zzekVar.zzu();
        zzekVar.zzM(1);
        int iZzh = zzh(zzekVar);
        byte[] bArr = new byte[iZzh];
        zzekVar.zzH(bArr, 0, iZzh);
        return new zzahu(strZzd, bArr, jZzu2 <= 0 ? -1L : jZzu2, jZzu > 0 ? jZzu : -1L);
    }

    private static ByteBuffer zzo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Removed duplicated region for block: B:246:0x04bb A[PHI: r1 r16 r22
      0x04bb: PHI (r1v38 java.lang.String) = (r1v29 java.lang.String), (r1v39 java.lang.String), (r1v29 java.lang.String), (r1v29 java.lang.String) binds: [B:223:0x042f, B:225:0x043d, B:221:0x0404, B:219:0x03ea] A[DONT_GENERATE, DONT_INLINE]
      0x04bb: PHI (r16v2 com.google.android.gms.internal.ads.zzahu) = 
      (r16v1 com.google.android.gms.internal.ads.zzahu)
      (r16v3 com.google.android.gms.internal.ads.zzahu)
      (r16v1 com.google.android.gms.internal.ads.zzahu)
      (r16v1 com.google.android.gms.internal.ads.zzahu)
     binds: [B:223:0x042f, B:225:0x043d, B:221:0x0404, B:219:0x03ea] A[DONT_GENERATE, DONT_INLINE]
      0x04bb: PHI (r22v1 java.lang.String) = (r22v2 java.lang.String), (r22v2 java.lang.String), (r22v3 java.lang.String), (r22v3 java.lang.String) binds: [B:223:0x042f, B:225:0x043d, B:221:0x0404, B:219:0x03ea] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzp(com.google.android.gms.internal.ads.zzek r24, int r25, int r26, int r27, int r28, java.lang.String r29, boolean r30, com.google.android.gms.internal.ads.zzs r31, com.google.android.gms.internal.ads.zzahz r32, int r33) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 1325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaie.zzp(com.google.android.gms.internal.ads.zzek, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzs, com.google.android.gms.internal.ads.zzahz, int):void");
    }
}
