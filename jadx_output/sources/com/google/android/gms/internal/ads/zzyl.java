package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzyl extends zzyi {
    private final boolean zze;
    private final zzyb zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final boolean zzs;
    private final boolean zzt;
    private final int zzu;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:122:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzyl(int r5, com.google.android.gms.internal.ads.zzbm r6, int r7, com.google.android.gms.internal.ads.zzyb r8, int r9, java.lang.String r10, int r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyl.<init>(int, com.google.android.gms.internal.ads.zzbm, int, com.google.android.gms.internal.ads.zzyb, int, java.lang.String, int, boolean):void");
    }

    public static /* synthetic */ int zza(zzyl zzylVar, zzyl zzylVar2) {
        zzfyh zzfyhVarZza = (zzylVar.zze && zzylVar.zzh) ? zzyn.zzc : zzyn.zzc.zza();
        zzfwl zzfwlVarZzj = zzfwl.zzj();
        boolean z = zzylVar.zzf.zzB;
        return zzfwlVarZzj.zzc(Integer.valueOf(zzylVar.zzk), Integer.valueOf(zzylVar2.zzk), zzfyhVarZza).zzc(Integer.valueOf(zzylVar.zzj), Integer.valueOf(zzylVar2.zzj), zzfyhVarZza).zza();
    }

    public static /* synthetic */ int zzd(zzyl zzylVar, zzyl zzylVar2) {
        zzfwl zzfwlVarZzc = zzfwl.zzj().zzd(zzylVar.zzh, zzylVar2.zzh).zzc(Integer.valueOf(zzylVar.zzm), Integer.valueOf(zzylVar2.zzm), zzfyh.zzc().zza()).zzb(zzylVar.zzn, zzylVar2.zzn).zzb(zzylVar.zzo, zzylVar2.zzo).zzd(zzylVar.zzp, zzylVar2.zzp).zzb(zzylVar.zzq, zzylVar2.zzq).zzd(zzylVar.zzi, zzylVar2.zzi).zzd(zzylVar.zze, zzylVar2.zze).zzd(zzylVar.zzg, zzylVar2.zzg).zzc(Integer.valueOf(zzylVar.zzl), Integer.valueOf(zzylVar2.zzl), zzfyh.zzc().zza());
        boolean z = zzylVar.zzs;
        zzfwl zzfwlVarZzd = zzfwlVarZzc.zzd(z, zzylVar2.zzs);
        boolean z2 = zzylVar.zzt;
        zzfwl zzfwlVarZzd2 = zzfwlVarZzd.zzd(z2, zzylVar2.zzt);
        if (z && z2) {
            zzfwlVarZzd2 = zzfwlVarZzd2.zzb(zzylVar.zzu, zzylVar2.zzu);
        }
        return zzfwlVarZzd2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    public final int zzb() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    public final /* bridge */ /* synthetic */ boolean zzc(zzyi zzyiVar) {
        zzyl zzylVar = (zzyl) zzyiVar;
        if (!Objects.equals(this.zzd.zzo, zzylVar.zzd.zzo)) {
            return false;
        }
        boolean z = this.zzf.zzJ;
        return this.zzs == zzylVar.zzs && this.zzt == zzylVar.zzt;
    }
}
