package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-api@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzftq {
    private final String zza;
    private final zzftp zzb;
    private zzftp zzc;

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzftp zzftpVar = this.zzb.zzb;
        String str = "";
        while (zzftpVar != null) {
            Object obj = zzftpVar.zza;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r2.length() - 1);
            }
            zzftpVar = zzftpVar.zzb;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzftq zza(Object obj) {
        zzftp zzftpVar = new zzftp();
        this.zzc.zzb = zzftpVar;
        this.zzc = zzftpVar;
        zzftpVar.zza = obj;
        return this;
    }

    /* synthetic */ zzftq(String str, zzftr zzftrVar) {
        zzftp zzftpVar = new zzftp();
        this.zzb = zzftpVar;
        this.zzc = zzftpVar;
        str.getClass();
        this.zza = str;
    }
}
