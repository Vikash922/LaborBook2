package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzmd<K, V> {
    static <K, V> int zza(zzmc<K, V> zzmcVar, K k, V v) {
        return zzkv.zza(zzmcVar.zza, 1, k) + zzkv.zza(zzmcVar.zzc, 2, v);
    }

    static <K, V> void zza(zzkl zzklVar, zzmc<K, V> zzmcVar, K k, V v) throws IOException {
        zzkv.zza(zzklVar, zzmcVar.zza, 1, k);
        zzkv.zza(zzklVar, zzmcVar.zzc, 2, v);
    }
}
