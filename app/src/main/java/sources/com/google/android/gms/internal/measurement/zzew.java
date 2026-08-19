package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzew extends zzdv.zzb {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzdi zzd;
    private final /* synthetic */ zzdv zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzew(zzdv zzdvVar, String str, zzdi zzdiVar) {
        super(zzdvVar);
        this.zzc = str;
        this.zzd = zzdiVar;
        this.zze = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    protected final void zzb() {
        this.zzd.zza((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(this.zze.zzj)).getMaxUserProperties(this.zzc, this.zzd);
    }
}
