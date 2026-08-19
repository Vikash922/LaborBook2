package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjx implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzjk zzb;

    zzjx(zzjk zzjkVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        this.zzb = zzjkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                this.zza.set(Boolean.valueOf(this.zzb.zze().zzi(this.zzb.zzg().zzad())));
            } finally {
                this.zza.notify();
            }
        }
    }
}
