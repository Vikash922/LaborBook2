package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbbn;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdnq implements zzhey {
    private final zzhfh zza;

    public zzdnq(zzhfh zzhfhVar) {
        this.zza = zzhfhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfn, com.google.android.gms.internal.ads.zzhfm
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbbn.zza.EnumC4929zza enumC4929zza = ((zzcut) this.zza).zza().zzo.zza == 3 ? zzbbn.zza.EnumC4929zza.REWARDED_INTERSTITIAL : zzbbn.zza.EnumC4929zza.REWARD_BASED_VIDEO_AD;
        zzhfg.zzb(enumC4929zza);
        return enumC4929zza;
    }
}
