package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerp implements zzesv {
    private final Context zza;
    private final zzgcd zzb;
    private final zzfbp zzc;
    private final VersionInfoParcel zzd;

    zzerp(Context context, zzgcd zzgcdVar, zzfbp zzfbpVar, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = zzgcdVar;
        this.zzc = zzfbpVar;
        this.zzd = versionInfoParcel;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056 A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d1 A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzerq zzc(com.google.android.gms.internal.ads.zzerp r9) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzerp.zzc(com.google.android.gms.internal.ads.zzerp):com.google.android.gms.internal.ads.zzerq");
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final int zza() {
        return 53;
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzero
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerp.zzc(this.zza);
            }
        });
    }
}
