package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzdv {
    private static volatile zzdv zzb;
    protected final Clock zza;
    private final String zzc;
    private final ExecutorService zzd;
    private final AppMeasurementSdk zze;
    private final List<Pair<com.google.android.gms.measurement.internal.zzjj, zzd>> zzf;
    private int zzg;
    private boolean zzh;
    private String zzi;
    private volatile zzdk zzj;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
    /* JADX INFO: loaded from: classes2.dex */
    static class zza extends zzdp {
        private final com.google.android.gms.measurement.internal.zzjg zza;

        @Override // com.google.android.gms.internal.measurement.zzdq
        public final int zza() {
            return System.identityHashCode(this.zza);
        }

        zza(com.google.android.gms.measurement.internal.zzjg zzjgVar) {
            this.zza = zzjgVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzdq
        public final void zza(String str, String str2, Bundle bundle, long j) {
            this.zza.interceptEvent(str, str2, bundle, j);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
    class zzc implements Application.ActivityLifecycleCallbacks {
        zzc() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzdv.this.zza(new zzfg(this, bundle, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzdv.this.zza(new zzfl(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzdv.this.zza(new zzfh(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzdv.this.zza(new zzfi(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzdi zzdiVar = new zzdi();
            zzdv.this.zza(new zzfj(this, activity, zzdiVar));
            Bundle bundleZza = zzdiVar.zza(50L);
            if (bundleZza != null) {
                bundle.putAll(bundleZza);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzdv.this.zza(new zzff(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzdv.this.zza(new zzfk(this, activity));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
    static class zzd extends zzdp {
        private final com.google.android.gms.measurement.internal.zzjj zza;

        @Override // com.google.android.gms.internal.measurement.zzdq
        public final int zza() {
            return System.identityHashCode(this.zza);
        }

        zzd(com.google.android.gms.measurement.internal.zzjj zzjjVar) {
            this.zza = zzjjVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzdq
        public final void zza(String str, String str2, Bundle bundle, long j) {
            this.zza.onEvent(str, str2, bundle, j);
        }
    }

    public final int zza(String str) {
        zzdi zzdiVar = new zzdi();
        zza(new zzew(this, str, zzdiVar));
        Integer num = (Integer) zzdi.zza(zzdiVar.zza(WorkRequest.MIN_BACKOFF_MILLIS), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@22.1.0 */
    abstract class zzb implements Runnable {
        final long zza;
        final long zzb;
        private final boolean zzc;

        zzb(zzdv zzdvVar) {
            this(true);
        }

        abstract void zza() throws RemoteException;

        protected void zzb() {
        }

        zzb(boolean z) {
            this.zza = zzdv.this.zza.currentTimeMillis();
            this.zzb = zzdv.this.zza.elapsedRealtime();
            this.zzc = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzdv.this.zzh) {
                zzb();
                return;
            }
            try {
                zza();
            } catch (Exception e) {
                zzdv.this.zza(e, false, this.zzc);
                zzb();
            }
        }
    }

    public final long zza() {
        zzdi zzdiVar = new zzdi();
        zza(new zzen(this, zzdiVar));
        Long lZzb = zzdiVar.zzb(500L);
        if (lZzb == null) {
            long jNextLong = new Random(System.nanoTime() ^ this.zza.currentTimeMillis()).nextLong();
            int i = this.zzg + 1;
            this.zzg = i;
            return jNextLong + ((long) i);
        }
        return lZzb.longValue();
    }

    public final Bundle zza(Bundle bundle, boolean z) {
        zzdi zzdiVar = new zzdi();
        zza(new zzet(this, bundle, zzdiVar));
        if (z) {
            return zzdiVar.zza(5000L);
        }
        return null;
    }

    public final AppMeasurementSdk zzb() {
        return this.zze;
    }

    protected final zzdk zza(Context context, boolean z) {
        try {
            return zzdj.asInterface(DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            zza((Exception) e, true, false);
            return null;
        }
    }

    public static zzdv zza(Context context) {
        return zza(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    public static zzdv zza(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (zzb == null) {
            synchronized (zzdv.class) {
                if (zzb == null) {
                    zzb = new zzdv(context, str, str2, str3, bundle);
                }
            }
        }
        return zzb;
    }

    public final Long zzc() {
        zzdi zzdiVar = new zzdi();
        zza(new zzey(this, zzdiVar));
        return zzdiVar.zzb(120000L);
    }

    public final Object zza(int i) {
        zzdi zzdiVar = new zzdi();
        zza(new zzex(this, zzdiVar, i));
        return zzdi.zza(zzdiVar.zza(15000L), Object.class);
    }

    public final String zzd() {
        return this.zzi;
    }

    public final String zze() {
        zzdi zzdiVar = new zzdi();
        zza(new zzev(this, zzdiVar));
        return zzdiVar.zzc(120000L);
    }

    public final String zzf() {
        zzdi zzdiVar = new zzdi();
        zza(new zzeo(this, zzdiVar));
        return zzdiVar.zzc(50L);
    }

    public final String zzg() {
        zzdi zzdiVar = new zzdi();
        zza(new zzep(this, zzdiVar));
        return zzdiVar.zzc(500L);
    }

    public final String zzh() {
        zzdi zzdiVar = new zzdi();
        zza(new zzeq(this, zzdiVar));
        return zzdiVar.zzc(500L);
    }

    public final String zzi() {
        zzdi zzdiVar = new zzdi();
        zza(new zzel(this, zzdiVar));
        return zzdiVar.zzc(500L);
    }

    public final List<Bundle> zza(String str, String str2) {
        zzdi zzdiVar = new zzdi();
        zza(new zzec(this, str, str2, zzdiVar));
        List<Bundle> list = (List) zzdi.zza(zzdiVar.zza(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        zzdi zzdiVar = new zzdi();
        zza(new zzes(this, str, str2, z, zzdiVar));
        Bundle bundleZza = zzdiVar.zza(5000L);
        if (bundleZza == null || bundleZza.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleZza.size());
        for (String str3 : bundleZza.keySet()) {
            Object obj = bundleZza.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    private zzdv(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !zzc(str2, str3)) {
            this.zzc = "FA";
        } else {
            this.zzc = str;
        }
        this.zza = DefaultClock.getInstance();
        this.zzd = zzcz.zza().zza(new zzeh(this), 1);
        this.zze = new AppMeasurementSdk(this);
        this.zzf = new ArrayList();
        if (zzb(context) && !zzk()) {
            this.zzi = null;
            this.zzh = true;
            Log.w(this.zzc, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!zzc(str2, str3)) {
            this.zzi = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.zzc, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.zzc, "Deferring to Google Analytics for Firebase for event data collection. https://firebase.google.com/docs/analytics");
            }
        } else {
            this.zzi = str2;
        }
        zza(new zzdy(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.zzc, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new zzc());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Exception exc, boolean z, boolean z2) {
        this.zzh |= z;
        if (z) {
            Log.w(this.zzc, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            zza(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
        Log.w(this.zzc, "Error with data collection. Data lost.", exc);
    }

    public final void zzb(String str) {
        zza(new zzej(this, str));
    }

    public final void zza(String str, String str2, Bundle bundle) {
        zza(new zzdz(this, str, str2, bundle));
    }

    public final void zzc(String str) {
        zza(new zzem(this, str));
    }

    public final void zza(String str, Bundle bundle) {
        zza(null, str, bundle, false, true, null);
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, null);
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        zza(str, str2, bundle, true, false, Long.valueOf(j));
    }

    private final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        zza(new zzfd(this, l, str, str2, bundle, z, z2));
    }

    public final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zza(new zzer(this, false, 5, str, obj, null, null));
    }

    public final void zza(com.google.android.gms.measurement.internal.zzjj zzjjVar) {
        Preconditions.checkNotNull(zzjjVar);
        synchronized (this.zzf) {
            for (int i = 0; i < this.zzf.size(); i++) {
                if (zzjjVar.equals(this.zzf.get(i).first)) {
                    Log.w(this.zzc, "OnEventListener already registered.");
                    return;
                }
            }
            zzd zzdVar = new zzd(zzjjVar);
            this.zzf.add(new Pair<>(zzjjVar, zzdVar));
            if (this.zzj != null) {
                try {
                    this.zzj.registerOnMeasurementEventListener(zzdVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.zzc, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            zza(new zzfb(this, zzdVar));
        }
    }

    public final void zzj() {
        zza(new zzei(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        this.zzd.execute(zzbVar);
    }

    public final void zza(Bundle bundle) {
        zza(new zzea(this, bundle));
    }

    public final void zzb(Bundle bundle) {
        zza(new zzeg(this, bundle));
    }

    public final void zzc(Bundle bundle) {
        zza(new zzef(this, bundle));
    }

    public final void zza(Activity activity, String str, String str2) {
        zza(new zzee(this, activity, str, str2));
    }

    public final void zza(boolean z) {
        zza(new zzfa(this, z));
    }

    public final void zzd(Bundle bundle) {
        zza(new zzez(this, bundle));
    }

    public final void zza(com.google.android.gms.measurement.internal.zzjg zzjgVar) {
        zza zzaVar = new zza(zzjgVar);
        if (this.zzj != null) {
            try {
                this.zzj.setEventInterceptor(zzaVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                Log.w(this.zzc, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
            }
        }
        zza(new zzeu(this, zzaVar));
    }

    public final void zza(Boolean bool) {
        zza(new zzed(this, bool));
    }

    public final void zza(long j) {
        zza(new zzek(this, j));
    }

    public final void zza(Intent intent) {
        zza(new zzfc(this, intent));
    }

    public final void zzd(String str) {
        zza(new zzeb(this, str));
    }

    public final void zzb(String str, String str2) {
        zza((String) null, str, (Object) str2, false);
    }

    public final void zza(String str, String str2, Object obj, boolean z) {
        zza(new zzdx(this, str, str2, obj, z));
    }

    public final void zzb(com.google.android.gms.measurement.internal.zzjj zzjjVar) {
        Pair<com.google.android.gms.measurement.internal.zzjj, zzd> pair;
        Preconditions.checkNotNull(zzjjVar);
        synchronized (this.zzf) {
            int i = 0;
            while (true) {
                if (i >= this.zzf.size()) {
                    pair = null;
                    break;
                } else {
                    if (zzjjVar.equals(this.zzf.get(i).first)) {
                        pair = this.zzf.get(i);
                        break;
                    }
                    i++;
                }
            }
            if (pair == null) {
                Log.w(this.zzc, "OnEventListener had not been registered.");
                return;
            }
            this.zzf.remove(pair);
            zzd zzdVar = (zzd) pair.second;
            if (this.zzj != null) {
                try {
                    this.zzj.unregisterOnMeasurementEventListener(zzdVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.zzc, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            zza(new zzfe(this, zzdVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzc(String str, String str2) {
        return (str2 == null || str == null || zzk()) ? false : true;
    }

    private final boolean zzk() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, getClass().getClassLoader());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private static boolean zzb(Context context) {
        return new com.google.android.gms.measurement.internal.zzhq(context, com.google.android.gms.measurement.internal.zzhq.zza(context)).zza("google_app_id") != null;
    }
}
