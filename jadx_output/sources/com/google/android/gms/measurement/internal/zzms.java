package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzms extends zznr {
    public final zzgz zza;
    public final zzgz zzb;
    public final zzgz zzc;
    public final zzgz zzd;
    public final zzgz zze;
    public final zzgz zzf;
    private final Map<String, zzmv> zzh;

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    @Deprecated
    private final Pair<String, Boolean> zza(String str) {
        zzmv zzmvVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzt();
        long jElapsedRealtime = zzb().elapsedRealtime();
        zzmv zzmvVar2 = this.zzh.get(str);
        if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc) {
            return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long jZzd = zze().zzd(str) + jElapsedRealtime;
        try {
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            } catch (PackageManager.NameNotFoundException unused) {
                if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc + zze().zzc(str, zzbj.zzb)) {
                    return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
                }
                advertisingIdInfo = null;
            }
        } catch (Exception e) {
            zzj().zzc().zza("Unable to get advertising id", e);
            zzmvVar = new zzmv("", false, jZzd);
        }
        if (advertisingIdInfo == null) {
            return new Pair<>("00000000-0000-0000-0000-000000000000", false);
        }
        String id = advertisingIdInfo.getId();
        zzmvVar = id != null ? new zzmv(id, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd) : new zzmv("", advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd);
        this.zzh.put(str, zzmvVar);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(zzmvVar.zza, Boolean.valueOf(zzmvVar.zzb));
    }

    final Pair<String, Boolean> zza(String str, zzjc zzjcVar) {
        if (zzjcVar.zzi()) {
            return zza(str);
        }
        return new Pair<>("", false);
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

    @Deprecated
    final String zza(String str, boolean z) {
        String str2;
        zzt();
        if (!z) {
            str2 = "00000000-0000-0000-0000-000000000000";
        } else {
            str2 = (String) zza(str).first;
        }
        MessageDigest messageDigestZzu = zzop.zzu();
        if (messageDigestZzu == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzu.digest(str2.getBytes())));
    }

    zzms(zznv zznvVar) {
        super(zznvVar);
        this.zzh = new HashMap();
        zzgu zzguVarZzk = zzk();
        Objects.requireNonNull(zzguVarZzk);
        this.zza = new zzgz(zzguVarZzk, "last_delete_stale", 0L);
        zzgu zzguVarZzk2 = zzk();
        Objects.requireNonNull(zzguVarZzk2);
        this.zzb = new zzgz(zzguVarZzk2, "last_delete_stale_batch", 0L);
        zzgu zzguVarZzk3 = zzk();
        Objects.requireNonNull(zzguVarZzk3);
        this.zzc = new zzgz(zzguVarZzk3, "backoff", 0L);
        zzgu zzguVarZzk4 = zzk();
        Objects.requireNonNull(zzguVarZzk4);
        this.zzd = new zzgz(zzguVarZzk4, "last_upload", 0L);
        zzgu zzguVarZzk5 = zzk();
        Objects.requireNonNull(zzguVarZzk5);
        this.zze = new zzgz(zzguVarZzk5, "last_upload_attempt", 0L);
        zzgu zzguVarZzk6 = zzk();
        Objects.requireNonNull(zzguVarZzk6);
        this.zzf = new zzgz(zzguVarZzk6, "midnight_offset", 0L);
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
