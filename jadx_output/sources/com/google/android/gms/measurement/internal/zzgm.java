package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgm {
    public String zza;
    public String zzb;
    public long zzc;
    public Bundle zzd;

    public final zzbh zza() {
        return new zzbh(this.zza, new zzbc(new Bundle(this.zzd)), this.zzb, this.zzc);
    }

    public static zzgm zza(zzbh zzbhVar) {
        return new zzgm(zzbhVar.zza, zzbhVar.zzc, zzbhVar.zzb.zzb(), zzbhVar.zzd);
    }

    public final String toString() {
        return "origin=" + this.zzb + ",name=" + this.zza + ",params=" + String.valueOf(this.zzd);
    }

    public zzgm(String str, String str2, Bundle bundle, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzd = bundle == null ? new Bundle() : bundle;
        this.zzc = j;
    }
}
