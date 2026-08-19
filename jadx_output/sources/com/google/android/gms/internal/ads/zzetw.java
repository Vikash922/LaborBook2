package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.amplitude.android.TrackingOptions;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzetw implements zzesu {
    private final AdvertisingIdClient.Info zza;
    private final String zzb;
    private final zzfqj zzc;

    public zzetw(AdvertisingIdClient.Info info, String str, zzfqj zzfqjVar) {
        this.zza = info;
        this.zzb = str;
        this.zzc = zzfqjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            JSONObject jSONObjectZzg = com.google.android.gms.ads.internal.util.zzbs.zzg((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.zza;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                String str = this.zzb;
                if (str != null) {
                    jSONObjectZzg.put("pdid", str);
                    jSONObjectZzg.put("pdidtype", "ssaid");
                    return;
                }
                return;
            }
            jSONObjectZzg.put("rdid", info.getId());
            jSONObjectZzg.put("is_lat", info.isLimitAdTrackingEnabled());
            jSONObjectZzg.put("idtype", TrackingOptions.AMP_TRACKING_OPTION_ADID);
            zzfqj zzfqjVar = this.zzc;
            if (zzfqjVar.zzc()) {
                jSONObjectZzg.put("paidv1_id_android_3p", zzfqjVar.zzb());
                jSONObjectZzg.put("paidv1_creation_time_android_3p", zzfqjVar.zza());
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
