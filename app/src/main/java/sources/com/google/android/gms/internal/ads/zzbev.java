package com.google.android.gms.internal.ads;

import org.shadow.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-api@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbev {
    public static final zzbds zza;

    static {
        zzbds.zzb("gads:ad_loader:timeout_ms", DateUtils.MILLIS_PER_MINUTE);
        zza = zzbds.zzb("gads:rendering:timeout_ms", DateUtils.MILLIS_PER_MINUTE);
        zzbds.zzb("gads:resolve_future:default_timeout_ms", 30000L);
    }
}
