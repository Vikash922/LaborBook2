package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdgv implements zzhey {
    private final zzhfh zza;

    public zzdgv(zzhfh zzhfhVar, zzhfh zzhfhVar2) {
        this.zza = zzhfhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfn, com.google.android.gms.internal.ads.zzhfm
    public final /* synthetic */ Object zzb() {
        VersionInfoParcel versionInfoParcelZza = ((zzchg) this.zza).zza();
        com.google.android.gms.ads.internal.zzv.zzq();
        return new zzayd(UUID.randomUUID().toString(), versionInfoParcelZza, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, new JSONObject(), false, true);
    }
}
