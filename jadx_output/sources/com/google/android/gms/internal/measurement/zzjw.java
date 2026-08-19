package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjw extends zzkb {
    private final int zzc;
    private final int zzd;

    @Override // com.google.android.gms.internal.measurement.zzkb, com.google.android.gms.internal.measurement.zzjs
    public final byte zza(int i) {
        int iZzb = zzb();
        if (((iZzb - (i + 1)) | i) >= 0) {
            return this.zzb[this.zzc + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + iZzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzkb, com.google.android.gms.internal.measurement.zzjs
    final byte zzb(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.measurement.zzkb
    protected final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkb, com.google.android.gms.internal.measurement.zzjs
    public final int zzb() {
        return this.zzd;
    }

    zzjw(byte[] bArr, int i, int i2) {
        super(bArr);
        zza(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }
}
