package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkq implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzjk zzb;

    zzkq(zzjk zzjkVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                this.zza.set(Integer.valueOf(this.zzb.zze().zzb(this.zzb.zzg().zzad(), zzbj.zzap)));
            } finally {
                this.zza.notify();
            }
        }
    }
}
