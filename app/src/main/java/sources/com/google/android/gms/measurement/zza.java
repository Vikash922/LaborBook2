package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzhw;
import com.google.android.gms.measurement.internal.zzjg;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzok;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zza extends AppMeasurement.zza {
    private final zzhw zza;
    private final zzjk zzb;

    @Override // com.google.android.gms.measurement.internal.zzky
    public final int zza(String str) {
        return zzjk.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final long zza() {
        return this.zza.zzt().zzm();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Boolean zzb() {
        return this.zzb.zzac();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Double zzc() {
        return this.zzb.zzad();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Integer zzd() {
        return this.zzb.zzae();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Long zze() {
        return this.zzb.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final Object zza(int i) {
        if (i == 0) {
            return zzj();
        }
        if (i == 1) {
            return zze();
        }
        if (i == 2) {
            return zzc();
        }
        if (i == 3) {
            return zzd();
        }
        if (i != 4) {
            return null;
        }
        return zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final String zzf() {
        return this.zzb.zzag();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final String zzg() {
        return this.zzb.zzah();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final String zzh() {
        return this.zzb.zzai();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final String zzi() {
        return this.zzb.zzag();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final String zzj() {
        return this.zzb.zzak();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final List<Bundle> zza(String str, String str2) {
        return this.zzb.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Map<String, Object> zza(boolean z) {
        List<zzok> listZza = this.zzb.zza(z);
        ArrayMap arrayMap = new ArrayMap(listZza.size());
        for (zzok zzokVar : listZza) {
            Object objZza = zzokVar.zza();
            if (objZza != null) {
                arrayMap.put(zzokVar.zza, objZza);
            }
        }
        return arrayMap;
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final Map<String, Object> zza(String str, String str2, boolean z) {
        return this.zzb.zza(str, str2, z);
    }

    public zza(zzhw zzhwVar) {
        super();
        Preconditions.checkNotNull(zzhwVar);
        this.zza = zzhwVar;
        this.zzb = zzhwVar.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zzb(String str) {
        this.zza.zze().zza(str, this.zza.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zzc(String str) {
        this.zza.zze().zzb(str, this.zza.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zzb(String str, String str2, Bundle bundle) {
        this.zzb.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(String str, String str2, Bundle bundle, long j) {
        this.zzb.zza(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(zzjj zzjjVar) {
        this.zzb.zza(zzjjVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(Bundle bundle) {
        this.zzb.zzc(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(zzjg zzjgVar) {
        this.zzb.zza(zzjgVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zzb(zzjj zzjjVar) {
        this.zzb.zzb(zzjjVar);
    }
}
