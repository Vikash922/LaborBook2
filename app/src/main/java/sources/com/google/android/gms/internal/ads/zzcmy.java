package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmy implements zzhey {
    private final zzhfh zza;
    private final zzhfh zzb;
    private final zzhfh zzc;

    public zzcmy(zzhfh zzhfhVar, zzhfh zzhfhVar2, zzhfh zzhfhVar3) {
        this.zza = zzhfhVar;
        this.zzb = zzhfhVar2;
        this.zzc = zzhfhVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfn, com.google.android.gms.internal.ads.zzhfm
    public final /* bridge */ /* synthetic */ Object zzb() {
        VersionInfoParcel versionInfoParcelZza = ((zzchg) this.zza).zza();
        JSONObject jSONObject = (JSONObject) this.zzb.zzb();
        String str = (String) this.zzc.zzb();
        boolean zEquals = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str);
        com.google.android.gms.ads.internal.zzv.zzq();
        return new zzayd(UUID.randomUUID().toString(), versionInfoParcelZza, str, jSONObject, false, zEquals);
    }
}
