package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgd extends com.google.android.gms.internal.measurement.zzbu implements zzgb {
    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzak zza(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        Parcel parcelZza = zza(21, parcelM152a_);
        zzak zzakVar = (zzak) com.google.android.gms.internal.measurement.zzbw.zza(parcelZza, zzak.CREATOR);
        parcelZza.recycle();
        return zzakVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzb(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        Parcel parcelZza = zza(11, parcelM152a_);
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zznk> zza(zzp zzpVar, Bundle bundle) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, bundle);
        Parcel parcelZza = zza(24, parcelM152a_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zznk.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzok> zza(zzp zzpVar, boolean z) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, z);
        Parcel parcelZza = zza(7, parcelM152a_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzok.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzaf> zza(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        Parcel parcelZza = zza(16, parcelM152a_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzaf.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzaf> zza(String str, String str2, String str3) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        parcelM152a_.writeString(str3);
        Parcel parcelZza = zza(17, parcelM152a_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzaf.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzok> zza(String str, String str2, boolean z, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, z);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        Parcel parcelZza = zza(14, parcelM152a_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzok.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzok> zza(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        parcelM152a_.writeString(str3);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, z);
        Parcel parcelZza = zza(15, parcelM152a_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzok.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    zzgd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzc(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(27, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzd(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(4, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbh zzbhVar, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzbhVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(1, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbh zzbhVar, String str, String str2) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzbhVar);
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        zzb(5, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(18, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzaf zzafVar, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzafVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(12, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzaf zzafVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzafVar);
        zzb(13, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(20, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(long j, String str, String str2, String str3) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        parcelM152a_.writeLong(j);
        parcelM152a_.writeString(str);
        parcelM152a_.writeString(str2);
        parcelM152a_.writeString(str3);
        zzb(10, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, bundle);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(19, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzb(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, bundle);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(28, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(26, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(6, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(25, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzok zzokVar, zzp zzpVar) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzokVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzpVar);
        zzb(2, parcelM152a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zza(zzbh zzbhVar, String str) throws RemoteException {
        Parcel parcelM152a_ = m152a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelM152a_, zzbhVar);
        parcelM152a_.writeString(str);
        Parcel parcelZza = zza(9, parcelM152a_);
        byte[] bArrCreateByteArray = parcelZza.createByteArray();
        parcelZza.recycle();
        return bArrCreateByteArray;
    }
}
