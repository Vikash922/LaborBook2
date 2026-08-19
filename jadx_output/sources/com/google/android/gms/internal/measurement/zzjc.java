package com.google.android.gms.internal.measurement;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjc {
    private final boolean zza;

    public zzjc(zzjf zzjfVar) {
        Preconditions.checkNotNull(zzjfVar, "BuildInfo must be non-null");
        this.zza = !zzjfVar.zza();
    }

    public final boolean zza(String str) {
        Preconditions.checkNotNull(str, "flagName must not be null");
        if (this.zza) {
            return zzje.zza.get().containsValue(str);
        }
        return true;
    }
}
