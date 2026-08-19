package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqy {
    private final ConcurrentHashMap zza;
    private final zzbze zzb;
    private final zzfbp zzc;
    private final String zzd;
    private final String zze;
    private final com.google.android.gms.ads.internal.zzk zzf;
    private final Bundle zzg = new Bundle();
    private final Context zzh;

    public zzdqy(Context context, zzdrj zzdrjVar, zzbze zzbzeVar, zzfbp zzfbpVar, String str, String str2, com.google.android.gms.ads.internal.zzk zzkVar) {
        ActivityManager.MemoryInfo memoryInfoZzc;
        ConcurrentHashMap concurrentHashMapZzc = zzdrjVar.zzc();
        this.zza = concurrentHashMapZzc;
        this.zzb = zzbzeVar;
        this.zzc = zzfbpVar;
        this.zzd = str;
        this.zze = str2;
        this.zzf = zzkVar;
        this.zzh = context;
        concurrentHashMapZzc.put(FirebaseAnalytics.Param.AD_FORMAT, str2.toUpperCase(Locale.ROOT));
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjE)).booleanValue();
        String str3 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        if (zBooleanValue) {
            int iZzp = zzkVar.zzp();
            int i = iZzp - 1;
            if (iZzp == 0) {
                throw null;
            }
            concurrentHashMapZzc.put("asv", i != 0 ? i != 1 ? "na" : ExifInterface.GPS_MEASUREMENT_2D : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzcq)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            zzd("rt_f", String.valueOf(runtime.freeMemory()));
            zzd("rt_m", String.valueOf(runtime.maxMemory()));
            zzd("rt_t", String.valueOf(runtime.totalMemory()));
            zzd("wv_c", String.valueOf(com.google.android.gms.ads.internal.zzv.zzp().zzb()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzcv)).booleanValue() && (memoryInfoZzc = com.google.android.gms.ads.internal.util.client.zzf.zzc(context)) != null) {
                zzd("mem_avl", String.valueOf(memoryInfoZzc.availMem));
                zzd("mem_tt", String.valueOf(memoryInfoZzc.totalMem));
                zzd("low_m", true != memoryInfoZzc.lowMemory ? AppEventsConstants.EVENT_PARAM_VALUE_NO : str3);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzgT)).booleanValue()) {
            int iZzg = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzg(zzfbpVar) - 1;
            if (iZzg == 0) {
                concurrentHashMapZzc.put(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str);
                concurrentHashMapZzc.put("scar", "false");
                return;
            }
            if (iZzg == 1) {
                concurrentHashMapZzc.put(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str);
                concurrentHashMapZzc.put("se", "query_g");
            } else if (iZzg == 2) {
                concurrentHashMapZzc.put("se", "r_adinfo");
            } else if (iZzg != 3) {
                concurrentHashMapZzc.put("se", "r_both");
            } else {
                concurrentHashMapZzc.put("se", "r_adstring");
            }
            concurrentHashMapZzc.put("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            zzd("ragent", zzfbpVar.zzd.zzp);
            zzd("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfbpVar.zzd)));
        }
    }

    public final Bundle zza() {
        return this.zzg;
    }

    public final Map zzb() {
        return this.zza;
    }

    public final void zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zznn)).booleanValue()) {
            zzd("brr", true != this.zzc.zzp ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
    }

    public final void zzd(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.zza.put(str, str2);
    }

    public final void zze(zzfbg zzfbgVar) {
        zzfbf zzfbfVar = zzfbgVar.zzb;
        List list = zzfbfVar.zza;
        if (!list.isEmpty()) {
            int i = ((zzfau) list.get(0)).zzb;
            zzd(FirebaseAnalytics.Param.AD_FORMAT, zzfau.zza(i));
            if (i == 6) {
                this.zza.put("as", true != this.zzb.zzm() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
            }
        }
        zzd("gqi", zzfbfVar.zzb.zzb);
    }

    public final void zzf(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("cnt")) {
            zzd("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            zzd("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
