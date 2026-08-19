package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzgb extends IInterface {
    zzak zza(zzp zzpVar) throws RemoteException;

    List<zznk> zza(zzp zzpVar, Bundle bundle) throws RemoteException;

    List<zzok> zza(zzp zzpVar, boolean z) throws RemoteException;

    List<zzaf> zza(String str, String str2, zzp zzpVar) throws RemoteException;

    List<zzaf> zza(String str, String str2, String str3) throws RemoteException;

    List<zzok> zza(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzok> zza(String str, String str2, boolean z, zzp zzpVar) throws RemoteException;

    void zza(long j, String str, String str2, String str3) throws RemoteException;

    void zza(Bundle bundle, zzp zzpVar) throws RemoteException;

    void zza(zzaf zzafVar) throws RemoteException;

    void zza(zzaf zzafVar, zzp zzpVar) throws RemoteException;

    void zza(zzbh zzbhVar, zzp zzpVar) throws RemoteException;

    void zza(zzbh zzbhVar, String str, String str2) throws RemoteException;

    void zza(zzok zzokVar, zzp zzpVar) throws RemoteException;

    byte[] zza(zzbh zzbhVar, String str) throws RemoteException;

    String zzb(zzp zzpVar) throws RemoteException;

    void zzb(Bundle bundle, zzp zzpVar) throws RemoteException;

    void zzc(zzp zzpVar) throws RemoteException;

    void zzd(zzp zzpVar) throws RemoteException;

    void zze(zzp zzpVar) throws RemoteException;

    void zzf(zzp zzpVar) throws RemoteException;

    void zzg(zzp zzpVar) throws RemoteException;

    void zzh(zzp zzpVar) throws RemoteException;

    void zzi(zzp zzpVar) throws RemoteException;
}
