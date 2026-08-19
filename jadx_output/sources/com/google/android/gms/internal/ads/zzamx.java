package com.google.android.gms.internal.ads;

import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzamx {
    public static zzamv zza(zzej zzejVar) throws zzaz {
        int iZzd;
        int i;
        char c;
        int i2;
        int iZzd2;
        char c2;
        int iZzd3 = zzejVar.zzd(8);
        int i3 = 5;
        int iZzd4 = zzejVar.zzd(5);
        if (iZzd4 != 31) {
            switch (iZzd4) {
                case 0:
                    iZzd = 96000;
                    break;
                case 1:
                    iZzd = 88200;
                    break;
                case 2:
                    iZzd = 64000;
                    break;
                case 3:
                    iZzd = 48000;
                    break;
                case 4:
                    iZzd = 44100;
                    break;
                case 5:
                    iZzd = 32000;
                    break;
                case 6:
                    iZzd = 24000;
                    break;
                case 7:
                    iZzd = 22050;
                    break;
                case 8:
                    iZzd = 16000;
                    break;
                case 9:
                    iZzd = 12000;
                    break;
                case 10:
                    iZzd = 11025;
                    break;
                case 11:
                    iZzd = 8000;
                    break;
                case 12:
                    iZzd = 7350;
                    break;
                case 13:
                case 14:
                default:
                    throw zzaz.zzc("Unsupported sampling rate index " + iZzd4);
                case 15:
                    iZzd = 57600;
                    break;
                case 16:
                    iZzd = 51200;
                    break;
                case 17:
                    iZzd = 40000;
                    break;
                case 18:
                    iZzd = 38400;
                    break;
                case 19:
                    iZzd = 34150;
                    break;
                case 20:
                    iZzd = 28800;
                    break;
                case 21:
                    iZzd = 25600;
                    break;
                case 22:
                    iZzd = AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH;
                    break;
                case 23:
                    iZzd = 19200;
                    break;
                case 24:
                    iZzd = 17075;
                    break;
                case 25:
                    iZzd = 14400;
                    break;
                case 26:
                    iZzd = 12800;
                    break;
                case 27:
                    iZzd = 9600;
                    break;
            }
        } else {
            iZzd = zzejVar.zzd(24);
        }
        int iZzd5 = zzejVar.zzd(3);
        int i4 = 1;
        if (iZzd5 == 0) {
            i = ViewUtils.EDGE_TO_EDGE_FLAGS;
        } else if (iZzd5 == 1) {
            i = 1024;
        } else if (iZzd5 == 2 || iZzd5 == 3) {
            i = 2048;
        } else {
            if (iZzd5 != 4) {
                throw zzaz.zzc("Unsupported coreSbrFrameLengthIndex " + iZzd5);
            }
            i = 4096;
        }
        if (iZzd5 == 0 || iZzd5 == 1) {
            c = 0;
        } else if (iZzd5 == 2) {
            c = 2;
        } else if (iZzd5 == 3) {
            c = 3;
        } else {
            if (iZzd5 != 4) {
                throw zzaz.zzc("Unsupported coreSbrFrameLengthIndex " + iZzd5);
            }
            c = 1;
        }
        zzejVar.zzn(2);
        zze(zzejVar);
        int iZzd6 = zzejVar.zzd(5);
        int i5 = 0;
        int iZzc = 0;
        while (true) {
            int i6 = 16;
            if (i5 < iZzd6 + 1) {
                int iZzd7 = zzejVar.zzd(3);
                iZzc += zzc(zzejVar, 5, 8, 16) + 1;
                if ((iZzd7 == 0 || iZzd7 == 2) && zzejVar.zzp()) {
                    zze(zzejVar);
                }
                i5++;
            } else {
                int iZzc2 = zzc(zzejVar, 4, 8, 16) + 1;
                zzejVar.zzm();
                int i7 = 0;
                while (true) {
                    double d = 2.0d;
                    if (i7 >= iZzc2) {
                        int i8 = iZzd3;
                        byte[] bArr = null;
                        if (zzejVar.zzp()) {
                            int iZzc3 = zzc(zzejVar, 2, 4, 8) + 1;
                            for (int i9 = 0; i9 < iZzc3; i9++) {
                                int iZzc4 = zzc(zzejVar, 4, 8, 16);
                                int iZzc5 = zzc(zzejVar, 4, 8, 16);
                                if (iZzc4 == 7) {
                                    int iZzd8 = zzejVar.zzd(4) + 1;
                                    zzejVar.zzn(4);
                                    byte[] bArr2 = new byte[iZzd8];
                                    for (int i10 = 0; i10 < iZzd8; i10++) {
                                        bArr2[i10] = (byte) zzejVar.zzd(8);
                                    }
                                    bArr = bArr2;
                                } else {
                                    zzejVar.zzn(iZzc5 * 8);
                                }
                            }
                        }
                        byte[] bArr3 = bArr;
                        switch (iZzd) {
                            case 14700:
                            case 16000:
                                d = 3.0d;
                                break;
                            case 22050:
                            case 24000:
                                break;
                            case 29400:
                            case 32000:
                            case 58800:
                            case 64000:
                                d = 1.5d;
                                break;
                            case 44100:
                            case 48000:
                            case 88200:
                            case 96000:
                                d = 1.0d;
                                break;
                            default:
                                throw zzaz.zzc("Unsupported sampling rate " + iZzd);
                        }
                        return new zzamv(i8, (int) (((double) iZzd) * d), (int) (((double) i) * d), bArr3, null);
                    }
                    int iZzd9 = zzejVar.zzd(2);
                    if (iZzd9 == 0) {
                        i2 = iZzd3;
                        zzf(zzejVar);
                        if (c > 0) {
                            zzd(zzejVar);
                        }
                    } else if (iZzd9 != i4) {
                        if (iZzd9 == 3) {
                            zzc(zzejVar, 4, 8, i6);
                            int iZzc6 = zzc(zzejVar, 4, 8, i6);
                            if (zzejVar.zzp()) {
                                zzc(zzejVar, 8, i6, 0);
                            }
                            zzejVar.zzm();
                            if (iZzc6 > 0) {
                                zzejVar.zzn(iZzc6 * 8);
                            }
                        }
                        i2 = iZzd3;
                    } else {
                        if (zzf(zzejVar)) {
                            zzejVar.zzm();
                        }
                        if (c > 0) {
                            zzd(zzejVar);
                            iZzd2 = zzejVar.zzd(2);
                            c2 = c;
                        } else {
                            iZzd2 = 0;
                            c2 = 0;
                        }
                        if (iZzd2 > 0) {
                            zzejVar.zzn(6);
                            int iZzd10 = zzejVar.zzd(2);
                            zzejVar.zzn(4);
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(i3);
                            }
                            if (iZzd2 == 2 || iZzd2 == 3) {
                                zzejVar.zzn(6);
                            }
                            if (iZzd10 == 2) {
                                zzejVar.zzm();
                            }
                        }
                        i2 = iZzd3;
                        int iFloor = ((int) Math.floor(Math.log(iZzc - 1) / Math.log(2.0d))) + 1;
                        int iZzd11 = zzejVar.zzd(2);
                        if (iZzd11 > 0 && zzejVar.zzp()) {
                            zzejVar.zzn(iFloor);
                        }
                        if (zzejVar.zzp()) {
                            zzejVar.zzn(iFloor);
                        }
                        if (c2 == 0 && iZzd11 == 0) {
                            zzejVar.zzm();
                        }
                    }
                    i7++;
                    iZzd3 = i2;
                    i3 = 5;
                    i4 = 1;
                    i6 = 16;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzb(com.google.android.gms.internal.ads.zzej r17, com.google.android.gms.internal.ads.zzamu r18) throws com.google.android.gms.internal.ads.zzaz {
        /*
            r0 = r17
            r1 = r18
            r17.zzb()
            r2 = 3
            r3 = 8
            int r2 = zzc(r0, r2, r3, r3)
            r1.zza = r2
            r4 = 0
            r5 = -1
            if (r2 == r5) goto Lc0
            r2 = 2
            int r6 = java.lang.Math.max(r2, r3)
            r7 = 32
            int r6 = java.lang.Math.max(r6, r7)
            r8 = 63
            r9 = 1
            if (r6 > r8) goto L26
            r6 = r9
            goto L27
        L26:
            r6 = r4
        L27:
            com.google.android.gms.internal.ads.zzdc.zzd(r6)
            r10 = 3
            r12 = 255(0xff, double:1.26E-321)
            long r14 = com.google.android.gms.internal.ads.zzfzu.zza(r10, r12)
            r5 = 4294967296(0x100000000, double:2.121995791E-314)
            com.google.android.gms.internal.ads.zzfzu.zza(r14, r5)
            int r5 = r17.zza()
            r14 = -1
            if (r5 >= r2) goto L44
        L42:
            r5 = r14
            goto L6a
        L44:
            long r5 = r0.zze(r2)
            int r16 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r16 != 0) goto L6a
            int r5 = r17.zza()
            if (r5 >= r3) goto L53
            goto L42
        L53:
            long r5 = r0.zze(r3)
            long r10 = r10 + r5
            int r3 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r3 != 0) goto L69
            int r3 = r17.zza()
            if (r3 >= r7) goto L63
            goto L42
        L63:
            long r5 = r0.zze(r7)
            long r5 = r5 + r10
            goto L6a
        L69:
            r5 = r10
        L6a:
            r1.zzb = r5
            int r3 = (r5 > r14 ? 1 : (r5 == r14 ? 0 : -1))
            if (r3 != 0) goto L71
            return r4
        L71:
            r10 = 16
            int r3 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r3 > 0) goto Lad
            r10 = 0
            int r3 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r3 != 0) goto L9e
            int r3 = r1.zza
            r5 = 0
            if (r3 == r9) goto L97
            if (r3 == r2) goto L90
            r2 = 17
            if (r3 == r2) goto L89
            goto L9e
        L89:
            java.lang.String r0 = "AudioTruncation packet with invalid packet label 0"
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zza(r0, r5)
            throw r0
        L90:
            java.lang.String r0 = "Mpegh3daFrame packet with invalid packet label 0"
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zza(r0, r5)
            throw r0
        L97:
            java.lang.String r0 = "Mpegh3daConfig packet with invalid packet label 0"
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zza(r0, r5)
            throw r0
        L9e:
            r2 = 11
            r3 = 24
            int r0 = zzc(r0, r2, r3, r3)
            r1.zzc = r0
            r1 = -1
            if (r0 == r1) goto Lac
            return r9
        Lac:
            return r4
        Lad:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Contains sub-stream with an invalid packet label "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            com.google.android.gms.internal.ads.zzaz r0 = com.google.android.gms.internal.ads.zzaz.zzc(r0)
            throw r0
        Lc0:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamx.zzb(com.google.android.gms.internal.ads.zzej, com.google.android.gms.internal.ads.zzamu):boolean");
    }

    private static int zzc(zzej zzejVar, int i, int i2, int i3) {
        zzdc.zzd(Math.max(Math.max(i, i2), i3) <= 31);
        int i4 = (1 << i) - 1;
        int i5 = (1 << i2) - 1;
        zzfzs.zza(zzfzs.zza(i4, i5), 1 << i3);
        if (zzejVar.zza() < i) {
            return -1;
        }
        int iZzd = zzejVar.zzd(i);
        if (iZzd != i4) {
            return iZzd;
        }
        if (zzejVar.zza() < i2) {
            return -1;
        }
        int iZzd2 = zzejVar.zzd(i2);
        int i6 = iZzd + iZzd2;
        if (iZzd2 != i5) {
            return i6;
        }
        if (zzejVar.zza() < i3) {
            return -1;
        }
        return i6 + zzejVar.zzd(i3);
    }

    private static void zzd(zzej zzejVar) {
        zzejVar.zzn(3);
        zzejVar.zzn(8);
        boolean zZzp = zzejVar.zzp();
        boolean zZzp2 = zzejVar.zzp();
        if (zZzp) {
            zzejVar.zzn(5);
        }
        if (zZzp2) {
            zzejVar.zzn(6);
        }
    }

    private static void zze(zzej zzejVar) {
        int iZzd;
        int iZzd2 = zzejVar.zzd(2);
        if (iZzd2 == 0) {
            zzejVar.zzn(6);
            return;
        }
        int iZzc = zzc(zzejVar, 5, 8, 16) + 1;
        if (iZzd2 == 1) {
            zzejVar.zzn(iZzc * 7);
            return;
        }
        if (iZzd2 == 2) {
            boolean zZzp = zzejVar.zzp();
            int i = true != zZzp ? 5 : 1;
            int i2 = true == zZzp ? 7 : 5;
            int i3 = true == zZzp ? 8 : 6;
            int i4 = 0;
            while (i4 < iZzc) {
                if (zzejVar.zzp()) {
                    zzejVar.zzn(7);
                    iZzd = 0;
                } else {
                    if (zzejVar.zzd(2) == 3 && zzejVar.zzd(i2) * i != 0) {
                        zzejVar.zzm();
                    }
                    iZzd = zzejVar.zzd(i3) * i;
                    if (iZzd != 0 && iZzd != 180) {
                        zzejVar.zzm();
                    }
                    zzejVar.zzm();
                }
                if (iZzd != 0 && iZzd != 180 && zzejVar.zzp()) {
                    i4++;
                }
                i4++;
            }
        }
    }

    private static boolean zzf(zzej zzejVar) {
        zzejVar.zzn(3);
        boolean zZzp = zzejVar.zzp();
        if (zZzp) {
            zzejVar.zzn(13);
        }
        return zZzp;
    }
}
