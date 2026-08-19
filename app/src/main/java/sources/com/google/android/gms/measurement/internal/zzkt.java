package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkt implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzjk zzb;

    zzkt(zzjk zzjkVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                this.zza.set(Double.valueOf(this.zzb.zze().zza(this.zzb.zzg().zzad(), zzbj.zzaq)));
            } finally {
                this.zza.notify();
            }
        }
    }
}
