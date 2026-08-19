package com.google.android.gms.internal.ads;

import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzage extends zzagm {
    public final byte[] zza;

    public zzage(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzage zzageVar = (zzage) obj;
            if (this.zzf.equals(zzageVar.zzf) && Arrays.equals(this.zza, zzageVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zzf.hashCode() + MetaDo.META_OFFSETWINDOWORG) * 31) + Arrays.hashCode(this.zza);
    }
}
