package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesf implements zzesv {
    private final zzbxw zza;
    private final zzgcd zzb;
    private final Context zzc;

    public zzesf(zzbxw zzbxwVar, zzgcd zzgcdVar, Context context) {
        this.zza = zzbxwVar;
        this.zzb = zzgcdVar;
        this.zzc = context;
    }

    public static /* synthetic */ zzesg zzc(zzesf zzesfVar) {
        zzbxw zzbxwVar = zzesfVar.zza;
        Context context = zzesfVar.zzc;
        if (!zzbxwVar.zzp(context)) {
            return new zzesg(null, null, null, null, null);
        }
        String strZze = zzbxwVar.zze(context);
        String str = strZze == null ? "" : strZze;
        String strZzc = zzbxwVar.zzc(context);
        String str2 = strZzc == null ? "" : strZzc;
        String strZzb = zzbxwVar.zzb(context);
        String str3 = strZzb == null ? "" : strZzb;
        String str4 = true != zzbxwVar.zzp(context) ? null : "fa";
        return new zzesg(str, str2, str3, str4 == null ? "" : str4, "TIME_OUT".equals(str2) ? (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzax) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzese
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzesf.zzc(this.zza);
            }
        });
    }
}
