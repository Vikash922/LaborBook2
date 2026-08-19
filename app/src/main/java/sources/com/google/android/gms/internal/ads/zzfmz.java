package com.google.android.gms.internal.ads;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfmz {
    public static zzasu zza(Context context, String str, String str2) {
        return new zzfmy(context, str, str2).zzb(AdConfig.DEFAULT_AD_QUALITY_RETRY_INTERVAL);
    }
}
