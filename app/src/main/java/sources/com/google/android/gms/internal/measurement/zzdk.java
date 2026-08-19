package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zzdk extends IInterface {
    void beginAdUnitExposure(String str, long j) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j) throws RemoteException;

    void endAdUnitExposure(String str, long j) throws RemoteException;

    void generateEventId(zzdl zzdlVar) throws RemoteException;

    void getAppInstanceId(zzdl zzdlVar) throws RemoteException;

    void getCachedAppInstanceId(zzdl zzdlVar) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, zzdl zzdlVar) throws RemoteException;

    void getCurrentScreenClass(zzdl zzdlVar) throws RemoteException;

    void getCurrentScreenName(zzdl zzdlVar) throws RemoteException;

    void getGmpAppId(zzdl zzdlVar) throws RemoteException;

    void getMaxUserProperties(String str, zzdl zzdlVar) throws RemoteException;

    void getSessionId(zzdl zzdlVar) throws RemoteException;

    void getTestFlag(zzdl zzdlVar, int i) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z, zzdl zzdlVar) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(IObjectWrapper iObjectWrapper, zzdt zzdtVar, long j) throws RemoteException;

    void isDataCollectionEnabled(zzdl zzdlVar) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, zzdl zzdlVar, long j) throws RemoteException;

    void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException;

    void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException;

    void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException;

    void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException;

    void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException;

    void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzdl zzdlVar, long j) throws RemoteException;

    void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException;

    void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException;

    void performAction(Bundle bundle, zzdl zzdlVar, long j) throws RemoteException;

    void registerOnMeasurementEventListener(zzdq zzdqVar) throws RemoteException;

    void resetAnalyticsData(long j) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException;

    void setConsent(Bundle bundle, long j) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j) throws RemoteException;

    void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException;

    void setDataCollectionEnabled(boolean z) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setDefaultEventParametersWithBackfill(Bundle bundle) throws RemoteException;

    void setEventInterceptor(zzdq zzdqVar) throws RemoteException;

    void setInstanceIdProvider(zzdr zzdrVar) throws RemoteException;

    void setMeasurementEnabled(boolean z, long j) throws RemoteException;

    void setMinimumSessionDuration(long j) throws RemoteException;

    void setSessionTimeoutDuration(long j) throws RemoteException;

    void setSgtmDebugInfo(Intent intent) throws RemoteException;

    void setUserId(String str, long j) throws RemoteException;

    void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException;

    void unregisterOnMeasurementEventListener(zzdq zzdqVar) throws RemoteException;
}
