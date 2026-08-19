package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekq implements zzesu {
    private final boolean zza;

    public zzekq(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ((zzcue) obj).zza.putString("adid_p", true != this.zza ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }
}
