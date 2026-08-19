package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmo implements Runnable {
    private final /* synthetic */ ComponentName zza;
    private final /* synthetic */ zzmm zzb;

    zzmo(zzmm zzmmVar, ComponentName componentName) {
        this.zza = componentName;
        this.zzb = zzmmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlp.zza(this.zzb.zza, this.zza);
    }
}
