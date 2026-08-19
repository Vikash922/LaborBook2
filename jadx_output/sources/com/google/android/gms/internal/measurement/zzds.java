package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzds extends zzbu implements zzdq {
    @Override // com.google.android.gms.internal.measurement.zzdq
    public final int zza() throws RemoteException {
        Parcel parcelZza = zza(2, m152a_());
        int i = parcelZza.readInt();
        parcelZza.recycle();
        return i;
    }

    zzds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzdq
    public final void zza(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, bundle);
        parcelM152a_.writeLong(j);
        zzb(1, parcelM152a_);
    }
}
