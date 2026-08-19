package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaha {
    private final byte[] zza = new byte[8];
    private final ArrayDeque zzb = new ArrayDeque();
    private final zzahh zzc = new zzahh();
    private zzahb zzd;
    private int zze;
    private int zzf;
    private long zzg;

    private final long zzd(zzadd zzaddVar, int i) throws IOException {
        byte[] bArr = this.zza;
        zzaddVar.zzi(bArr, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (bArr[i2] & 255));
        }
        return j;
    }

    public final void zza(zzahb zzahbVar) {
        this.zzd = zzahbVar;
    }

    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zze();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9 A[LOOP:0: B:3:0x0005->B:37:0x00a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0151 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzadd r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaha.zzc(com.google.android.gms.internal.ads.zzadd):boolean");
    }
}
