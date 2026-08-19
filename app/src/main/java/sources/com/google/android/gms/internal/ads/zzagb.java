package com.google.android.gms.internal.ads;

import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class zzagb implements zzau {
    public final String zza;
    public final String zzb;

    public zzagb(String str, String str2) {
        this.zza = zzftc.zzb(str);
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzagb zzagbVar = (zzagb) obj;
            if (this.zza.equals(zzagbVar.zza) && this.zzb.equals(zzagbVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() + MetaDo.META_OFFSETWINDOWORG) * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        return "VC: " + this.zza + "=" + this.zzb;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    @Override // com.google.android.gms.internal.ads.zzau
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzar r3) {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagb.zza(com.google.android.gms.internal.ads.zzar):void");
    }
}
