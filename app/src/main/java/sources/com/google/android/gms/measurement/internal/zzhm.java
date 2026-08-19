package com.google.android.gms.measurement.internal;

import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhm extends LruCache<String, com.google.android.gms.internal.measurement.zzb> {
    private final /* synthetic */ zzhg zza;

    @Override // androidx.collection.LruCache
    protected final /* synthetic */ com.google.android.gms.internal.measurement.zzb create(String str) {
        String str2 = str;
        Preconditions.checkNotEmpty(str2);
        return zzhg.zza(this.zza, str2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhm(zzhg zzhgVar, int i) {
        super(20);
        this.zza = zzhgVar;
    }
}
