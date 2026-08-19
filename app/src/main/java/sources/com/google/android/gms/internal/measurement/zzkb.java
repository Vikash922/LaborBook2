package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzkb extends zzjz {
    protected final byte[] zzb;

    @Override // com.google.android.gms.internal.measurement.zzjs
    public byte zza(int i) {
        return this.zzb[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    protected final int zzb(int i, int i2, int i3) {
        return zzle.zza(i, this.zzb, zzc(), i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    public int zzb() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    public final zzjs zza(int i, int i2) {
        int iZza = zza(0, i2, zzb());
        if (iZza == 0) {
            return zzjs.zza;
        }
        return new zzjw(this.zzb, zzc(), iZza);
    }

    zzkb(byte[] bArr) {
        super();
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    final void zza(zzjp zzjpVar) throws IOException {
        zzjpVar.zza(this.zzb, zzc(), zzb());
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjs) || zzb() != ((zzjs) obj).zzb()) {
            return false;
        }
        if (zzb() == 0) {
            return true;
        }
        if (obj instanceof zzkb) {
            zzkb zzkbVar = (zzkb) obj;
            int iZza = zza();
            int iZza2 = zzkbVar.zza();
            if (iZza == 0 || iZza2 == 0 || iZza == iZza2) {
                return zza(zzkbVar, 0, zzb());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    final boolean zza(zzjs zzjsVar, int i, int i2) {
        if (i2 > zzjsVar.zzb()) {
            throw new IllegalArgumentException("Length too large: " + i2 + zzb());
        }
        if (i2 > zzjsVar.zzb()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + i2 + ", " + zzjsVar.zzb());
        }
        if (zzjsVar instanceof zzkb) {
            zzkb zzkbVar = (zzkb) zzjsVar;
            byte[] bArr = this.zzb;
            byte[] bArr2 = zzkbVar.zzb;
            int iZzc = zzc() + i2;
            int iZzc2 = zzc();
            int iZzc3 = zzkbVar.zzc();
            while (iZzc2 < iZzc) {
                if (bArr[iZzc2] != bArr2[iZzc3]) {
                    return false;
                }
                iZzc2++;
                iZzc3++;
            }
            return true;
        }
        return zzjsVar.zza(0, i2).equals(zza(0, i2));
    }
}
