package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzca extends zzbu implements zzbz {
    @Override // com.google.android.gms.internal.measurement.zzbz
    public final Bundle zza(Bundle bundle) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        Parcel parcelZza = zza(1, parcelM152a_);
        Bundle bundle2 = (Bundle) zzbw.zza(parcelZza, Bundle.CREATOR);
        parcelZza.recycle();
        return bundle2;
    }

    zzca(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }
}
