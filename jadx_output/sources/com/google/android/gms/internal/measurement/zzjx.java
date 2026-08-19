package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjx {
    private final zzkl zza;
    private final byte[] zzb;

    public final zzjs zza() {
        this.zza.zzb();
        return new zzkb(this.zzb);
    }

    public final zzkl zzb() {
        return this.zza;
    }

    private zzjx(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = zzkl.zzb(bArr);
    }
}
