package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.work.WorkRequest;
import com.google.android.gms.internal.measurement.zzor;
import com.google.android.gms.internal.measurement.zzow;
import com.google.android.gms.internal.measurement.zzox;
import com.google.android.gms.internal.measurement.zzpc;
import com.google.android.gms.internal.measurement.zzpd;
import com.google.android.gms.internal.measurement.zzpi;
import com.google.android.gms.internal.measurement.zzpj;
import com.google.android.gms.internal.measurement.zzpo;
import com.google.android.gms.internal.measurement.zzpp;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.internal.measurement.zzpv;
import com.google.android.gms.internal.measurement.zzqa;
import com.google.android.gms.internal.measurement.zzqb;
import com.google.android.gms.internal.measurement.zzqg;
import com.google.android.gms.internal.measurement.zzqh;
import com.google.android.gms.internal.measurement.zzqm;
import com.google.android.gms.internal.measurement.zzqn;
import com.google.android.gms.internal.measurement.zzqs;
import com.google.android.gms.internal.measurement.zzqt;
import com.google.android.gms.internal.measurement.zzqy;
import com.google.android.gms.internal.measurement.zzqz;
import com.google.android.gms.internal.measurement.zzre;
import com.google.android.gms.internal.measurement.zzrf;
import com.google.android.gms.internal.measurement.zzrk;
import com.google.android.gms.internal.measurement.zzrl;
import com.google.android.gms.internal.measurement.zzrq;
import com.google.android.gms.internal.measurement.zzrr;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.internal.measurement.zzrx;
import com.google.android.gms.internal.measurement.zzsc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.shadow.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbj {
    public static final zzfz<Long> zza;
    public static final zzfz<Long> zzaa;
    public static final zzfz<Long> zzab;
    public static final zzfz<Long> zzac;
    public static final zzfz<Integer> zzad;
    public static final zzfz<Long> zzae;
    public static final zzfz<Long> zzaf;
    public static final zzfz<Integer> zzag;
    public static final zzfz<Integer> zzah;
    public static final zzfz<Integer> zzai;
    public static final zzfz<Integer> zzaj;
    public static final zzfz<Integer> zzak;
    public static final zzfz<Long> zzal;
    public static final zzfz<Boolean> zzam;
    public static final zzfz<String> zzan;
    public static final zzfz<Long> zzao;
    public static final zzfz<Integer> zzap;
    public static final zzfz<Double> zzaq;
    public static final zzfz<Integer> zzar;
    public static final zzfz<Integer> zzas;
    public static final zzfz<Integer> zzat;
    public static final zzfz<Integer> zzau;
    public static final zzfz<Long> zzav;
    public static final zzfz<Long> zzaw;
    public static final zzfz<Integer> zzax;
    public static final zzfz<Integer> zzay;
    public static final zzfz<String> zzaz;
    public static final zzfz<Long> zzb;
    public static final zzfz<String> zzba;
    public static final zzfz<String> zzbb;
    public static final zzfz<Long> zzbc;
    public static final zzfz<String> zzbd;
    public static final zzfz<String> zzbe;
    public static final zzfz<String> zzbf;
    public static final zzfz<String> zzbg;
    public static final zzfz<Long> zzbh;
    public static final zzfz<Boolean> zzbi;
    public static final zzfz<Boolean> zzbj;
    public static final zzfz<Boolean> zzbk;
    public static final zzfz<Boolean> zzbl;
    public static final zzfz<Boolean> zzbm;
    public static final zzfz<Boolean> zzbn;
    public static final zzfz<Boolean> zzbo;
    public static final zzfz<Boolean> zzbp;
    public static final zzfz<Boolean> zzbq;
    public static final zzfz<Boolean> zzbr;
    public static final zzfz<Integer> zzbs;
    public static final zzfz<Boolean> zzbt;
    public static final zzfz<Boolean> zzbu;
    public static final zzfz<Boolean> zzbv;
    public static final zzfz<Boolean> zzbw;
    public static final zzfz<Boolean> zzbx;
    public static final zzfz<String> zzby;
    public static final zzfz<Boolean> zzbz;
    public static final zzfz<Long> zzc;
    public static final zzfz<Boolean> zzca;
    public static final zzfz<Boolean> zzcb;
    public static final zzfz<Boolean> zzcc;
    public static final zzfz<Boolean> zzcd;
    public static final zzfz<Boolean> zzce;
    public static final zzfz<Boolean> zzcf;
    public static final zzfz<Boolean> zzcg;
    public static final zzfz<Boolean> zzch;
    public static final zzfz<Boolean> zzci;
    public static final zzfz<Boolean> zzcj;
    public static final zzfz<Boolean> zzck;
    public static final zzfz<Boolean> zzcl;
    public static final zzfz<Boolean> zzcm;
    public static final zzfz<Boolean> zzcn;
    public static final zzfz<Boolean> zzco;
    public static final zzfz<Boolean> zzcp;
    public static final zzfz<Boolean> zzcq;
    public static final zzfz<Boolean> zzcr;
    public static final zzfz<Boolean> zzcs;
    public static final zzfz<Boolean> zzct;
    public static final zzfz<Boolean> zzcu;
    public static final zzfz<Boolean> zzcv;
    public static final zzfz<Boolean> zzcw;
    public static final zzfz<Boolean> zzcx;
    public static final zzfz<Boolean> zzcy;
    public static final zzfz<Boolean> zzcz;
    public static final zzfz<Long> zzd;
    public static final zzfz<Boolean> zzda;
    public static final zzfz<Boolean> zzdb;
    public static final zzfz<Boolean> zzdc;
    public static final zzfz<Boolean> zzdd;
    public static final zzfz<Boolean> zzde;
    public static final zzfz<Boolean> zzdf;
    public static final zzfz<Boolean> zzdg;
    public static final zzfz<Boolean> zzdh;
    public static final zzfz<Boolean> zzdi;
    public static final zzfz<Boolean> zzdj;
    public static final zzfz<Boolean> zzdk;
    public static final zzfz<Boolean> zzdl;
    public static final zzfz<Boolean> zzdm;
    public static final zzfz<Boolean> zzdn;
    private static final List<zzfz<?>> zzdo = Collections.synchronizedList(new ArrayList());
    public static final zzfz<String> zze;
    public static final zzfz<String> zzf;
    public static final zzfz<Integer> zzg;
    public static final zzfz<Integer> zzh;
    public static final zzfz<Integer> zzi;
    public static final zzfz<Integer> zzj;
    public static final zzfz<Integer> zzk;
    public static final zzfz<Integer> zzl;
    public static final zzfz<Integer> zzm;
    public static final zzfz<Integer> zzn;
    public static final zzfz<Integer> zzo;
    public static final zzfz<Integer> zzp;
    public static final zzfz<String> zzq;
    public static final zzfz<String> zzr;
    public static final zzfz<Long> zzs;
    public static final zzfz<Long> zzt;
    public static final zzfz<Long> zzu;
    public static final zzfz<Long> zzv;
    public static final zzfz<Long> zzw;
    public static final zzfz<Long> zzx;
    public static final zzfz<Long> zzy;
    public static final zzfz<Long> zzz;

    private static <V> zzfz<V> zza(String str, V v, zzfx<V> zzfxVar) {
        return zza(str, v, v, zzfxVar, true);
    }

    private static <V> zzfz<V> zza(String str, V v, V v2, zzfx<V> zzfxVar, boolean z) {
        zzfz<V> zzfzVar = new zzfz<>(str, v, v2, zzfxVar, z);
        if (z) {
            zzdo.add(zzfzVar);
        }
        return zzfzVar;
    }

    private static <V> zzfz<V> zza(String str, V v) {
        return zza(str, v, v, null, false);
    }

    private static <V> zzfz<V> zzb(String str, V v, zzfx<V> zzfxVar) {
        return zza(str, v, v, zzfxVar, false);
    }

    static /* synthetic */ Long zzcn() {
        zzac zzacVar = zzfw.zza;
        return Long.valueOf(zzow.zzd());
    }

    public static Map<String, String> zza(Context context) {
        com.google.android.gms.internal.measurement.zzic zzicVarZza = com.google.android.gms.internal.measurement.zzic.zza(context.getContentResolver(), com.google.android.gms.internal.measurement.zzio.zza("com.google.android.gms.measurement"), new Runnable() { // from class: com.google.android.gms.measurement.internal.zzbi
            @Override // java.lang.Runnable
            public final void run() {
                com.google.android.gms.internal.measurement.zzir.zzc();
            }
        });
        return zzicVarZza == null ? Collections.emptyMap() : zzicVarZza.zza();
    }

    static {
        Collections.synchronizedSet(new HashSet());
        Long lValueOf = Long.valueOf(WorkRequest.MIN_BACKOFF_MILLIS);
        zza = zzb("measurement.ad_id_cache_time", lValueOf, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbl
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zza());
            }
        });
        Long lValueOf2 = Long.valueOf(DateUtils.MILLIS_PER_HOUR);
        zzb = zzb("measurement.app_uninstalled_additional_ad_id_cache_time", lValueOf2, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcu
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzb());
            }
        });
        Long lValueOf3 = Long.valueOf(DateUtils.MILLIS_PER_DAY);
        zzc = zzb("measurement.monitoring.sample_period_millis", lValueOf3, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdg
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzr());
            }
        });
        zzd = zza("measurement.config.cache_time", lValueOf3, lValueOf2, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdv
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzbj.zzcn();
            }
        }, false);
        zze = zzb("measurement.config.url_scheme", "https", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzeh
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzaq();
            }
        });
        zzf = zzb("measurement.config.url_authority", "app-measurement.com", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzet
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzap();
            }
        });
        zzg = zzb("measurement.upload.max_bundles", 100, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzff
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzad());
            }
        });
        zzh = zzb("measurement.upload.max_batch_size", 65536, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfr
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzal());
            }
        });
        zzi = zzb("measurement.upload.max_bundle_size", 65536, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbq
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzac());
            }
        });
        zzj = zzb("measurement.upload.max_events_per_bundle", 1000, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcc
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzag());
            }
        });
        zzk = zzb("measurement.upload.max_events_per_day", 100000, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcf
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzah());
            }
        });
        zzl = zzb("measurement.upload.max_error_events_per_day", 1000, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzck
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzaf());
            }
        });
        zzm = zzb("measurement.upload.max_public_events_per_day", 50000, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcm
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzai());
            }
        });
        zzn = zzb("measurement.upload.max_conversions_per_day", 10000, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcp
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzae());
            }
        });
        zzo = zzb("measurement.upload.max_realtime_events_per_day", 10, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzco
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzak());
            }
        });
        zzp = zzb("measurement.store.max_stored_events_per_app", 100000, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcr
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzk());
            }
        });
        zzq = zzb("measurement.upload.url", "https://app-measurement.com/a", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcq
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzaz();
            }
        });
        zzr = zzb("measurement.sgtm.google_signal.url", "https://app-measurement.com/s", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzct
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzas();
            }
        });
        zzs = zzb("measurement.upload.backoff_period", 43200000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcs
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzz());
            }
        });
        zzt = zzb("measurement.upload.window_interval", lValueOf2, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcv
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzao());
            }
        });
        zzu = zzb("measurement.upload.interval", lValueOf2, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcx
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzab());
            }
        });
        zzv = zzb("measurement.upload.realtime_upload_interval", lValueOf, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcz
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzs());
            }
        });
        zzw = zzb("measurement.upload.debug_upload_interval", 1000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcy
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zze());
            }
        });
        zzx = zzb("measurement.upload.minimum_delay", 500L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdb
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzq());
            }
        });
        zzy = zzb("measurement.alarm_manager.minimum_interval", Long.valueOf(DateUtils.MILLIS_PER_MINUTE), new zzfx() { // from class: com.google.android.gms.measurement.internal.zzda
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzp());
            }
        });
        zzz = zzb("measurement.upload.stale_data_deletion_interval", lValueOf3, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdd
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzv());
            }
        });
        zzaa = zzb("measurement.upload.refresh_blacklisted_config_interval", 604800000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdc
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzt());
            }
        });
        zzab = zzb("measurement.upload.initial_upload_delay_time", 15000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdf
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzaa());
            }
        });
        zzac = zzb("measurement.upload.retry_time", 1800000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzde
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzan());
            }
        });
        zzad = zzb("measurement.upload.retry_count", 6, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdh
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzam());
            }
        });
        zzae = zzb("measurement.upload.max_queue_time", 2419200000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdi
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzaj());
            }
        });
        zzaf = zzb("measurement.upload.google_sginal_max_queue_time", 300000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdl
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzg());
            }
        });
        zzag = zzb("measurement.lifetimevalue.max_currency_tracked", 4, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdk
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzh());
            }
        });
        zzah = zzb("measurement.audience.filter_result_max_count", 200, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdn
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzm());
            }
        });
        zzai = zza("measurement.upload.max_public_user_properties", 25);
        zzaj = zza("measurement.upload.max_event_name_cardinality", 500);
        zzak = zza("measurement.upload.max_public_event_params", 25);
        zzal = zzb("measurement.service_client.idle_disconnect_millis", 5000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdm
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzu());
            }
        });
        zzam = zzb("measurement.test.boolean_flag", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdp
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrf.zzf());
            }
        });
        zzan = zzb("measurement.test.string_flag", "---", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdo
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzrf.zze();
            }
        });
        zzao = zzb("measurement.test.long_flag", -1L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdr
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzrf.zzd());
            }
        });
        zza("measurement.test.cached_long_flag", -1L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdq
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzrf.zzb());
            }
        });
        zzap = zzb("measurement.test.int_flag", -2, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdt
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzrf.zzc());
            }
        });
        zzaq = zzb("measurement.test.double_flag", Double.valueOf(-3.0d), new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdu
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Double.valueOf(zzrf.zza());
            }
        });
        zzar = zzb("measurement.experiment.max_ids", 50, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdx
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzl());
            }
        });
        zzas = zzb("measurement.upload.max_item_scoped_custom_parameters", 27, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdw
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzn());
            }
        });
        zzat = zza("measurement.upload.max_event_parameter_value_length", 100, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdz
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzj());
            }
        });
        zzau = zzb("measurement.max_bundles_per_iteration", 100, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdy
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzc());
            }
        });
        zzav = zzb("measurement.sdk.attribution.cache.ttl", 604800000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzeb
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzx());
            }
        });
        zzaw = zzb("measurement.redaction.app_instance_id.ttl", 7200000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzea
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzy());
            }
        });
        zzax = zzb("measurement.rb.attribution.client.min_ad_services_version", 7, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzed
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzo());
            }
        });
        zzay = zzb("measurement.dma_consent.max_daily_dcu_realtime_events", 1, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzec
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzow.zzi());
            }
        });
        zzaz = zzb("measurement.rb.attribution.uri_scheme", "https", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzee
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzay();
            }
        });
        zzba = zzb("measurement.rb.attribution.uri_authority", "google-analytics.com", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzeg
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzav();
            }
        });
        zzbb = zzb("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzej
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzaw();
            }
        });
        zzbc = zzb("measurement.session.engagement_interval", lValueOf2, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzei
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzf());
            }
        });
        zzbd = zzb("measurement.rb.attribution.app_allowlist", "com.labpixies.flood,com.sofascore.results,games.spearmint.triplecrush,com.block.juggle,io.supercent.linkedcubic,com.cdtg.gunsound,com.corestudios.storemanagementidle,com.cdgames.fidget3d,io.supercent.burgeridle,io.supercent.pizzaidle,jp.ne.ibis.ibispaintx.app,com.dencreak.dlcalculator,com.ebay.kleinanzeigen,de.wetteronline.wetterapp,com.game.shape.shift,com.champion.cubes,bubbleshooter.orig,com.wolt.android,com.master.hotelmaster,com.games.bus.arrival,com.playstrom.dop2,com.huuuge.casino.slots,com.ig.spider.fighting,com.jura.coloring.page,com.rikkogame.ragdoll2,com.ludo.king,com.sigma.prank.sound.haircut,com.crazy.block.robo.monster.cliffs.craft,com.fugo.wow,com.maps.locator.gps.gpstracker.phone,com.gamovation.tileclub,com.pronetis.ironball2,com.meesho.supply,pdf.pdfreader.viewer.editor.free,com.dino.race.master,com.ig.moto.racing,ai.photo.enhancer.photoclear,com.duolingo,com.candle.magic_piano,com.free.vpn.super.hotspot.open,sg.bigo.live,com.cdg.tictactoe,com.zhiliaoapp.musically.go,com.wildspike.wormszone,com.mast.status.video.edit,com.vyroai.photoeditorone,com.pujiagames.deeeersimulator,com.superbinogo.jungleboyadventure,com.trustedapp.pdfreaderpdfviewer,com.artimind.aiart.artgenerator.artavatar,de.cellular.ottohybrid,com.zeptolab.cats.google,in.crossy.daily_crossword", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzel
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzat();
            }
        });
        zzbe = zzb("measurement.rb.attribution.user_properties", "_npa,npa", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzek
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzba();
            }
        });
        zzbf = zzb("measurement.rb.attribution.event_params", "value|currency", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzen
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzar();
            }
        });
        zzbg = zzb("measurement.rb.attribution.query_parameters_to_remove", "", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzem
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzax();
            }
        });
        zzbh = zzb("measurement.rb.attribution.max_queue_time", 1209600000L, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzep
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Long.valueOf(zzow.zzw());
            }
        });
        zzbi = zzb("measurement.config.bundle_for_all_apps_on_backgrounded", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzer
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzow.zzbb());
            }
        });
        zzbj = zzb("measurement.config.notify_trigger_uris_on_backgrounded", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzeq
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzow.zzbc());
            }
        });
        zzbk = zzb("measurement.collection.log_event_and_bundle_v2", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzes
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrk.zza());
            }
        });
        zzbl = zza("measurement.quality.checksum", false);
        zzbm = zzb("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzev
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqb.zzc());
            }
        });
        zzbn = zzb("measurement.audience.refresh_event_count_filters_timestamp", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzeu
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqb.zzb());
            }
        });
        zzbo = zza("measurement.audience.use_bundle_timestamp_for_event_count_filters", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzex
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqb.zzd());
            }
        });
        zzbp = zzb("measurement.sdk.collection.last_deep_link_referrer_campaign2", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzew
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzre.zza());
            }
        });
        zzbq = zzb("measurement.integration.disable_firebase_instance_id", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzez
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrx.zzb());
            }
        });
        zzbr = zzb("measurement.collection.service.update_with_analytics_fix", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzey
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzsc.zza());
            }
        });
        zzbs = zzb("measurement.service.storage_consent_support_version", 203600, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfa
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Integer.valueOf((int) zzpc.zza());
            }
        });
        zzbt = zzb("measurement.service.store_null_safelist", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfd
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpv.zzb());
            }
        });
        zzbu = zzb("measurement.service.store_safelist", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfc
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpv.zzc());
            }
        });
        zzbv = zzb("measurement.session_stitching_token_enabled", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfe
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrq.zzb());
            }
        });
        zzbw = zza("measurement.sgtm.service", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfh
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrw.zzd());
            }
        });
        zzbx = zza("measurement.sgtm.preview_mode_enabled", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfg
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrw.zzc());
            }
        });
        zzby = zza("measurement.sgtm.app_allowlist", "de.zalando.mobile.internal,de.zalando.mobile.internal.debug,de.zalando.lounge.dev,grit.storytel.app,com.rbc.mobile.android,com.rbc.mobile.android,com.dylvian.mango.activities,com.home24.android,com.home24.android.staging,se.lf.mobile.android,se.lf.mobile.android.beta,se.lf.mobile.android.rc,se.lf.mobile.android.test,se.lf.mobile.android.test.debug,com.boots.flagship.android,com.boots.flagshiproi.android,de.zalando.mobile,com.trivago,com.getyourguide.android,es.mobail.meliarewards,se.nansen.coop.debug,se.nansen.coop,se.coop.coop.qa,com.booking,com.google.firebaseengage,com.mse.mseapp.dev,com.mse.mseapp,pl.eobuwie.eobuwieapp,br.com.eventim.mobile.app.Android,ch.ticketcorner.mobile.app.Android,de.eventim.mobile.app.Android,dk.billetlugen.mobile.app.Android,nl.eventim.mobile.app.Android,com.asos.app,com.blueshieldca.prod,dk.magnetix.tivoliapp,matas.matas.internal,nl.omoda,com.thetrainline,com.simo.androidtest,de.aboutyou.mobile.app,com.hometogo,de.casamundo.casamundomobile,it.casevacanz,eu.coolblue.shop,com.stihl.app,com.indeed.android.jobsearch,com.homeretailgroup.argos.android,com.dylvian.mango.activities.pre,se.nansen.coop.qa", new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfj
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return zzow.zzau();
            }
        });
        zzbz = zzb("measurement.sgtm.upload_queue", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfi
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrw.zze());
            }
        });
        zzca = zzb("measurement.sgtm.google_signal.enable", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfl
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrw.zzb());
            }
        });
        zzcb = zzb("measurement.gmscore_feature_tracking", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfn
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqs.zzb());
            }
        });
        zzcc = zzb("measurement.gmscore_network_migration", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfm
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqt.zzb());
            }
        });
        zzcd = zza("measurement.fix_health_monitor_stack_trace", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfp
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqh.zzb());
            }
        });
        zzce = zza("measurement.item_scoped_custom_parameters.client", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfo
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqz.zzb());
            }
        });
        zzcf = zzb("measurement.item_scoped_custom_parameters.service", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfq
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqz.zzc());
            }
        });
        zzcg = zza("measurement.rb.attribution.service", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzft
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzh());
            }
        });
        zzch = zza("measurement.rb.attribution.client2", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfs
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zze());
            }
        });
        zzci = zzb("measurement.rb.attribution.uuid_generation", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfv
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzj());
            }
        });
        zzcj = zzb("measurement.rb.attribution.enable_trigger_redaction", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfu
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzi());
            }
        });
        zzb("measurement.rb.attribution.followup1.service", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbn
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzf());
            }
        });
        zzck = zzb("measurement.rb.attribution.retry_disposition", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbm
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzg());
            }
        });
        zzcl = zzb("measurement.rb.attribution.ad_campaign_info", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbp
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzb());
            }
        });
        zzcm = zza("measurement.rb.attribution.improved_retry", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbo
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzk());
            }
        });
        zzcn = zzb("measurement.client.sessions.enable_fix_background_engagement", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbr
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrr.zza());
            }
        });
        zzco = zzb("measurement.client.sessions.enable_pause_engagement_in_background", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbt
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrr.zzb());
            }
        });
        zzcp = zzb("measurement.dma_consent.service_dcu_event2", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbs
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpu.zzb());
            }
        });
        zzcq = zzb("measurement.dma_consent.services_database_update_fix", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbv
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpu.zza());
            }
        });
        zzcr = zza("measurement.service.deferred_first_open", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbu
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpo.zzb());
            }
        });
        zzcs = zza("measurement.gbraid_campaign.gbraid.client", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbw
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqn.zzb());
            }
        });
        zzct = zza("measurement.gbraid_campaign.gbraid.service", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbz
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqn.zzc());
            }
        });
        zzcu = zza("measurement.increase_param_lengths", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzby
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqy.zzb());
            }
        });
        zzcv = zzb("measurement.disable_npa_for_dasher_and_unicorn", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcb
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpp.zzb());
            }
        });
        zzcw = zza("measurement.consent_regional_defaults.service", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzca
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzox.zzc());
            }
        });
        zzcx = zza("measurement.consent_regional_defaults.client2", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcd
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzox.zzb());
            }
        });
        zzcy = zzb("measurement.service.consent.pfo_on_fx", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcn
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqa.zzc());
            }
        });
        zzcz = zzb("measurement.service.consent.params_on_fx", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcw
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqa.zzb());
            }
        });
        zzda = zzb("measurement.service.consent.app_start_fix", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzdj
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqa.zza());
            }
        });
        zzdb = zza("measurement.consent.stop_reset_on_storage_denied.client", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzds
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpd.zzb());
            }
        });
        zzdc = zza("measurement.consent.stop_reset_on_storage_denied.service", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzef
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpd.zzc());
            }
        });
        zzdd = zzb("measurement.consent.scrub_audience_data_analytics_consent", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzeo
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpd.zzd());
            }
        });
        zzde = zzb("measurement.consent.fix_first_open_count_from_snapshot", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfb
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpd.zze());
            }
        });
        zzdf = zzb("measurement.fix_engagement_on_reset_analytics_data", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzfk
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqg.zza());
            }
        });
        zzdg = zzb("measurement.rb.attribution.service.bundle_on_backgrounded", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbk
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzd());
            }
        });
        zzdh = zzb("measurement.rb.attribution.client.bundle_on_backgrounded", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzbx
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzrl.zzc());
            }
        });
        zzdi = zzb("measurement.set_default_event_parameters_propagate_clear.service.dev", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzce
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpj.zzb());
            }
        });
        zzdj = zzb("measurement.set_default_event_parameters_propagate_clear.client.dev", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzch
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpj.zza());
            }
        });
        zzdk = zzb("measurement.set_default_event_parameters_with_backfill.service", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcg
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpi.zzc());
            }
        });
        zzdl = zzb("measurement.set_default_event_parameters_with_backfill.client.dev", false, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcj
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzpi.zzb());
            }
        });
        zzdm = zzb("measurement.fix_origin_in_upload_utils.service", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzci
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzqm.zza());
            }
        });
        zzdn = zzb("measurement.service.ad_impression.convert_value_to_double", true, new zzfx() { // from class: com.google.android.gms.measurement.internal.zzcl
            @Override // com.google.android.gms.measurement.internal.zzfx
            public final Object zza() {
                return Boolean.valueOf(zzor.zza());
            }
        });
    }
}
