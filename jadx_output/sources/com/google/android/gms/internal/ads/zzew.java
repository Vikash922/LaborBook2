package com.google.android.gms.internal.ads;

import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzew implements zzau {
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzew(java.lang.String r7, byte[] r8, int r9, int r10) {
        /*
            r6 = this;
            r6.<init>()
            int r0 = r7.hashCode()
            r1 = 3
            r2 = 2
            r3 = 4
            r4 = 1
            r5 = 0
            switch(r0) {
                case -1949883051: goto L38;
                case -269399509: goto L2e;
                case 1011693540: goto L24;
                case 1098277265: goto L1a;
                case 2002123038: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L42
        L10:
            java.lang.String r0 = "auxiliary.tracks.map"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L42
            r0 = r1
            goto L43
        L1a:
            java.lang.String r0 = "auxiliary.tracks.offset"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L42
            r0 = r4
            goto L43
        L24:
            java.lang.String r0 = "auxiliary.tracks.length"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L42
            r0 = r2
            goto L43
        L2e:
            java.lang.String r0 = "auxiliary.tracks.interleaved"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L42
            r0 = r3
            goto L43
        L38:
            java.lang.String r0 = "com.android.capture.fps"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L42
            r0 = r5
            goto L43
        L42:
            r0 = -1
        L43:
            if (r0 == 0) goto L7c
            if (r0 == r4) goto L6b
            if (r0 == r2) goto L6b
            if (r0 == r1) goto L63
            if (r0 == r3) goto L4e
            goto L8a
        L4e:
            r0 = 75
            if (r10 != r0) goto L5e
            int r10 = r8.length
            if (r10 != r4) goto L5d
            r10 = r8[r5]
            if (r10 == 0) goto L5b
            if (r10 != r4) goto L5d
        L5b:
            r10 = r0
            goto L5f
        L5d:
            r10 = r0
        L5e:
            r4 = r5
        L5f:
            com.google.android.gms.internal.ads.zzdc.zzd(r4)
            goto L8a
        L63:
            if (r10 != 0) goto L66
            goto L67
        L66:
            r4 = r5
        L67:
            com.google.android.gms.internal.ads.zzdc.zzd(r4)
            goto L8a
        L6b:
            r0 = 78
            if (r10 != r0) goto L77
            int r10 = r8.length
            r1 = 8
            if (r10 != r1) goto L76
            r10 = r0
            goto L78
        L76:
            r10 = r0
        L77:
            r4 = r5
        L78:
            com.google.android.gms.internal.ads.zzdc.zzd(r4)
            goto L8a
        L7c:
            r0 = 23
            if (r10 != r0) goto L86
            int r10 = r8.length
            if (r10 != r3) goto L85
            r10 = r0
            goto L87
        L85:
            r10 = r0
        L86:
            r4 = r5
        L87:
            com.google.android.gms.internal.ads.zzdc.zzd(r4)
        L8a:
            r6.zza = r7
            r6.zzb = r8
            r6.zzc = r9
            r6.zzd = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzew.<init>(java.lang.String, byte[], int, int):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzew zzewVar = (zzew) obj;
            if (this.zza.equals(zzewVar.zza) && Arrays.equals(this.zzb, zzewVar.zzb) && this.zzc == zzewVar.zzc && this.zzd == zzewVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.zza.hashCode() + MetaDo.META_OFFSETWINDOWORG) * 31) + Arrays.hashCode(this.zzb)) * 31) + this.zzc) * 31) + this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }

    public final List zzb() {
        zzdc.zzg(this.zza.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte[] bArr = this.zzb;
        byte b = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            arrayList.add(Integer.valueOf(bArr[i + 2]));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r5 = this;
            int r0 = r5.zzd
            r1 = 0
            if (r0 == 0) goto L57
            r2 = 1
            if (r0 == r2) goto L50
            r2 = 23
            if (r0 == r2) goto L41
            r2 = 67
            if (r0 == r2) goto L36
            r2 = 75
            if (r0 == r2) goto L2a
            r2 = 78
            if (r0 == r2) goto L19
            goto L7c
        L19:
            byte[] r0 = r5.zzb
            com.google.android.gms.internal.ads.zzek r1 = new com.google.android.gms.internal.ads.zzek
            r1.<init>(r0)
            long r0 = r1.zzw()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lab
        L2a:
            byte[] r0 = r5.zzb
            r0 = r0[r1]
            r0 = r0 & 255(0xff, float:3.57E-43)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lab
        L36:
            byte[] r0 = r5.zzb
            int r0 = com.google.android.gms.internal.ads.zzfzz.zzd(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lab
        L41:
            byte[] r0 = r5.zzb
            int r0 = com.google.android.gms.internal.ads.zzfzz.zzd(r0)
            float r0 = java.lang.Float.intBitsToFloat(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lab
        L50:
            byte[] r0 = r5.zzb
            java.lang.String r0 = com.google.android.gms.internal.ads.zzeu.zzB(r0)
            goto Lab
        L57:
            java.lang.String r0 = r5.zza
            java.lang.String r2 = "auxiliary.tracks.map"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L7c
            java.util.List r0 = r5.zzb()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "track types = "
            r1.append(r2)
            java.lang.String r2 = ","
            r3 = r2
            java.lang.String r3 = (java.lang.String) r3
            com.google.android.gms.internal.ads.zzfto.zzb(r1, r0, r2)
            java.lang.String r0 = r1.toString()
            goto Lab
        L7c:
            byte[] r0 = r5.zzb
            int r2 = com.google.android.gms.internal.ads.zzeu.zza
            int r2 = r0.length
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = r2 + r2
            r3.<init>(r2)
        L87:
            int r2 = r0.length
            if (r1 >= r2) goto La7
            r2 = r0[r1]
            int r2 = r2 >> 4
            r2 = r2 & 15
            r4 = 16
            char r2 = java.lang.Character.forDigit(r2, r4)
            r3.append(r2)
            r2 = r0[r1]
            r2 = r2 & 15
            char r2 = java.lang.Character.forDigit(r2, r4)
            r3.append(r2)
            int r1 = r1 + 1
            goto L87
        La7:
            java.lang.String r0 = r3.toString()
        Lab:
            java.lang.String r1 = r5.zza
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "mdta: key="
            r2.<init>(r3)
            r2.append(r1)
            java.lang.String r1 = ", value="
            r2.append(r1)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzew.toString():java.lang.String");
    }
}
