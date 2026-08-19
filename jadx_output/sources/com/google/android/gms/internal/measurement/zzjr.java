package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjr extends zzjt {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zzjs zzc;

    @Override // com.google.android.gms.internal.measurement.zzjy
    public final byte zza() {
        int i = this.zza;
        if (i >= this.zzb) {
            throw new NoSuchElementException();
        }
        this.zza = i + 1;
        return this.zzc.zzb(i);
    }

    zzjr(zzjs zzjsVar) {
        this.zzc = zzjsVar;
        this.zzb = zzjsVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }
}
