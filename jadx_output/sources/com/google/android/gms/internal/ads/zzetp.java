package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzetp implements zzesv {
    private final com.google.android.gms.ads.internal.util.zzg zza;
    private final Context zzb;
    private final zzgcd zzc;
    private final ScheduledExecutorService zzd;
    private final zzecd zze;
    private final zzfbp zzf;
    private final VersionInfoParcel zzg;

    zzetp(com.google.android.gms.ads.internal.util.zzg zzgVar, Context context, zzgcd zzgcdVar, ScheduledExecutorService scheduledExecutorService, zzecd zzecdVar, zzfbp zzfbpVar, VersionInfoParcel versionInfoParcel) {
        this.zza = zzgVar;
        this.zzb = context;
        this.zzc = zzgcdVar;
        this.zzd = scheduledExecutorService;
        this.zze = zzecdVar;
        this.zzf = zzfbpVar;
        this.zzg = versionInfoParcel;
    }

    public static /* synthetic */ ListenableFuture zzc(zzetp zzetpVar, final Throwable th) {
        zzetpVar.zzc.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzetm
            @Override // java.lang.Runnable
            public final void run() {
                boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzkz)).booleanValue();
                Throwable th2 = th;
                if (zBooleanValue) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzx(th2, "TopicsSignalUnsampled.fetchTopicsSignal");
                } else {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "TopicsSignal.fetchTopicsSignal");
                }
            }
        });
        return zzgbs.zzh(th instanceof SecurityException ? new zzetr("", 2, null) : th instanceof IllegalStateException ? new zzetr("", 3, null) : th instanceof IllegalArgumentException ? new zzetr("", 4, null) : th instanceof TimeoutException ? new zzetr("", 5, null) : new zzetr("", 0, null));
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009e, code lost:
    
        if (java.util.Arrays.asList(r0.split(",")).contains(r5.zzb.getPackageName()) == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    @Override // com.google.android.gms.internal.ads.zzesv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zzb() {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzetp.zzb():com.google.common.util.concurrent.ListenableFuture");
    }
}
