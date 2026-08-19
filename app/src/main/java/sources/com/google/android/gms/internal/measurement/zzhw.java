package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhw implements zzhy {
    @Override // com.google.android.gms.internal.measurement.zzhy
    public final String zza(ContentResolver contentResolver, String str) throws zzhx {
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(zzhq.zza);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                throw new zzhx("Unable to acquire ContentProviderClient");
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(zzhq.zza, null, null, new String[]{str}, null);
                try {
                    if (cursorQuery == null) {
                        throw new zzhx("ContentProvider query returned null cursor");
                    }
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(1);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    return null;
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (RemoteException e) {
                throw new zzhx("ContentProvider query failed", e);
            }
        } finally {
            contentProviderClientAcquireUnstableContentProviderClient.release();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhy
    public final <T extends Map<String, String>> T zza(ContentResolver contentResolver, String[] strArr, zzhv<T> zzhvVar) throws zzhx {
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(zzhq.zzb);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                throw new zzhx("Unable to acquire ContentProviderClient");
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(zzhq.zzb, null, null, strArr, null);
                try {
                    if (cursorQuery == null) {
                        throw new zzhx("ContentProvider query returned null cursor");
                    }
                    T t = (T) zzhvVar.zza(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        t.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    }
                    if (!cursorQuery.isAfterLast()) {
                        throw new zzhx("Cursor read incomplete (ContentProvider dead?)");
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return t;
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (RemoteException e) {
                throw new zzhx("ContentProvider query failed", e);
            }
        } finally {
            contentProviderClientAcquireUnstableContentProviderClient.release();
        }
    }
}
