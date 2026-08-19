package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzji {
    final Context zza;
    String zzb;
    String zzc;
    String zzd;
    Boolean zze;
    long zzf;
    com.google.android.gms.internal.measurement.zzdt zzg;
    boolean zzh;
    Long zzi;
    String zzj;

    public zzji(Context context, com.google.android.gms.internal.measurement.zzdt zzdtVar, Long l) {
        this.zzh = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
        this.zzi = l;
        if (zzdtVar != null) {
            this.zzg = zzdtVar;
            this.zzb = zzdtVar.zzf;
            this.zzc = zzdtVar.zze;
            this.zzd = zzdtVar.zzd;
            this.zzh = zzdtVar.zzc;
            this.zzf = zzdtVar.zzb;
            this.zzj = zzdtVar.zzh;
            if (zzdtVar.zzg != null) {
                this.zze = Boolean.valueOf(zzdtVar.zzg.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
