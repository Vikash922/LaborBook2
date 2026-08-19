package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-api@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgzj<T> implements zzgzz<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhas.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgzg zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhal zzm;
    private final zzgxg zzn;

    private zzgzj(int[] iArr, Object[] objArr, int i, int i2, zzgzg zzgzgVar, boolean z, int[] iArr2, int i3, int i4, zzgzm zzgzmVar, zzgyt zzgytVar, zzhal zzhalVar, zzgxg zzgxgVar, zzgzb zzgzbVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzgzgVar instanceof zzgxv;
        boolean z2 = false;
        if (zzgxgVar != null && (zzgzgVar instanceof zzgxr)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzm = zzhalVar;
        this.zzn = zzgxgVar;
        this.zzg = zzgzgVar;
    }

    private final Object zzA(Object obj, int i) {
        zzgzz zzgzzVarZzx = zzx(i);
        int iZzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzgzzVarZzx.zze();
        }
        Object object = zzb.getObject(obj, iZzu);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzgzzVarZzx.zze();
        if (object != null) {
            zzgzzVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzgzz zzgzzVarZzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzgzzVarZzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzgzzVarZzx.zze();
        if (object != null) {
            zzgzzVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgzz zzgzzVarZzx = zzx(i);
            if (!zzN(obj, i)) {
                if (zzQ(object)) {
                    Object objZze = zzgzzVarZzx.zze();
                    zzgzzVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzgzzVarZzx.zze();
                zzgzzVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgzzVarZzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (zzR(obj2, i2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            zzgzz zzgzzVarZzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (zzQ(object)) {
                    Object objZze = zzgzzVarZzx.zze();
                    zzgzzVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzgzzVarZzx.zze();
                zzgzzVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgzzVarZzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i, zzgzt zzgztVar) throws IOException {
        long j = i & 1048575;
        if (zzM(i)) {
            zzhas.zzv(obj, j, zzgztVar.zzs());
        } else if (this.zzi) {
            zzhas.zzv(obj, j, zzgztVar.zzr());
        } else {
            zzhas.zzv(obj, j, zzgztVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int iZzr = zzr(i);
        long j = 1048575 & iZzr;
        if (j == 1048575) {
            return;
        }
        zzhas.zzt(obj, j, (1 << (iZzr >>> 20)) | zzhas.zzd(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzhas.zzt(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private static boolean zzM(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int iZzr = zzr(i);
        long j = iZzr & 1048575;
        if (j != 1048575) {
            return (zzhas.zzd(obj, j) & (1 << (iZzr >>> 20))) != 0;
        }
        int iZzu = zzu(i);
        long j2 = iZzu & 1048575;
        switch (zzt(iZzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzhas.zzb(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhas.zzc(obj, j2)) != 0;
            case 2:
                return zzhas.zzf(obj, j2) != 0;
            case 3:
                return zzhas.zzf(obj, j2) != 0;
            case 4:
                return zzhas.zzd(obj, j2) != 0;
            case 5:
                return zzhas.zzf(obj, j2) != 0;
            case 6:
                return zzhas.zzd(obj, j2) != 0;
            case 7:
                return zzhas.zzz(obj, j2);
            case 8:
                Object objZzh = zzhas.zzh(obj, j2);
                if (objZzh instanceof String) {
                    return !((String) objZzh).isEmpty();
                }
                if (objZzh instanceof zzgwn) {
                    return !zzgwn.zzb.equals(objZzh);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhas.zzh(obj, j2) != null;
            case 10:
                return !zzgwn.zzb.equals(zzhas.zzh(obj, j2));
            case 11:
                return zzhas.zzd(obj, j2) != 0;
            case 12:
                return zzhas.zzd(obj, j2) != 0;
            case 13:
                return zzhas.zzd(obj, j2) != 0;
            case 14:
                return zzhas.zzf(obj, j2) != 0;
            case 15:
                return zzhas.zzd(obj, j2) != 0;
            case 16:
                return zzhas.zzf(obj, j2) != 0;
            case 17:
                return zzhas.zzh(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzN(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzP(Object obj, int i, zzgzz zzgzzVar) {
        return zzgzzVar.zzl(zzhas.zzh(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgxv) {
            return ((zzgxv) obj).zzcd();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzhas.zzd(obj, (long) (zzr(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzhas.zzh(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzhba zzhbaVar) throws IOException {
        if (obj instanceof String) {
            zzhbaVar.zzG(i, (String) obj);
        } else {
            zzhbaVar.zzd(i, (zzgwn) obj);
        }
    }

    static zzham zzd(Object obj) {
        zzgxv zzgxvVar = (zzgxv) obj;
        zzham zzhamVar = zzgxvVar.zzt;
        if (zzhamVar != zzham.zzc()) {
            return zzhamVar;
        }
        zzham zzhamVarZzf = zzham.zzf();
        zzgxvVar.zzt = zzhamVarZzf;
        return zzhamVarZzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0391  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.ads.zzgzj zzm(java.lang.Class r34, com.google.android.gms.internal.ads.zzgzd r35, com.google.android.gms.internal.ads.zzgzm r36, com.google.android.gms.internal.ads.zzgyt r37, com.google.android.gms.internal.ads.zzhal r38, com.google.android.gms.internal.ads.zzgxg r39, com.google.android.gms.internal.ads.zzgzb r40) {
        /*
            Method dump skipped, instruction units count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zzm(java.lang.Class, com.google.android.gms.internal.ads.zzgzd, com.google.android.gms.internal.ads.zzgzm, com.google.android.gms.internal.ads.zzgyt, com.google.android.gms.internal.ads.zzhal, com.google.android.gms.internal.ads.zzgxg, com.google.android.gms.internal.ads.zzgzb):com.google.android.gms.internal.ads.zzgzj");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzhas.zzh(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzhas.zzh(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzhas.zzh(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
        int[] iArr = this.zzc;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzhas.zzh(obj, j)).longValue();
    }

    private final zzgyb zzw(int i) {
        int i2 = i / 3;
        return (zzgyb) this.zzd[i2 + i2 + 1];
    }

    private final zzgzz zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzgzz zzgzzVar = (zzgzz) objArr[i3];
        if (zzgzzVar != null) {
            return zzgzzVar;
        }
        zzgzz zzgzzVarZzb = zzgzq.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzgzzVarZzb;
        return zzgzzVarZzb;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzhal zzhalVar, Object obj3) {
        int i2 = this.zzc[i];
        Object objZzh = zzhas.zzh(obj, zzu(i) & 1048575);
        if (objZzh == null || zzw(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:207:0x054c  */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v256, types: [int] */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v277 */
    /* JADX WARN: Type inference failed for: r0v278 */
    /* JADX WARN: Type inference failed for: r0v279 */
    /* JADX WARN: Type inference failed for: r0v280 */
    /* JADX WARN: Type inference failed for: r0v281 */
    /* JADX WARN: Type inference failed for: r0v282 */
    /* JADX WARN: Type inference failed for: r0v283 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v118, types: [int] */
    /* JADX WARN: Type inference failed for: r1v121, types: [int] */
    /* JADX WARN: Type inference failed for: r1v160 */
    /* JADX WARN: Type inference failed for: r1v163 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v166 */
    /* JADX WARN: Type inference failed for: r1v167 */
    /* JADX WARN: Type inference failed for: r1v168 */
    /* JADX WARN: Type inference failed for: r1v78, types: [int] */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r2v31, types: [int] */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37, types: [int] */
    /* JADX WARN: Type inference failed for: r2v41, types: [int] */
    /* JADX WARN: Type inference failed for: r2v45, types: [int] */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54, types: [int] */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v40, types: [int] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v47, types: [int] */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v58 */
    /* JADX WARN: Type inference failed for: r4v59 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.ads.zzgzz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 2192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zza(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgzz
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i3 >= iArr.length) {
                int iHashCode = (i4 * 53) + ((zzgxv) obj).zzt.hashCode();
                return this.zzh ? (iHashCode * 53) + ((zzgxr) obj).zza.zza.hashCode() : iHashCode;
            }
            int iZzu = zzu(i3);
            int i5 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i6 = iArr[i3];
            long j = i5;
            int iHashCode2 = 37;
            switch (iZzt) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzhas.zzb(obj, j));
                    byte[] bArr = zzgyi.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzhas.zzc(obj, j));
                    i4 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhas.zzf(obj, j);
                    byte[] bArr2 = zzgyi.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhas.zzf(obj, j);
                    byte[] bArr3 = zzgyi.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhas.zzf(obj, j);
                    byte[] bArr4 = zzgyi.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i4 * 53;
                    iFloatToIntBits = zzgyi.zza(zzhas.zzz(obj, j));
                    i4 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i4 * 53;
                    iFloatToIntBits = ((String) zzhas.zzh(obj, j)).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i4 * 53;
                    Object objZzh = zzhas.zzh(obj, j);
                    if (objZzh != null) {
                        iHashCode2 = objZzh.hashCode();
                    }
                    i4 = i2 + iHashCode2;
                    break;
                case 10:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzh(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhas.zzf(obj, j);
                    byte[] bArr5 = zzgyi.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhas.zzf(obj, j);
                    byte[] bArr6 = zzgyi.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i4 * 53;
                    Object objZzh2 = zzhas.zzh(obj, j);
                    if (objZzh2 != null) {
                        iHashCode2 = objZzh2.hashCode();
                    }
                    i4 = i2 + iHashCode2;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzh(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i4 * 53;
                    iFloatToIntBits = zzhas.zzh(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                        byte[] bArr7 = zzgyi.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzo(obj, j));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr8 = zzgyi.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr9 = zzgyi.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr10 = zzgyi.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzgyi.zza(zzS(obj, j));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = ((String) zzhas.zzh(obj, j)).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzhas.zzh(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzhas.zzh(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr11 = zzgyi.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr12 = zzgyi.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzR(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzhas.zzh(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
            }
            i3 += 3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:501:0x0be3, code lost:
    
        if (r5 == r0) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x0be5, code lost:
    
        r13.putInt(r7, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0be9, code lost:
    
        r11 = r34.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:505:0x0bee, code lost:
    
        if (r11 >= r34.zzl) goto L615;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0bf0, code lost:
    
        zzy(r35, r34.zzj[r11], null, r34.zzm, r35);
        r12 = (com.google.android.gms.internal.ads.zzham) null;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0c08, code lost:
    
        if (r9 != 0) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0c0c, code lost:
    
        if (r8 != r38) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x0c14, code lost:
    
        throw new com.google.android.gms.internal.ads.zzgyk("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0c17, code lost:
    
        if (r8 > r38) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0c19, code lost:
    
        if (r10 != r9) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:517:0x0c1b, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:519:0x0c21, code lost:
    
        throw new com.google.android.gms.internal.ads.zzgyk("Failed to parse the message.");
     */
    /* JADX WARN: Removed duplicated region for block: B:397:0x08b3 A[PHI: r7 r8 r9 r10 r14
      0x08b3: PHI (r7v29 int) = (r7v7 int), (r7v9 int), (r7v10 int), (r7v17 int), (r7v25 int), (r7v33 int) binds: [B:386:0x0868, B:366:0x07fb, B:346:0x0795, B:261:0x0610, B:209:0x0534, B:134:0x039a] A[DONT_GENERATE, DONT_INLINE]
      0x08b3: PHI (r8v86 int) = (r8v40 int), (r8v42 int), (r8v43 int), (r8v55 int), (r8v82 int), (r8v88 int) binds: [B:386:0x0868, B:366:0x07fb, B:346:0x0795, B:261:0x0610, B:209:0x0534, B:134:0x039a] A[DONT_GENERATE, DONT_INLINE]
      0x08b3: PHI (r9v71 int) = (r9v38 int), (r9v40 int), (r9v41 int), (r9v50 int), (r9v67 int), (r9v74 int) binds: [B:386:0x0868, B:366:0x07fb, B:346:0x0795, B:261:0x0610, B:209:0x0534, B:134:0x039a] A[DONT_GENERATE, DONT_INLINE]
      0x08b3: PHI (r10v54 int) = (r10v39 int), (r10v41 int), (r10v42 int), (r10v44 int), (r10v52 int), (r10v57 int) binds: [B:386:0x0868, B:366:0x07fb, B:346:0x0795, B:261:0x0610, B:209:0x0534, B:134:0x039a] A[DONT_GENERATE, DONT_INLINE]
      0x08b3: PHI (r14v43 sun.misc.Unsafe) = 
      (r14v17 sun.misc.Unsafe)
      (r14v19 sun.misc.Unsafe)
      (r14v20 sun.misc.Unsafe)
      (r14v22 sun.misc.Unsafe)
      (r14v39 sun.misc.Unsafe)
      (r14v46 sun.misc.Unsafe)
     binds: [B:386:0x0868, B:366:0x07fb, B:346:0x0795, B:261:0x0610, B:209:0x0534, B:134:0x039a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0b60 A[PHI: r3 r5 r8 r11 r12
      0x0b60: PHI (r3v89 int) = 
      (r3v64 int)
      (r3v65 int)
      (r3v66 int)
      (r3v67 int)
      (r3v68 int)
      (r3v69 int)
      (r3v70 int)
      (r3v71 int)
      (r3v81 int)
      (r3v90 int)
     binds: [B:480:0x0b49, B:477:0x0b26, B:474:0x0b07, B:471:0x0ae8, B:468:0x0ac9, B:465:0x0aa9, B:458:0x0a80, B:443:0x0a3e, B:441:0x0a2c, B:415:0x0922] A[DONT_GENERATE, DONT_INLINE]
      0x0b60: PHI (r5v57 com.google.android.gms.internal.ads.zzgwb) = 
      (r5v41 com.google.android.gms.internal.ads.zzgwb)
      (r5v42 com.google.android.gms.internal.ads.zzgwb)
      (r5v43 com.google.android.gms.internal.ads.zzgwb)
      (r5v44 com.google.android.gms.internal.ads.zzgwb)
      (r5v45 com.google.android.gms.internal.ads.zzgwb)
      (r5v46 com.google.android.gms.internal.ads.zzgwb)
      (r5v47 com.google.android.gms.internal.ads.zzgwb)
      (r5v48 com.google.android.gms.internal.ads.zzgwb)
      (r5v52 com.google.android.gms.internal.ads.zzgwb)
      (r5v58 com.google.android.gms.internal.ads.zzgwb)
     binds: [B:480:0x0b49, B:477:0x0b26, B:474:0x0b07, B:471:0x0ae8, B:468:0x0ac9, B:465:0x0aa9, B:458:0x0a80, B:443:0x0a3e, B:441:0x0a2c, B:415:0x0922] A[DONT_GENERATE, DONT_INLINE]
      0x0b60: PHI (r8v110 int) = 
      (r8v91 int)
      (r8v92 int)
      (r8v93 int)
      (r8v94 int)
      (r8v95 int)
      (r8v96 int)
      (r8v97 int)
      (r8v98 int)
      (r8v104 int)
      (r8v111 int)
     binds: [B:480:0x0b49, B:477:0x0b26, B:474:0x0b07, B:471:0x0ae8, B:468:0x0ac9, B:465:0x0aa9, B:458:0x0a80, B:443:0x0a3e, B:441:0x0a2c, B:415:0x0922] A[DONT_GENERATE, DONT_INLINE]
      0x0b60: PHI (r11v40 int) = 
      (r11v21 int)
      (r11v22 int)
      (r11v23 int)
      (r11v24 int)
      (r11v25 int)
      (r11v26 int)
      (r11v27 int)
      (r11v28 int)
      (r11v34 int)
      (r11v41 int)
     binds: [B:480:0x0b49, B:477:0x0b26, B:474:0x0b07, B:471:0x0ae8, B:468:0x0ac9, B:465:0x0aa9, B:458:0x0a80, B:443:0x0a3e, B:441:0x0a2c, B:415:0x0922] A[DONT_GENERATE, DONT_INLINE]
      0x0b60: PHI (r12v42 int) = 
      (r12v22 int)
      (r12v23 int)
      (r12v24 int)
      (r12v25 int)
      (r12v26 int)
      (r12v27 int)
      (r12v28 int)
      (r12v29 int)
      (r12v36 int)
      (r12v43 int)
     binds: [B:480:0x0b49, B:477:0x0b26, B:474:0x0b07, B:471:0x0ae8, B:468:0x0ac9, B:465:0x0aa9, B:458:0x0a80, B:443:0x0a3e, B:441:0x0a2c, B:415:0x0922] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0bb6  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x08b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:563:0x0b63 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:603:0x08c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0b74 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzc(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.ads.zzgwb r40) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgwb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgzz
    public final Object zze() {
        return ((zzgxv) this.zzg).zzbj();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    @Override // com.google.android.gms.internal.ads.zzgzz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zzf(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgzz
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i >= iArr.length) {
                zzhab.zzq(this.zzm, obj, obj2);
                if (this.zzh) {
                    zzhab.zzp(this.zzn, obj, obj2);
                    return;
                }
                return;
            }
            int iZzu = zzu(i);
            int i2 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzhas.zzr(obj, j, zzhas.zzb(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 1:
                    if (zzN(obj2, i)) {
                        zzhas.zzs(obj, j, zzhas.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 2:
                    if (zzN(obj2, i)) {
                        zzhas.zzu(obj, j, zzhas.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 3:
                    if (zzN(obj2, i)) {
                        zzhas.zzu(obj, j, zzhas.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 4:
                    if (zzN(obj2, i)) {
                        zzhas.zzt(obj, j, zzhas.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 5:
                    if (zzN(obj2, i)) {
                        zzhas.zzu(obj, j, zzhas.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 6:
                    if (zzN(obj2, i)) {
                        zzhas.zzt(obj, j, zzhas.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 7:
                    if (zzN(obj2, i)) {
                        zzhas.zzp(obj, j, zzhas.zzz(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 8:
                    if (zzN(obj2, i)) {
                        zzhas.zzv(obj, j, zzhas.zzh(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 9:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (zzN(obj2, i)) {
                        zzhas.zzv(obj, j, zzhas.zzh(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 11:
                    if (zzN(obj2, i)) {
                        zzhas.zzt(obj, j, zzhas.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 12:
                    if (zzN(obj2, i)) {
                        zzhas.zzt(obj, j, zzhas.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 13:
                    if (zzN(obj2, i)) {
                        zzhas.zzt(obj, j, zzhas.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 14:
                    if (zzN(obj2, i)) {
                        zzhas.zzu(obj, j, zzhas.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 15:
                    if (zzN(obj2, i)) {
                        zzhas.zzt(obj, j, zzhas.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 16:
                    if (zzN(obj2, i)) {
                        zzhas.zzu(obj, j, zzhas.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 17:
                    zzE(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzgyh zzgyhVarZzf = (zzgyh) zzhas.zzh(obj, j);
                    zzgyh zzgyhVar = (zzgyh) zzhas.zzh(obj2, j);
                    int size = zzgyhVarZzf.size();
                    int size2 = zzgyhVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzgyhVarZzf.zzc()) {
                            zzgyhVarZzf = zzgyhVarZzf.zzf(size2 + size);
                        }
                        zzgyhVarZzf.addAll(zzgyhVar);
                    }
                    if (size > 0) {
                        zzgyhVar = zzgyhVarZzf;
                    }
                    zzhas.zzv(obj, j, zzgyhVar);
                    break;
                case 50:
                    int i4 = zzhab.zza;
                    zzhas.zzv(obj, j, zzgzb.zzb(zzhas.zzh(obj, j), zzhas.zzh(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i3, i)) {
                        zzhas.zzv(obj, j, zzhas.zzh(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 60:
                    zzF(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i3, i)) {
                        zzhas.zzv(obj, j, zzhas.zzh(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 68:
                    zzF(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:318:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgzz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r11, com.google.android.gms.internal.ads.zzgzt r12, com.google.android.gms.internal.ads.zzgxf r13) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zzh(java.lang.Object, com.google.android.gms.internal.ads.zzgzt, com.google.android.gms.internal.ads.zzgxf):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgzz
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgwb zzgwbVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzgwbVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0615  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0235  */
    @Override // com.google.android.gms.internal.ads.zzgzz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.Object r24, com.google.android.gms.internal.ads.zzhba r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zzj(java.lang.Object, com.google.android.gms.internal.ads.zzhba):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgzz
    public final boolean zzk(Object obj, Object obj2) {
        boolean zZzJ;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            long j = iZzu & 1048575;
            switch (zzt(iZzu)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzhas.zzb(obj, j)) != Double.doubleToLongBits(zzhas.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzhas.zzc(obj, j)) != Float.floatToIntBits(zzhas.zzc(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzhas.zzf(obj, j) != zzhas.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzhas.zzf(obj, j) != zzhas.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzhas.zzd(obj, j) != zzhas.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzhas.zzf(obj, j) != zzhas.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzhas.zzd(obj, j) != zzhas.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzhas.zzz(obj, j) != zzhas.zzz(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzhas.zzd(obj, j) != zzhas.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzhas.zzd(obj, j) != zzhas.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzhas.zzd(obj, j) != zzhas.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzhas.zzf(obj, j) != zzhas.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzhas.zzd(obj, j) != zzhas.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzhas.zzf(obj, j) != zzhas.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzJ = zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j));
                    break;
                case 50:
                    zZzJ = zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzr = zzr(i) & 1048575;
                    if (zzhas.zzd(obj, jZzr) != zzhas.zzd(obj2, jZzr) || !zzhab.zzJ(zzhas.zzh(obj, j), zzhas.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzJ) {
                return false;
            }
        }
        if (!((zzgxv) obj).zzt.equals(((zzgxv) obj2).zzt)) {
            return false;
        }
        if (this.zzh) {
            return ((zzgxr) obj).zza.equals(((zzgxr) obj2).zza);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0099  */
    @Override // com.google.android.gms.internal.ads.zzgzz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzl(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzj.zzl(java.lang.Object):boolean");
    }
}
