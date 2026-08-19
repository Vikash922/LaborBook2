package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjs implements Serializable, Iterable<Byte> {
    public static final zzjs zza = new zzkb(zzle.zzb);
    private static final zzjv zzb = new zzke();
    private int zzc = 0;

    static /* synthetic */ int zza(byte b) {
        return b & 255;
    }

    public abstract boolean equals(Object obj);

    public abstract byte zza(int i);

    public abstract zzjs zza(int i, int i2);

    abstract void zza(zzjp zzjpVar) throws IOException;

    abstract byte zzb(int i);

    public abstract int zzb();

    protected abstract int zzb(int i, int i2, int i3);

    static int zza(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        }
        throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
    }

    public final int hashCode() {
        int iZzb = this.zzc;
        if (iZzb == 0) {
            int iZzb2 = zzb();
            iZzb = zzb(iZzb2, 0, iZzb2);
            if (iZzb == 0) {
                iZzb = 1;
            }
            this.zzc = iZzb;
        }
        return iZzb;
    }

    protected final int zza() {
        return this.zzc;
    }

    static zzjx zzc(int i) {
        return new zzjx(i);
    }

    public static zzjs zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    public static zzjs zza(byte[] bArr, int i, int i2) {
        zza(i, i + i2, bArr.length);
        return new zzkb(zzb.zza(bArr, i, i2));
    }

    public static zzjs zza(String str) {
        return new zzkb(str.getBytes(zzle.zza));
    }

    static zzjs zzb(byte[] bArr) {
        return new zzkb(bArr);
    }

    public final String toString() {
        String strZza;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer numValueOf = Integer.valueOf(zzb());
        if (zzb() <= 50) {
            strZza = zznt.zza(this);
        } else {
            strZza = zznt.zza(zza(0, 47)) + "...";
        }
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", hexString, numValueOf, strZza);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzjr(this);
    }

    static {
        new zzju();
    }

    zzjs() {
    }
}
