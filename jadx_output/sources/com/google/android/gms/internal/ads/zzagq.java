package com.google.android.gms.internal.ads;

import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzagq extends zzagm {
    public final String zza;
    public final byte[] zzb;

    public zzagq(String str, byte[] bArr) {
        super("PRIV");
        this.zza = str;
        this.zzb = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzagq zzagqVar = (zzagq) obj;
            if (Objects.equals(this.zza, zzagqVar.zza) && Arrays.equals(this.zzb, zzagqVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() + MetaDo.META_OFFSETWINDOWORG) * 31) + Arrays.hashCode(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzagm
    public final String toString() {
        return this.zzf + ": owner=" + this.zza;
    }
}
