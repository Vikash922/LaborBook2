package com.google.android.gms.internal.ads;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzats implements PackageManager.OnChecksumsReadyListener {
    final zzgcm zza = zzgcm.zze();

    @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
    public final void onChecksumsReady(List list) {
        int size;
        int i;
        if (list == null) {
            this.zza.zzc("");
            return;
        }
        try {
            size = list.size();
        } catch (Throwable unused) {
        }
        for (i = 0; i < size; i++) {
            ApkChecksum apkChecksum = (ApkChecksum) list.get(i);
            if (apkChecksum.getType() == 8) {
                zzgcm zzgcmVar = this.zza;
                zzfzj zzfzjVarZzf = zzfzj.zzi().zzf();
                byte[] value = apkChecksum.getValue();
                zzgcmVar.zzc(zzfzjVarZzf.zzj(value, 0, value.length));
                return;
            }
            this.zza.zzc("");
        }
        this.zza.zzc("");
    }
}
