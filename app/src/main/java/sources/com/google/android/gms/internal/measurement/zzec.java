package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzec extends zzdv.zzb {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzdi zze;
    private final /* synthetic */ zzdv zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzec(zzdv zzdvVar, String str, String str2, zzdi zzdiVar) {
        super(zzdvVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzdiVar;
        this.zzf = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    protected final void zzb() {
        this.zze.zza((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(this.zzf.zzj)).getConditionalUserProperties(this.zzc, this.zzd, this.zze);
    }
}
