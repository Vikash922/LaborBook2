package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaaj {
    private final Context zza;
    private boolean zzb;
    private zzti zzc = zzti.zza;
    private final zzsu zzd;
    private Handler zze;
    private zzabs zzf;

    public zzaaj(Context context) {
        this.zza = context;
        this.zzd = new zzso(context, null, null);
    }

    public final zzaaj zze(Handler handler) {
        this.zze = handler;
        return this;
    }

    public final zzaaj zzf(zzabs zzabsVar) {
        this.zzf = zzabsVar;
        return this;
    }

    public final zzaaj zzg(zzti zztiVar) {
        this.zzc = zztiVar;
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzaal zzh() {
        /*
            r3 = this;
            boolean r0 = r3.zzb
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.gms.internal.ads.zzdc.zzf(r0)
            android.os.Handler r0 = r3.zze
            if (r0 != 0) goto L12
            com.google.android.gms.internal.ads.zzabs r2 = r3.zzf
            if (r2 == 0) goto L10
            goto L12
        L10:
            r2 = r1
            goto L1a
        L12:
            r2 = 0
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzabs r0 = r3.zzf
            if (r0 == 0) goto L1a
            goto L10
        L1a:
            com.google.android.gms.internal.ads.zzdc.zzf(r2)
            r3.zzb = r1
            com.google.android.gms.internal.ads.zzaal r0 = new com.google.android.gms.internal.ads.zzaal
            r0.<init>(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaaj.zzh():com.google.android.gms.internal.ads.zzaal");
    }
}
