package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdm extends zzbu implements zzdk {
    zzdm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeLong(j);
        zzb(23, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, bundle);
        zzb(9, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void clearMeasurementEnabled(long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeLong(j);
        zzb(43, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeLong(j);
        zzb(24, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void generateEventId(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(22, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getAppInstanceId(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(20, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getCachedAppInstanceId(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(19, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getConditionalUserProperties(String str, String str2, zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(10, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getCurrentScreenClass(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(17, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getCurrentScreenName(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(16, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getGmpAppId(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(21, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getMaxUserProperties(String str, zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(6, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getSessionId(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(46, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getTestFlag(zzdl zzdlVar, int i) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        parcelM152a_.writeInt(i);
        zzb(38, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void getUserProperties(String str, String str2, boolean z, zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, z);
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(5, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void initForTests(Map map) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeMap(map);
        zzb(37, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void initialize(IObjectWrapper iObjectWrapper, zzdt zzdtVar, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        zzbw.zza(parcelM152a_, zzdtVar);
        parcelM152a_.writeLong(j);
        zzb(1, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void isDataCollectionEnabled(zzdl zzdlVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdlVar);
        zzb(40, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, bundle);
        zzbw.zza(parcelM152a_, z);
        zzbw.zza(parcelM152a_, z2);
        parcelM152a_.writeLong(j);
        zzb(2, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzdl zzdlVar, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, bundle);
        zzbw.zza(parcelM152a_, zzdlVar);
        parcelM152a_.writeLong(j);
        zzb(3, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeInt(i);
        parcelM152a_.writeString(str);
        zzbw.zza(parcelM152a_, iObjectWrapper);
        zzbw.zza(parcelM152a_, iObjectWrapper2);
        zzbw.zza(parcelM152a_, iObjectWrapper3);
        zzb(33, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        zzbw.zza(parcelM152a_, bundle);
        parcelM152a_.writeLong(j);
        zzb(27, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        parcelM152a_.writeLong(j);
        zzb(28, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        parcelM152a_.writeLong(j);
        zzb(29, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        parcelM152a_.writeLong(j);
        zzb(30, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzdl zzdlVar, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        zzbw.zza(parcelM152a_, zzdlVar);
        parcelM152a_.writeLong(j);
        zzb(31, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        parcelM152a_.writeLong(j);
        zzb(25, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        parcelM152a_.writeLong(j);
        zzb(26, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void performAction(Bundle bundle, zzdl zzdlVar, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        zzbw.zza(parcelM152a_, zzdlVar);
        parcelM152a_.writeLong(j);
        zzb(32, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void registerOnMeasurementEventListener(zzdq zzdqVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdqVar);
        zzb(35, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void resetAnalyticsData(long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeLong(j);
        zzb(12, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        parcelM152a_.writeLong(j);
        zzb(8, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        parcelM152a_.writeLong(j);
        zzb(44, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        parcelM152a_.writeLong(j);
        zzb(45, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, iObjectWrapper);
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        parcelM152a_.writeLong(j);
        zzb(15, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, z);
        zzb(39, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        zzb(42, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setDefaultEventParametersWithBackfill(Bundle bundle) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, bundle);
        zzb(49, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setEventInterceptor(zzdq zzdqVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdqVar);
        zzb(34, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setInstanceIdProvider(zzdr zzdrVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdrVar);
        zzb(18, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, z);
        parcelM152a_.writeLong(j);
        zzb(11, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setMinimumSessionDuration(long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeLong(j);
        zzb(13, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setSessionTimeoutDuration(long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeLong(j);
        zzb(14, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setSgtmDebugInfo(Intent intent) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, intent);
        zzb(48, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setUserId(String str, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeLong(j);
        zzb(7, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzbw.zza(parcelM152a_, iObjectWrapper);
        zzbw.zza(parcelM152a_, z);
        parcelM152a_.writeLong(j);
        zzb(4, parcelM152a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdk
    public final void unregisterOnMeasurementEventListener(zzdq zzdqVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        zzbw.zza(parcelM152a_, zzdqVar);
        zzb(36, parcelM152a_);
    }
}
