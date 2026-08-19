package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzic implements zzif {
    private static final Map<Uri, zzic> zza = new ArrayMap();
    private static final String[] zzb = {"key", "value"};
    private final ContentResolver zzc;
    private final Uri zzd;
    private final Runnable zze;
    private final ContentObserver zzf;
    private final Object zzg;
    private volatile Map<String, String> zzh;
    private final List<zzid> zzi;

    public static zzic zza(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        zzic zzicVar;
        synchronized (zzic.class) {
            Map<Uri, zzic> map = zza;
            zzicVar = map.get(uri);
            if (zzicVar == null) {
                try {
                    zzic zzicVar2 = new zzic(contentResolver, uri, runnable);
                    try {
                        map.put(uri, zzicVar2);
                    } catch (SecurityException unused) {
                    }
                    zzicVar = zzicVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzicVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final /* synthetic */ Object zza(String str) {
        return zza().get(str);
    }

    public final Map<String, String> zza() {
        Map<String, String> mapZze = this.zzh;
        if (mapZze == null) {
            synchronized (this.zzg) {
                mapZze = this.zzh;
                if (mapZze == null) {
                    mapZze = zze();
                    this.zzh = mapZze;
                }
            }
        }
        return mapZze != null ? mapZze : Collections.emptyMap();
    }

    final /* synthetic */ Map zzb() {
        Map map;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = this.zzc.acquireUnstableContentProviderClient(this.zzd);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.emptyMap();
            }
            Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(this.zzd, zzb, null, null, null);
            try {
                if (cursorQuery == null) {
                    Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                    Map mapEmptyMap = Collections.emptyMap();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mapEmptyMap;
                }
                int count = cursorQuery.getCount();
                if (count == 0) {
                    Map mapEmptyMap2 = Collections.emptyMap();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mapEmptyMap2;
                }
                if (count <= 256) {
                    map = new ArrayMap(count);
                } else {
                    map = new HashMap(count, 1.0f);
                }
                while (cursorQuery.moveToNext()) {
                    map.put(cursorQuery.getString(0), cursorQuery.getString(1));
                }
                if (cursorQuery.isAfterLast()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return map;
                }
                Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                Map mapEmptyMap3 = Collections.emptyMap();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return mapEmptyMap3;
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
            Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e);
            return Collections.emptyMap();
        } finally {
            contentProviderClientAcquireUnstableContentProviderClient.release();
        }
    }

    private final Map<String, String> zze() {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                return (Map) zzii.zza(new zzih() { // from class: com.google.android.gms.internal.measurement.zzib
                    @Override // com.google.android.gms.internal.measurement.zzih
                    public final Object zza() {
                        return this.zza.zzb();
                    }
                });
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        } catch (SQLiteException | IllegalStateException | SecurityException e) {
            Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e);
            return Collections.emptyMap();
        }
    }

    private zzic(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        zzie zzieVar = new zzie(this, null);
        this.zzf = zzieVar;
        this.zzg = new Object();
        this.zzi = new ArrayList();
        Preconditions.checkNotNull(contentResolver);
        Preconditions.checkNotNull(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        this.zze = runnable;
        contentResolver.registerContentObserver(uri, false, zzieVar);
    }

    static synchronized void zzc() {
        for (zzic zzicVar : zza.values()) {
            zzicVar.zzc.unregisterContentObserver(zzicVar.zzf);
        }
        zza.clear();
    }

    public final void zzd() {
        synchronized (this.zzg) {
            this.zzh = null;
            this.zze.run();
        }
        synchronized (this) {
            Iterator<zzid> it = this.zzi.iterator();
            while (it.hasNext()) {
                it.next().zza();
            }
        }
    }
}
