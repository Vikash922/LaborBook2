package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzlc;
import com.google.common.base.Ascii;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjo {
    private static volatile int zza = 100;

    static double zza(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzd(bArr, i));
    }

    static float zzb(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzc(bArr, i));
    }

    static int zza(byte[] bArr, int i, zzjn zzjnVar) throws zzlk {
        int iZzc = zzc(bArr, i, zzjnVar);
        int i2 = zzjnVar.zza;
        if (i2 < 0) {
            throw zzlk.zzf();
        }
        if (i2 > bArr.length - iZzc) {
            throw zzlk.zzi();
        }
        if (i2 == 0) {
            zzjnVar.zzc = zzjs.zza;
            return iZzc;
        }
        zzjnVar.zzc = zzjs.zza(bArr, iZzc, i2);
        return iZzc + i2;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzml zzmlVar, zznx<zznw, zznw> zznxVar, zzjn zzjnVar) throws IOException {
        if (zzjnVar.zzd.zza(zzmlVar, i >>> 3) == null) {
            return zza(i, bArr, i2, i3, zzmp.zzc(obj), zzjnVar);
        }
        zzlc.zzd zzdVar = (zzlc.zzd) obj;
        zzdVar.zza();
        zzkv<zzlc.zzc> zzkvVar = zzdVar.zzc;
        throw new NoSuchMethodError();
    }

    static int zzc(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private static int zza(zznd zzndVar, byte[] bArr, int i, int i2, int i3, zzjn zzjnVar) throws IOException {
        Object objZza = zzndVar.zza();
        int iZza = zza(objZza, zzndVar, bArr, i, i2, i3, zzjnVar);
        zzndVar.zzd(objZza);
        zzjnVar.zzc = objZza;
        return iZza;
    }

    static int zza(zznd zzndVar, int i, byte[] bArr, int i2, int i3, zzll<?> zzllVar, zzjn zzjnVar) throws IOException {
        int i4 = (i & (-8)) | 4;
        int iZza = zza(zzndVar, bArr, i2, i3, i4, zzjnVar);
        zzllVar.add(zzjnVar.zzc);
        while (iZza < i3) {
            int iZzc = zzc(bArr, iZza, zzjnVar);
            if (i != zzjnVar.zza) {
                break;
            }
            iZza = zza(zzndVar, bArr, iZzc, i3, i4, zzjnVar);
            zzllVar.add(zzjnVar.zzc);
        }
        return iZza;
    }

    static int zza(zznd zzndVar, byte[] bArr, int i, int i2, zzjn zzjnVar) throws IOException {
        Object objZza = zzndVar.zza();
        int iZza = zza(objZza, zzndVar, bArr, i, i2, zzjnVar);
        zzndVar.zzd(objZza);
        zzjnVar.zzc = objZza;
        return iZza;
    }

    static int zzb(zznd<?> zzndVar, int i, byte[] bArr, int i2, int i3, zzll<?> zzllVar, zzjn zzjnVar) throws IOException {
        int iZza = zza(zzndVar, bArr, i2, i3, zzjnVar);
        zzllVar.add(zzjnVar.zzc);
        while (iZza < i3) {
            int iZzc = zzc(bArr, iZza, zzjnVar);
            if (i != zzjnVar.zza) {
                break;
            }
            iZza = zza(zzndVar, bArr, iZzc, i3, zzjnVar);
            zzllVar.add(zzjnVar.zzc);
        }
        return iZza;
    }

    static int zza(byte[] bArr, int i, zzll<?> zzllVar, zzjn zzjnVar) throws IOException {
        zzlf zzlfVar = (zzlf) zzllVar;
        int iZzc = zzc(bArr, i, zzjnVar);
        int i2 = zzjnVar.zza + iZzc;
        while (iZzc < i2) {
            iZzc = zzc(bArr, iZzc, zzjnVar);
            zzlfVar.zzd(zzjnVar.zza);
        }
        if (iZzc == i2) {
            return iZzc;
        }
        throw zzlk.zzi();
    }

    static int zzb(byte[] bArr, int i, zzjn zzjnVar) throws zzlk {
        int iZzc = zzc(bArr, i, zzjnVar);
        int i2 = zzjnVar.zza;
        if (i2 < 0) {
            throw zzlk.zzf();
        }
        if (i2 == 0) {
            zzjnVar.zzc = "";
            return iZzc;
        }
        zzjnVar.zzc = zzoc.zzb(bArr, iZzc, i2);
        return iZzc + i2;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zznw zznwVar, zzjn zzjnVar) throws zzlk {
        if ((i >>> 3) == 0) {
            throw zzlk.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzd = zzd(bArr, i2, zzjnVar);
            zznwVar.zza(i, Long.valueOf(zzjnVar.zzb));
            return iZzd;
        }
        if (i4 == 1) {
            zznwVar.zza(i, Long.valueOf(zzd(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzc = zzc(bArr, i2, zzjnVar);
            int i5 = zzjnVar.zza;
            if (i5 < 0) {
                throw zzlk.zzf();
            }
            if (i5 > bArr.length - iZzc) {
                throw zzlk.zzi();
            }
            if (i5 == 0) {
                zznwVar.zza(i, zzjs.zza);
            } else {
                zznwVar.zza(i, zzjs.zza(bArr, iZzc, i5));
            }
            return iZzc + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zznwVar.zza(i, Integer.valueOf(zzc(bArr, i2)));
                return i2 + 4;
            }
            throw zzlk.zzc();
        }
        zznw zznwVarZzd = zznw.zzd();
        int i6 = (i & (-8)) | 4;
        zzjnVar.zze++;
        zza(zzjnVar.zze);
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZzc2 = zzc(bArr, i2, zzjnVar);
            int i8 = zzjnVar.zza;
            i7 = i8;
            if (i8 == i6) {
                i2 = iZzc2;
                break;
            }
            int iZza = zza(i7, bArr, iZzc2, i3, zznwVarZzd, zzjnVar);
            i7 = i8;
            i2 = iZza;
        }
        zzjnVar.zze--;
        if (i2 > i3 || i7 != i6) {
            throw zzlk.zzg();
        }
        zznwVar.zza(i, zznwVarZzd);
        return i2;
    }

    static int zzc(byte[] bArr, int i, zzjn zzjnVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzjnVar.zza = b;
            return i2;
        }
        return zza(b, bArr, i2, zzjnVar);
    }

    static int zza(int i, byte[] bArr, int i2, zzjn zzjnVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzjnVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzjnVar.zza = i5 | (b2 << Ascii.f394SO);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzjnVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzjnVar.zza = i9 | (b4 << Ascii.f387FS);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzjnVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzll<?> zzllVar, zzjn zzjnVar) {
        zzlf zzlfVar = (zzlf) zzllVar;
        int iZzc = zzc(bArr, i2, zzjnVar);
        zzlfVar.zzd(zzjnVar.zza);
        while (iZzc < i3) {
            int iZzc2 = zzc(bArr, iZzc, zzjnVar);
            if (i != zzjnVar.zza) {
                break;
            }
            iZzc = zzc(bArr, iZzc2, zzjnVar);
            zzlfVar.zzd(zzjnVar.zza);
        }
        return iZzc;
    }

    static int zzd(byte[] bArr, int i, zzjn zzjnVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzjnVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        zzjnVar.zzb = j2;
        return i3;
    }

    static int zza(Object obj, zznd zzndVar, byte[] bArr, int i, int i2, int i3, zzjn zzjnVar) throws IOException {
        zzjnVar.zze++;
        zza(zzjnVar.zze);
        int iZza = ((zzmp) zzndVar).zza(obj, bArr, i, i2, i3, zzjnVar);
        zzjnVar.zze--;
        zzjnVar.zzc = obj;
        return iZza;
    }

    static int zza(Object obj, zznd zzndVar, byte[] bArr, int i, int i2, zzjn zzjnVar) throws IOException {
        int iZza = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZza = zza(i3, bArr, iZza, zzjnVar);
            i3 = zzjnVar.zza;
        }
        int i4 = iZza;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzlk.zzi();
        }
        zzjnVar.zze++;
        zza(zzjnVar.zze);
        int i5 = i3 + i4;
        zzndVar.zza(obj, bArr, i4, i5, zzjnVar);
        zzjnVar.zze--;
        zzjnVar.zzc = obj;
        return i5;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzjn zzjnVar) throws zzlk {
        if ((i >>> 3) == 0) {
            throw zzlk.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzd(bArr, i2, zzjnVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzc(bArr, i2, zzjnVar) + zzjnVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzlk.zzc();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zzc(bArr, i2, zzjnVar);
            i6 = zzjnVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zza(i6, bArr, i2, i3, zzjnVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzlk.zzg();
        }
        return i2;
    }

    static long zzd(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private static void zza(int i) throws zzlk {
        if (i >= zza) {
            throw zzlk.zzh();
        }
    }
}
