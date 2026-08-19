package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkl implements Runnable {
    private final /* synthetic */ Bundle zza;
    private final /* synthetic */ zzjk zzb;

    zzkl(zzjk zzjkVar, Bundle bundle) {
        this.zza = bundle;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk.zzb(this.zzb, this.zza);
    }
}
