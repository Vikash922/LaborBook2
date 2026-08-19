package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaur implements Runnable {
    final /* synthetic */ zzaus zza;

    zzaur(zzaus zzausVar) {
        this.zza = zzausVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        zzaus zzausVar = this.zza;
        if (zzausVar.zzb != null) {
            return;
        }
        synchronized (zzaus.zzc) {
            if (zzausVar.zzb != null) {
                return;
            }
            boolean z = false;
            try {
                zBooleanValue = ((Boolean) zzbci.zzcL.zze()).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    zzaus.zza = zzfor.zzb(this.zza.zze.zza, "ADSHIELD", null);
                    z = zBooleanValue;
                } catch (Throwable unused2) {
                }
            } else {
                z = zBooleanValue;
            }
            this.zza.zzb = Boolean.valueOf(z);
            zzaus.zzc.open();
        }
    }
}
