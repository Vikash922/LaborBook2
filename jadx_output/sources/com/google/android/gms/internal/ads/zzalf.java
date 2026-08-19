package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.common.base.Ascii;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzalf implements zzaka {
    private final zzek zza = new zzek();
    private final boolean zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final float zzf;
    private final int zzg;

    public zzalf(List list) {
        if (list.size() != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.zzc = 0;
            this.zzd = -1;
            this.zze = "sans-serif";
            this.zzb = false;
            this.zzf = 0.85f;
            this.zzg = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.zzc = bArr[24];
        this.zzd = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.zze = true == "Serif".equals(zzeu.zzC(bArr, 43, bArr.length + (-43))) ? "serif" : "sans-serif";
        int i = bArr[25] * Ascii.DC4;
        this.zzg = i;
        boolean z = (bArr[0] & 32) != 0;
        this.zzb = z;
        if (z) {
            this.zzf = Math.max(0.0f, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.95f));
        } else {
            this.zzf = 0.85f;
        }
    }

    private static void zzb(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    private static void zzc(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            int i7 = i & 1;
            int i8 = i & 2;
            boolean z = true;
            if (i7 != 0) {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                    z = false;
                }
            } else if (i8 != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            } else {
                z = false;
            }
            if ((i & 4) != 0) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            } else {
                if (i7 != 0 || z) {
                    return;
                }
                spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzaka
    public final void zza(byte[] bArr, int i, int i2, zzajz zzajzVar, zzdk zzdkVar) {
        String strZzB;
        int i3;
        int i4;
        int length;
        zzek zzekVar = this.zza;
        zzekVar.zzJ(bArr, i + i2);
        zzekVar.zzL(i);
        int i5 = 1;
        int i6 = 0;
        int i7 = 2;
        zzdc.zzd(zzekVar.zza() >= 2);
        int iZzq = zzekVar.zzq();
        if (iZzq == 0) {
            strZzB = "";
        } else {
            int iZzc = zzekVar.zzc();
            Charset charsetZzC = zzekVar.zzC();
            int iZzc2 = zzekVar.zzc() - iZzc;
            if (charsetZzC == null) {
                charsetZzC = StandardCharsets.UTF_8;
            }
            strZzB = zzekVar.zzB(iZzq - iZzc2, charsetZzC);
        }
        if (strZzB.isEmpty()) {
            zzdkVar.zza(new zzajs(zzfww.zzn(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strZzB);
        int i8 = this.zzc;
        zzc(spannableStringBuilder, i8, 0, 0, spannableStringBuilder.length(), 16711680);
        int i9 = this.zzd;
        zzb(spannableStringBuilder, i9, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.zze;
        int length2 = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length2, 16711713);
        }
        float fMax = this.zzf;
        while (zzekVar.zza() >= 8) {
            int iZzc3 = zzekVar.zzc();
            int iZzg = zzekVar.zzg();
            int iZzg2 = zzekVar.zzg();
            if (iZzg2 == 1937013100) {
                zzdc.zzd(zzekVar.zza() >= i7 ? i5 : i6);
                int iZzq2 = zzekVar.zzq();
                int i10 = i6;
                while (i10 < iZzq2) {
                    zzdc.zzd(zzekVar.zza() >= 12 ? i5 : i6);
                    int iZzq3 = zzekVar.zzq();
                    int iZzq4 = zzekVar.zzq();
                    zzekVar.zzM(i7);
                    int iZzm = zzekVar.zzm();
                    zzekVar.zzM(i5);
                    int iZzg3 = zzekVar.zzg();
                    if (iZzq4 > spannableStringBuilder.length()) {
                        i4 = iZzq2;
                        zzdx.zzf("Tx3gParser", "Truncating styl end (" + iZzq4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                        length = spannableStringBuilder.length();
                    } else {
                        i4 = iZzq2;
                        length = iZzq4;
                    }
                    if (iZzq3 >= length) {
                        zzdx.zzf("Tx3gParser", "Ignoring styl with start (" + iZzq3 + ") >= end (" + length + ").");
                    } else {
                        int i11 = length;
                        zzc(spannableStringBuilder, iZzm, i8, iZzq3, i11, 0);
                        zzb(spannableStringBuilder, iZzg3, i9, iZzq3, i11, 0);
                    }
                    i10++;
                    iZzq2 = i4;
                    i5 = 1;
                    i6 = 0;
                    i7 = 2;
                }
                i3 = i7;
            } else if (iZzg2 == 1952608120 && this.zzb) {
                i3 = 2;
                zzdc.zzd(zzekVar.zza() >= 2);
                float fZzq = zzekVar.zzq();
                int i12 = this.zzg;
                int i13 = zzeu.zza;
                fMax = Math.max(0.0f, Math.min(fZzq / i12, 0.95f));
            } else {
                i3 = 2;
            }
            zzekVar.zzL(iZzc3 + iZzg);
            i7 = i3;
            i5 = 1;
            i6 = 0;
        }
        zzcs zzcsVar = new zzcs();
        zzcsVar.zzl(spannableStringBuilder);
        zzcsVar.zze(fMax, 0);
        zzcsVar.zzf(0);
        zzdkVar.zza(new zzajs(zzfww.zzo(zzcsVar.zzp()), -9223372036854775807L, -9223372036854775807L));
    }
}
