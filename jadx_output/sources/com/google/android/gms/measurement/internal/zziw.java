package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzrl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zziw implements Callable<List<zznk>> {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ Bundle zzb;
    private final /* synthetic */ zzia zzc;

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zznk> call() throws Exception {
        this.zzc.zza.zzr();
        zznv zznvVar = this.zzc.zza;
        zzp zzpVar = this.zza;
        Bundle bundle = this.zzb;
        zznvVar.zzl().zzt();
        if (!zzrl.zza() || !zznvVar.zze().zze(zzpVar.zza, zzbj.zzcg) || zzpVar.zza == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    zznvVar.zzj().zzg().zza("Uri sources and timestamps do not match");
                } else {
                    for (int i = 0; i < intArray.length; i++) {
                        zzam zzamVarZzf = zznvVar.zzf();
                        String str = zzpVar.zza;
                        int i2 = intArray[i];
                        long j = longArray[i];
                        Preconditions.checkNotEmpty(str);
                        zzamVarZzf.zzt();
                        zzamVarZzf.zzal();
                        try {
                            zzamVarZzf.zzj().zzp().zza("Pruned " + zzamVarZzf.m156e_().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)}) + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i2), Long.valueOf(j));
                        } catch (SQLiteException e) {
                            zzamVarZzf.zzj().zzg().zza("Error pruning trigger URIs. appId", zzgi.zza(str), e);
                        }
                    }
                }
            }
        }
        return zznvVar.zzf().zzk(zzpVar.zza);
    }

    zziw(zzia zziaVar, zzp zzpVar, Bundle bundle) {
        this.zza = zzpVar;
        this.zzb = bundle;
        this.zzc = zziaVar;
    }
}
