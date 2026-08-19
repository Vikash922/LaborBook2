package com.google.android.finsky.externalreferrer;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.p012a.BinderC1288b;
import com.google.android.p012a.C1287a;
import com.google.android.p012a.C1289c;

/* JADX INFO: loaded from: classes3.dex */
public interface IGetInstallReferrerService extends IInterface {

    public static abstract class Stub extends BinderC1288b implements IGetInstallReferrerService {

        public static class Proxy extends C1287a implements IGetInstallReferrerService {
            Proxy(IBinder iBinder) {
                super(iBinder);
            }

            @Override // com.google.android.finsky.externalreferrer.IGetInstallReferrerService
            /* JADX INFO: renamed from: c */
            public final Bundle mo126c(Bundle bundle) throws RemoteException {
                Parcel parcelM86a = m86a();
                C1289c.m90b(parcelM86a, bundle);
                Parcel parcelM87b = m87b(parcelM86a);
                Bundle bundle2 = (Bundle) C1289c.m89a(parcelM87b, Bundle.CREATOR);
                parcelM87b.recycle();
                return bundle2;
            }
        }

        /* JADX INFO: renamed from: b */
        public static IGetInstallReferrerService m127b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return iInterfaceQueryLocalInterface instanceof IGetInstallReferrerService ? (IGetInstallReferrerService) iInterfaceQueryLocalInterface : new Proxy(iBinder);
        }

        @Override // com.google.android.p012a.BinderC1288b
        /* JADX INFO: renamed from: a */
        protected final boolean mo88a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
            if (i != 1) {
                return false;
            }
            Bundle bundleC = mo126c((Bundle) C1289c.m89a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            C1289c.m91c(parcel2, bundleC);
            return true;
        }
    }

    /* JADX INFO: renamed from: c */
    Bundle mo126c(Bundle bundle) throws RemoteException;
}
