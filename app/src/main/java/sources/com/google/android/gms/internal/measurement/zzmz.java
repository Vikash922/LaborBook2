package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmz {
    private static final zzmz zza = new zzmz();
    private final ConcurrentMap<Class<?>, zznd<?>> zzc = new ConcurrentHashMap();
    private final zznc zzb = new zzlz();

    public static zzmz zza() {
        return zza;
    }

    public final <T> zznd<T> zza(Class<T> cls) {
        zzle.zza(cls, "messageType");
        zznd<T> zzndVar = (zznd) this.zzc.get(cls);
        if (zzndVar != null) {
            return zzndVar;
        }
        zznd<T> zzndVarZza = this.zzb.zza(cls);
        zzle.zza(cls, "messageType");
        zzle.zza(zzndVarZza, "schema");
        zznd<T> zzndVar2 = (zznd) this.zzc.putIfAbsent(cls, zzndVarZza);
        return zzndVar2 != null ? zzndVar2 : zzndVarZza;
    }

    public final <T> zznd<T> zza(T t) {
        return zza((Class) t.getClass());
    }

    private zzmz() {
    }
}
