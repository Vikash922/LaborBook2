package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzga extends com.google.android.gms.internal.measurement.zzbx implements zzgb {
    public zzga() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbx
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzbh zzbhVar = (zzbh) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzbh.CREATOR);
                zzp zzpVar = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(zzbhVar, zzpVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzok zzokVar = (zzok) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzok.CREATOR);
                zzp zzpVar2 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(zzokVar, zzpVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            case 22:
            case 23:
            default:
                return false;
            case 4:
                zzp zzpVar3 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzd(zzpVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbh zzbhVar2 = (zzbh) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzbh.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(zzbhVar2, string, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                zzp zzpVar4 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzh(zzpVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzp zzpVar5 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                boolean zZzc = com.google.android.gms.internal.measurement.zzbw.zzc(parcel);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                List<zzok> listZza = zza(zzpVar5, zZzc);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza);
                return true;
            case 9:
                zzbh zzbhVar3 = (zzbh) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzbh.CREATOR);
                String string3 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                byte[] bArrZza = zza(zzbhVar3, string3);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZza);
                return true;
            case 10:
                long j = parcel.readLong();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(j, string4, string5, string6);
                parcel2.writeNoException();
                return true;
            case 11:
                zzp zzpVar6 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                String strZzb = zzb(zzpVar6);
                parcel2.writeNoException();
                parcel2.writeString(strZzb);
                return true;
            case 12:
                zzaf zzafVar = (zzaf) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzaf.CREATOR);
                zzp zzpVar7 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(zzafVar, zzpVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzaf zzafVar2 = (zzaf) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzaf.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(zzafVar2);
                parcel2.writeNoException();
                return true;
            case 14:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                boolean zZzc2 = com.google.android.gms.internal.measurement.zzbw.zzc(parcel);
                zzp zzpVar8 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                List<zzok> listZza2 = zza(string7, string8, zZzc2, zzpVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza2);
                return true;
            case 15:
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                boolean zZzc3 = com.google.android.gms.internal.measurement.zzbw.zzc(parcel);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                List<zzok> listZza3 = zza(string9, string10, string11, zZzc3);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza3);
                return true;
            case 16:
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                zzp zzpVar9 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                List<zzaf> listZza4 = zza(string12, string13, zzpVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza4);
                return true;
            case 17:
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                List<zzaf> listZza5 = zza(string14, string15, string16);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza5);
                return true;
            case 18:
                zzp zzpVar10 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zze(zzpVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) com.google.android.gms.internal.measurement.zzbw.zza(parcel, Bundle.CREATOR);
                zzp zzpVar11 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zza(bundle, zzpVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzp zzpVar12 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzf(zzpVar12);
                parcel2.writeNoException();
                return true;
            case 21:
                zzp zzpVar13 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzak zzakVarZza = zza(zzpVar13);
                parcel2.writeNoException();
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel2, zzakVarZza);
                return true;
            case 24:
                zzp zzpVar14 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.measurement.zzbw.zza(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                List<zznk> listZza6 = zza(zzpVar14, bundle2);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza6);
                return true;
            case 25:
                zzp zzpVar15 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzi(zzpVar15);
                parcel2.writeNoException();
                return true;
            case 26:
                zzp zzpVar16 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzg(zzpVar16);
                parcel2.writeNoException();
                return true;
            case 27:
                zzp zzpVar17 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzc(zzpVar17);
                parcel2.writeNoException();
                return true;
            case 28:
                Bundle bundle3 = (Bundle) com.google.android.gms.internal.measurement.zzbw.zza(parcel, Bundle.CREATOR);
                zzp zzpVar18 = (zzp) com.google.android.gms.internal.measurement.zzbw.zza(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbw.zzb(parcel);
                zzb(bundle3, zzpVar18);
                parcel2.writeNoException();
                return true;
        }
    }
}
