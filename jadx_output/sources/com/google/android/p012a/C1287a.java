package com.google.android.p012a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.a.a */
/* JADX INFO: compiled from: BaseProxy.java */
/* JADX INFO: loaded from: classes3.dex */
public class C1287a implements IInterface {

    /* JADX INFO: renamed from: a */
    private final IBinder f249a;

    /* JADX INFO: renamed from: b */
    private final String f250b = "com.google.android.finsky.externalreferrer.IGetInstallReferrerService";

    protected C1287a(IBinder iBinder) {
        this.f249a = iBinder;
    }

    /* JADX INFO: renamed from: a */
    protected final Parcel m86a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f250b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f249a;
    }

    /* JADX INFO: renamed from: b */
    protected final Parcel m87b(Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f249a.transact(1, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e) {
                parcelObtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }
}
