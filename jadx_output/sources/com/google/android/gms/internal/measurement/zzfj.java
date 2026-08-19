package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfj extends zzdv.zzb {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzdi zzd;
    private final /* synthetic */ zzdv.zzc zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfj(zzdv.zzc zzcVar, Activity activity, zzdi zzdiVar) {
        super(zzdv.this);
        this.zzc = activity;
        this.zzd = zzdiVar;
        this.zze = zzcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(zzdv.this.zzj)).onActivitySaveInstanceState(ObjectWrapper.wrap(this.zzc), this.zzd, this.zzb);
    }
}
