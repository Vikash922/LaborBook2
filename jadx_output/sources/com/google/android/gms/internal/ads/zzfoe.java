package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfoe {
    final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzfoe(Context context, int i) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfof.zza(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfof.zza(dir2, true);
        this.zza = dir2;
        this.zzd = i;
    }

    private final File zzd() {
        File file = new File(this.zzb, Integer.toString(this.zzd - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zze() {
        StringBuilder sb = new StringBuilder("FBAMTD");
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    private final String zzf() {
        StringBuilder sb = new StringBuilder("LATMTD");
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzaxt r9, com.google.android.gms.internal.ads.zzfok r10) {
        /*
            Method dump skipped, instruction units count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfoe.zza(com.google.android.gms.internal.ads.zzaxt, com.google.android.gms.internal.ads.zzfok):boolean");
    }

    final zzaxw zzb(int i) {
        String string = i == 1 ? this.zzc.getString(zzf(), null) : this.zzc.getString(zze(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] bArrStringToBytes = Hex.stringToBytes(string);
            zzgwn zzgwnVar = zzgwn.zzb;
            zzaxw zzaxwVarZzh = zzaxw.zzh(zzgwn.zzv(bArrStringToBytes, 0, bArrStringToBytes.length));
            String strZzk = zzaxwVarZzh.zzk();
            File fileZzb = zzfof.zzb(strZzk, "pcam.jar", zzd());
            if (!fileZzb.exists()) {
                fileZzb = zzfof.zzb(strZzk, "pcam", zzd());
            }
            File fileZzb2 = zzfof.zzb(strZzk, "pcbc", zzd());
            if (fileZzb.exists()) {
                if (fileZzb2.exists()) {
                    return zzaxwVarZzh;
                }
            }
        } catch (zzgyk unused) {
        }
        return null;
    }

    public final zzfod zzc(int i) {
        zzaxw zzaxwVarZzb = zzb(1);
        if (zzaxwVarZzb == null) {
            return null;
        }
        String strZzk = zzaxwVarZzb.zzk();
        File fileZzb = zzfof.zzb(strZzk, "pcam.jar", zzd());
        if (!fileZzb.exists()) {
            fileZzb = zzfof.zzb(strZzk, "pcam", zzd());
        }
        return new zzfod(zzaxwVarZzb, fileZzb, zzfof.zzb(strZzk, "pcbc", zzd()), zzfof.zzb(strZzk, "pcopt", zzd()));
    }
}
