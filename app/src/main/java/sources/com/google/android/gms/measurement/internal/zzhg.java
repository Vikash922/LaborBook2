package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.amplitude.android.TrackingOptions;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzhg;
import com.google.android.gms.measurement.internal.zzjc;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.laborbook.base.analytics.ConstantEventAttributes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhg extends zznr implements zzaj {
    final LruCache<String, com.google.android.gms.internal.measurement.zzb> zza;
    final com.google.android.gms.internal.measurement.zzv zzb;
    private final Map<String, Map<String, String>> zzc;
    private final Map<String, Set<String>> zzd;
    private final Map<String, Map<String, Boolean>> zze;
    private final Map<String, Map<String, Boolean>> zzf;
    private final Map<String, zzfx.zzd> zzh;
    private final Map<String, Map<String, Integer>> zzi;
    private final Map<String, String> zzj;
    private final Map<String, String> zzk;
    private final Map<String, String> zzl;

    final int zzb(String str, String str2) throws Throwable {
        Integer num;
        zzt();
        zzv(str);
        Map<String, Integer> map = this.zzi.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    final long zza(String str) throws Throwable {
        String strZza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(strZza)) {
            return 0L;
        }
        try {
            return Long.parseLong(strZza);
        } catch (NumberFormatException e) {
            zzj().zzu().zza("Unable to parse timezone offset. appId", zzgi.zza(str), e);
            return 0L;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    static /* synthetic */ com.google.android.gms.internal.measurement.zzb zza(zzhg zzhgVar, String str) throws Throwable {
        zzhgVar.zzal();
        Preconditions.checkNotEmpty(str);
        if (!zzhgVar.zzl(str)) {
            return null;
        }
        if (zzhgVar.zzh.containsKey(str) && zzhgVar.zzh.get(str) != null) {
            zzhgVar.zza(str, zzhgVar.zzh.get(str));
        } else {
            zzhgVar.zzv(str);
        }
        return zzhgVar.zza.snapshot().get(str);
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

    final zzjb zza(String str, zzjc.zza zzaVar) throws Throwable {
        zzt();
        zzv(str);
        zzfx.zza zzaVarZzb = zzb(str);
        if (zzaVarZzb == null) {
            return zzjb.UNINITIALIZED;
        }
        for (zzfx.zza.zzb zzbVar : zzaVarZzb.zzf()) {
            if (zza(zzbVar.zzc()) == zzaVar) {
                int i = zzhn.zzc[zzbVar.zzb().ordinal()];
                if (i == 1) {
                    return zzjb.DENIED;
                }
                if (i == 2) {
                    return zzjb.GRANTED;
                }
                return zzjb.UNINITIALIZED;
            }
        }
        return zzjb.UNINITIALIZED;
    }

    final zzjc.zza zzb(String str, zzjc.zza zzaVar) {
        zzt();
        zzv(str);
        zzfx.zza zzaVarZzb = zzb(str);
        if (zzaVarZzb == null) {
            return null;
        }
        for (zzfx.zza.zzc zzcVar : zzaVarZzb.zze()) {
            if (zzaVar == zza(zzcVar.zzc())) {
                return zza(zzcVar.zzb());
            }
        }
        return null;
    }

    private static zzjc.zza zza(zzfx.zza.zze zzeVar) {
        int i = zzhn.zzb[zzeVar.ordinal()];
        if (i == 1) {
            return zzjc.zza.AD_STORAGE;
        }
        if (i == 2) {
            return zzjc.zza.ANALYTICS_STORAGE;
        }
        if (i == 3) {
            return zzjc.zza.AD_USER_DATA;
        }
        if (i != 4) {
            return null;
        }
        return zzjc.zza.AD_PERSONALIZATION;
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

    final zzfx.zza zzb(String str) throws Throwable {
        zzt();
        zzv(str);
        zzfx.zzd zzdVarZzc = zzc(str);
        if (zzdVarZzc == null || !zzdVarZzc.zzp()) {
            return null;
        }
        return zzdVarZzc.zzd();
    }

    protected final zzfx.zzd zzc(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        zzv(str);
        return this.zzh.get(str);
    }

    private final zzfx.zzd zza(String str, byte[] bArr) {
        if (bArr == null) {
            return zzfx.zzd.zzg();
        }
        try {
            zzfx.zzd zzdVar = (zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) ((zzfx.zzd.zza) zzol.zza(zzfx.zzd.zze(), bArr)).zzai());
            zzj().zzp().zza("Parsed config. version, gmp_app_id", zzdVar.zzs() ? Long.valueOf(zzdVar.zzc()) : null, zzdVar.zzq() ? zzdVar.zzi() : null);
            return zzdVar;
        } catch (com.google.android.gms.internal.measurement.zzlk e) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgi.zza(str), e);
            return zzfx.zzd.zzg();
        } catch (RuntimeException e2) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgi.zza(str), e2);
            return zzfx.zzd.zzg();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzaj
    public final String zza(String str, String str2) throws Throwable {
        zzt();
        zzv(str);
        Map<String, String> map = this.zzc.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    protected final String zzd(String str) {
        zzt();
        return this.zzl.get(str);
    }

    protected final String zze(String str) {
        zzt();
        return this.zzk.get(str);
    }

    final String zzf(String str) {
        zzt();
        zzv(str);
        return this.zzj.get(str);
    }

    private static Map<String, String> zza(zzfx.zzd zzdVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzdVar != null) {
            for (zzfx.zzh zzhVar : zzdVar.zzn()) {
                arrayMap.put(zzhVar.zzb(), zzhVar.zzc());
            }
        }
        return arrayMap;
    }

    final Set<String> zzg(String str) {
        zzt();
        zzv(str);
        return this.zzd.get(str);
    }

    final SortedSet<String> zzh(String str) {
        zzt();
        zzv(str);
        TreeSet treeSet = new TreeSet();
        zzfx.zza zzaVarZzb = zzb(str);
        if (zzaVarZzb == null) {
            return treeSet;
        }
        Iterator<zzfx.zza.zzf> it = zzaVarZzb.zzc().iterator();
        while (it.hasNext()) {
            treeSet.add(it.next().zzb());
        }
        return treeSet;
    }

    zzhg(zznv zznvVar) {
        super(zznvVar);
        this.zzc = new ArrayMap();
        this.zzd = new ArrayMap();
        this.zze = new ArrayMap();
        this.zzf = new ArrayMap();
        this.zzh = new ArrayMap();
        this.zzj = new ArrayMap();
        this.zzk = new ArrayMap();
        this.zzl = new ArrayMap();
        this.zzi = new ArrayMap();
        this.zza = new zzhm(this, 20);
        this.zzb = new zzhl(this);
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

    protected final void zzi(String str) {
        zzt();
        this.zzk.put(str, null);
    }

    private final void zza(String str, zzfx.zzd.zza zzaVar) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzaVar != null) {
            Iterator<zzfx.zzb> it = zzaVar.zze().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().zzb());
            }
            for (int i = 0; i < zzaVar.zza(); i++) {
                zzfx.zzc.zza zzaVarZzcd = zzaVar.zza(i).zzcd();
                if (zzaVarZzcd.zzb().isEmpty()) {
                    zzj().zzu().zza("EventConfig contained null event name");
                } else {
                    String strZzb = zzaVarZzcd.zzb();
                    String strZzb2 = zzjf.zzb(zzaVarZzcd.zzb());
                    if (!TextUtils.isEmpty(strZzb2)) {
                        zzaVarZzcd = zzaVarZzcd.zza(strZzb2);
                        zzaVar.zza(i, zzaVarZzcd);
                    }
                    if (zzaVarZzcd.zze() && zzaVarZzcd.zzc()) {
                        arrayMap.put(strZzb, true);
                    }
                    if (zzaVarZzcd.zzf() && zzaVarZzcd.zzd()) {
                        arrayMap2.put(zzaVarZzcd.zzb(), true);
                    }
                    if (zzaVarZzcd.zzg()) {
                        if (zzaVarZzcd.zza() < 2 || zzaVarZzcd.zza() > 65535) {
                            zzj().zzu().zza("Invalid sampling rate. Event name, sample rate", zzaVarZzcd.zzb(), Integer.valueOf(zzaVarZzcd.zza()));
                        } else {
                            arrayMap3.put(zzaVarZzcd.zzb(), Integer.valueOf(zzaVarZzcd.zza()));
                        }
                    }
                }
            }
        }
        this.zzd.put(str, hashSet);
        this.zze.put(str, arrayMap);
        this.zzf.put(str, arrayMap2);
        this.zzi.put(str, arrayMap3);
    }

    private final void zzv(String str) throws Throwable {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        if (this.zzh.get(str) == null) {
            zzao zzaoVarZzf = zzh().zzf(str);
            if (zzaoVarZzf == null) {
                this.zzc.put(str, null);
                this.zze.put(str, null);
                this.zzd.put(str, null);
                this.zzf.put(str, null);
                this.zzh.put(str, null);
                this.zzj.put(str, null);
                this.zzk.put(str, null);
                this.zzl.put(str, null);
                this.zzi.put(str, null);
                return;
            }
            zzfx.zzd.zza zzaVarZzcd = zza(str, zzaoVarZzf.zza).zzcd();
            zza(str, zzaVarZzcd);
            this.zzc.put(str, zza((zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai())));
            this.zzh.put(str, (zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai()));
            zza(str, (zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai()));
            this.zzj.put(str, zzaVarZzcd.zzc());
            this.zzk.put(str, zzaoVarZzf.zzb);
            this.zzl.put(str, zzaoVarZzf.zzc);
        }
    }

    private final void zza(final String str, zzfx.zzd zzdVar) {
        if (zzdVar.zza() == 0) {
            this.zza.remove(str);
            return;
        }
        zzj().zzp().zza("EES programs found", Integer.valueOf(zzdVar.zza()));
        zzhg.zzc zzcVar = zzdVar.zzm().get(0);
        try {
            com.google.android.gms.internal.measurement.zzb zzbVar = new com.google.android.gms.internal.measurement.zzb();
            zzbVar.zza("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhh
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzm("internal.remoteConfig", new zzho(this.zza, str));
                }
            });
            zzbVar.zza("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhk
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final zzhg zzhgVar = this.zza;
                    final String str2 = str;
                    return new com.google.android.gms.internal.measurement.zzx("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhi
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzhg zzhgVar2 = zzhgVar;
                            String str3 = str2;
                            zzh zzhVarZze = zzhgVar2.zzh().zze(str3);
                            HashMap map = new HashMap();
                            map.put(TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "android");
                            map.put(InMobiNetworkValues.PACKAGE_NAME, str3);
                            map.put("gmp_version", 102001L);
                            if (zzhVarZze != null) {
                                String strZzaf = zzhVarZze.zzaf();
                                if (strZzaf != null) {
                                    map.put(ConstantEventAttributes.APP_VERSION, strZzaf);
                                }
                                map.put("app_version_int", Long.valueOf(zzhVarZze.zze()));
                                map.put("dynamite_version", Long.valueOf(zzhVarZze.zzo()));
                            }
                            return map;
                        }
                    });
                }
            });
            zzbVar.zza("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhj
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzr(this.zza.zzb);
                }
            });
            zzbVar.zza(zzcVar);
            this.zza.put(str, zzbVar);
            zzj().zzp().zza("EES program loaded for appId, activities", str, Integer.valueOf(zzcVar.zza().zza()));
            Iterator<zzhg.zzb> it = zzcVar.zza().zzd().iterator();
            while (it.hasNext()) {
                zzj().zzp().zza("EES program activity", it.next().zzb());
            }
        } catch (com.google.android.gms.internal.measurement.zzc unused) {
            zzj().zzg().zza("Failed to load EES program. appId", str);
        }
    }

    final void zzj(String str) {
        zzt();
        this.zzh.remove(str);
    }

    final boolean zzk(String str) {
        zzt();
        zzfx.zzd zzdVarZzc = zzc(str);
        if (zzdVarZzc == null) {
            return false;
        }
        return zzdVarZzc.zzo();
    }

    public final boolean zzl(String str) {
        zzfx.zzd zzdVar;
        return (TextUtils.isEmpty(str) || (zzdVar = this.zzh.get(str)) == null || zzdVar.zza() == 0) ? false : true;
    }

    final boolean zzm(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    final boolean zzc(String str, zzjc.zza zzaVar) throws Throwable {
        zzt();
        zzv(str);
        zzfx.zza zzaVarZzb = zzb(str);
        if (zzaVarZzb == null) {
            return false;
        }
        Iterator<zzfx.zza.zzb> it = zzaVarZzb.zzd().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            zzfx.zza.zzb next = it.next();
            if (zzaVar == zza(next.zzc())) {
                if (next.zzb() == zzfx.zza.zzd.GRANTED) {
                    return true;
                }
            }
        }
        return false;
    }

    final boolean zzn(String str) {
        zzt();
        zzv(str);
        zzfx.zza zzaVarZzb = zzb(str);
        return zzaVarZzb == null || !zzaVarZzb.zzh() || zzaVarZzb.zzg();
    }

    final boolean zzc(String str, String str2) throws Throwable {
        Boolean bool;
        zzt();
        zzv(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzf.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean zzd(String str, String str2) throws Throwable {
        Boolean bool;
        zzt();
        zzv(str);
        if (zzm(str) && zzop.zzg(str2)) {
            return true;
        }
        if (zzo(str) && zzop.zzh(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zze.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean zzo(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(zza(str, "measurement.upload.blacklist_public"));
    }

    protected final boolean zza(String str, byte[] bArr, String str2, String str3) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        zzfx.zzd.zza zzaVarZzcd = zza(str, bArr).zzcd();
        if (zzaVarZzcd == null) {
            return false;
        }
        zza(str, zzaVarZzcd);
        zza(str, (zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai()));
        this.zzh.put(str, (zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai()));
        this.zzj.put(str, zzaVarZzcd.zzc());
        this.zzk.put(str, str2);
        this.zzl.put(str, str3);
        this.zzc.put(str, zza((zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai())));
        zzh().zza(str, new ArrayList(zzaVarZzcd.zzd()));
        try {
            zzaVarZzcd.zzb();
            bArr = ((zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai())).zzca();
        } catch (RuntimeException e) {
            zzj().zzu().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzgi.zza(str), e);
        }
        zzam zzamVarZzh = zzh();
        Preconditions.checkNotEmpty(str);
        zzamVarZzh.zzt();
        zzamVarZzh.zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (zzamVarZzh.m156e_().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzamVarZzh.zzj().zzg().zza("Failed to update remote config (got 0). appId", zzgi.zza(str));
            }
        } catch (SQLiteException e2) {
            zzamVarZzh.zzj().zzg().zza("Error storing remote config. appId", zzgi.zza(str), e2);
        }
        this.zzh.put(str, (zzfx.zzd) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzcd.zzai()));
        return true;
    }

    final boolean zzp(String str) throws Throwable {
        zzt();
        zzv(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("app_instance_id");
    }

    final boolean zzq(String str) throws Throwable {
        zzt();
        zzv(str);
        if (this.zzd.get(str) != null) {
            return this.zzd.get(str).contains(TrackingOptions.AMP_TRACKING_OPTION_DEVICE_MODEL) || this.zzd.get(str).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM);
        }
        return false;
    }

    final boolean zzr(String str) throws Throwable {
        zzt();
        zzv(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("enhanced_user_id");
    }

    final boolean zzs(String str) throws Throwable {
        zzt();
        zzv(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("google_signals");
    }

    final boolean zzt(String str) throws Throwable {
        zzt();
        zzv(str);
        if (this.zzd.get(str) != null) {
            return this.zzd.get(str).contains(TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION) || this.zzd.get(str).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM);
        }
        return false;
    }

    final boolean zzu(String str) throws Throwable {
        zzt();
        zzv(str);
        return this.zzd.get(str) != null && this.zzd.get(str).contains("user_id");
    }
}
