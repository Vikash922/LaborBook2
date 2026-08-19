package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzera implements zzesu {
    private final zzfbp zza;
    private final PackageInfo zzb;
    private final com.google.android.gms.ads.internal.util.zzg zzc;

    public zzera(zzfbp zzfbpVar, PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzfbpVar;
        this.zzb = packageInfo;
        this.zzc = zzgVar;
    }

    private final void zzc(Bundle bundle) {
        int i;
        zzbfi zzbfiVar = this.zza.zzi;
        if (zzbfiVar == null || (i = zzbfiVar.zzi) == 0) {
            return;
        }
        bundle.putBoolean("sccg_tap", zzbfiVar.zzj);
        bundle.putInt("sccg_dir", i);
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ArrayList arrayList = this.zza.zzg;
        zzcue zzcueVar = (zzcue) obj;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        zzc(zzcueVar.zzb);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00fe  */
    @Override // com.google.android.gms.internal.ads.zzesu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzb(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzera.zzb(java.lang.Object):void");
    }
}
