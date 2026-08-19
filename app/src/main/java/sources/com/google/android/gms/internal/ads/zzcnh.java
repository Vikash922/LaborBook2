package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.svg.SvgConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnh {
    private final zzdre zza;
    private final zzfbg zzb;

    zzcnh(zzdre zzdreVar, zzfbg zzfbgVar) {
        this.zza = zzdreVar;
        this.zzb = zzfbgVar;
    }

    public final void zza(long j, int i) {
        zzdrd zzdrdVarZza = this.zza.zza();
        zzdrdVarZza.zzd(this.zzb.zzb.zzb);
        zzdrdVarZza.zzb("action", "ad_closed");
        zzdrdVarZza.zzb("show_time", String.valueOf(j));
        zzdrdVarZza.zzb(FirebaseAnalytics.Param.AD_FORMAT, "app_open_ad");
        int i2 = i - 1;
        zzdrdVarZza.zzb("acr", i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H);
        zzdrdVarZza.zzj();
    }
}
