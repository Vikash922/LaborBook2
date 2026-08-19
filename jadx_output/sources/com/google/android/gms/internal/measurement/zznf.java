package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznf {
    private static final zznx<?, ?> zza = new zznz();

    static int zza(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzkl.zzb(i, true);
    }

    static int zza(List<?> list) {
        return list.size();
    }

    static int zza(int i, List<zzjs> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = size * zzkl.zzi(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzi += zzkl.zzb(list.get(i2));
        }
        return iZzi;
    }

    static int zzb(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzkl.zzi(i));
    }

    static int zzb(List<Integer> list) {
        int iZzd;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlf) {
            zzlf zzlfVar = (zzlf) list;
            iZzd = 0;
            while (i < size) {
                iZzd += zzkl.zzd(zzlfVar.zzb(i));
                i++;
            }
        } else {
            iZzd = 0;
            while (i < size) {
                iZzd += zzkl.zzd(list.get(i).intValue());
                i++;
            }
        }
        return iZzd;
    }

    static int zzc(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzkl.zzf(i, 0);
    }

    static int zzc(List<?> list) {
        return list.size() << 2;
    }

    static int zzd(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzkl.zzc(i, 0L);
    }

    static int zzd(List<?> list) {
        return list.size() << 3;
    }

    static int zza(int i, List<zzml> list, zznd<?> zzndVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzb = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzb += zzkl.zzb(i, list.get(i2), zzndVar);
        }
        return iZzb;
    }

    static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzkl.zzi(i));
    }

    static int zze(List<Integer> list) {
        int iZzf;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlf) {
            zzlf zzlfVar = (zzlf) list;
            iZzf = 0;
            while (i < size) {
                iZzf += zzkl.zzf(zzlfVar.zzb(i));
                i++;
            }
        } else {
            iZzf = 0;
            while (i < size) {
                iZzf += zzkl.zzf(list.get(i).intValue());
                i++;
            }
        }
        return iZzf;
    }

    static int zzf(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzf(list) + (list.size() * zzkl.zzi(i));
    }

    static int zzf(List<Long> list) {
        int iZzd;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlw) {
            zzlw zzlwVar = (zzlw) list;
            iZzd = 0;
            while (i < size) {
                iZzd += zzkl.zzd(zzlwVar.zzb(i));
                i++;
            }
        } else {
            iZzd = 0;
            while (i < size) {
                iZzd += zzkl.zzd(list.get(i).longValue());
                i++;
            }
        }
        return iZzd;
    }

    static int zza(int i, Object obj, zznd<?> zzndVar) {
        if (obj instanceof zzlt) {
            return zzkl.zzb(i, (zzlt) obj);
        }
        return zzkl.zzc(i, (zzml) obj, zzndVar);
    }

    static int zzb(int i, List<?> list, zznd<?> zzndVar) {
        int iZza;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = zzkl.zzi(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzlt) {
                iZza = zzkl.zza((zzlt) obj);
            } else {
                iZza = zzkl.zza((zzml) obj, zzndVar);
            }
            iZzi += iZza;
        }
        return iZzi;
    }

    static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzkl.zzi(i));
    }

    static int zzg(List<Integer> list) {
        int iZzh;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlf) {
            zzlf zzlfVar = (zzlf) list;
            iZzh = 0;
            while (i < size) {
                iZzh += zzkl.zzh(zzlfVar.zzb(i));
                i++;
            }
        } else {
            iZzh = 0;
            while (i < size) {
                iZzh += zzkl.zzh(list.get(i).intValue());
                i++;
            }
        }
        return iZzh;
    }

    static int zzh(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzkl.zzi(i));
    }

    static int zzh(List<Long> list) {
        int iZzf;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlw) {
            zzlw zzlwVar = (zzlw) list;
            iZzf = 0;
            while (i < size) {
                iZzf += zzkl.zzf(zzlwVar.zzb(i));
                i++;
            }
        } else {
            iZzf = 0;
            while (i < size) {
                iZzf += zzkl.zzf(list.get(i).longValue());
                i++;
            }
        }
        return iZzf;
    }

    static int zzb(int i, List<?> list) {
        int iZzb;
        int iZzb2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzi = zzkl.zzi(i) * size;
        if (list instanceof zzls) {
            zzls zzlsVar = (zzls) list;
            while (i2 < size) {
                Object objZza = zzlsVar.zza(i2);
                if (objZza instanceof zzjs) {
                    iZzb2 = zzkl.zzb((zzjs) objZza);
                } else {
                    iZzb2 = zzkl.zzb((String) objZza);
                }
                iZzi += iZzb2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzjs) {
                    iZzb = zzkl.zzb((zzjs) obj);
                } else {
                    iZzb = zzkl.zzb((String) obj);
                }
                iZzi += iZzb;
                i2++;
            }
        }
        return iZzi;
    }

    static int zzi(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzkl.zzi(i));
    }

    static int zzi(List<Integer> list) {
        int iZzj;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlf) {
            zzlf zzlfVar = (zzlf) list;
            iZzj = 0;
            while (i < size) {
                iZzj += zzkl.zzj(zzlfVar.zzb(i));
                i++;
            }
        } else {
            iZzj = 0;
            while (i < size) {
                iZzj += zzkl.zzj(list.get(i).intValue());
                i++;
            }
        }
        return iZzj;
    }

    static int zzj(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzkl.zzi(i));
    }

    static int zzj(List<Long> list) {
        int iZzg;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzlw) {
            zzlw zzlwVar = (zzlw) list;
            iZzg = 0;
            while (i < size) {
                iZzg += zzkl.zzg(zzlwVar.zzb(i));
                i++;
            }
        } else {
            iZzg = 0;
            while (i < size) {
                iZzg += zzkl.zzg(list.get(i).longValue());
                i++;
            }
        }
        return iZzg;
    }

    public static zznx<?, ?> zza() {
        return zza;
    }

    static <UT, UB> UB zza(Object obj, int i, List<Integer> list, zzlg zzlgVar, UB ub, zznx<UT, UB> zznxVar) {
        if (zzlgVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (zzlgVar.zza(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    ub = (UB) zza(obj, i, iIntValue, ub, zznxVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzlgVar.zza(iIntValue2)) {
                    ub = (UB) zza(obj, i, iIntValue2, ub, zznxVar);
                    it.remove();
                }
            }
        }
        return ub;
    }

    static <UT, UB> UB zza(Object obj, int i, int i2, UB ub, zznx<UT, UB> zznxVar) {
        if (ub == null) {
            ub = zznxVar.zzc(obj);
        }
        zznxVar.zzb(ub, i, i2);
        return ub;
    }

    static <T, FT extends zzkx<FT>> void zza(zzkr<FT> zzkrVar, T t, T t2) {
        zzkv<T> zzkvVarZza = zzkrVar.zza(t2);
        if (zzkvVarZza.zza.isEmpty()) {
            return;
        }
        zzkrVar.zzb(t).zza((zzkv) zzkvVarZza);
    }

    static <T> void zza(zzme zzmeVar, T t, T t2, long j) {
        zzny.zza(t, j, zzmeVar.zza(zzny.zze(t, j), zzny.zze(t2, j)));
    }

    static <T, UT, UB> void zza(zznx<UT, UB> zznxVar, T t, T t2) {
        zznxVar.zzc(t, zznxVar.zza(zznxVar.zzd(t), zznxVar.zzd(t2)));
    }

    public static void zza(Class<?> cls) {
        zzlc.class.isAssignableFrom(cls);
    }

    public static void zza(int i, List<Boolean> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zza(i, list, z);
    }

    public static void zza(int i, List<zzjs> list, zzos zzosVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zza(i, list);
    }

    public static void zzb(int i, List<Double> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzb(i, list, z);
    }

    public static void zzc(int i, List<Integer> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzc(i, list, z);
    }

    public static void zzd(int i, List<Integer> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zze(i, list, z);
    }

    public static void zzf(int i, List<Float> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzf(i, list, z);
    }

    public static void zza(int i, List<?> list, zzos zzosVar, zznd<?> zzndVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zza(i, list, (zznd) zzndVar);
    }

    public static void zzg(int i, List<Integer> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzg(i, list, z);
    }

    public static void zzh(int i, List<Long> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzh(i, list, z);
    }

    public static void zzb(int i, List<?> list, zzos zzosVar, zznd<?> zzndVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzb(i, list, (zznd) zzndVar);
    }

    public static void zzi(int i, List<Integer> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzi(i, list, z);
    }

    public static void zzj(int i, List<Long> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzj(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzk(i, list, z);
    }

    public static void zzl(int i, List<Long> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzl(i, list, z);
    }

    public static void zzb(int i, List<String> list, zzos zzosVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzb(i, list);
    }

    public static void zzm(int i, List<Integer> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzm(i, list, z);
    }

    public static void zzn(int i, List<Long> list, zzos zzosVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzosVar.zzn(i, list, z);
    }

    static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
