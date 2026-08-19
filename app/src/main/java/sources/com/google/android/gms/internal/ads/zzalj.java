package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzalj {
    private static final Pattern zza = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern zzb = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final zzek zzc = new zzek();
    private final StringBuilder zzd = new StringBuilder();

    static String zza(zzek zzekVar, StringBuilder sb) {
        zzc(zzekVar);
        if (zzekVar.zza() == 0) {
            return null;
        }
        String strZzd = zzd(zzekVar, sb);
        if (!"".equals(strZzd)) {
            return strZzd;
        }
        char cZzm = (char) zzekVar.zzm();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cZzm);
        return sb2.toString();
    }

    static void zzc(zzek zzekVar) {
        while (true) {
            for (boolean z = true; zzekVar.zza() > 0 && z; z = false) {
                char c = (char) zzekVar.zzN()[zzekVar.zzc()];
                if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
                    zzekVar.zzM(1);
                } else {
                    int iZzc = zzekVar.zzc();
                    int iZzd = zzekVar.zzd();
                    byte[] bArrZzN = zzekVar.zzN();
                    if (iZzc + 2 <= iZzd) {
                        int i = iZzc + 1;
                        if (bArrZzN[iZzc] == 47) {
                            int i2 = iZzc + 2;
                            if (bArrZzN[i] == 42) {
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i3 >= iZzd) {
                                        break;
                                    }
                                    if (((char) bArrZzN[i2]) == '*' && ((char) bArrZzN[i3]) == '/') {
                                        iZzd = i2 + 2;
                                        i2 = iZzd;
                                    } else {
                                        i2 = i3;
                                    }
                                }
                                zzekVar.zzM(iZzd - zzekVar.zzc());
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return;
        }
    }

    private static String zzd(zzek zzekVar, StringBuilder sb) {
        boolean z;
        char c;
        sb.setLength(0);
        int iZzc = zzekVar.zzc();
        int iZzd = zzekVar.zzd();
        loop0: while (true) {
            for (false; iZzc < iZzd && !z; true) {
                c = (char) zzekVar.zzN()[iZzc];
                z = (c < 'A' || c > 'Z') && (c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_');
            }
            sb.append(c);
            iZzc++;
        }
        zzekVar.zzM(iZzc - zzekVar.zzc());
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x030d, code lost:
    
        return r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzb(com.google.android.gms.internal.ads.zzek r18) {
        /*
            Method dump skipped, instruction units count: 782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalj.zzb(com.google.android.gms.internal.ads.zzek):java.util.List");
    }
}
