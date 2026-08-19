package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmn implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzp zze;
    private final /* synthetic */ boolean zzf;
    private final /* synthetic */ zzlp zzg;

    zzmn(zzlp zzlpVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzpVar;
        this.zzf = z;
        this.zzg = zzlpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.zza) {
            try {
                try {
                    zzgbVar = this.zzg.zzb;
                } catch (RemoteException e) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzgi.zza(this.zzb), this.zzc, e);
                    this.zza.set(Collections.emptyList());
                }
                if (zzgbVar == null) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzgi.zza(this.zzb), this.zzc, this.zzd);
                    this.zza.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.zzb)) {
                    Preconditions.checkNotNull(this.zze);
                    this.zza.set(zzgbVar.zza(this.zzc, this.zzd, this.zzf, this.zze));
                } else {
                    this.zza.set(zzgbVar.zza(this.zzb, this.zzc, this.zzd, this.zzf));
                }
                this.zzg.zzar();
                this.zza.notify();
            } finally {
                this.zza.notify();
            }
        }
    }
}
