package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzxx extends zzyi implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final String zzg;
    private final zzyb zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final boolean zzw;

    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ab A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzxx(int r8, com.google.android.gms.internal.ads.zzbm r9, int r10, com.google.android.gms.internal.ads.zzyb r11, int r12, boolean r13, com.google.android.gms.internal.ads.zzftx r14, int r15) {
        /*
            Method dump skipped, instruction units count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxx.<init>(int, com.google.android.gms.internal.ads.zzbm, int, com.google.android.gms.internal.ads.zzyb, int, boolean, com.google.android.gms.internal.ads.zzftx, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    public final /* bridge */ /* synthetic */ boolean zzc(zzyi zzyiVar) {
        String str;
        zzyb zzybVar = this.zzh;
        zzxx zzxxVar = (zzxx) zzyiVar;
        boolean z = zzybVar.zzN;
        zzz zzzVar = this.zzd;
        int i = zzzVar.zzE;
        if (i == -1) {
            return false;
        }
        zzz zzzVar2 = zzxxVar.zzd;
        if (i != zzzVar2.zzE || (str = zzzVar.zzo) == null || !TextUtils.equals(str, zzzVar2.zzo)) {
            return false;
        }
        boolean z2 = zzybVar.zzM;
        int i2 = zzzVar.zzF;
        if (i2 == -1 || i2 != zzzVar2.zzF) {
            return false;
        }
        boolean z3 = zzybVar.zzO;
        return this.zzu == zzxxVar.zzu && this.zzv == zzxxVar.zzv;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxx zzxxVar) {
        boolean z = this.zzf;
        zzfyh zzfyhVarZza = (z && this.zzi) ? zzyn.zzc : zzyn.zzc.zza();
        zzfwl zzfwlVarZzc = zzfwl.zzj().zzd(this.zzi, zzxxVar.zzi).zzc(Integer.valueOf(this.zzk), Integer.valueOf(zzxxVar.zzk), zzfyh.zzc().zza()).zzb(this.zzj, zzxxVar.zzj).zzb(this.zzl, zzxxVar.zzl).zzd(this.zzp, zzxxVar.zzp).zzd(this.zzm, zzxxVar.zzm).zzc(Integer.valueOf(this.zzn), Integer.valueOf(zzxxVar.zzn), zzfyh.zzc().zza()).zzb(this.zzo, zzxxVar.zzo).zzd(z, zzxxVar.zzf).zzc(Integer.valueOf(this.zzt), Integer.valueOf(zzxxVar.zzt), zzfyh.zzc().zza());
        boolean z2 = this.zzh.zzB;
        zzfwl zzfwlVarZzc2 = zzfwlVarZzc.zzd(this.zzu, zzxxVar.zzu).zzd(this.zzv, zzxxVar.zzv).zzd(this.zzw, zzxxVar.zzw).zzc(Integer.valueOf(this.zzq), Integer.valueOf(zzxxVar.zzq), zzfyhVarZza).zzc(Integer.valueOf(this.zzr), Integer.valueOf(zzxxVar.zzr), zzfyhVarZza);
        if (Objects.equals(this.zzg, zzxxVar.zzg)) {
            zzfwlVarZzc2 = zzfwlVarZzc2.zzc(Integer.valueOf(this.zzs), Integer.valueOf(zzxxVar.zzs), zzfyhVarZza);
        }
        return zzfwlVarZzc2.zza();
    }
}
