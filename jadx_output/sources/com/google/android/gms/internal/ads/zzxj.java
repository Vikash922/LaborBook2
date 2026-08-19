package com.google.android.gms.internal.ads;

import androidx.work.WorkRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxj {
    private final zzdg zza = zzdg.zza;

    protected final zzxk zza(zzbm zzbmVar, int[] iArr, int i, zzzd zzzdVar, zzfww zzfwwVar) {
        return new zzxk(zzbmVar, iArr, 0, zzzdVar, WorkRequest.MIN_BACKOFF_MILLIS, 25000L, 25000L, 1279, 719, 0.7f, 0.75f, zzfwwVar, this.zza);
    }
}
