package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaor;
import com.google.android.gms.internal.ads.zzapm;
import com.google.android.gms.internal.ads.zzbzp;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
@ParametersAreNonnullByDefault
public final class zzbo {
    private static zzapm zza;
    private static final Object zzb = new Object();

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[Catch: all -> 0x0040, TryCatch #0 {, blocks: (B:7:0x0010, B:9:0x0014, B:11:0x001d, B:13:0x002f, B:15:0x003c, B:14:0x0034, B:16:0x003e), top: B:21:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbo(android.content.Context r4) {
        /*
            r3 = this;
            r3.<init>()
            android.content.Context r0 = r4.getApplicationContext()
            if (r0 == 0) goto Ld
            android.content.Context r4 = r4.getApplicationContext()
        Ld:
            java.lang.Object r0 = com.google.android.gms.ads.internal.util.zzbo.zzb
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzapm r1 = com.google.android.gms.ads.internal.util.zzbo.zza     // Catch: java.lang.Throwable -> L40
            if (r1 != 0) goto L3e
            com.google.android.gms.internal.ads.zzbci.zza(r4)     // Catch: java.lang.Throwable -> L40
            boolean r1 = com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide()     // Catch: java.lang.Throwable -> L40
            if (r1 != 0) goto L34
            com.google.android.gms.internal.ads.zzbbz r1 = com.google.android.gms.internal.ads.zzbci.zzeD     // Catch: java.lang.Throwable -> L40
            com.google.android.gms.internal.ads.zzbcg r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L40
            java.lang.Object r1 = r2.zzb(r1)     // Catch: java.lang.Throwable -> L40
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L40
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L34
            com.google.android.gms.internal.ads.zzapm r4 = com.google.android.gms.ads.internal.util.zzaz.zzb(r4)     // Catch: java.lang.Throwable -> L40
            goto L3c
        L34:
            r1 = 0
            r2 = r1
            com.google.android.gms.internal.ads.zzapx r2 = (com.google.android.gms.internal.ads.zzapx) r2     // Catch: java.lang.Throwable -> L40
            com.google.android.gms.internal.ads.zzapm r4 = com.google.android.gms.internal.ads.zzaqq.zza(r4, r1)     // Catch: java.lang.Throwable -> L40
        L3c:
            com.google.android.gms.ads.internal.util.zzbo.zza = r4     // Catch: java.lang.Throwable -> L40
        L3e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L40
            return
        L40:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L40
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbo.<init>(android.content.Context):void");
    }

    public final ListenableFuture zza(String str) {
        zzbzp zzbzpVar = new zzbzp();
        zza.zza(new zzbm(str, null, zzbzpVar));
        return zzbzpVar;
    }

    public final ListenableFuture zzb(int i, String str, Map map, byte[] bArr) {
        zzbk zzbkVar = new zzbk(null);
        zzbi zzbiVar = new zzbi(this, str, zzbkVar);
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        zzbj zzbjVar = new zzbj(this, i, str, zzbkVar, zzbiVar, bArr, map, zzlVar);
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            try {
                zzlVar.zzd(str, "GET", zzbjVar.zzl(), zzbjVar.zzx());
            } catch (zzaor e) {
                String message = e.getMessage();
                int i2 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj(message);
            }
        }
        zza.zza(zzbjVar);
        return zzbkVar;
    }
}
