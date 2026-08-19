package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zztt {
    public static final /* synthetic */ int zza = 0;
    private static final HashMap zzb = new HashMap();

    public static zzsz zza() throws zztn {
        List listZzd = zzd("audio/raw", false, false);
        if (listZzd.isEmpty()) {
            return null;
        }
        return (zzsz) listZzd.get(0);
    }

    public static String zzb(zzz zzzVar) {
        Pair pairZza;
        String str = zzzVar.zzo;
        if ("audio/eac3-joc".equals(str)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(str) && (pairZza = zzdh.zza(zzzVar)) != null) {
            int iIntValue = ((Integer) pairZza.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return "video/hevc";
            }
            if (iIntValue == 512) {
                return "video/avc";
            }
            if (iIntValue == 1024) {
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(str)) {
            return "video/hevc";
        }
        return null;
    }

    public static List zzc(zzti zztiVar, zzz zzzVar, boolean z, boolean z2) throws zztn {
        String strZzb = zzb(zzzVar);
        return strZzb == null ? zzfww.zzn() : zztiVar.zza(strZzb, z, z2);
    }

    public static synchronized List zzd(String str, boolean z, boolean z2) throws zztn {
        zztm zztmVar = new zztm(str, z, z2);
        HashMap map = zzb;
        List list = (List) map.get(zztmVar);
        if (list != null) {
            return list;
        }
        ArrayList arrayListZzg = zzg(zztmVar, new zztq(z, z2, str.equals("video/mv-hevc")));
        if (z && arrayListZzg.isEmpty() && zzeu.zza <= 23) {
            arrayListZzg = zzg(zztmVar, new zztp(null));
            if (!arrayListZzg.isEmpty()) {
                zzdx.zzf("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((zzsz) arrayListZzg.get(0)).zza);
            }
        }
        if ("audio/raw".equals(str)) {
            if (zzeu.zza < 26 && Build.DEVICE.equals("R9") && arrayListZzg.size() == 1 && ((zzsz) arrayListZzg.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayListZzg.add(zzsz.zzc("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            zzh(arrayListZzg, new zztr() { // from class: com.google.android.gms.internal.ads.zztk
                @Override // com.google.android.gms.internal.ads.zztr
                public final int zza(Object obj) {
                    int i = zztt.zza;
                    String str2 = ((zzsz) obj).zza;
                    if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                        return 1;
                    }
                    return (zzeu.zza >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                }
            });
        }
        if (zzeu.zza < 32 && arrayListZzg.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzsz) arrayListZzg.get(0)).zza)) {
            arrayListZzg.add((zzsz) arrayListZzg.remove(0));
        }
        zzfww zzfwwVarZzl = zzfww.zzl(arrayListZzg);
        map.put(zztmVar, zzfwwVarZzl);
        return zzfwwVarZzl;
    }

    @RequiresNonNull({"#2.sampleMimeType"})
    public static List zze(zzti zztiVar, zzz zzzVar, boolean z, boolean z2) throws zztn {
        List listZza = zztiVar.zza(zzzVar.zzo, z, z2);
        List listZzc = zzc(zztiVar, zzzVar, z, z2);
        int i = zzfww.zzd;
        zzfwt zzfwtVar = new zzfwt();
        zzfwtVar.zzh(listZza);
        zzfwtVar.zzh(listZzc);
        return zzfwtVar.zzi();
    }

    public static List zzf(List list, final zzz zzzVar) {
        ArrayList arrayList = new ArrayList(list);
        zzh(arrayList, new zztr() { // from class: com.google.android.gms.internal.ads.zztl
            @Override // com.google.android.gms.internal.ads.zztr
            public final int zza(Object obj) {
                int i = zztt.zza;
                return ((zzsz) obj).zzd(zzzVar) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0197 A[Catch: Exception -> 0x023e, TryCatch #2 {Exception -> 0x023e, blocks: (B:91:0x0175, B:97:0x0180, B:105:0x0197, B:110:0x01a9, B:112:0x01b1, B:113:0x01b6, B:115:0x01c6, B:117:0x01ce, B:106:0x019e), top: B:166:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019e A[Catch: Exception -> 0x023e, TryCatch #2 {Exception -> 0x023e, blocks: (B:91:0x0175, B:97:0x0180, B:105:0x0197, B:110:0x01a9, B:112:0x01b1, B:113:0x01b6, B:115:0x01c6, B:117:0x01ce, B:106:0x019e), top: B:166:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01b1 A[Catch: Exception -> 0x023e, TryCatch #2 {Exception -> 0x023e, blocks: (B:91:0x0175, B:97:0x0180, B:105:0x0197, B:110:0x01a9, B:112:0x01b1, B:113:0x01b6, B:115:0x01c6, B:117:0x01ce, B:106:0x019e), top: B:166:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01b6 A[Catch: Exception -> 0x023e, TryCatch #2 {Exception -> 0x023e, blocks: (B:91:0x0175, B:97:0x0180, B:105:0x0197, B:110:0x01a9, B:112:0x01b1, B:113:0x01b6, B:115:0x01c6, B:117:0x01ce, B:106:0x019e), top: B:166:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList zzg(com.google.android.gms.internal.ads.zztm r25, com.google.android.gms.internal.ads.zzto r26) throws com.google.android.gms.internal.ads.zztn {
        /*
            Method dump skipped, instruction units count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztt.zzg(com.google.android.gms.internal.ads.zztm, com.google.android.gms.internal.ads.zzto):java.util.ArrayList");
    }

    private static void zzh(List list, final zztr zztrVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zztj
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = zztt.zza;
                zztr zztrVar2 = zztrVar;
                return zztrVar2.zza(obj2) - zztrVar2.zza(obj);
            }
        });
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo, String str) {
        if (zzeu.zza >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (zzay.zzh(str)) {
            return true;
        }
        String strZza = zzftc.zza(mediaCodecInfo.getName());
        if (strZza.startsWith("arc.")) {
            return false;
        }
        if (strZza.startsWith("omx.google.") || strZza.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strZza.startsWith("omx.sec.") && strZza.contains(".sw.")) || strZza.equals("omx.qcom.video.decoder.hevcswvdec") || strZza.startsWith("c2.android.") || strZza.startsWith("c2.google.")) {
            return true;
        }
        return (strZza.startsWith("omx.") || strZza.startsWith("c2.")) ? false : true;
    }
}
