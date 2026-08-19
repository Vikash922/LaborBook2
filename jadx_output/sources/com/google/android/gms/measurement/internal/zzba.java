package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzba {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final zzbc zzf;

    final zzba zza(zzhw zzhwVar, long j) {
        return new zzba(zzhwVar, this.zzc, this.zza, this.zzb, this.zzd, j, this.zzf);
    }

    public final String toString() {
        return "Event{appId='" + this.zza + "', name='" + this.zzb + "', params=" + String.valueOf(this.zzf) + "}";
    }

    zzba(zzhw zzhwVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzbc zzbcVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzhwVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId", zzgi.zza(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzhwVar.zzj().zzg().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object objZzb = zzhwVar.zzt().zzb(next, bundle2.get(next));
                    if (objZzb == null) {
                        zzhwVar.zzj().zzu().zza("Param value can't be null", zzhwVar.zzk().zzb(next));
                        it.remove();
                    } else {
                        zzhwVar.zzt().zza(bundle2, next, objZzb);
                    }
                }
            }
            zzbcVar = new zzbc(bundle2);
        } else {
            zzbcVar = new zzbc(new Bundle());
        }
        this.zzf = zzbcVar;
    }

    private zzba(zzhw zzhwVar, String str, String str2, String str3, long j, long j2, zzbc zzbcVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzbcVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzhwVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId, name", zzgi.zza(str2), zzgi.zza(str3));
        }
        this.zzf = zzbcVar;
    }
}
