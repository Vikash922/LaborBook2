package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzacf {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzz zza(com.google.android.gms.internal.ads.zzek r18, java.lang.String r19, java.lang.String r20, com.google.android.gms.internal.ads.zzs r21) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacf.zza(com.google.android.gms.internal.ads.zzek, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.zzs):com.google.android.gms.internal.ads.zzz");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzacd zzb(com.google.android.gms.internal.ads.zzej r12) {
        /*
            r0 = 16
            int r1 = r12.zzd(r0)
            int r0 = r12.zzd(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r12.zzd(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r8 = r0
            r0 = 2
            int r1 = r12.zzd(r0)
            r2 = 0
            r4 = 3
            if (r1 != r4) goto L3d
            r1 = r2
        L2c:
            int r5 = r12.zzd(r0)
            int r1 = r1 + r5
            boolean r5 = r12.zzp()
            if (r5 != 0) goto L39
            int r1 = r1 + r4
            goto L3d
        L39:
            int r1 = r1 + 1
            int r1 = r1 << r0
            goto L2c
        L3d:
            r5 = r1
            r1 = 10
            int r1 = r12.zzd(r1)
            boolean r6 = r12.zzp()
            if (r6 == 0) goto L53
            int r6 = r12.zzd(r4)
            if (r6 <= 0) goto L53
            r12.zzn(r0)
        L53:
            boolean r6 = r12.zzp()
            r7 = 44100(0xac44, float:6.1797E-41)
            r9 = 48000(0xbb80, float:6.7262E-41)
            r10 = 1
            if (r10 == r6) goto L62
            r11 = r7
            goto L63
        L62:
            r11 = r9
        L63:
            int r12 = r12.zzd(r3)
            if (r11 != r7) goto L73
            r6 = 13
            if (r12 != r6) goto L73
            int[] r12 = com.google.android.gms.internal.ads.zzacf.zzb
            r12 = r12[r6]
            r9 = r12
            goto L9f
        L73:
            if (r11 != r9) goto L9e
            r6 = 14
            if (r12 >= r6) goto L9e
            int[] r2 = com.google.android.gms.internal.ads.zzacf.zzb
            r2 = r2[r12]
            int r1 = r1 % 5
            r6 = 8
            if (r1 == r10) goto L98
            r7 = 11
            if (r1 == r0) goto L93
            if (r1 == r4) goto L98
            if (r1 == r3) goto L8c
            goto L9e
        L8c:
            if (r12 == r4) goto L9c
            if (r12 == r6) goto L9c
            if (r12 != r7) goto L9e
            goto L9c
        L93:
            if (r12 == r6) goto L9c
            if (r12 != r7) goto L9e
            goto L9c
        L98:
            if (r12 == r4) goto L9c
            if (r12 != r6) goto L9e
        L9c:
            int r2 = r2 + 1
        L9e:
            r9 = r2
        L9f:
            com.google.android.gms.internal.ads.zzacd r12 = new com.google.android.gms.internal.ads.zzacd
            r6 = 2
            r10 = 0
            r4 = r12
            r7 = r11
            r4.<init>(r5, r6, r7, r8, r9, r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacf.zzb(com.google.android.gms.internal.ads.zzej):com.google.android.gms.internal.ads.zzacd");
    }

    public static void zzc(int i, zzek zzekVar) {
        zzekVar.zzI(7);
        byte[] bArrZzN = zzekVar.zzN();
        bArrZzN[0] = -84;
        bArrZzN[1] = 64;
        bArrZzN[2] = -1;
        bArrZzN[3] = -1;
        bArrZzN[4] = (byte) ((i >> 16) & 255);
        bArrZzN[5] = (byte) ((i >> 8) & 255);
        bArrZzN[6] = (byte) (i & 255);
    }

    private static void zzd(zzej zzejVar, zzacc zzaccVar) throws zzaz {
        int iZzd = zzejVar.zzd(5);
        zzejVar.zzn(2);
        if (zzejVar.zzp()) {
            zzejVar.zzn(5);
        }
        if (iZzd >= 7 && iZzd <= 10) {
            zzejVar.zzm();
        }
        if (zzejVar.zzp()) {
            int iZzd2 = zzejVar.zzd(3);
            if (zzaccVar.zzb == -1 && iZzd >= 0 && iZzd <= 15 && (iZzd2 == 0 || iZzd2 == 1)) {
                zzaccVar.zzb = iZzd;
            }
            if (zzejVar.zzp()) {
                zzf(zzejVar);
            }
        }
    }

    private static void zze(zzej zzejVar, zzacc zzaccVar) throws zzaz {
        zzejVar.zzn(2);
        boolean zZzp = zzejVar.zzp();
        int iZzd = zzejVar.zzd(8);
        for (int i = 0; i < iZzd; i++) {
            zzejVar.zzn(2);
            if (zzejVar.zzp()) {
                zzejVar.zzn(5);
            }
            if (zZzp) {
                zzejVar.zzn(24);
            } else {
                if (zzejVar.zzp()) {
                    if (!zzejVar.zzp()) {
                        zzejVar.zzn(4);
                    }
                    zzaccVar.zzc = zzejVar.zzd(6) + 1;
                }
                zzejVar.zzn(4);
            }
        }
        if (zzejVar.zzp()) {
            zzejVar.zzn(3);
            if (zzejVar.zzp()) {
                zzf(zzejVar);
            }
        }
    }

    private static void zzf(zzej zzejVar) throws zzaz {
        int iZzd = zzejVar.zzd(6);
        if (iZzd < 2 || iZzd > 42) {
            throw zzaz.zzc(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(iZzd)));
        }
        zzejVar.zzn(iZzd * 8);
    }

    private static boolean zzg(zzej zzejVar) {
        if (zzejVar.zza() < 66) {
            return false;
        }
        zzejVar.zzn(66);
        return true;
    }
}
