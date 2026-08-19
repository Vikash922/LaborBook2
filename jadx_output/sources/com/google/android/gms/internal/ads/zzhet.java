package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzhet {
    final LinkedHashMap zza;

    zzhet(int i) {
        this.zza = zzhev.zzb(i);
    }

    final zzhet zza(Object obj, zzhfh zzhfhVar) {
        zzhfg.zza(obj, "key");
        zzhfg.zza(zzhfhVar, "provider");
        this.zza.put(obj, zzhfhVar);
        return this;
    }
}
