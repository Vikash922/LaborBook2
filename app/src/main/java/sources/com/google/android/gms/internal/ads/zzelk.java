package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.itextpdf.kernel.xmp.PdfConst;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelk implements zzesu {
    public final com.google.android.gms.ads.internal.client.zzr zza;
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    public final String zzh;
    public final boolean zzi;

    public zzelk(com.google.android.gms.ads.internal.client.zzr zzrVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        Preconditions.checkNotNull(zzrVar, "the adSize must not be null");
        this.zza = zzrVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = f;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = str3;
        this.zzi = z2;
    }

    private final void zzc(Bundle bundle) {
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.zza;
        int i = zzrVar.zze;
        zzfcd.zzf(bundle, "smart_w", "full", i == -1);
        int i2 = zzrVar.zzb;
        zzfcd.zzf(bundle, "smart_h", "auto", i2 == -2);
        zzfcd.zzg(bundle, "ene", true, zzrVar.zzj);
        zzfcd.zzf(bundle, "rafmt", "102", zzrVar.zzm);
        zzfcd.zzf(bundle, "rafmt", "103", zzrVar.zzn);
        zzfcd.zzf(bundle, "rafmt", "105", zzrVar.zzo);
        zzfcd.zzg(bundle, "inline_adaptive_slot", true, this.zzi);
        zzfcd.zzg(bundle, "interscroller_slot", true, zzrVar.zzo);
        zzfcd.zzc(bundle, PdfConst.Format, this.zzb);
        zzfcd.zzf(bundle, "fluid", "height", this.zzc);
        zzfcd.zzf(bundle, "sz", this.zzd, !TextUtils.isEmpty(r5));
        bundle.putFloat("u_sd", this.zze);
        bundle.putInt("sw", this.zzf);
        bundle.putInt("sh", this.zzg);
        String str = this.zzh;
        zzfcd.zzf(bundle, "sc", str, true ^ TextUtils.isEmpty(str));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", i2);
            bundle2.putInt("width", i);
            bundle2.putBoolean("is_fluid_height", zzrVar.zzi);
            arrayList.add(bundle2);
        } else {
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzrVar2.zzi);
                bundle3.putInt("height", zzrVar2.zzb);
                bundle3.putInt("width", zzrVar2.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* synthetic */ void zza(Object obj) {
        zzc(((zzcue) obj).zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* synthetic */ void zzb(Object obj) {
        zzc(((zzcue) obj).zza);
    }
}
