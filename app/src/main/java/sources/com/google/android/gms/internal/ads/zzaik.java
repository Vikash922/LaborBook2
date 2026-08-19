package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaik implements zzadc {
    private static final byte[] zza = {-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzz zzb;
    private long zzA;
    private zzaij zzB;
    private int zzC;
    private int zzD;
    private int zzE;
    private boolean zzF;
    private boolean zzG;
    private zzadf zzH;
    private zzaei[] zzI;
    private zzaei[] zzJ;
    private boolean zzK;
    private final zzajy zzc;
    private final int zzd;
    private final List zze;
    private final SparseArray zzf;
    private final zzek zzg;
    private final zzek zzh;
    private final zzek zzi;
    private final byte[] zzj;
    private final zzek zzk;
    private final zzafz zzl;
    private final zzek zzm;
    private final ArrayDeque zzn;
    private final ArrayDeque zzo;
    private final zzfu zzp;
    private zzfww zzq;
    private int zzr;
    private int zzs;
    private long zzt;
    private int zzu;
    private zzek zzv;
    private long zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    static {
        zzx zzxVar = new zzx();
        zzxVar.zzad("application/x-emsg");
        zzb = zzxVar.zzaj();
    }

    @Deprecated
    public zzaik() {
        this(zzajy.zza, 32, null, null, zzfww.zzn(), null);
    }

    private static int zzg(int i) throws zzaz {
        if (i >= 0) {
            return i;
        }
        throw zzaz.zza("Unexpected negative value: " + i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzs zzh(java.util.List r18) {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzh(java.util.List):com.google.android.gms.internal.ads.zzs");
    }

    private final void zzj() {
        this.zzr = 0;
        this.zzu = 0;
    }

    private static void zzk(zzek zzekVar, int i, zzaiy zzaiyVar) throws zzaz {
        zzekVar.zzL(i + 8);
        int iZzg = zzekVar.zzg();
        int i2 = zzaie.zza;
        if ((iZzg & 1) != 0) {
            throw zzaz.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iZzg & 2) != 0;
        int iZzp = zzekVar.zzp();
        if (iZzp == 0) {
            Arrays.fill(zzaiyVar.zzl, 0, zzaiyVar.zze, false);
            return;
        }
        int i3 = zzaiyVar.zze;
        if (iZzp != i3) {
            throw zzaz.zza("Senc sample count " + iZzp + " is different from fragment sample count" + i3, null);
        }
        Arrays.fill(zzaiyVar.zzl, 0, iZzp, z);
        zzaiyVar.zza(zzekVar.zza());
        zzek zzekVar2 = zzaiyVar.zzn;
        zzekVar.zzH(zzekVar2.zzN(), 0, zzekVar2.zzd());
        zzekVar2.zzL(0);
        zzaiyVar.zzo = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:297:0x06fe, code lost:
    
        zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0701, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzl(long r53) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 1794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzl(long):void");
    }

    private static final zzaif zzm(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzaif) sparseArray.valueAt(0);
        }
        zzaif zzaifVar = (zzaif) sparseArray.get(i);
        zzaifVar.getClass();
        return zzaifVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f5, code lost:
    
        if (com.google.android.gms.internal.ads.zzay.zzg(r10.zzk, "video/hevc") == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fd, code lost:
    
        if (((r20 & 126) >> 1) != 39) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ff, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0201, code lost:
    
        r22 = r6;
        r21 = r8;
        r6 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0206, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0207, code lost:
    
        r36.zzG = r8;
        r7.zzr(r15, r4);
        r36.zzD += r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0211, code lost:
    
        if (r4 <= 0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0215, code lost:
    
        if (r36.zzF != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x021e, code lost:
    
        if (com.google.android.gms.internal.ads.zzfq.zzj(r13, 4, r4, r3.zzg) == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0220, code lost:
    
        r36.zzF = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0223, code lost:
    
        r8 = r21;
        r6 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0231, code lost:
    
        throw com.google.android.gms.internal.ads.zzaz.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0232, code lost:
    
        r22 = r6;
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0239, code lost:
    
        if (r36.zzG == false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x023b, code lost:
    
        r8 = r36.zzi;
        r8.zzI(r4);
        r37.zzi(r8.zzN(), 0, r36.zzE);
        r7.zzr(r8, r36.zzE);
        r4 = r36.zzE;
        r6 = com.google.android.gms.internal.ads.zzfq.zzc(r8.zzN(), r8.zzd());
        r8.zzL(0);
        r8.zzK(r6);
        r6 = r3.zzg.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0268, code lost:
    
        if (r6 != (-1)) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x026a, code lost:
    
        r6 = r36.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0270, code lost:
    
        if (r6.zza() == 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0272, code lost:
    
        r6.zze(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0276, code lost:
    
        r9 = r36.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x027c, code lost:
    
        if (r9.zza() == r6) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x027e, code lost:
    
        r9.zze(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0281, code lost:
    
        r6 = r36.zzp;
        r6.zzb(r11, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x028c, code lost:
    
        if ((r2.zza() & 4) == 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x028e, code lost:
    
        r6.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0292, code lost:
    
        r4 = r7.zzf(r37, r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0297, code lost:
    
        r36.zzD += r4;
        r36.zzE -= r4;
        r8 = r21;
        r6 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x02a6, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02a9, code lost:
    
        r1 = r2.zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02af, code lost:
    
        if (r36.zzF != false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02b1, code lost:
    
        r1 = r1 | 67108864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02b4, code lost:
    
        r22 = r1;
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02ba, code lost:
    
        if (r1 == null) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02bc, code lost:
    
        r25 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02c1, code lost:
    
        r25 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02c3, code lost:
    
        r7.zzt(r11, r22, r36.zzC, 0, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02d0, code lost:
    
        r1 = r36.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02d6, code lost:
    
        if (r1.isEmpty() != false) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02d8, code lost:
    
        r1 = (com.google.android.gms.internal.ads.zzaii) r1.removeFirst();
        r3 = r36.zzx;
        r13 = r1.zzc;
        r36.zzx = r3 - r13;
        r3 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02e9, code lost:
    
        if (r1.zzb == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02eb, code lost:
    
        r3 = r3 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02ec, code lost:
    
        r14 = r3;
        r1 = r36.zzI;
        r3 = r1.length;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02f1, code lost:
    
        if (r10 >= r3) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02f3, code lost:
    
        r1[r10].zzt(r14, 1, r13, r36.zzx, null);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x030a, code lost:
    
        if (r2.zzl() != false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x030c, code lost:
    
        r36.zzB = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x030f, code lost:
    
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0310, code lost:
    
        r36.zzr = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0313, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0095, code lost:
    
        r6 = "video/avc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
    
        if (r36.zzr != 3) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
    
        r36.zzC = r2.zzb();
        r3 = r2.zzd.zza.zzg.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        if (java.util.Objects.equals(r3, "video/avc") != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b2, code lost:
    
        java.util.Objects.equals(r3, "video/hevc");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b5, code lost:
    
        r36.zzF = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bb, code lost:
    
        if (r2.zzf >= r2.zzi) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bd, code lost:
    
        r37.zzk(r36.zzC);
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c6, code lost:
    
        if (r1 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c9, code lost:
    
        r3 = r2.zzb;
        r5 = r3.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cf, code lost:
    
        if (r1 == 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d1, code lost:
    
        r5.zzM(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00da, code lost:
    
        if (r3.zzb(r2.zzf) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dc, code lost:
    
        r5.zzM(r5.zzq() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e8, code lost:
    
        if (r2.zzl() != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ea, code lost:
    
        r36.zzB = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ec, code lost:
    
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f5, code lost:
    
        if (r2.zzd.zza.zzh != 1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f7, code lost:
    
        r36.zzC -= 8;
        r37.zzk(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010e, code lost:
    
        if ("audio/ac4".equals(r2.zzd.zza.zzg.zzo) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0110, code lost:
    
        r36.zzD = r2.zzc(r36.zzC, 7);
        r3 = r36.zzC;
        r11 = r36.zzk;
        com.google.android.gms.internal.ads.zzacf.zzc(r3, r11);
        r2.zza.zzr(r11, 7);
        r3 = r36.zzD + 7;
        r36.zzD = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x012b, code lost:
    
        r3 = r2.zzc(r36.zzC, 0);
        r36.zzD = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0133, code lost:
    
        r36.zzC += r3;
        r36.zzr = 4;
        r36.zzE = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013d, code lost:
    
        r3 = r2.zzd.zza;
        r7 = r2.zza;
        r11 = r2.zze();
        r14 = r3.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0149, code lost:
    
        if (r14 != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014b, code lost:
    
        r3 = r36.zzD;
        r4 = r36.zzC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014f, code lost:
    
        if (r3 >= r4) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0151, code lost:
    
        r36.zzD += r7.zzf(r37, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x015c, code lost:
    
        r15 = r36.zzh;
        r13 = r15.zzN();
        r13[0] = 0;
        r13[1] = 0;
        r13[2] = 0;
        r8 = 4 - r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0170, code lost:
    
        if (r36.zzD >= r36.zzC) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0172, code lost:
    
        r4 = r36.zzE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0174, code lost:
    
        if (r4 != 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0179, code lost:
    
        if (r36.zzJ.length > 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x017d, code lost:
    
        if (r36.zzF != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0180, code lost:
    
        r4 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0182, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzfq.zzb(r3.zzg);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0191, code lost:
    
        if ((r14 + r4) <= (r36.zzC - r36.zzD)) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0193, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0195, code lost:
    
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0197, code lost:
    
        r37.zzi(r13, r8, r14 + r4);
        r15.zzL(0);
        r10 = r15.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01a4, code lost:
    
        if (r10 < 0) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a6, code lost:
    
        r36.zzE = r10 - r4;
        r10 = r36.zzg;
        r10.zzL(0);
        r7.zzr(r10, 4);
        r36.zzD += 4;
        r36.zzC += r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01bf, code lost:
    
        if (r36.zzJ.length <= 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c1, code lost:
    
        if (r4 <= 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c3, code lost:
    
        r10 = r3.zzg;
        r20 = r13[4];
        r9 = com.google.android.gms.internal.ads.zzfq.zza;
        r9 = r10.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01cf, code lost:
    
        if (java.util.Objects.equals(r9, r6) != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d1, code lost:
    
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01d9, code lost:
    
        if (com.google.android.gms.internal.ads.zzay.zzg(r10.zzk, r6) == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01dc, code lost:
    
        r22 = r6;
        r6 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e0, code lost:
    
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01e2, code lost:
    
        r22 = r6;
        r6 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e7, code lost:
    
        if ((r20 & com.google.common.base.Ascii.f396US) == 6) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ed, code lost:
    
        if (java.util.Objects.equals(r9, "video/hevc") != false) goto L102;
     */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadd r37, com.google.android.gms.internal.ads.zzady r38) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzb(com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzady):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ zzadc zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ List zzd() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zze(zzadf zzadfVar) {
        int i;
        int i2 = this.zzd;
        if ((i2 & 32) == 0) {
            zzadfVar = new zzakb(zzadfVar, this.zzc);
        }
        this.zzH = zzadfVar;
        zzj();
        zzaei[] zzaeiVarArr = new zzaei[2];
        this.zzI = zzaeiVarArr;
        int i3 = 100;
        int i4 = 0;
        if ((i2 & 4) != 0) {
            zzaeiVarArr[0] = this.zzH.zzw(100, 5);
            i = 1;
            i3 = 101;
        } else {
            i = 0;
        }
        zzaei[] zzaeiVarArr2 = (zzaei[]) zzeu.zzQ(this.zzI, i);
        this.zzI = zzaeiVarArr2;
        for (zzaei zzaeiVar : zzaeiVarArr2) {
            zzaeiVar.zzm(zzb);
        }
        List list = this.zze;
        this.zzJ = new zzaei[list.size()];
        while (i4 < this.zzJ.length) {
            zzaei zzaeiVarZzw = this.zzH.zzw(i3, 3);
            zzaeiVarZzw.zzm((zzz) list.get(i4));
            this.zzJ[i4] = zzaeiVarZzw;
            i4++;
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzf(long j, long j2) {
        SparseArray sparseArray = this.zzf;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((zzaij) sparseArray.valueAt(i)).zzi();
        }
        this.zzo.clear();
        this.zzx = 0;
        this.zzp.zzc();
        this.zzy = j2;
        this.zzn.clear();
        zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final boolean zzi(zzadd zzaddVar) throws IOException {
        zzaef zzaefVarZza = zzaiv.zza(zzaddVar);
        this.zzq = zzaefVarZza != null ? zzfww.zzo(zzaefVarZza) : zzfww.zzn();
        return zzaefVarZza == null;
    }

    public zzaik(zzajy zzajyVar, int i, zzer zzerVar, zzaiw zzaiwVar, List list, zzaei zzaeiVar) {
        this.zzc = zzajyVar;
        this.zzd = i;
        this.zze = Collections.unmodifiableList(list);
        this.zzl = new zzafz();
        this.zzm = new zzek(16);
        this.zzg = new zzek(zzfq.zza);
        this.zzh = new zzek(6);
        this.zzi = new zzek();
        byte[] bArr = new byte[16];
        this.zzj = bArr;
        this.zzk = new zzek(bArr);
        this.zzn = new ArrayDeque();
        this.zzo = new ArrayDeque();
        this.zzf = new SparseArray();
        this.zzq = zzfww.zzn();
        this.zzz = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzH = zzadf.zza;
        this.zzI = new zzaei[0];
        this.zzJ = new zzaei[0];
        this.zzp = new zzfu(new zzft() { // from class: com.google.android.gms.internal.ads.zzaih
            @Override // com.google.android.gms.internal.ads.zzft
            public final void zza(long j, zzek zzekVar) {
                zzaco.zza(j, zzekVar, this.zza.zzJ);
            }
        });
    }
}
