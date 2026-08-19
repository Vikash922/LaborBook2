package com.google.android.gms.appset;

import com.amplitude.android.TrackingOptions;
import com.google.android.gms.common.Feature;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zze {
    public static final Feature zza;
    public static final Feature[] zzb;

    static {
        Feature feature = new Feature(TrackingOptions.AMP_TRACKING_OPTION_APP_SET_ID, 1L);
        zza = feature;
        zzb = new Feature[]{feature};
    }
}
