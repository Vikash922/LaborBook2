package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.jacoco.core.runtime.AgentOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzko implements zzos {
    private final zzkl zza;

    public static zzko zza(zzkl zzklVar) {
        return zzklVar.zza != null ? zzklVar.zza : new zzko(zzklVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final int zza() {
        return 1;
    }

    private zzko(zzkl zzklVar) {
        zzkl zzklVar2 = (zzkl) zzle.zza(zzklVar, AgentOptions.OUTPUT);
        this.zza = zzklVar2;
        zzklVar2.zza = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, boolean z) throws IOException {
        this.zza.zza(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzjq)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZza = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZza += zzkl.zza(list.get(i3).booleanValue());
                }
                this.zza.zzc(iZza);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).booleanValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zza(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        zzjq zzjqVar = (zzjq) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZza2 = 0;
            for (int i4 = 0; i4 < zzjqVar.size(); i4++) {
                iZza2 += zzkl.zza(zzjqVar.zzb(i4));
            }
            this.zza.zzc(iZza2);
            while (i2 < zzjqVar.size()) {
                this.zza.zzb(zzjqVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzjqVar.size()) {
            this.zza.zza(i, zzjqVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, zzjs zzjsVar) throws IOException {
        this.zza.zza(i, zzjsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, List<zzjs> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, double d) throws IOException {
        this.zza.zzb(i, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzb(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzkn)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZza = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZza += zzkl.zza(list.get(i3).doubleValue());
                }
                this.zza.zzc(iZza);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).doubleValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        zzkn zzknVar = (zzkn) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZza2 = 0;
            for (int i4 = 0; i4 < zzknVar.size(); i4++) {
                iZza2 += zzkl.zza(zzknVar.zzb(i4));
            }
            this.zza.zzc(iZza2);
            while (i2 < zzknVar.size()) {
                this.zza.zzb(zzknVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzknVar.size()) {
            this.zza.zzb(i, zzknVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    @Deprecated
    public final void zza(int i) throws IOException {
        this.zza.zzc(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzc(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlf)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzd = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzd += zzkl.zzd(list.get(i3).intValue());
                }
                this.zza.zzc(iZzd);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzlf zzlfVar = (zzlf) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzd2 = 0;
            for (int i4 = 0; i4 < zzlfVar.size(); i4++) {
                iZzd2 += zzkl.zzd(zzlfVar.zzb(i4));
            }
            this.zza.zzc(iZzd2);
            while (i2 < zzlfVar.size()) {
                this.zza.zzb(zzlfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlfVar.size()) {
            this.zza.zzb(i, zzlfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zza(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzd(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlf)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZze = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZze += zzkl.zze(list.get(i3).intValue());
                }
                this.zza.zzc(iZze);
                while (i2 < list.size()) {
                    this.zza.zza(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zza(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzlf zzlfVar = (zzlf) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZze2 = 0;
            for (int i4 = 0; i4 < zzlfVar.size(); i4++) {
                iZze2 += zzkl.zze(zzlfVar.zzb(i4));
            }
            this.zza.zzc(iZze2);
            while (i2 < zzlfVar.size()) {
                this.zza.zza(zzlfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlfVar.size()) {
            this.zza.zza(i, zzlfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlw)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzc = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzc += zzkl.zzc(list.get(i3).longValue());
                }
                this.zza.zzc(iZzc);
                while (i2 < list.size()) {
                    this.zza.zza(list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zza(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzlw zzlwVar = (zzlw) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzc2 = 0;
            for (int i4 = 0; i4 < zzlwVar.size(); i4++) {
                iZzc2 += zzkl.zzc(zzlwVar.zzb(i4));
            }
            this.zza.zzc(iZzc2);
            while (i2 < zzlwVar.size()) {
                this.zza.zza(zzlwVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlwVar.size()) {
            this.zza.zza(i, zzlwVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, float f) throws IOException {
        this.zza.zzb(i, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlb)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZza = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZza += zzkl.zza(list.get(i3).floatValue());
                }
                this.zza.zzc(iZza);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).floatValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        zzlb zzlbVar = (zzlb) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZza2 = 0;
            for (int i4 = 0; i4 < zzlbVar.size(); i4++) {
                iZza2 += zzkl.zza(zzlbVar.zzb(i4));
            }
            this.zza.zzc(iZza2);
            while (i2 < zzlbVar.size()) {
                this.zza.zzb(zzlbVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlbVar.size()) {
            this.zza.zzb(i, zzlbVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, Object obj, zznd zzndVar) throws IOException {
        zzkl zzklVar = this.zza;
        zzklVar.zzc(i, 3);
        zzndVar.zza((zzml) obj, zzklVar.zza);
        zzklVar.zzc(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, List<?> list, zznd zzndVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzndVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzc(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzg(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlf)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzf = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzf += zzkl.zzf(list.get(i3).intValue());
                }
                this.zza.zzc(iZzf);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzlf zzlfVar = (zzlf) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzf2 = 0;
            for (int i4 = 0; i4 < zzlfVar.size(); i4++) {
                iZzf2 += zzkl.zzf(zzlfVar.zzb(i4));
            }
            this.zza.zzc(iZzf2);
            while (i2 < zzlfVar.size()) {
                this.zza.zzb(zzlfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlfVar.size()) {
            this.zza.zzb(i, zzlfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzb(int i, long j) throws IOException {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzh(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlw)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzd = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzd += zzkl.zzd(list.get(i3).longValue());
                }
                this.zza.zzc(iZzd);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzlw zzlwVar = (zzlw) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzd2 = 0;
            for (int i4 = 0; i4 < zzlwVar.size(); i4++) {
                iZzd2 += zzkl.zzd(zzlwVar.zzb(i4));
            }
            this.zza.zzc(iZzd2);
            while (i2 < zzlwVar.size()) {
                this.zza.zzb(zzlwVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlwVar.size()) {
            this.zza.zzb(i, zzlwVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final <K, V> void zza(int i, zzmc<K, V> zzmcVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zzc(i, 2);
            this.zza.zzc(zzmd.zza(zzmcVar, entry.getKey(), entry.getValue()));
            zzmd.zza(this.zza, zzmcVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzb(int i, Object obj, zznd zzndVar) throws IOException {
        this.zza.zza(i, (zzml) obj, zzndVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzb(int i, List<?> list, zznd zzndVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzndVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zzjs) {
            this.zza.zzb(i, (zzjs) obj);
        } else {
            this.zza.zza(i, (zzml) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzd(int i, int i2) throws IOException {
        this.zza.zza(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzi(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlf)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzg = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzg += zzkl.zzg(list.get(i3).intValue());
                }
                this.zza.zzc(iZzg);
                while (i2 < list.size()) {
                    this.zza.zza(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zza(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzlf zzlfVar = (zzlf) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzg2 = 0;
            for (int i4 = 0; i4 < zzlfVar.size(); i4++) {
                iZzg2 += zzkl.zzg(zzlfVar.zzb(i4));
            }
            this.zza.zzc(iZzg2);
            while (i2 < zzlfVar.size()) {
                this.zza.zza(zzlfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlfVar.size()) {
            this.zza.zza(i, zzlfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzc(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzj(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlw)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZze = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZze += zzkl.zze(list.get(i3).longValue());
                }
                this.zza.zzc(iZze);
                while (i2 < list.size()) {
                    this.zza.zza(list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zza(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzlw zzlwVar = (zzlw) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZze2 = 0;
            for (int i4 = 0; i4 < zzlwVar.size(); i4++) {
                iZze2 += zzkl.zze(zzlwVar.zzb(i4));
            }
            this.zza.zzc(iZze2);
            while (i2 < zzlwVar.size()) {
                this.zza.zza(zzlwVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlwVar.size()) {
            this.zza.zza(i, zzlwVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zze(int i, int i2) throws IOException {
        this.zza.zzk(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlf)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzh = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzh += zzkl.zzh(list.get(i3).intValue());
                }
                this.zza.zzc(iZzh);
                while (i2 < list.size()) {
                    this.zza.zzk(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzk(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzlf zzlfVar = (zzlf) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzh2 = 0;
            for (int i4 = 0; i4 < zzlfVar.size(); i4++) {
                iZzh2 += zzkl.zzh(zzlfVar.zzb(i4));
            }
            this.zza.zzc(iZzh2);
            while (i2 < zzlfVar.size()) {
                this.zza.zzk(zzlfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlfVar.size()) {
            this.zza.zzk(i, zzlfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlw)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzf = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzf += zzkl.zzf(list.get(i3).longValue());
                }
                this.zza.zzc(iZzf);
                while (i2 < list.size()) {
                    this.zza.zzh(list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzh(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzlw zzlwVar = (zzlw) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzf2 = 0;
            for (int i4 = 0; i4 < zzlwVar.size(); i4++) {
                iZzf2 += zzkl.zzf(zzlwVar.zzb(i4));
            }
            this.zza.zzc(iZzf2);
            while (i2 < zzlwVar.size()) {
                this.zza.zzh(zzlwVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlwVar.size()) {
            this.zza.zzh(i, zzlwVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    @Deprecated
    public final void zzb(int i) throws IOException {
        this.zza.zzc(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zza(int i, String str) throws IOException {
        this.zza.zza(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzb(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (list instanceof zzls) {
            zzls zzlsVar = (zzls) list;
            while (i2 < list.size()) {
                Object objZza = zzlsVar.zza(i2);
                if (objZza instanceof String) {
                    this.zza.zza(i, (String) objZza);
                } else {
                    this.zza.zza(i, (zzjs) objZza);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zza(i, list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzf(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlf)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzj = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzj += zzkl.zzj(list.get(i3).intValue());
                }
                this.zza.zzc(iZzj);
                while (i2 < list.size()) {
                    this.zza.zzc(list.get(i2).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzd(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        zzlf zzlfVar = (zzlf) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzj2 = 0;
            for (int i4 = 0; i4 < zzlfVar.size(); i4++) {
                iZzj2 += zzkl.zzj(zzlfVar.zzb(i4));
            }
            this.zza.zzc(iZzj2);
            while (i2 < zzlfVar.size()) {
                this.zza.zzc(zzlfVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlfVar.size()) {
            this.zza.zzd(i, zzlfVar.zzb(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zze(int i, long j) throws IOException {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzlw)) {
            if (z) {
                this.zza.zzc(i, 2);
                int iZzg = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    iZzg += zzkl.zzg(list.get(i3).longValue());
                }
                this.zza.zzc(iZzg);
                while (i2 < list.size()) {
                    this.zza.zzb(list.get(i2).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                this.zza.zzb(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        zzlw zzlwVar = (zzlw) list;
        if (z) {
            this.zza.zzc(i, 2);
            int iZzg2 = 0;
            for (int i4 = 0; i4 < zzlwVar.size(); i4++) {
                iZzg2 += zzkl.zzg(zzlwVar.zzb(i4));
            }
            this.zza.zzc(iZzg2);
            while (i2 < zzlwVar.size()) {
                this.zza.zzb(zzlwVar.zzb(i2));
                i2++;
            }
            return;
        }
        while (i2 < zzlwVar.size()) {
            this.zza.zzb(i, zzlwVar.zzb(i2));
            i2++;
        }
    }
}
