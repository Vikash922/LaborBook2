package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzli implements Runnable {
    private final /* synthetic */ zzlh zza;
    private final /* synthetic */ zzlh zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzlg zze;

    zzli(zzlg zzlgVar, zzlh zzlhVar, zzlh zzlhVar2, long j, boolean z) {
        this.zza = zzlhVar;
        this.zzb = zzlhVar2;
        this.zzc = j;
        this.zzd = z;
        this.zze = zzlgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza(this.zza, this.zzb, this.zzc, this.zzd, (Bundle) null);
    }
}
