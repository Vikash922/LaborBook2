package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmq implements Runnable {
    private final /* synthetic */ zzmm zza;

    zzmq(zzmm zzmmVar) {
        this.zza = zzmmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlp.zza(this.zza.zza, new ComponentName(this.zza.zza.zza(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
