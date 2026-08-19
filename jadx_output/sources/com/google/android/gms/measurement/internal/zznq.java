package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.amplitude.android.TrackingOptions;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzrw;
import java.util.HashMap;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zznq extends zzno {
    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzno
    public final /* bridge */ /* synthetic */ zzv zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ zzac zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzah zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzno
    public final /* bridge */ /* synthetic */ zzam zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzbb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ zzgi zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzgu zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzno
    public final /* bridge */ /* synthetic */ zzhg zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ zzhp zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzno
    public final /* bridge */ /* synthetic */ zzms zzn() {
        return super.zzn();
    }

    public final zzns zza(String str) {
        zzh zzhVarZze;
        if (zzrw.zza() && zze().zza(zzbj.zzbw)) {
            zzq();
            if (zzop.zzf(str)) {
                zzj().zzp().zza("sgtm feature flag enabled.");
                zzh zzhVarZze2 = zzh().zze(str);
                if (zzhVarZze2 == null) {
                    return new zzns(zzb(str), zznt.GOOGLE_ANALYTICS);
                }
                String strZzad = zzhVarZze2.zzad();
                zzfx.zzd zzdVarZzc = zzm().zzc(str);
                if (zzdVarZzc == null || (zzhVarZze = zzh().zze(str)) == null || ((!zzdVarZzc.zzr() || zzdVarZzc.zzh().zza() != 100) && !zzq().zzd(str, zzhVarZze.zzam()) && (TextUtils.isEmpty(strZzad) || strZzad.hashCode() % 100 >= zzdVarZzc.zzh().zza()))) {
                    return new zzns(zzb(str), zznt.GOOGLE_ANALYTICS);
                }
                zzns zznsVar = null;
                if (zzhVarZze2.zzat()) {
                    zzj().zzp().zza("sgtm upload enabled in manifest.");
                    zzfx.zzd zzdVarZzc2 = zzm().zzc(zzhVarZze2.zzac());
                    if (zzdVarZzc2 != null && zzdVarZzc2.zzr()) {
                        String strZze = zzdVarZzc2.zzh().zze();
                        if (!TextUtils.isEmpty(strZze)) {
                            String strZzd = zzdVarZzc2.zzh().zzd();
                            zzj().zzp().zza("sgtm configured with upload_url, server_info", strZze, TextUtils.isEmpty(strZzd) ? "Y" : "N");
                            if (TextUtils.isEmpty(strZzd)) {
                                zznsVar = new zzns(strZze, zznt.SGTM);
                            } else {
                                HashMap map = new HashMap();
                                map.put("x-sgtm-server-info", strZzd);
                                if (!TextUtils.isEmpty(zzhVarZze2.zzam())) {
                                    map.put("x-gtm-server-preview", zzhVarZze2.zzam());
                                }
                                zznsVar = new zzns(strZze, map, zznt.SGTM);
                            }
                        }
                    }
                }
                if (zznsVar != null) {
                    return zznsVar;
                }
            }
        }
        return new zzns(zzb(str), zznt.GOOGLE_ANALYTICS);
    }

    @Override // com.google.android.gms.measurement.internal.zzno
    public final /* bridge */ /* synthetic */ zznq zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzno
    /* JADX INFO: renamed from: g_ */
    public final /* bridge */ /* synthetic */ zzol mo158g_() {
        return super.mo158g_();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzop zzq() {
        return super.zzq();
    }

    public final String zza(zzh zzhVar) {
        Uri.Builder builder = new Uri.Builder();
        String strZzah = zzhVar.zzah();
        if (TextUtils.isEmpty(strZzah)) {
            strZzah = zzhVar.zzaa();
        }
        builder.scheme(zzbj.zze.zza(null)).encodedAuthority(zzbj.zzf.zza(null)).path("config/app/" + strZzah).appendQueryParameter(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "android").appendQueryParameter("gmp_version", "102001").appendQueryParameter("runtime_version", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        return builder.build().toString();
    }

    private final String zzb(String str) {
        String strZzf = zzm().zzf(str);
        if (!TextUtils.isEmpty(strZzf)) {
            Uri uri = Uri.parse(zzbj.zzq.zza(null));
            Uri.Builder builderBuildUpon = uri.buildUpon();
            builderBuildUpon.authority(strZzf + "." + uri.getAuthority());
            return builderBuildUpon.build().toString();
        }
        return zzbj.zzq.zza(null);
    }

    zznq(zznv zznvVar) {
        super(zznvVar);
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }
}
