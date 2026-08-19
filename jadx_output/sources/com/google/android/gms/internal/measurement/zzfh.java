package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzdv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfh extends zzdv.zzb {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzdv.zzc zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfh(zzdv.zzc zzcVar, Activity activity) {
        super(zzdv.this);
        this.zzc = activity;
        this.zzd = zzcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdv.zzb
    final void zza() throws RemoteException {
        ((zzdk) Preconditions.checkNotNull(zzdv.this.zzj)).onActivityPaused(ObjectWrapper.wrap(this.zzc), this.zzb);
    }
}
