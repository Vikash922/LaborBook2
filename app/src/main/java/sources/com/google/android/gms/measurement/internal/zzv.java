package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import androidx.collection.ArrayMap;
import com.amplitude.android.migration.DatabaseConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzpd;
import com.google.android.gms.internal.measurement.zzqb;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzv extends zznr {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzx> zzc;
    private Long zzd;
    private Long zze;

    private final zzx zza(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzx zzxVar = new zzx(this, this.zza);
        this.zzc.put(num, zzxVar);
        return zzxVar;
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    final List<zzgn.zzd> zza(String str, List<zzgn.zzf> list, List<zzgn.zzo> list2, Long l, Long l2) {
        return zza(str, list, list2, l, l2, false);
    }

    final List<zzgn.zzd> zza(String str, List<zzgn.zzf> list, List<zzgn.zzo> list2, Long l, Long l2, boolean z) {
        boolean z2;
        Map<Integer, zzgn.zzm> map;
        List<zzfn.zzb> list3;
        Map<Integer, List<zzfn.zzb>> map2;
        Map<Integer, zzgn.zzm> map3;
        Iterator it;
        Iterator<zzgn.zzn> it2;
        Map<Integer, List<Integer>> map4;
        Iterator<Integer> it3;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.zza = str;
        this.zzb = new HashSet();
        this.zzc = new ArrayMap();
        this.zzd = l;
        this.zze = l2;
        Iterator<zzgn.zzf> it4 = list.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z2 = false;
                break;
            }
            if ("_s".equals(it4.next().zzg())) {
                z2 = true;
                break;
            }
        }
        boolean z3 = zzqb.zza() && zze().zzf(this.zza, zzbj.zzbo);
        boolean z4 = zzqb.zza() && zze().zzf(this.zza, zzbj.zzbn);
        if (z2) {
            zzam zzamVarZzh = zzh();
            String str2 = this.zza;
            zzamVarZzh.zzal();
            zzamVarZzh.zzt();
            Preconditions.checkNotEmpty(str2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("current_session_count", (Integer) 0);
            try {
                zzamVarZzh.m156e_().update(DatabaseConstants.EVENT_TABLE_NAME, contentValues, "app_id = ?", new String[]{str2});
            } catch (SQLiteException e) {
                zzamVarZzh.zzj().zzg().zza("Error resetting session-scoped event counts. appId", zzgi.zza(str2), e);
            }
        }
        Map<Integer, List<zzfn.zzb>> mapEmptyMap = Collections.emptyMap();
        if (z4 && z3) {
            mapEmptyMap = zzh().zzn(this.zza);
        }
        Map<Integer, zzgn.zzm> mapZzm = zzh().zzm(this.zza);
        if (!mapZzm.isEmpty()) {
            HashSet hashSet = new HashSet(mapZzm.keySet());
            if (z2) {
                String str3 = this.zza;
                Map<Integer, List<Integer>> mapZzo = zzh().zzo(this.zza);
                Preconditions.checkNotEmpty(str3);
                Preconditions.checkNotNull(mapZzm);
                ArrayMap arrayMap = new ArrayMap();
                if (!mapZzm.isEmpty()) {
                    Iterator<Integer> it5 = mapZzm.keySet().iterator();
                    while (it5.hasNext()) {
                        int iIntValue = it5.next().intValue();
                        zzgn.zzm zzmVar = mapZzm.get(Integer.valueOf(iIntValue));
                        List<Integer> list4 = mapZzo.get(Integer.valueOf(iIntValue));
                        if (list4 == null || list4.isEmpty()) {
                            map4 = mapZzo;
                            it3 = it5;
                            arrayMap.put(Integer.valueOf(iIntValue), zzmVar);
                            mapZzo = map4;
                            it5 = it3;
                        } else {
                            List<Long> listZza = mo158g_().zza(zzmVar.zzi(), list4);
                            if (!listZza.isEmpty()) {
                                zzgn.zzm.zza zzaVarZzb = zzmVar.zzcd().zzb().zzb(listZza);
                                zzaVarZzb.zzd().zzd(mo158g_().zza(zzmVar.zzk(), list4));
                                ArrayList arrayList = new ArrayList();
                                for (zzgn.zze zzeVar : zzmVar.zzh()) {
                                    Map<Integer, List<Integer>> map5 = mapZzo;
                                    Iterator<Integer> it6 = it5;
                                    if (!list4.contains(Integer.valueOf(zzeVar.zza()))) {
                                        arrayList.add(zzeVar);
                                    }
                                    mapZzo = map5;
                                    it5 = it6;
                                }
                                map4 = mapZzo;
                                it3 = it5;
                                zzaVarZzb.zza().zza(arrayList);
                                ArrayList arrayList2 = new ArrayList();
                                for (zzgn.zzn zznVar : zzmVar.zzj()) {
                                    if (!list4.contains(Integer.valueOf(zznVar.zzb()))) {
                                        arrayList2.add(zznVar);
                                    }
                                }
                                zzaVarZzb.zzc().zzc(arrayList2);
                                arrayMap.put(Integer.valueOf(iIntValue), (zzgn.zzm) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzb.zzai()));
                                mapZzo = map4;
                                it5 = it3;
                            }
                        }
                    }
                }
                map = arrayMap;
            } else {
                map = mapZzm;
            }
            Iterator it7 = hashSet.iterator();
            while (it7.hasNext()) {
                int iIntValue2 = ((Integer) it7.next()).intValue();
                zzgn.zzm zzmVar2 = map.get(Integer.valueOf(iIntValue2));
                BitSet bitSet = new BitSet();
                BitSet bitSet2 = new BitSet();
                ArrayMap arrayMap2 = new ArrayMap();
                if (zzmVar2 != null && zzmVar2.zza() != 0) {
                    for (zzgn.zze zzeVar2 : zzmVar2.zzh()) {
                        if (zzeVar2.zzf()) {
                            arrayMap2.put(Integer.valueOf(zzeVar2.zza()), zzeVar2.zze() ? Long.valueOf(zzeVar2.zzb()) : null);
                        }
                    }
                }
                ArrayMap arrayMap3 = new ArrayMap();
                if (zzmVar2 != null && zzmVar2.zzc() != 0) {
                    Iterator<zzgn.zzn> it8 = zzmVar2.zzj().iterator();
                    while (it8.hasNext()) {
                        zzgn.zzn next = it8.next();
                        if (!next.zzf() || next.zza() <= 0) {
                            it2 = it8;
                        } else {
                            it2 = it8;
                            arrayMap3.put(Integer.valueOf(next.zzb()), Long.valueOf(next.zza(next.zza() - 1)));
                        }
                        it8 = it2;
                    }
                }
                if (zzmVar2 != null) {
                    int i = 0;
                    while (i < (zzmVar2.zzd() << 6)) {
                        if (zzol.zza(zzmVar2.zzk(), i)) {
                            map3 = map;
                            it = it7;
                            zzj().zzp().zza("Filter already evaluated. audience ID, filter ID", Integer.valueOf(iIntValue2), Integer.valueOf(i));
                            bitSet2.set(i);
                            if (zzol.zza(zzmVar2.zzi(), i)) {
                                bitSet.set(i);
                            }
                            i++;
                            map = map3;
                            it7 = it;
                        } else {
                            map3 = map;
                            it = it7;
                        }
                        arrayMap2.remove(Integer.valueOf(i));
                        i++;
                        map = map3;
                        it7 = it;
                    }
                }
                Map<Integer, zzgn.zzm> map6 = map;
                Iterator it9 = it7;
                zzgn.zzm zzmVar3 = mapZzm.get(Integer.valueOf(iIntValue2));
                if (z4 && z3 && (list3 = mapEmptyMap.get(Integer.valueOf(iIntValue2))) != null && this.zze != null && this.zzd != null) {
                    for (zzfn.zzb zzbVar : list3) {
                        int iZzb = zzbVar.zzb();
                        long jLongValue = this.zze.longValue() / 1000;
                        if (zzbVar.zzi()) {
                            jLongValue = this.zzd.longValue() / 1000;
                        }
                        if (arrayMap2.containsKey(Integer.valueOf(iZzb))) {
                            map2 = mapEmptyMap;
                            arrayMap2.put(Integer.valueOf(iZzb), Long.valueOf(jLongValue));
                        } else {
                            map2 = mapEmptyMap;
                        }
                        if (arrayMap3.containsKey(Integer.valueOf(iZzb))) {
                            arrayMap3.put(Integer.valueOf(iZzb), Long.valueOf(jLongValue));
                        }
                        mapEmptyMap = map2;
                    }
                }
                this.zzc.put(Integer.valueOf(iIntValue2), new zzx(this, this.zza, zzmVar3, bitSet, bitSet2, arrayMap2, arrayMap3));
                map = map6;
                it7 = it9;
                mapEmptyMap = mapEmptyMap;
                mapZzm = mapZzm;
            }
        }
        if (zzpd.zza() && zze().zzf(null, zzbj.zzdc)) {
            zza(list, z);
            if (z) {
                return new ArrayList();
            }
            zza(list2);
            return zzu();
        }
        zza(list, true);
        zza(list2);
        return zzu();
    }

    private final List<zzgn.zzd> zzu() {
        ArrayList arrayList = new ArrayList();
        Set<Integer> setKeySet = this.zzc.keySet();
        setKeySet.removeAll(this.zzb);
        Iterator<Integer> it = setKeySet.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            zzx zzxVar = this.zzc.get(Integer.valueOf(iIntValue));
            Preconditions.checkNotNull(zzxVar);
            zzgn.zzd zzdVarZza = zzxVar.zza(iIntValue);
            arrayList.add(zzdVarZza);
            zzam zzamVarZzh = zzh();
            String str = this.zza;
            zzgn.zzm zzmVarZzd = zzdVarZza.zzd();
            zzamVarZzh.zzal();
            zzamVarZzh.zzt();
            Preconditions.checkNotEmpty(str);
            Preconditions.checkNotNull(zzmVarZzd);
            byte[] bArrZzca = zzmVarZzd.zzca();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(iIntValue));
            contentValues.put("current_results", bArrZzca);
            try {
                if (zzamVarZzh.m156e_().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                    zzamVarZzh.zzj().zzg().zza("Failed to insert filter results (got -1). appId", zzgi.zza(str));
                }
            } catch (SQLiteException e) {
                zzamVarZzh.zzj().zzg().zza("Error storing filter results. appId", zzgi.zza(str), e);
            }
        }
        return arrayList;
    }

    zzv(zznv zznvVar) {
        super(zznvVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(List<zzgn.zzf> list, boolean z) {
        zzbd zzbdVar;
        int i;
        Map<Integer, List<zzfn.zzb>> map;
        long j;
        if (list.isEmpty()) {
            return;
        }
        String str = null;
        zzz zzzVar = new zzz(this);
        ArrayMap arrayMap = new ArrayMap();
        for (zzgn.zzf zzfVar : list) {
            zzgn.zzf zzfVarZza = zzzVar.zza(this.zza, zzfVar);
            if (zzfVarZza != null) {
                zzam zzamVarZzh = zzh();
                String str2 = this.zza;
                String strZzg = zzfVarZza.zzg();
                zzbd zzbdVarZzd = zzamVarZzh.zzd(str2, zzfVar.zzg());
                if (zzbdVarZzd == null) {
                    zzamVarZzh.zzj().zzu().zza("Event aggregate wasn't created during raw event logging. appId, event", zzgi.zza(str2), zzamVarZzh.zzi().zza(strZzg));
                    zzbdVar = new zzbd(str2, zzfVar.zzg(), 1L, 1L, 1L, zzfVar.zzd(), 0L, null, null, null, null);
                } else {
                    zzbdVar = new zzbd(zzbdVarZzd.zza, zzbdVarZzd.zzb, zzbdVarZzd.zzc + 1, zzbdVarZzd.zzd + 1, zzbdVarZzd.zze + 1, zzbdVarZzd.zzf, zzbdVarZzd.zzg, zzbdVarZzd.zzh, zzbdVarZzd.zzi, zzbdVarZzd.zzj, zzbdVarZzd.zzk);
                }
                zzbd zzbdVar2 = zzbdVar;
                zzh().zza(zzbdVar2);
                if (!zzpd.zza() || !zze().zzf(str, zzbj.zzdc) || !z) {
                    long j2 = zzbdVar2.zzc;
                    String strZzg2 = zzfVarZza.zzg();
                    Map<Integer, List<zzfn.zzb>> mapZzf = (Map) arrayMap.get(strZzg2);
                    if (mapZzf == null) {
                        mapZzf = zzh().zzf(this.zza, strZzg2);
                        arrayMap.put(strZzg2, mapZzf);
                    }
                    Map<Integer, List<zzfn.zzb>> map2 = mapZzf;
                    Iterator<Integer> it = map2.keySet().iterator();
                    while (it.hasNext()) {
                        int iIntValue = it.next().intValue();
                        if (this.zzb.contains(Integer.valueOf(iIntValue))) {
                            zzj().zzp().zza("Skipping failed audience ID", Integer.valueOf(iIntValue));
                        } else {
                            Iterator<zzfn.zzb> it2 = map2.get(Integer.valueOf(iIntValue)).iterator();
                            boolean zZza = true;
                            while (true) {
                                if (!it2.hasNext()) {
                                    i = iIntValue;
                                    map = map2;
                                    j = j2;
                                    break;
                                }
                                zzfn.zzb next = it2.next();
                                zzab zzabVar = new zzab(this, this.zza, iIntValue, next);
                                i = iIntValue;
                                map = map2;
                                j = j2;
                                zZza = zzabVar.zza(this.zzd, this.zze, zzfVarZza, j2, zzbdVar2, zza(iIntValue, next.zzb()));
                                if (zZza) {
                                    zza(Integer.valueOf(i)).zza(zzabVar);
                                    iIntValue = i;
                                    map2 = map;
                                    j2 = j;
                                } else {
                                    this.zzb.add(Integer.valueOf(i));
                                    break;
                                }
                            }
                            if (!zZza) {
                                this.zzb.add(Integer.valueOf(i));
                            }
                            map2 = map;
                            j2 = j;
                            str = null;
                        }
                    }
                }
            }
        }
    }

    private final void zza(List<zzgn.zzo> list) {
        zzfn.zze next;
        if (list.isEmpty()) {
            return;
        }
        ArrayMap arrayMap = new ArrayMap();
        for (zzgn.zzo zzoVar : list) {
            String strZzg = zzoVar.zzg();
            Map<Integer, List<zzfn.zze>> mapZzg = (Map) arrayMap.get(strZzg);
            if (mapZzg == null) {
                mapZzg = zzh().zzg(this.zza, strZzg);
                arrayMap.put(strZzg, mapZzg);
            }
            Iterator<Integer> it = mapZzg.keySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    if (this.zzb.contains(Integer.valueOf(iIntValue))) {
                        zzj().zzp().zza("Skipping failed audience ID", Integer.valueOf(iIntValue));
                        break;
                    }
                    Iterator<zzfn.zze> it2 = mapZzg.get(Integer.valueOf(iIntValue)).iterator();
                    boolean zZza = true;
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        next = it2.next();
                        if (zzj().zza(2)) {
                            zzj().zzp().zza("Evaluating filter. audience, filter, property", Integer.valueOf(iIntValue), next.zzi() ? Integer.valueOf(next.zza()) : null, zzi().zzc(next.zze()));
                            zzj().zzp().zza("Filter definition", mo158g_().zza(next));
                        }
                        if (!next.zzi() || next.zza() > 256) {
                            break;
                        }
                        zzad zzadVar = new zzad(this, this.zza, iIntValue, next);
                        zZza = zzadVar.zza(this.zzd, this.zze, zzoVar, zza(iIntValue, next.zza()));
                        if (zZza) {
                            zza(Integer.valueOf(iIntValue)).zza(zzadVar);
                        } else {
                            this.zzb.add(Integer.valueOf(iIntValue));
                            break;
                        }
                    }
                    zzj().zzu().zza("Invalid property filter ID. appId, id", zzgi.zza(this.zza), String.valueOf(next.zzi() ? Integer.valueOf(next.zza()) : null));
                    zZza = false;
                    if (!zZza) {
                        this.zzb.add(Integer.valueOf(iIntValue));
                    }
                }
            }
        }
    }

    private final boolean zza(int i, int i2) {
        zzx zzxVar = this.zzc.get(Integer.valueOf(i));
        if (zzxVar == null) {
            return false;
        }
        return zzxVar.zzd.get(i2);
    }
}
