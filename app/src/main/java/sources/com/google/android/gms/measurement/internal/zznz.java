package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznz implements zzgo {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzog zzb;
    private final /* synthetic */ zznv zzc;

    zznz(zznv zznvVar, String str, zzog zzogVar) {
        this.zza = str;
        this.zzb = zzogVar;
        this.zzc = zznvVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzc.zza(this.zza, i, th, bArr, this.zzb);
    }
}
