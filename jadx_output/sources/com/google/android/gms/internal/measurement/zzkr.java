package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzkx;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzkr<T extends zzkx<T>> {
    zzkr() {
    }

    abstract int zza(Map.Entry<?, ?> entry);

    abstract zzkv<T> zza(Object obj);

    abstract Object zza(zzkp zzkpVar, zzml zzmlVar, int i);

    abstract <UT, UB> UB zza(Object obj, zzna zznaVar, Object obj2, zzkp zzkpVar, zzkv<T> zzkvVar, UB ub, zznx<UT, UB> zznxVar) throws IOException;

    abstract void zza(zzjs zzjsVar, Object obj, zzkp zzkpVar, zzkv<T> zzkvVar) throws IOException;

    abstract void zza(zzna zznaVar, Object obj, zzkp zzkpVar, zzkv<T> zzkvVar) throws IOException;

    abstract void zza(zzos zzosVar, Map.Entry<?, ?> entry) throws IOException;

    abstract boolean zza(zzml zzmlVar);

    abstract zzkv<T> zzb(Object obj);

    abstract void zzc(Object obj);
}
