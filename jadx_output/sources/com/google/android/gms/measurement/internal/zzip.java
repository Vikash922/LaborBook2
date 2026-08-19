package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzip implements Callable<zzak> {
    private final /* synthetic */ zzp zza;
    private final /* synthetic */ zzia zzb;

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzak call() throws Exception {
        this.zzb.zza.zzr();
        return new zzak(this.zzb.zza.zza(this.zza.zza));
    }

    zzip(zzia zziaVar, zzp zzpVar) {
        this.zza = zzpVar;
        this.zzb = zziaVar;
    }
}
