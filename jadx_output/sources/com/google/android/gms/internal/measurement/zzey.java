package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzey extends zzdv.zzb {
    private final /* synthetic */ zzdi zzc;
    private final /* synthetic */ zzdv zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzey(zzdv zzdvVar, zzdi zzdiVar) {
        super(zzdvVar);
        this.zzc = zzdiVar;
        this.zzd = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(this.zzd.zzj)).getSessionId(this.zzc);
    }
}
