package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkr implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzjk zzb;

    zzkr(zzjk zzjkVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                this.zza.set(Long.valueOf(this.zzb.zze().zzc(this.zzb.zzg().zzad(), zzbj.zzao)));
            } finally {
                this.zza.notify();
            }
        }
    }
}
