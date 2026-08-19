package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdys implements zzbnt {
    zzdys() {
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final /* bridge */ /* synthetic */ JSONObject zzb(Object obj) throws JSONException {
        zzdyt zzdytVar = (zzdyt) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjr)).booleanValue()) {
            zzbva zzbvaVar = zzdytVar.zzd;
            jSONObject2.put("ad_request_url", zzbvaVar.zzg());
            jSONObject2.put("ad_request_post_body", zzbvaVar.zzf());
        }
        zzbva zzbvaVar2 = zzdytVar.zzd;
        jSONObject2.put("base_url", zzbvaVar2.zzd());
        jSONObject2.put("signals", zzdytVar.zzc);
        zzdyx zzdyxVar = zzdytVar.zzb;
        jSONObject3.put(SDKConstants.PARAM_A2U_BODY, zzdyxVar.zzc);
        jSONObject3.put("headers", com.google.android.gms.ads.internal.client.zzbb.zzb().zzk(zzdyxVar.zzb));
        jSONObject3.put("response_code", zzdyxVar.zza);
        jSONObject3.put("latency", zzdyxVar.zzd);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put(XfdfConstants.FLAGS, zzbvaVar2.zzi());
        return jSONObject;
    }
}
