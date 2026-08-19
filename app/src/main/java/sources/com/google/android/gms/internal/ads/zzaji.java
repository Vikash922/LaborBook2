package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaji {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzek zzg = new zzek(255);

    zzaji() {
    }

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zzadd zzaddVar, boolean z) throws IOException {
        zza();
        zzek zzekVar = this.zzg;
        zzekVar.zzI(27);
        if (zzadg.zzc(zzaddVar, zzekVar.zzN(), 0, 27, z) && zzekVar.zzu() == 1332176723) {
            if (zzekVar.zzm() != 0) {
                if (z) {
                    return false;
                }
                throw zzaz.zzc("unsupported bit stream revision");
            }
            this.zza = zzekVar.zzm();
            this.zzb = zzekVar.zzr();
            zzekVar.zzs();
            zzekVar.zzs();
            zzekVar.zzs();
            int iZzm = zzekVar.zzm();
            this.zzc = iZzm;
            this.zzd = iZzm + 27;
            zzekVar.zzI(iZzm);
            if (zzadg.zzc(zzaddVar, zzekVar.zzN(), 0, this.zzc, z)) {
                for (int i = 0; i < this.zzc; i++) {
                    int[] iArr = this.zzf;
                    int iZzm2 = zzekVar.zzm();
                    iArr[i] = iZzm2;
                    this.zze += iZzm2;
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        if (r11 == (-1)) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        if (r10.zzf() >= r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r10.zzc(1) != (-1)) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzadd r10, long r11) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r10.zzf()
            long r2 = r10.zze()
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L10
            r0 = r2
            goto L11
        L10:
            r0 = r1
        L11:
            com.google.android.gms.internal.ads.zzdc.zzd(r0)
            com.google.android.gms.internal.ads.zzek r0 = r9.zzg
            r3 = 4
            r0.zzI(r3)
        L1a:
            r4 = -1
            int r4 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r4 == 0) goto L2c
            long r5 = r10.zzf()
            r7 = 4
            long r5 = r5 + r7
            int r5 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r5 < 0) goto L2c
            goto L4c
        L2c:
            byte[] r5 = r0.zzN()
            boolean r5 = com.google.android.gms.internal.ads.zzadg.zzc(r10, r5, r1, r3, r2)
            if (r5 == 0) goto L4c
            r0.zzL(r1)
            long r4 = r0.zzu()
            r6 = 1332176723(0x4f676753, double:6.58182753E-315)
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 != 0) goto L48
            r10.zzj()
            return r2
        L48:
            r10.zzk(r2)
            goto L1a
        L4c:
            if (r4 == 0) goto L56
            long r5 = r10.zzf()
            int r0 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r0 >= 0) goto L5d
        L56:
            int r0 = r10.zzc(r2)
            r3 = -1
            if (r0 != r3) goto L4c
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaji.zzc(com.google.android.gms.internal.ads.zzadd, long):boolean");
    }
}
