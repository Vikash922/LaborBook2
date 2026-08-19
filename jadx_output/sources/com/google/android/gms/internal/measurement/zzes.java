package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzes extends zzdv.zzb {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ boolean zze;
    private final /* synthetic */ zzdi zzf;
    private final /* synthetic */ zzdv zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzes(zzdv zzdvVar, String str, String str2, boolean z, zzdi zzdiVar) {
        super(zzdvVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = z;
        this.zzf = zzdiVar;
        this.zzg = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    protected final void zzb() {
        this.zzf.zza((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(this.zzg.zzj)).getUserProperties(this.zzc, this.zzd, this.zze, this.zzf);
    }
}
