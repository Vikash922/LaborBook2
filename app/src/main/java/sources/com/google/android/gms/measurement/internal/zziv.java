package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zziv implements Callable<List<zzom>> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzia zzb;

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzom> call() throws Exception {
        this.zzb.zza.zzr();
        return this.zzb.zza.zzf().zzl(this.zza);
    }

    zziv(zzia zziaVar, String str) {
        this.zza = str;
        this.zzb = zziaVar;
    }
}
