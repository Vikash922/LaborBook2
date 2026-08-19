package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzdj extends zzbx implements zzdk {
    public static zzdk asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        if (iInterfaceQueryLocalInterface instanceof zzdk) {
            return (zzdk) iInterfaceQueryLocalInterface;
        }
        return new zzdm(iBinder);
    }

    public zzdj() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbx
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzdl zzdnVar;
        zzdl zzdlVar;
        zzdl zzdnVar2 = null;
        zzdl zzdnVar3 = null;
        zzdl zzdnVar4 = null;
        zzdl zzdnVar5 = null;
        zzdq zzdsVar = null;
        zzdq zzdsVar2 = null;
        zzdq zzdsVar3 = null;
        zzdl zzdnVar6 = null;
        zzdl zzdnVar7 = null;
        zzdl zzdnVar8 = null;
        zzdl zzdnVar9 = null;
        zzdl zzdnVar10 = null;
        zzdl zzdnVar11 = null;
        zzdr zzduVar = null;
        zzdl zzdnVar12 = null;
        zzdl zzdnVar13 = null;
        zzdl zzdnVar14 = null;
        zzdl zzdnVar15 = null;
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzdt zzdtVar = (zzdt) zzbw.zza(parcel, zzdt.CREATOR);
                long j = parcel.readLong();
                zzbw.zzb(parcel);
                initialize(iObjectWrapperAsInterface, zzdtVar, j);
                break;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                boolean zZzc = zzbw.zzc(parcel);
                boolean zZzc2 = zzbw.zzc(parcel);
                long j2 = parcel.readLong();
                zzbw.zzb(parcel);
                logEvent(string, string2, bundle, zZzc, zZzc2, j2);
                break;
            case 3:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                Bundle bundle2 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzdlVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface instanceof zzdl) {
                        zzdnVar = (zzdl) iInterfaceQueryLocalInterface;
                    } else {
                        zzdnVar = new zzdn(strongBinder);
                    }
                    zzdlVar = zzdnVar;
                }
                long j3 = parcel.readLong();
                zzbw.zzb(parcel);
                logEventAndBundle(string3, string4, bundle2, zzdlVar, j3);
                break;
            case 4:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zZzc3 = zzbw.zzc(parcel);
                long j4 = parcel.readLong();
                zzbw.zzb(parcel);
                setUserProperty(string5, string6, iObjectWrapperAsInterface2, zZzc3, j4);
                break;
            case 5:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                boolean zZzc4 = zzbw.zzc(parcel);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface2 instanceof zzdl) {
                        zzdnVar2 = (zzdl) iInterfaceQueryLocalInterface2;
                    } else {
                        zzdnVar2 = new zzdn(strongBinder2);
                    }
                }
                zzbw.zzb(parcel);
                getUserProperties(string7, string8, zZzc4, zzdnVar2);
                break;
            case 6:
                String string9 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface3 instanceof zzdl) {
                        zzdnVar15 = (zzdl) iInterfaceQueryLocalInterface3;
                    } else {
                        zzdnVar15 = new zzdn(strongBinder3);
                    }
                }
                zzbw.zzb(parcel);
                getMaxUserProperties(string9, zzdnVar15);
                break;
            case 7:
                String string10 = parcel.readString();
                long j5 = parcel.readLong();
                zzbw.zzb(parcel);
                setUserId(string10, j5);
                break;
            case 8:
                Bundle bundle3 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long j6 = parcel.readLong();
                zzbw.zzb(parcel);
                setConditionalUserProperty(bundle3, j6);
                break;
            case 9:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                Bundle bundle4 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzbw.zzb(parcel);
                clearConditionalUserProperty(string11, string12, bundle4);
                break;
            case 10:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface4 instanceof zzdl) {
                        zzdnVar14 = (zzdl) iInterfaceQueryLocalInterface4;
                    } else {
                        zzdnVar14 = new zzdn(strongBinder4);
                    }
                }
                zzbw.zzb(parcel);
                getConditionalUserProperties(string13, string14, zzdnVar14);
                break;
            case 11:
                boolean zZzc5 = zzbw.zzc(parcel);
                long j7 = parcel.readLong();
                zzbw.zzb(parcel);
                setMeasurementEnabled(zZzc5, j7);
                break;
            case 12:
                long j8 = parcel.readLong();
                zzbw.zzb(parcel);
                resetAnalyticsData(j8);
                break;
            case 13:
                long j9 = parcel.readLong();
                zzbw.zzb(parcel);
                setMinimumSessionDuration(j9);
                break;
            case 14:
                long j10 = parcel.readLong();
                zzbw.zzb(parcel);
                setSessionTimeoutDuration(j10);
                break;
            case 15:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                long j11 = parcel.readLong();
                zzbw.zzb(parcel);
                setCurrentScreen(iObjectWrapperAsInterface3, string15, string16, j11);
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface5 instanceof zzdl) {
                        zzdnVar13 = (zzdl) iInterfaceQueryLocalInterface5;
                    } else {
                        zzdnVar13 = new zzdn(strongBinder5);
                    }
                }
                zzbw.zzb(parcel);
                getCurrentScreenName(zzdnVar13);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface6 instanceof zzdl) {
                        zzdnVar12 = (zzdl) iInterfaceQueryLocalInterface6;
                    } else {
                        zzdnVar12 = new zzdn(strongBinder6);
                    }
                }
                zzbw.zzb(parcel);
                getCurrentScreenClass(zzdnVar12);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    if (iInterfaceQueryLocalInterface7 instanceof zzdr) {
                        zzduVar = (zzdr) iInterfaceQueryLocalInterface7;
                    } else {
                        zzduVar = new zzdu(strongBinder7);
                    }
                }
                zzbw.zzb(parcel);
                setInstanceIdProvider(zzduVar);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface8 instanceof zzdl) {
                        zzdnVar11 = (zzdl) iInterfaceQueryLocalInterface8;
                    } else {
                        zzdnVar11 = new zzdn(strongBinder8);
                    }
                }
                zzbw.zzb(parcel);
                getCachedAppInstanceId(zzdnVar11);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface9 instanceof zzdl) {
                        zzdnVar10 = (zzdl) iInterfaceQueryLocalInterface9;
                    } else {
                        zzdnVar10 = new zzdn(strongBinder9);
                    }
                }
                zzbw.zzb(parcel);
                getAppInstanceId(zzdnVar10);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface10 instanceof zzdl) {
                        zzdnVar9 = (zzdl) iInterfaceQueryLocalInterface10;
                    } else {
                        zzdnVar9 = new zzdn(strongBinder10);
                    }
                }
                zzbw.zzb(parcel);
                getGmpAppId(zzdnVar9);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface11 instanceof zzdl) {
                        zzdnVar8 = (zzdl) iInterfaceQueryLocalInterface11;
                    } else {
                        zzdnVar8 = new zzdn(strongBinder11);
                    }
                }
                zzbw.zzb(parcel);
                generateEventId(zzdnVar8);
                break;
            case 23:
                String string17 = parcel.readString();
                long j12 = parcel.readLong();
                zzbw.zzb(parcel);
                beginAdUnitExposure(string17, j12);
                break;
            case 24:
                String string18 = parcel.readString();
                long j13 = parcel.readLong();
                zzbw.zzb(parcel);
                endAdUnitExposure(string18, j13);
                break;
            case 25:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j14 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityStarted(iObjectWrapperAsInterface4, j14);
                break;
            case 26:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j15 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityStopped(iObjectWrapperAsInterface5, j15);
                break;
            case 27:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long j16 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityCreated(iObjectWrapperAsInterface6, bundle5, j16);
                break;
            case 28:
                IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j17 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityDestroyed(iObjectWrapperAsInterface7, j17);
                break;
            case 29:
                IObjectWrapper iObjectWrapperAsInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j18 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityPaused(iObjectWrapperAsInterface8, j18);
                break;
            case 30:
                IObjectWrapper iObjectWrapperAsInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long j19 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityResumed(iObjectWrapperAsInterface9, j19);
                break;
            case 31:
                IObjectWrapper iObjectWrapperAsInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface12 instanceof zzdl) {
                        zzdnVar7 = (zzdl) iInterfaceQueryLocalInterface12;
                    } else {
                        zzdnVar7 = new zzdn(strongBinder12);
                    }
                }
                long j20 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivitySaveInstanceState(iObjectWrapperAsInterface10, zzdnVar7, j20);
                break;
            case 32:
                Bundle bundle6 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface13 instanceof zzdl) {
                        zzdnVar6 = (zzdl) iInterfaceQueryLocalInterface13;
                    } else {
                        zzdnVar6 = new zzdn(strongBinder13);
                    }
                }
                long j21 = parcel.readLong();
                zzbw.zzb(parcel);
                performAction(bundle6, zzdnVar6, j21);
                break;
            case 33:
                int i3 = parcel.readInt();
                String string19 = parcel.readString();
                IObjectWrapper iObjectWrapperAsInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperAsInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbw.zzb(parcel);
                logHealthData(i3, string19, iObjectWrapperAsInterface11, iObjectWrapperAsInterface12, iObjectWrapperAsInterface13);
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (iInterfaceQueryLocalInterface14 instanceof zzdq) {
                        zzdsVar3 = (zzdq) iInterfaceQueryLocalInterface14;
                    } else {
                        zzdsVar3 = new zzds(strongBinder14);
                    }
                }
                zzbw.zzb(parcel);
                setEventInterceptor(zzdsVar3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (iInterfaceQueryLocalInterface15 instanceof zzdq) {
                        zzdsVar2 = (zzdq) iInterfaceQueryLocalInterface15;
                    } else {
                        zzdsVar2 = new zzds(strongBinder15);
                    }
                }
                zzbw.zzb(parcel);
                registerOnMeasurementEventListener(zzdsVar2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (iInterfaceQueryLocalInterface16 instanceof zzdq) {
                        zzdsVar = (zzdq) iInterfaceQueryLocalInterface16;
                    } else {
                        zzdsVar = new zzds(strongBinder16);
                    }
                }
                zzbw.zzb(parcel);
                unregisterOnMeasurementEventListener(zzdsVar);
                break;
            case 37:
                HashMap mapZza = zzbw.zza(parcel);
                zzbw.zzb(parcel);
                initForTests(mapZza);
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface17 instanceof zzdl) {
                        zzdnVar5 = (zzdl) iInterfaceQueryLocalInterface17;
                    } else {
                        zzdnVar5 = new zzdn(strongBinder17);
                    }
                }
                int i4 = parcel.readInt();
                zzbw.zzb(parcel);
                getTestFlag(zzdnVar5, i4);
                break;
            case 39:
                boolean zZzc6 = zzbw.zzc(parcel);
                zzbw.zzb(parcel);
                setDataCollectionEnabled(zZzc6);
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface18 instanceof zzdl) {
                        zzdnVar4 = (zzdl) iInterfaceQueryLocalInterface18;
                    } else {
                        zzdnVar4 = new zzdn(strongBinder18);
                    }
                }
                zzbw.zzb(parcel);
                isDataCollectionEnabled(zzdnVar4);
                break;
            case 41:
            case 47:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzbw.zzb(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long j22 = parcel.readLong();
                zzbw.zzb(parcel);
                clearMeasurementEnabled(j22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long j23 = parcel.readLong();
                zzbw.zzb(parcel);
                setConsent(bundle8, j23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long j24 = parcel.readLong();
                zzbw.zzb(parcel);
                setConsentThirdParty(bundle9, j24);
                break;
            case 46:
                IBinder strongBinder19 = parcel.readStrongBinder();
                if (strongBinder19 != null) {
                    IInterface iInterfaceQueryLocalInterface19 = strongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface19 instanceof zzdl) {
                        zzdnVar3 = (zzdl) iInterfaceQueryLocalInterface19;
                    } else {
                        zzdnVar3 = new zzdn(strongBinder19);
                    }
                }
                zzbw.zzb(parcel);
                getSessionId(zzdnVar3);
                break;
            case 48:
                Intent intent = (Intent) zzbw.zza(parcel, Intent.CREATOR);
                zzbw.zzb(parcel);
                setSgtmDebugInfo(intent);
                break;
            case 49:
                Bundle bundle10 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzbw.zzb(parcel);
                setDefaultEventParametersWithBackfill(bundle10);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
