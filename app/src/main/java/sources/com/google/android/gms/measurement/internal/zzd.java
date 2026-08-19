package com.google.android.gms.measurement.internal;

import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzd {
    private final zzjb zza;

    static zzd zza(String str) {
        return new zzd((TextUtils.isEmpty(str) || str.length() > 1) ? zzjb.UNINITIALIZED : zzjc.zza(str.charAt(0)));
    }

    final zzjb zza() {
        return this.zza;
    }

    final String zzb() {
        return String.valueOf(zzjc.zza(this.zza));
    }

    zzd(zzjb zzjbVar) {
        this.zza = zzjbVar;
    }
}
