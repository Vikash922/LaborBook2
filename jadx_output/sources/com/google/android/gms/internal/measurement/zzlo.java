package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlo<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzlp> zza;

    public final zzlp zza() {
        return this.zza.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zza.getValue() == null) {
            return null;
        }
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof zzml)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        return this.zza.getValue().zza((zzml) obj);
    }

    private zzlo(Map.Entry<K, zzlp> entry) {
        this.zza = entry;
    }
}
