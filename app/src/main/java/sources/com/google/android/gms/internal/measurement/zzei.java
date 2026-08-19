package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzei extends zzdv.zzb {
    private final /* synthetic */ zzdv zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzei(zzdv zzdvVar) {
        super(zzdvVar);
        this.zzc = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(this.zzc.zzj)).resetAnalyticsData(this.zza);
    }
}
