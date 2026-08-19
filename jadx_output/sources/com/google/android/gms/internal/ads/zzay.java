package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzay {
    public static final /* synthetic */ int zza = 0;
    private static final ArrayList zzb = new ArrayList();
    private static final Pattern zzc = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzay.zza(java.lang.String, java.lang.String):int");
    }

    public static int zzb(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (zzh(str)) {
            return 1;
        }
        if (zzj(str)) {
            return 2;
        }
        if ("text".equals(zzk(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if (zzi(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = zzb;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zzaw zzawVar = (zzaw) arrayList.get(i);
            String str2 = zzawVar.zza;
            if (str.equals(null)) {
                int i2 = zzawVar.zzc;
                return 0;
            }
        }
        return -1;
    }

    static zzax zzc(String str) {
        Matcher matcher = zzc.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            return new zzax(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String zzd(int i) {
        if (i == 32) {
            return "video/mp4v-es";
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return "video/hevc";
        }
        if (i == 64) {
            return "audio/mp4a-latm";
        }
        if (i == 163) {
            return "video/wvc1";
        }
        if (i == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i == 221) {
            return "audio/vorbis";
        }
        if (i == 165) {
            return "audio/ac3";
        }
        if (i == 166) {
            return "audio/eac3";
        }
        switch (i) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            case 108:
                return "image/jpeg";
            default:
                switch (i) {
                    case Opcodes.RET /* 169 */:
                    case Opcodes.IRETURN /* 172 */:
                        return "audio/vnd.dts";
                    case Opcodes.TABLESWITCH /* 170 */:
                    case Opcodes.LOOKUPSWITCH /* 171 */:
                        return "audio/vnd.dts.hd";
                    case Opcodes.LRETURN /* 173 */:
                        return "audio/opus";
                    case Opcodes.FRETURN /* 174 */:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zze(java.lang.String r1) {
        /*
            if (r1 != 0) goto L4
            r1 = 0
            return r1
        L4:
            java.lang.String r1 = com.google.android.gms.internal.ads.zzftc.zza(r1)
            int r0 = r1.hashCode()
            switch(r0) {
                case -1833600100: goto L4c;
                case -1007807498: goto L42;
                case -979095690: goto L38;
                case -586683234: goto L2e;
                case -432836268: goto L24;
                case -432836267: goto L1a;
                case 187090231: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L56
        L10:
            java.lang.String r0 = "audio/mp3"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 2
            goto L57
        L1a:
            java.lang.String r0 = "audio/mpeg-l2"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 6
            goto L57
        L24:
            java.lang.String r0 = "audio/mpeg-l1"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 5
            goto L57
        L2e:
            java.lang.String r0 = "audio/x-wav"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 3
            goto L57
        L38:
            java.lang.String r0 = "application/x-mpegurl"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 4
            goto L57
        L42:
            java.lang.String r0 = "audio/x-flac"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 1
            goto L57
        L4c:
            java.lang.String r0 = "video/x-mvhevc"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L56
            r0 = 0
            goto L57
        L56:
            r0 = -1
        L57:
            switch(r0) {
                case 0: goto L6d;
                case 1: goto L6a;
                case 2: goto L67;
                case 3: goto L64;
                case 4: goto L61;
                case 5: goto L5e;
                case 6: goto L5b;
                default: goto L5a;
            }
        L5a:
            return r1
        L5b:
            java.lang.String r1 = "audio/mpeg-L2"
            return r1
        L5e:
            java.lang.String r1 = "audio/mpeg-L1"
            return r1
        L61:
            java.lang.String r1 = "application/x-mpegURL"
            return r1
        L64:
            java.lang.String r1 = "audio/wav"
            return r1
        L67:
            java.lang.String r1 = "audio/mpeg"
            return r1
        L6a:
            java.lang.String r1 = "audio/flac"
            return r1
        L6d:
            java.lang.String r1 = "video/mv-hevc"
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzay.zze(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzf(java.lang.String r3, java.lang.String r4) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzay.zzf(java.lang.String, java.lang.String):boolean");
    }

    public static boolean zzg(String str, String str2) {
        String strZzd;
        zzax zzaxVarZzc;
        String string = null;
        if (str != null) {
            int i = zzeu.zza;
            String[] strArrSplit = TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
            StringBuilder sb = new StringBuilder();
            for (String str3 : strArrSplit) {
                if (str3 == null) {
                    strZzd = null;
                } else {
                    String strZza = zzftc.zza(str3.trim());
                    if (strZza.startsWith("avc1") || strZza.startsWith("avc3")) {
                        strZzd = "video/avc";
                    } else if (strZza.startsWith("hev1") || strZza.startsWith("hvc1")) {
                        strZzd = "video/hevc";
                    } else if (strZza.startsWith("dvav") || strZza.startsWith("dva1") || strZza.startsWith("dvhe") || strZza.startsWith("dvh1")) {
                        strZzd = "video/dolby-vision";
                    } else if (strZza.startsWith("av01")) {
                        strZzd = "video/av01";
                    } else if (strZza.startsWith("vp9") || strZza.startsWith("vp09")) {
                        strZzd = "video/x-vnd.on2.vp9";
                    } else if (strZza.startsWith("vp8") || strZza.startsWith("vp08")) {
                        strZzd = "video/x-vnd.on2.vp8";
                    } else if (strZza.startsWith("mp4a")) {
                        strZzd = (!strZza.startsWith("mp4a.") || (zzaxVarZzc = zzc(strZza)) == null) ? null : zzd(zzaxVarZzc.zza);
                        if (strZzd == null) {
                            strZzd = "audio/mp4a-latm";
                        }
                    } else if (strZza.startsWith("mha1")) {
                        strZzd = "audio/mha1";
                    } else if (strZza.startsWith("mhm1")) {
                        strZzd = "audio/mhm1";
                    } else if (strZza.startsWith("ac-3") || strZza.startsWith("dac3")) {
                        strZzd = "audio/ac3";
                    } else if (strZza.startsWith("ec-3") || strZza.startsWith("dec3")) {
                        strZzd = "audio/eac3";
                    } else if (strZza.startsWith("ec+3")) {
                        strZzd = "audio/eac3-joc";
                    } else if (strZza.startsWith("ac-4") || strZza.startsWith("dac4")) {
                        strZzd = "audio/ac4";
                    } else if (strZza.startsWith("dtsc")) {
                        strZzd = "audio/vnd.dts";
                    } else if (strZza.startsWith("dtse")) {
                        strZzd = "audio/vnd.dts.hd;profile=lbr";
                    } else if (strZza.startsWith("dtsh") || strZza.startsWith("dtsl")) {
                        strZzd = "audio/vnd.dts.hd";
                    } else if (strZza.startsWith("dtsx")) {
                        strZzd = "audio/vnd.dts.uhd;profile=p2";
                    } else if (strZza.startsWith("opus")) {
                        strZzd = "audio/opus";
                    } else if (strZza.startsWith("vorbis")) {
                        strZzd = "audio/vorbis";
                    } else if (strZza.startsWith("flac")) {
                        strZzd = "audio/flac";
                    } else if (strZza.startsWith("stpp")) {
                        strZzd = "application/ttml+xml";
                    } else if (strZza.startsWith("wvtt")) {
                        strZzd = "text/vtt";
                    } else if (strZza.contains("cea708")) {
                        strZzd = "application/cea-708";
                    } else if (strZza.contains("eia608") || strZza.contains("cea608")) {
                        strZzd = "application/cea-608";
                    } else {
                        ArrayList arrayList = zzb;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= size) {
                                break;
                            }
                            zzaw zzawVar = (zzaw) arrayList.get(i2);
                            String str4 = zzawVar.zzb;
                            if (strZza.startsWith(null)) {
                                String str5 = zzawVar.zza;
                                break;
                            }
                            i2++;
                        }
                        strZzd = null;
                    }
                }
                if (str2.equals(strZzd)) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(str3);
                }
            }
            if (sb.length() > 0) {
                string = sb.toString();
            }
        }
        return string != null;
    }

    public static boolean zzh(String str) {
        return "audio".equals(zzk(str));
    }

    public static boolean zzi(String str) {
        return "image".equals(zzk(str)) || "application/x-image-uri".equals(str);
    }

    public static boolean zzj(String str) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(zzk(str));
    }

    private static String zzk(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }
}
