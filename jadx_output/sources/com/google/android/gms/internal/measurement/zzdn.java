package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdn extends zzbu implements zzdl {
    zzdn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzdl
    public final void zza(Bundle bundle) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        zzb(1, parcelM152a_);
    }
}
