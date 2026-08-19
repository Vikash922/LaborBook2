package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.amplitude.android.TrackingOptions;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzpp;
import com.google.android.gms.internal.measurement.zzqn;
import com.google.android.gms.internal.measurement.zzrl;
import com.google.android.gms.internal.measurement.zzrq;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.measurement.internal.zzjc;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.checkerframework.dataflow.qual.Pure;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzol extends zznr {
    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    static int zza(zzgn.zzk.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i = 0; i < zzaVar.zzd(); i++) {
            if (str.equals(zzaVar.zzk(i).zzg())) {
                return i;
            }
        }
        return -1;
    }

    final long zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return zza(str.getBytes(Charset.forName("UTF-8")));
    }

    final long zza(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzq().zzt();
        MessageDigest messageDigestZzu = zzop.zzu();
        if (messageDigestZzu == null) {
            zzj().zzg().zza("Failed to get MD5");
            return 0L;
        }
        return zzop.zza(messageDigestZzu.digest(bArr));
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    static Bundle zza(List<zzgn.zzh> list) {
        Bundle bundle = new Bundle();
        for (zzgn.zzh zzhVar : list) {
            String strZzg = zzhVar.zzg();
            if (zzhVar.zzj()) {
                bundle.putDouble(strZzg, zzhVar.zza());
            } else if (zzhVar.zzk()) {
                bundle.putFloat(strZzg, zzhVar.zzb());
            } else if (zzhVar.zzn()) {
                bundle.putString(strZzg, zzhVar.zzh());
            } else if (zzhVar.zzl()) {
                bundle.putLong(strZzg, zzhVar.zzd());
            }
        }
        return bundle;
    }

    private final Bundle zza(Map<String, Object> map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    arrayList2.add(zza((Map<String, Object>) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    final <T extends Parcelable> T zza(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            zzj().zzg().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
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

    final zzbh zza(com.google.android.gms.internal.measurement.zzad zzadVar) {
        String string;
        Object obj;
        Bundle bundleZza = zza(zzadVar.zzc(), true);
        if (bundleZza.containsKey("_o") && (obj = bundleZza.get("_o")) != null) {
            string = obj.toString();
        } else {
            string = "app";
        }
        String str = string;
        String strZzb = zzjf.zzb(zzadVar.zzb());
        if (strZzb == null) {
            strZzb = zzadVar.zzb();
        }
        return new zzbh(strZzb, new zzbc(bundleZza), str, zzadVar.zza());
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

    final zznk zza(String str, zzgn.zzk.zza zzaVar, zzgn.zzf.zza zzaVar2, String str2) {
        int iIndexOf;
        if (!zzrl.zza() || !zze().zze(str, zzbj.zzcg)) {
            return null;
        }
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        String[] strArrSplit = zze().zzd(str, zzbj.zzbg).split(",");
        HashSet hashSet = new HashSet(strArrSplit.length);
        for (String str3 : strArrSplit) {
            if (!hashSet.add(Objects.requireNonNull(str3))) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        zznq zznqVarZzo = zzo();
        String strZzf = zznqVarZzo.zzm().zzf(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(zznqVarZzo.zze().zzd(str, zzbj.zzaz));
        if (!TextUtils.isEmpty(strZzf)) {
            builder.authority(strZzf + "." + zznqVarZzo.zze().zzd(str, zzbj.zzba));
        } else {
            builder.authority(zznqVarZzo.zze().zzd(str, zzbj.zzba));
        }
        builder.path(zznqVarZzo.zze().zzd(str, zzbj.zzbb));
        zza(builder, "gmp_app_id", zzaVar.zzx(), (Set<String>) setUnmodifiableSet);
        zza(builder, "gmp_version", "102001", (Set<String>) setUnmodifiableSet);
        String strZzu = zzaVar.zzu();
        if (zze().zze(str, zzbj.zzcj) && zzm().zzp(str)) {
            strZzu = "";
        }
        zza(builder, "app_instance_id", strZzu, (Set<String>) setUnmodifiableSet);
        zza(builder, "rdid", zzaVar.zzz(), (Set<String>) setUnmodifiableSet);
        zza(builder, "bundle_id", zzaVar.zzt(), (Set<String>) setUnmodifiableSet);
        String strZze = zzaVar2.zze();
        String strZza = zzjf.zza(strZze);
        if (!TextUtils.isEmpty(strZza)) {
            strZze = strZza;
        }
        zza(builder, "app_event_name", strZze, (Set<String>) setUnmodifiableSet);
        zza(builder, ConstantEventAttributes.APP_VERSION, String.valueOf(zzaVar.zzb()), (Set<String>) setUnmodifiableSet);
        String strZzy = zzaVar.zzy();
        if (zze().zze(str, zzbj.zzcj) && zzm().zzt(str) && !TextUtils.isEmpty(strZzy) && (iIndexOf = strZzy.indexOf(".")) != -1) {
            strZzy = strZzy.substring(0, iIndexOf);
        }
        zza(builder, TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, strZzy, (Set<String>) setUnmodifiableSet);
        zza(builder, SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, String.valueOf(zzaVar2.zzc()), (Set<String>) setUnmodifiableSet);
        boolean zZzad = zzaVar.zzad();
        String str4 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        if (zZzad) {
            zza(builder, "lat", AppEventsConstants.EVENT_PARAM_VALUE_YES, (Set<String>) setUnmodifiableSet);
        }
        zza(builder, "privacy_sandbox_version", String.valueOf(zzaVar.zza()), (Set<String>) setUnmodifiableSet);
        zza(builder, "trigger_uri_source", AppEventsConstants.EVENT_PARAM_VALUE_YES, (Set<String>) setUnmodifiableSet);
        zza(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), (Set<String>) setUnmodifiableSet);
        zza(builder, "request_uuid", str2, (Set<String>) setUnmodifiableSet);
        List<zzgn.zzh> listZzf = zzaVar2.zzf();
        Bundle bundle = new Bundle();
        for (zzgn.zzh zzhVar : listZzf) {
            String strZzg = zzhVar.zzg();
            if (zzhVar.zzj()) {
                bundle.putString(strZzg, String.valueOf(zzhVar.zza()));
            } else if (zzhVar.zzk()) {
                bundle.putString(strZzg, String.valueOf(zzhVar.zzb()));
            } else if (zzhVar.zzn()) {
                bundle.putString(strZzg, zzhVar.zzh());
            } else if (zzhVar.zzl()) {
                bundle.putString(strZzg, String.valueOf(zzhVar.zzd()));
            }
        }
        zza(builder, zze().zzd(str, zzbj.zzbf).split("\\|"), bundle, (Set<String>) setUnmodifiableSet);
        List<zzgn.zzo> listZzab = zzaVar.zzab();
        Bundle bundle2 = new Bundle();
        for (zzgn.zzo zzoVar : listZzab) {
            String strZzg2 = zzoVar.zzg();
            if (zzoVar.zzi()) {
                bundle2.putString(strZzg2, String.valueOf(zzoVar.zza()));
            } else if (zzoVar.zzj()) {
                bundle2.putString(strZzg2, String.valueOf(zzoVar.zzb()));
            } else if (zzoVar.zzm()) {
                bundle2.putString(strZzg2, zzoVar.zzh());
            } else if (zzoVar.zzk()) {
                bundle2.putString(strZzg2, String.valueOf(zzoVar.zzc()));
            }
        }
        zza(builder, zze().zzd(str, zzbj.zzbe).split("\\|"), bundle2, (Set<String>) setUnmodifiableSet);
        if (!zzaVar.zzac()) {
            str4 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        zza(builder, TrackingOptions.AMP_TRACKING_OPTION_DMA, str4, (Set<String>) setUnmodifiableSet);
        if (!zzaVar.zzw().isEmpty()) {
            zza(builder, "dma_cps", zzaVar.zzw(), (Set<String>) setUnmodifiableSet);
        }
        if (zze().zza(zzbj.zzcl) && zzaVar.zzae()) {
            zzgn.zza zzaVarZzg = zzaVar.zzg();
            if (!zzaVarZzg.zzh().isEmpty()) {
                zza(builder, "dl_gclid", zzaVarZzg.zzh(), (Set<String>) setUnmodifiableSet);
            }
            if (!zzaVarZzg.zzg().isEmpty()) {
                zza(builder, "dl_gbraid", zzaVarZzg.zzg(), (Set<String>) setUnmodifiableSet);
            }
            if (!zzaVarZzg.zzf().isEmpty()) {
                zza(builder, "dl_gs", zzaVarZzg.zzf(), (Set<String>) setUnmodifiableSet);
            }
            if (zzaVarZzg.zza() > 0) {
                zza(builder, "dl_ss_ts", String.valueOf(zzaVarZzg.zza()), (Set<String>) setUnmodifiableSet);
            }
            if (!zzaVarZzg.zzk().isEmpty()) {
                zza(builder, "mr_gclid", zzaVarZzg.zzk(), (Set<String>) setUnmodifiableSet);
            }
            if (!zzaVarZzg.zzj().isEmpty()) {
                zza(builder, "mr_gbraid", zzaVarZzg.zzj(), (Set<String>) setUnmodifiableSet);
            }
            if (!zzaVarZzg.zzi().isEmpty()) {
                zza(builder, "mr_gs", zzaVarZzg.zzi(), (Set<String>) setUnmodifiableSet);
            }
            if (zzaVarZzg.zzb() > 0) {
                zza(builder, "mr_click_ts", String.valueOf(zzaVarZzg.zzb()), (Set<String>) setUnmodifiableSet);
            }
        }
        return new zznk(builder.build().toString(), jCurrentTimeMillis, 1);
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

    final zzgn.zzf zza(zzba zzbaVar) {
        zzgn.zzf.zza zzaVarZza = zzgn.zzf.zze().zza(zzbaVar.zze);
        for (String str : zzbaVar.zzf) {
            zzgn.zzh.zza zzaVarZza2 = zzgn.zzh.zze().zza(str);
            Object objZzc = zzbaVar.zzf.zzc(str);
            Preconditions.checkNotNull(objZzc);
            zza(zzaVarZza2, objZzc);
            zzaVarZza.zza(zzaVarZza2);
        }
        if (zze().zza(zzbj.zzdm) && !TextUtils.isEmpty(zzbaVar.zzc) && zzbaVar.zzf.zzc("_o") == null) {
            zzaVarZza.zza((zzgn.zzh) ((com.google.android.gms.internal.measurement.zzlc) zzgn.zzh.zze().zza("_o").zzb(zzbaVar.zzc).zzai()));
        }
        return (zzgn.zzf) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZza.zzai());
    }

    static zzgn.zzh zza(zzgn.zzf zzfVar, String str) {
        for (zzgn.zzh zzhVar : zzfVar.zzh()) {
            if (zzhVar.zzg().equals(str)) {
                return zzhVar;
            }
        }
        return null;
    }

    static <BuilderT extends com.google.android.gms.internal.measurement.zzmk> BuilderT zza(BuilderT buildert, byte[] bArr) throws com.google.android.gms.internal.measurement.zzlk {
        com.google.android.gms.internal.measurement.zzkp zzkpVarZza = com.google.android.gms.internal.measurement.zzkp.zza();
        if (zzkpVarZza != null) {
            return (BuilderT) buildert.zza(bArr, zzkpVarZza);
        }
        return (BuilderT) buildert.zza(bArr);
    }

    static Object zzb(zzgn.zzf zzfVar, String str) {
        zzgn.zzh zzhVarZza = zza(zzfVar, str);
        if (zzhVarZza == null) {
            return null;
        }
        if (zzhVarZza.zzn()) {
            return zzhVarZza.zzh();
        }
        if (zzhVarZza.zzl()) {
            return Long.valueOf(zzhVarZza.zzd());
        }
        if (zzhVarZza.zzj()) {
            return Double.valueOf(zzhVarZza.zza());
        }
        if (zzhVarZza.zzc() > 0) {
            return zzb(zzhVarZza.zzi());
        }
        return null;
    }

    static Object zza(zzgn.zzf zzfVar, String str, Object obj) {
        Object objZzb = zzb(zzfVar, str);
        return objZzb == null ? obj : objZzb;
    }

    final String zza(zzgn.zzj zzjVar) {
        zzgn.zzc zzcVarZzv;
        if (zzjVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (zzrw.zza() && zze().zza(zzbj.zzbw) && zzjVar.zza() > 0) {
            zzq();
            if (zzop.zzf(zzjVar.zza(0).zzz())) {
                if (zzjVar.zzh()) {
                    zza(sb, 0, "upload_subdomain", zzjVar.zze());
                }
                if (zzjVar.zzg()) {
                    zza(sb, 0, "sgtm_join_id", zzjVar.zzd());
                }
            }
        }
        for (zzgn.zzk zzkVar : zzjVar.zzf()) {
            if (zzkVar != null) {
                zza(sb, 1);
                sb.append("bundle {\n");
                if (zzkVar.zzbp()) {
                    zza(sb, 1, "protocol_version", Integer.valueOf(zzkVar.zzf()));
                }
                if (zzrq.zza() && zze().zze(zzkVar.zzz(), zzbj.zzbv) && zzkVar.zzbs()) {
                    zza(sb, 1, "session_stitching_token", zzkVar.zzao());
                }
                zza(sb, 1, TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, zzkVar.zzam());
                if (zzkVar.zzbk()) {
                    zza(sb, 1, "gmp_version", Long.valueOf(zzkVar.zzn()));
                }
                if (zzkVar.zzbx()) {
                    zza(sb, 1, "uploading_gmp_version", Long.valueOf(zzkVar.zzt()));
                }
                if (zzkVar.zzbi()) {
                    zza(sb, 1, "dynamite_version", Long.valueOf(zzkVar.zzl()));
                }
                if (zzkVar.zzbb()) {
                    zza(sb, 1, "config_version", Long.valueOf(zzkVar.zzj()));
                }
                zza(sb, 1, "gmp_app_id", zzkVar.zzaj());
                zza(sb, 1, "admob_app_id", zzkVar.zzy());
                zza(sb, 1, "app_id", zzkVar.zzz());
                zza(sb, 1, ConstantEventAttributes.APP_VERSION, zzkVar.zzac());
                if (zzkVar.zzay()) {
                    zza(sb, 1, "app_version_major", Integer.valueOf(zzkVar.zzb()));
                }
                zza(sb, 1, "firebase_instance_id", zzkVar.zzai());
                if (zzkVar.zzbg()) {
                    zza(sb, 1, "dev_cert_hash", Long.valueOf(zzkVar.zzk()));
                }
                zza(sb, 1, "app_store", zzkVar.zzab());
                if (zzkVar.zzbw()) {
                    zza(sb, 1, "upload_timestamp_millis", Long.valueOf(zzkVar.zzs()));
                }
                if (zzkVar.zzbt()) {
                    zza(sb, 1, "start_timestamp_millis", Long.valueOf(zzkVar.zzq()));
                }
                if (zzkVar.zzbj()) {
                    zza(sb, 1, "end_timestamp_millis", Long.valueOf(zzkVar.zzm()));
                }
                if (zzkVar.zzbo()) {
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzkVar.zzp()));
                }
                if (zzkVar.zzbn()) {
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzkVar.zzo()));
                }
                zza(sb, 1, "app_instance_id", zzkVar.zzaa());
                zza(sb, 1, "resettable_device_id", zzkVar.zzan());
                zza(sb, 1, "ds_id", zzkVar.zzah());
                if (zzkVar.zzbm()) {
                    zza(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzkVar.zzav()));
                }
                zza(sb, 1, TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, zzkVar.zzal());
                zza(sb, 1, TrackingOptions.AMP_TRACKING_OPTION_DEVICE_MODEL, zzkVar.zzag());
                zza(sb, 1, "user_default_language", zzkVar.zzap());
                if (zzkVar.zzbv()) {
                    zza(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzkVar.zzh()));
                }
                if (zzkVar.zzba()) {
                    zza(sb, 1, "bundle_sequential_index", Integer.valueOf(zzkVar.zzc()));
                }
                if (zzrw.zza()) {
                    zzq();
                    if (zzop.zzf(zzkVar.zzz()) && zze().zza(zzbj.zzbw) && zzkVar.zzbf()) {
                        zza(sb, 1, "delivery_index", Integer.valueOf(zzkVar.zzd()));
                    }
                }
                if (zzkVar.zzbr()) {
                    zza(sb, 1, "service_upload", Boolean.valueOf(zzkVar.zzaw()));
                }
                zza(sb, 1, "health_monitor", zzkVar.zzak());
                if (zzkVar.zzbq()) {
                    zza(sb, 1, "retry_counter", Integer.valueOf(zzkVar.zzg()));
                }
                if (zzkVar.zzbd()) {
                    zza(sb, 1, "consent_signals", zzkVar.zzae());
                }
                if (zzkVar.zzbl()) {
                    zza(sb, 1, "is_dma_region", Boolean.valueOf(zzkVar.zzau()));
                }
                if (zzkVar.zzbe()) {
                    zza(sb, 1, "core_platform_services", zzkVar.zzaf());
                }
                if (zzkVar.zzbc()) {
                    zza(sb, 1, "consent_diagnostics", zzkVar.zzad());
                }
                if (zzkVar.zzbu()) {
                    zza(sb, 1, "target_os_version", Long.valueOf(zzkVar.zzr()));
                }
                if (zzrl.zza() && zze().zze(zzkVar.zzz(), zzbj.zzcg)) {
                    zza(sb, 1, "ad_services_version", Integer.valueOf(zzkVar.zza()));
                    if (zzkVar.zzaz() && (zzcVarZzv = zzkVar.zzv()) != null) {
                        zza(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        zza(sb, 2, "eligible", Boolean.valueOf(zzcVarZzv.zzf()));
                        zza(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzcVarZzv.zzh()));
                        zza(sb, 2, "pre_r", Boolean.valueOf(zzcVarZzv.zzi()));
                        zza(sb, 2, "r_extensions_too_old", Boolean.valueOf(zzcVarZzv.zzj()));
                        zza(sb, 2, "adservices_extension_too_old", Boolean.valueOf(zzcVarZzv.zze()));
                        zza(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(zzcVarZzv.zzd()));
                        zza(sb, 2, "measurement_manager_disabled", Boolean.valueOf(zzcVarZzv.zzg()));
                        zza(sb, 2);
                        sb.append("}\n");
                    }
                }
                if (zzqn.zza() && zze().zza(zzbj.zzct) && zzkVar.zzax()) {
                    zzgn.zza zzaVarZzu = zzkVar.zzu();
                    zza(sb, 2);
                    sb.append("ad_campaign_info {\n");
                    if (zzaVarZzu.zzn()) {
                        zza(sb, 2, "deep_link_gclid", zzaVarZzu.zzh());
                    }
                    if (zzaVarZzu.zzm()) {
                        zza(sb, 2, "deep_link_gbraid", zzaVarZzu.zzg());
                    }
                    if (zzaVarZzu.zzl()) {
                        zza(sb, 2, "deep_link_gad_source", zzaVarZzu.zzf());
                    }
                    if (zzaVarZzu.zzo()) {
                        zza(sb, 2, "deep_link_session_millis", Long.valueOf(zzaVarZzu.zza()));
                    }
                    if (zzaVarZzu.zzs()) {
                        zza(sb, 2, "market_referrer_gclid", zzaVarZzu.zzk());
                    }
                    if (zzaVarZzu.zzr()) {
                        zza(sb, 2, "market_referrer_gbraid", zzaVarZzu.zzj());
                    }
                    if (zzaVarZzu.zzq()) {
                        zza(sb, 2, "market_referrer_gad_source", zzaVarZzu.zzi());
                    }
                    if (zzaVarZzu.zzp()) {
                        zza(sb, 2, "market_referrer_click_millis", Long.valueOf(zzaVarZzu.zzb()));
                    }
                    zza(sb, 2);
                    sb.append("}\n");
                }
                List<zzgn.zzo> listZzas = zzkVar.zzas();
                if (listZzas != null) {
                    for (zzgn.zzo zzoVar : listZzas) {
                        if (zzoVar != null) {
                            zza(sb, 2);
                            sb.append("user_property {\n");
                            zza(sb, 2, "set_timestamp_millis", zzoVar.zzl() ? Long.valueOf(zzoVar.zzd()) : null);
                            zza(sb, 2, "name", zzi().zzc(zzoVar.zzg()));
                            zza(sb, 2, "string_value", zzoVar.zzh());
                            zza(sb, 2, "int_value", zzoVar.zzk() ? Long.valueOf(zzoVar.zzc()) : null);
                            zza(sb, 2, "double_value", zzoVar.zzi() ? Double.valueOf(zzoVar.zza()) : null);
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzgn.zzd> listZzaq = zzkVar.zzaq();
                zzkVar.zzz();
                if (listZzaq != null) {
                    for (zzgn.zzd zzdVar : listZzaq) {
                        if (zzdVar != null) {
                            zza(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzdVar.zzg()) {
                                zza(sb, 2, "audience_id", Integer.valueOf(zzdVar.zza()));
                            }
                            if (zzdVar.zzh()) {
                                zza(sb, 2, "new_audience", Boolean.valueOf(zzdVar.zzf()));
                            }
                            zza(sb, 2, "current_data", zzdVar.zzd());
                            if (zzdVar.zzi()) {
                                zza(sb, 2, "previous_data", zzdVar.zze());
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzgn.zzf> listZzar = zzkVar.zzar();
                if (listZzar != null) {
                    for (zzgn.zzf zzfVar : listZzar) {
                        if (zzfVar != null) {
                            zza(sb, 2);
                            sb.append("event {\n");
                            zza(sb, 2, "name", zzi().zza(zzfVar.zzg()));
                            if (zzfVar.zzk()) {
                                zza(sb, 2, "timestamp_millis", Long.valueOf(zzfVar.zzd()));
                            }
                            if (zzfVar.zzj()) {
                                zza(sb, 2, "previous_timestamp_millis", Long.valueOf(zzfVar.zzc()));
                            }
                            if (zzfVar.zzi()) {
                                zza(sb, 2, "count", Integer.valueOf(zzfVar.zza()));
                            }
                            if (zzfVar.zzb() != 0) {
                                zza(sb, 2, zzfVar.zzh());
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                zza(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("} // End-of-batch\n");
        return sb.toString();
    }

    final String zza(zzfn.zzb zzbVar) {
        if (zzbVar == null) {
            return Constants.ATTENDANCE_STATUS_NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.zzl()) {
            zza(sb, 0, "filter_id", Integer.valueOf(zzbVar.zzb()));
        }
        zza(sb, 0, "event_name", zzi().zza(zzbVar.zzf()));
        String strZza = zza(zzbVar.zzh(), zzbVar.zzi(), zzbVar.zzj());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        if (zzbVar.zzk()) {
            zza(sb, 1, "event_count_filter", zzbVar.zze());
        }
        if (zzbVar.zza() > 0) {
            sb.append("  filters {\n");
            Iterator<zzfn.zzc> it = zzbVar.zzg().iterator();
            while (it.hasNext()) {
                zza(sb, 2, it.next());
            }
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    private static String zza(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    final String zza(zzfn.zze zzeVar) {
        if (zzeVar == null) {
            return Constants.ATTENDANCE_STATUS_NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.zzi()) {
            zza(sb, 0, "filter_id", Integer.valueOf(zzeVar.zza()));
        }
        zza(sb, 0, "property_name", zzi().zzc(zzeVar.zze()));
        String strZza = zza(zzeVar.zzf(), zzeVar.zzg(), zzeVar.zzh());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        zza(sb, 1, zzeVar.zzb());
        sb.append("}\n");
        return sb.toString();
    }

    final List<Long> zza(List<Long> list, List<Integer> list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzj().zzu().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    zzj().zzu().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    final List<Integer> zzu() {
        Map<String, String> mapZza = zzbj.zza(this.zzg.zza());
        if (mapZza == null || mapZza.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iIntValue = zzbj.zzar.zza(null).intValue();
        for (Map.Entry<String, String> entry : mapZza.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int i = Integer.parseInt(entry.getValue());
                    if (i != 0) {
                        arrayList.add(Integer.valueOf(i));
                        if (arrayList.size() >= iIntValue) {
                            zzj().zzu().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    zzj().zzu().zza("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    static List<Long> zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        j |= 1 << i2;
                    }
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    final Map<String, Object> zza(Bundle bundle, boolean z) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z2 = obj instanceof Parcelable[];
            if (z2 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    if (z2) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(zza((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        int i = 0;
                        while (i < size) {
                            Object obj2 = arrayList2.get(i);
                            i++;
                            if (obj2 instanceof Bundle) {
                                arrayList.add(zza((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(zza((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    zzol(zznv zznvVar) {
        super(zznvVar);
    }

    static void zza(zzgn.zzf.zza zzaVar, String str, Object obj) {
        List<zzgn.zzh> listZzf = zzaVar.zzf();
        int i = 0;
        while (true) {
            if (i >= listZzf.size()) {
                i = -1;
                break;
            } else if (str.equals(listZzf.get(i).zzg())) {
                break;
            } else {
                i++;
            }
        }
        zzgn.zzh.zza zzaVarZza = zzgn.zzh.zze().zza(str);
        if (obj instanceof Long) {
            zzaVarZza.zza(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zzaVarZza.zzb((String) obj);
        } else if (obj instanceof Double) {
            zzaVarZza.zza(((Double) obj).doubleValue());
        }
        if (i >= 0) {
            zzaVar.zza(i, zzaVarZza);
        } else {
            zzaVar.zza(zzaVarZza);
        }
    }

    private static void zza(Uri.Builder builder, String[] strArr, Bundle bundle, Set<String> set) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(",");
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                zza(builder, str3, string, set);
            }
        }
    }

    private static void zza(StringBuilder sb, int i, String str, zzgn.zzm zzmVar) {
        if (zzmVar == null) {
            return;
        }
        zza(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzmVar.zzb() != 0) {
            zza(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zzmVar.zzi()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (zzmVar.zzd() != 0) {
            zza(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l2 : zzmVar.zzk()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (zzmVar.zza() != 0) {
            zza(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i6 = 0;
            for (zzgn.zze zzeVar : zzmVar.zzh()) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(zzeVar.zzf() ? Integer.valueOf(zzeVar.zza()) : null).append(":").append(zzeVar.zze() ? Long.valueOf(zzeVar.zzb()) : null);
                i6 = i7;
            }
            sb.append("}\n");
        }
        if (zzmVar.zzc() != 0) {
            zza(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i8 = 0;
            for (zzgn.zzn zznVar : zzmVar.zzj()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(zznVar.zzf() ? Integer.valueOf(zznVar.zzb()) : null).append(": [");
                Iterator<Long> it = zznVar.zze().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    long jLongValue = it.next().longValue();
                    int i11 = i10 + 1;
                    if (i10 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i10 = i11;
                }
                sb.append("]");
                i8 = i9;
            }
            sb.append("}\n");
        }
        zza(sb, 3);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i, List<zzgn.zzh> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (zzgn.zzh zzhVar : list) {
            if (zzhVar != null) {
                zza(sb, i2);
                sb.append("param {\n");
                zza(sb, i2, "name", zzhVar.zzm() ? zzi().zzb(zzhVar.zzg()) : null);
                zza(sb, i2, "string_value", zzhVar.zzn() ? zzhVar.zzh() : null);
                zza(sb, i2, "int_value", zzhVar.zzl() ? Long.valueOf(zzhVar.zzd()) : null);
                zza(sb, i2, "double_value", zzhVar.zzj() ? Double.valueOf(zzhVar.zza()) : null);
                if (zzhVar.zzc() > 0) {
                    zza(sb, i2, zzhVar.zzi());
                }
                zza(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private final void zza(StringBuilder sb, int i, zzfn.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        zza(sb, i);
        sb.append("filter {\n");
        if (zzcVar.zzg()) {
            zza(sb, i, "complement", Boolean.valueOf(zzcVar.zzf()));
        }
        if (zzcVar.zzi()) {
            zza(sb, i, "param_name", zzi().zzb(zzcVar.zze()));
        }
        if (zzcVar.zzj()) {
            int i2 = i + 1;
            zzfn.zzf zzfVarZzd = zzcVar.zzd();
            if (zzfVarZzd != null) {
                zza(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzfVarZzd.zzj()) {
                    zza(sb, i2, "match_type", zzfVarZzd.zzb().name());
                }
                if (zzfVarZzd.zzi()) {
                    zza(sb, i2, "expression", zzfVarZzd.zze());
                }
                if (zzfVarZzd.zzh()) {
                    zza(sb, i2, "case_sensitive", Boolean.valueOf(zzfVarZzd.zzg()));
                }
                if (zzfVarZzd.zza() > 0) {
                    zza(sb, i + 2);
                    sb.append("expression_list {\n");
                    for (String str : zzfVarZzd.zzf()) {
                        zza(sb, i + 3);
                        sb.append(str);
                        sb.append(StringUtils.f4768LF);
                    }
                    sb.append("}\n");
                }
                zza(sb, i2);
                sb.append("}\n");
            }
        }
        if (zzcVar.zzh()) {
            zza(sb, i + 1, "number_filter", zzcVar.zzc());
        }
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static void zza(StringBuilder sb, int i, String str, zzfn.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        zza(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zzh()) {
            zza(sb, i, "comparison_type", zzdVar.zza().name());
        }
        if (zzdVar.zzj()) {
            zza(sb, i, "match_as_float", Boolean.valueOf(zzdVar.zzg()));
        }
        if (zzdVar.zzi()) {
            zza(sb, i, "comparison_value", zzdVar.zzd());
        }
        if (zzdVar.zzl()) {
            zza(sb, i, "min_comparison_value", zzdVar.zzf());
        }
        if (zzdVar.zzk()) {
            zza(sb, i, "max_comparison_value", zzdVar.zze());
        }
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(Uri.Builder builder, String str, String str2, Set<String> set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    private static void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
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

    final void zza(zzgn.zzk.zza zzaVar) {
        zzj().zzp().zza("Checking account type status for ad personalization signals");
        if (zzc(zzaVar.zzt())) {
            zzj().zzc().zza("Turning off ad personalization due to account type");
            zzgn.zzo zzoVar = (zzgn.zzo) ((com.google.android.gms.internal.measurement.zzlc) zzgn.zzo.zze().zza("_npa").zzb(zzf().zzc()).zza(1L).zzai());
            int i = 0;
            while (true) {
                if (i < zzaVar.zzd()) {
                    if ("_npa".equals(zzaVar.zzk(i).zzg())) {
                        zzaVar.zza(i, zzoVar);
                        break;
                    }
                    i++;
                } else {
                    zzaVar.zza(zzoVar);
                    break;
                }
            }
            zzai zzaiVarZza = zzai.zza(zzaVar.zzv());
            zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION, zzal.CHILD_ACCOUNT);
            zzaVar.zzf(zzaiVarZza.toString());
        }
    }

    final void zza(zzgn.zzh.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zze().zzc().zzb().zzd();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            ArrayList arrayList = new ArrayList();
            for (Bundle bundle : (Bundle[]) obj) {
                if (bundle != null) {
                    zzgn.zzh.zza zzaVarZze = zzgn.zzh.zze();
                    for (String str : bundle.keySet()) {
                        zzgn.zzh.zza zzaVarZza = zzgn.zzh.zze().zza(str);
                        Object obj2 = bundle.get(str);
                        if (obj2 instanceof Long) {
                            zzaVarZza.zza(((Long) obj2).longValue());
                        } else if (obj2 instanceof String) {
                            zzaVarZza.zzb((String) obj2);
                        } else if (obj2 instanceof Double) {
                            zzaVarZza.zza(((Double) obj2).doubleValue());
                        }
                        zzaVarZze.zza(zzaVarZza);
                    }
                    if (zzaVarZze.zza() > 0) {
                        arrayList.add((zzgn.zzh) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZze.zzai()));
                    }
                }
            }
            zzaVar.zza(arrayList);
            return;
        }
        zzj().zzg().zza("Ignoring invalid (type) event param value", obj);
    }

    final void zza(zzgn.zzo.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zzc().zzb().zza();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzj().zzg().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    static boolean zza(zzbh zzbhVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzbhVar);
        Preconditions.checkNotNull(zzpVar);
        return (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzp)) ? false : true;
    }

    static boolean zza(List<Long> list, int i) {
        if (i < (list.size() << 6)) {
            return ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
        }
        return false;
    }

    final boolean zza(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzb().currentTimeMillis() - j) > j2;
    }

    static boolean zzb(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    final boolean zzc(String str) {
        if (zzpp.zza() && zze().zza(zzbj.zzcv)) {
            return false;
        }
        Preconditions.checkNotNull(str);
        zzh zzhVarZze = zzh().zze(str);
        return zzhVarZze != null && zzf().zzn() && zzhVarZze.zzaq() && zzm().zzk(str);
    }

    final byte[] zzb(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzj().zzg().zza("Failed to gzip content", e);
            throw e;
        }
    }

    final byte[] zzc(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i = gZIPInputStream.read(bArr2);
                if (i > 0) {
                    byteArrayOutputStream.write(bArr2, 0, i);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzj().zzg().zza("Failed to ungzip content", e);
            throw e;
        }
    }

    static Bundle[] zzb(List<zzgn.zzh> list) {
        ArrayList arrayList = new ArrayList();
        for (zzgn.zzh zzhVar : list) {
            if (zzhVar != null) {
                Bundle bundle = new Bundle();
                for (zzgn.zzh zzhVar2 : zzhVar.zzi()) {
                    if (zzhVar2.zzn()) {
                        bundle.putString(zzhVar2.zzg(), zzhVar2.zzh());
                    } else if (zzhVar2.zzl()) {
                        bundle.putLong(zzhVar2.zzg(), zzhVar2.zzd());
                    } else if (zzhVar2.zzj()) {
                        bundle.putDouble(zzhVar2.zzg(), zzhVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }
}
