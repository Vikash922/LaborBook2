package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzetv implements zzesv {
    private final Context zza;
    private final ScheduledExecutorService zzb;
    private final Executor zzc;
    private final int zzd;
    private final boolean zze;
    private final boolean zzf;
    private final zzbyr zzg;

    zzetv(zzbyr zzbyrVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.zzg = zzbyrVar;
        this.zza = context;
        this.zzb = scheduledExecutorService;
        this.zzc = executor;
        this.zzd = i;
        this.zze = z;
        this.zzf = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzetw zzc(com.google.android.gms.internal.ads.zzetv r7, com.google.android.gms.ads.identifier.AdvertisingIdClient.Info r8) {
        /*
            com.google.android.gms.internal.ads.zzfqj r0 = new com.google.android.gms.internal.ads.zzfqj
            r0.<init>()
            boolean r1 = r7.zze
            if (r1 != 0) goto L1c
            com.google.android.gms.internal.ads.zzbbz r1 = com.google.android.gms.internal.ads.zzbci.zzdq
            com.google.android.gms.internal.ads.zzbcg r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L2f
            goto L71
        L1c:
            com.google.android.gms.internal.ads.zzbbz r1 = com.google.android.gms.internal.ads.zzbci.zzdr
            com.google.android.gms.internal.ads.zzbcg r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L2f
            goto L71
        L2f:
            android.content.Context r0 = r7.zza     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            com.google.android.gms.internal.ads.zzfqn r1 = com.google.android.gms.internal.ads.zzfqn.zzj(r0)     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.Object r2 = java.util.Objects.requireNonNull(r8)     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r2 = (com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) r2     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.String r2 = r2.getId()     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.Object r2 = java.util.Objects.requireNonNull(r2)     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.String r3 = r0.getPackageName()     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            com.google.android.gms.internal.ads.zzbbz r0 = com.google.android.gms.internal.ads.zzbci.zzdw     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            com.google.android.gms.internal.ads.zzbcg r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.Object r0 = r4.zzb(r0)     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            long r4 = r0.longValue()     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            boolean r6 = r7.zzf     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            com.google.android.gms.internal.ads.zzfqj r0 = r1.zzi(r2, r3, r4, r6)     // Catch: java.lang.IllegalArgumentException -> L60 java.io.IOException -> L62
            goto L71
        L60:
            r7 = move-exception
            goto L63
        L62:
            r7 = move-exception
        L63:
            java.lang.String r0 = "AdIdInfoSignalSource.getPaidV1"
            com.google.android.gms.internal.ads.zzbza r1 = com.google.android.gms.ads.internal.zzv.zzp()
            r1.zzw(r7, r0)
            com.google.android.gms.internal.ads.zzfqj r0 = new com.google.android.gms.internal.ads.zzfqj
            r0.<init>()
        L71:
            com.google.android.gms.internal.ads.zzetw r7 = new com.google.android.gms.internal.ads.zzetw
            r1 = 0
            r7.<init>(r8, r1, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzetv.zzc(com.google.android.gms.internal.ads.zzetv, com.google.android.gms.ads.identifier.AdvertisingIdClient$Info):com.google.android.gms.internal.ads.zzetw");
    }

    public static /* synthetic */ zzetw zzd(zzetv zzetvVar, Throwable th) {
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        ContentResolver contentResolver = zzetvVar.zza.getContentResolver();
        return new zzetw(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new zzfqj());
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final ListenableFuture zzb() {
        zzgbj zzgbjVarZzE = zzgbj.zzE(this.zzg.zza(this.zza, this.zzd));
        zzftl zzftlVar = new zzftl() { // from class: com.google.android.gms.internal.ads.zzett
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                return zzetv.zzc(this.zza, (AdvertisingIdClient.Info) obj);
            }
        };
        Executor executor = this.zzc;
        return (zzgbj) zzgbs.zze((zzgbj) zzgbs.zzo((zzgbj) zzgbs.zzm(zzgbjVarZzE, zzftlVar, executor), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbi)).longValue(), TimeUnit.MILLISECONDS, this.zzb), Throwable.class, new zzftl() { // from class: com.google.android.gms.internal.ads.zzetu
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                return zzetv.zzd(this.zza, (Throwable) obj);
            }
        }, executor);
    }
}
