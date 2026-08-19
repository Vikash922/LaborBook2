package com.razorpay;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes5.dex */
public class AdvertisingIdUtil {

    interface AdvertisingIdCallback {
        void onResult(String str);
    }

    static void getId(Context context, AdvertisingIdCallback advertisingIdCallback) {
        new AdvertisingIdAsyncTask(context, advertisingIdCallback).execute(new Void[0]);
    }

    private static class AdvertisingIdAsyncTask extends AsyncTask<Void, Void, String> {
        private Context __l1_;
        private AdvertisingIdCallback l$1_I$l$;

        AdvertisingIdAsyncTask(Context context, AdvertisingIdCallback advertisingIdCallback) {
            this.__l1_ = context;
            this.l$1_I$l$ = advertisingIdCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            AdvertisingConnection advertisingConnection = new AdvertisingConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (this.__l1_.bindService(intent, advertisingConnection, 1)) {
                    try {
                        return new AdvertisingInterface(advertisingConnection.getBinder()).getId();
                    } catch (Exception e) {
                        String message = e.getMessage();
                        try {
                            this.__l1_.unbindService(advertisingConnection);
                        } catch (IllegalArgumentException e2) {
                            AnalyticsUtil.reportError(getClass().getName(), "S1", e2.getLocalizedMessage());
                        }
                        return message;
                    }
                }
                return "permission disabled";
            } finally {
                try {
                    this.__l1_.unbindService(advertisingConnection);
                } catch (IllegalArgumentException e3) {
                    AnalyticsUtil.reportError(getClass().getName(), "S1", e3.getLocalizedMessage());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.l$1_I$l$.onResult(str);
        }
    }

    private static final class AdvertisingConnection implements ServiceConnection {
        private final LinkedBlockingQueue<IBinder> l$1_I$l$;
        boolean retrieved;

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private AdvertisingConnection() {
            this.retrieved = false;
            this.l$1_I$l$ = new LinkedBlockingQueue<>(1);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.l$1_I$l$.put(iBinder);
            } catch (Exception e) {
                AnalyticsUtil.reportError(getClass().getName(), "S1", e.getMessage());
            }
        }

        IBinder getBinder() throws InterruptedException {
            if (!this.retrieved) {
                this.retrieved = true;
            }
            return this.l$1_I$l$.take();
        }
    }

    private static final class AdvertisingInterface implements IInterface {
        private IBinder l$1_I$l$;

        AdvertisingInterface(IBinder iBinder) {
            this.l$1_I$l$ = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.l$1_I$l$;
        }

        public String getId() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.l$1_I$l$.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}
