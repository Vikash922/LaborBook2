package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzfun;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public class CsiParamDefaults {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public CsiParamDefaults(Context context, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = versionInfoParcel.afmaVersion;
    }

    public void set(Map<String, String> map) {
        map.put(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, "gmob_sdk");
        map.put(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_V, ExifInterface.GPS_MEASUREMENT_3D);
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzv.zzq();
        map.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, zzs.zzs());
        map.put("app", this.zzb);
        zzv.zzq();
        Context context = this.zza;
        boolean zZzF = zzs.zzF(context);
        String str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        map.put("is_lite_sdk", true != zZzF ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzbbz zzbbzVar = zzbci.zza;
        List listZzb = zzbd.zza().zzb();
        if (((Boolean) zzbd.zzc().zzb(zzbci.zzgP)).booleanValue()) {
            listZzb.addAll(zzv.zzp().zzi().zzg().zzd());
        }
        map.put("e", TextUtils.join(",", listZzb));
        map.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, this.zzc);
        if (((Boolean) zzbd.zzc().zzb(zzbci.zzlu)).booleanValue()) {
            zzv.zzq();
            if (true == zzs.zzC(context)) {
                str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            }
            map.put("is_bstar", str);
        }
        if (((Boolean) zzbd.zzc().zzb(zzbci.zzjy)).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbci.zzcz)).booleanValue()) {
                map.put("plugin", zzfun.zzc(zzv.zzp().zzn()));
            }
        }
    }
}
