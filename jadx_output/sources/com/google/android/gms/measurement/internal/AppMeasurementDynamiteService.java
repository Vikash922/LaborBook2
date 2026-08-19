package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzdj {
    zzhw zza = null;
    private final Map<Integer, zzjj> zzb = new ArrayMap();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@22.1.0 */
    class zza implements zzjj {
        private com.google.android.gms.internal.measurement.zzdq zza;

        zza(com.google.android.gms.internal.measurement.zzdq zzdqVar) {
            this.zza = zzdqVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzjj
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.zza.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                if (AppMeasurementDynamiteService.this.zza != null) {
                    AppMeasurementDynamiteService.this.zza.zzj().zzu().zza("Event listener threw exception", e);
                }
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@22.1.0 */
    class zzb implements zzjg {
        private com.google.android.gms.internal.measurement.zzdq zza;

        zzb(com.google.android.gms.internal.measurement.zzdq zzdqVar) {
            this.zza = zzdqVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzjg
        public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.zza.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                if (AppMeasurementDynamiteService.this.zza != null) {
                    AppMeasurementDynamiteService.this.zza.zzj().zzu().zza("Event interceptor threw exception", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zza();
        this.zza.zze().zza(str, j);
    }

    @EnsuresNonNull({"scion"})
    private final void zza() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zza();
        this.zza.zzp().zza((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zza();
        this.zza.zze().zzb(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void generateEventId(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        long jZzm = this.zza.zzt().zzm();
        zza();
        this.zza.zzt().zza(zzdlVar, jZzm);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzj(this, zzdlVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        zza(zzdlVar, this.zza.zzp().zzag());
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzn(this, zzdlVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        zza(zzdlVar, this.zza.zzp().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        zza(zzdlVar, this.zza.zzp().zzai());
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        zza(zzdlVar, this.zza.zzp().zzaj());
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        this.zza.zzp();
        zzjk.zza(str);
        zza();
        this.zza.zzt().zza(zzdlVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getSessionId(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        this.zza.zzp().zza(zzdlVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getTestFlag(com.google.android.gms.internal.measurement.zzdl zzdlVar, int i) throws RemoteException {
        zza();
        if (i == 0) {
            this.zza.zzt().zza(zzdlVar, this.zza.zzp().zzak());
            return;
        }
        if (i == 1) {
            this.zza.zzt().zza(zzdlVar, this.zza.zzp().zzaf().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.zza.zzt().zza(zzdlVar, this.zza.zzp().zzae().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.zza.zzt().zza(zzdlVar, this.zza.zzp().zzac().booleanValue());
                return;
            }
        }
        zzop zzopVarZzt = this.zza.zzt();
        double dDoubleValue = this.zza.zzp().zzad().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", dDoubleValue);
        try {
            zzdlVar.zza(bundle);
        } catch (RemoteException e) {
            zzopVarZzt.zzu.zzj().zzu().zza("Error returning double value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void getUserProperties(String str, String str2, boolean z, com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzl(this, zzdlVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void initForTests(Map map) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdt zzdtVar, long j) throws RemoteException {
        zzhw zzhwVar = this.zza;
        if (zzhwVar == null) {
            this.zza = zzhw.zza((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdtVar, Long.valueOf(j));
        } else {
            zzhwVar.zzj().zzu().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzdl zzdlVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzm(this, zzdlVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzdl zzdlVar, long j) throws RemoteException {
        zza();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzl().zzb(new zzi(this, zzdlVar, new zzbh(str2, new zzbc(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zza();
        this.zza.zzj().zza(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdl zzdlVar, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        Bundle bundle = new Bundle();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzdlVar.zza(bundle);
        } catch (RemoteException e) {
            this.zza.zzj().zzu().zza("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzdl zzdlVar, long j) throws RemoteException {
        zza();
        zzdlVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdq zzdqVar) throws RemoteException {
        zzjj zzaVar;
        zza();
        synchronized (this.zzb) {
            zzaVar = this.zzb.get(Integer.valueOf(zzdqVar.zza()));
            if (zzaVar == null) {
                zzaVar = new zza(zzdqVar);
                this.zzb.put(Integer.valueOf(zzdqVar.zza()), zzaVar);
            }
        }
        this.zza.zzp().zza(zzaVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void resetAnalyticsData(long j) throws RemoteException {
        zza();
        this.zza.zzp().zza(j);
    }

    private final void zza(com.google.android.gms.internal.measurement.zzdl zzdlVar, String str) {
        zza();
        this.zza.zzt().zza(zzdlVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zza();
        if (bundle == null) {
            this.zza.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.zza.zzp().zzb(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        zza();
        this.zza.zzp().zzc(bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zza();
        this.zza.zzp().zzd(bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        zza();
        this.zza.zzq().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zza();
        this.zza.zzp().zzc(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setDefaultEventParameters(Bundle bundle) {
        zza();
        this.zza.zzp().zzd(bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setDefaultEventParametersWithBackfill(Bundle bundle) {
        zza();
        this.zza.zzp().zze(bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzdq zzdqVar) throws RemoteException {
        zza();
        zzb zzbVar = new zzb(zzdqVar);
        if (this.zza.zzl().zzg()) {
            this.zza.zzp().zza(zzbVar);
        } else {
            this.zza.zzl().zzb(new zzk(this, zzbVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdr zzdrVar) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zza();
        this.zza.zzp().zza(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zza();
        this.zza.zzp().zzc(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setSgtmDebugInfo(Intent intent) throws RemoteException {
        zza();
        this.zza.zzp().zza(intent);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setUserId(String str, long j) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdq zzdqVar) throws RemoteException {
        zzjj zzjjVarRemove;
        zza();
        synchronized (this.zzb) {
            zzjjVarRemove = this.zzb.remove(Integer.valueOf(zzdqVar.zza()));
        }
        if (zzjjVarRemove == null) {
            zzjjVarRemove = new zza(zzdqVar);
        }
        this.zza.zzp().zzb(zzjjVarRemove);
    }
}
