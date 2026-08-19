package com.google.android.gms.internal.ads;

import com.google.firebase.sessions.settings.RemoteSettings;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaim {
    /* JADX WARN: Removed duplicated region for block: B:131:0x0261 A[Catch: all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:9:0x0030, B:11:0x003b, B:13:0x0047, B:16:0x0053, B:19:0x0060, B:22:0x006f, B:25:0x007c, B:28:0x0089, B:30:0x0093, B:38:0x00ae, B:39:0x00bf, B:40:0x00d2, B:43:0x00de, B:46:0x00eb, B:49:0x00f8, B:52:0x0105, B:55:0x0112, B:58:0x011f, B:61:0x012c, B:64:0x0139, B:67:0x0146, B:70:0x0156, B:74:0x016a, B:76:0x0170, B:78:0x0185, B:79:0x018c, B:81:0x0193, B:86:0x019e, B:91:0x01aa, B:131:0x0261, B:92:0x01bf, B:94:0x01c6, B:96:0x01d0, B:97:0x01e4, B:112:0x0213, B:115:0x0220, B:118:0x022c, B:121:0x0238, B:124:0x0244, B:127:0x0250, B:130:0x025a, B:132:0x0275, B:133:0x027c), top: B:138:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzau zza(com.google.android.gms.internal.ads.zzek r14) {
        /*
            Method dump skipped, instruction units count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaim.zza(com.google.android.gms.internal.ads.zzek):com.google.android.gms.internal.ads.zzau");
    }

    private static int zzb(zzek zzekVar) {
        int iZzg = zzekVar.zzg();
        if (zzekVar.zzg() == 1684108385) {
            zzekVar.zzM(8);
            int i = iZzg - 16;
            if (i == 1) {
                return zzekVar.zzm();
            }
            if (i == 2) {
                return zzekVar.zzq();
            }
            if (i == 3) {
                return zzekVar.zzo();
            }
            if (i == 4 && (zzekVar.zzf() & 128) == 0) {
                return zzekVar.zzp();
            }
        }
        zzdx.zzf("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    private static zzagm zzc(int i, String str, zzek zzekVar, boolean z, boolean z2) {
        int iZzb = zzb(zzekVar);
        if (z2) {
            iZzb = Math.min(1, iZzb);
        }
        if (iZzb >= 0) {
            return z ? new zzagr(str, null, zzfww.zzo(Integer.toString(iZzb))) : new zzagh("und", str, Integer.toString(iZzb));
        }
        zzdx.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzfa.zze(i)));
        return null;
    }

    private static zzagr zzd(int i, String str, zzek zzekVar) {
        int iZzg = zzekVar.zzg();
        if (zzekVar.zzg() == 1684108385 && iZzg >= 22) {
            zzekVar.zzM(10);
            int iZzq = zzekVar.zzq();
            if (iZzq > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iZzq);
                String string = sb.toString();
                int iZzq2 = zzekVar.zzq();
                if (iZzq2 > 0) {
                    string = string + RemoteSettings.FORWARD_SLASH_STRING + iZzq2;
                }
                return new zzagr(str, null, zzfww.zzo(string));
            }
        }
        zzdx.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzfa.zze(i)));
        return null;
    }

    private static zzagr zze(int i, String str, zzek zzekVar) {
        int iZzg = zzekVar.zzg();
        if (zzekVar.zzg() == 1684108385) {
            zzekVar.zzM(8);
            return new zzagr(str, null, zzfww.zzo(zzekVar.zzA(iZzg - 16)));
        }
        zzdx.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzfa.zze(i)));
        return null;
    }
}
