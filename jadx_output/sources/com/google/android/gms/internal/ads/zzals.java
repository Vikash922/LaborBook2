package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.TextUtils;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzals {
    public static final Pattern zza = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern zzb = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map zzc;
    private static final Map zzd;

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzc = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzd = Collections.unmodifiableMap(map2);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.text.SpannedString zza(java.lang.String r17, java.lang.String r18, java.util.List r19) {
        /*
            Method dump skipped, instruction units count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzals.zza(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    static zzcs zzb(String str) {
        zzalq zzalqVar = new zzalq();
        zzh(str, zzalqVar);
        return zzalqVar.zza();
    }

    public static zzall zzc(zzek zzekVar, List list) {
        String strZzz = zzekVar.zzz(StandardCharsets.UTF_8);
        if (strZzz != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(strZzz);
            if (matcher.matches()) {
                return zze(null, matcher, zzekVar, list);
            }
            String strZzz2 = zzekVar.zzz(StandardCharsets.UTF_8);
            if (strZzz2 != null) {
                Matcher matcher2 = pattern.matcher(strZzz2);
                if (matcher2.matches()) {
                    return zze(strZzz.trim(), matcher2, zzekVar, list);
                }
            }
        }
        return null;
    }

    private static int zzd(List list, String str, zzalo zzaloVar) {
        List listZzf = zzf(list, str, zzaloVar);
        for (int i = 0; i < listZzf.size(); i++) {
            zzalk zzalkVar = ((zzalp) listZzf.get(i)).zzb;
            if (zzalkVar.zze() != -1) {
                return zzalkVar.zze();
            }
        }
        return -1;
    }

    private static zzall zze(String str, Matcher matcher, zzek zzekVar, List list) {
        zzalq zzalqVar = new zzalq();
        try {
            String strGroup = matcher.group(1);
            if (strGroup == null) {
                throw null;
            }
            String str2 = strGroup;
            zzalqVar.zza = zzalu.zzb(strGroup);
            String strGroup2 = matcher.group(2);
            if (strGroup2 == null) {
                throw null;
            }
            String str3 = strGroup2;
            zzalqVar.zzb = zzalu.zzb(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            zzh(strGroup3, zzalqVar);
            StringBuilder sb = new StringBuilder();
            String strZzz = zzekVar.zzz(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(strZzz)) {
                if (sb.length() > 0) {
                    sb.append(StringUtils.f4768LF);
                }
                sb.append(strZzz.trim());
                strZzz = zzekVar.zzz(StandardCharsets.UTF_8);
            }
            zzalqVar.zzc = zza(str, sb.toString(), list);
            return new zzall(zzalqVar.zza().zzp(), zzalqVar.zza, zzalqVar.zzb);
        } catch (IllegalArgumentException unused) {
            zzdx.zzf("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    private static List zzf(List list, String str, zzalo zzaloVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzalk zzalkVar = (zzalk) list.get(i);
            int iZzf = zzalkVar.zzf(str, zzaloVar.zza, zzaloVar.zzd, zzaloVar.zzc);
            if (iZzf > 0) {
                arrayList.add(new zzalp(iZzf, zzalkVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzg(java.lang.String r17, com.google.android.gms.internal.ads.zzalo r18, java.util.List r19, android.text.SpannableStringBuilder r20, java.util.List r21) {
        /*
            Method dump skipped, instruction units count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzals.zzg(java.lang.String, com.google.android.gms.internal.ads.zzalo, java.util.List, android.text.SpannableStringBuilder, java.util.List):void");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void zzh(String str, zzalq zzalqVar) {
        Matcher matcher = zzb.matcher(str);
        while (matcher.find()) {
            int i = 1;
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i2 = 2;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                byte b = -1;
                if ("line".equals(strGroup)) {
                    int iIndexOf = strGroup2.indexOf(44);
                    if (iIndexOf != -1) {
                        String strSubstring = strGroup2.substring(iIndexOf + 1);
                        switch (strSubstring.hashCode()) {
                            case -1364013995:
                                if (strSubstring.equals(CommonCssConstants.CENTER)) {
                                    b = 1;
                                }
                                break;
                            case -1074341483:
                                if (strSubstring.equals(SvgConstants.Values.TEXT_ANCHOR_MIDDLE)) {
                                    b = 2;
                                }
                                break;
                            case 100571:
                                if (strSubstring.equals("end")) {
                                    b = 3;
                                }
                                break;
                            case 109757538:
                                if (strSubstring.equals("start")) {
                                    b = 0;
                                }
                                break;
                        }
                        if (b == 0) {
                            i2 = 0;
                        } else if (b == 1 || b == 2) {
                            i2 = 1;
                        } else if (b != 3) {
                            zzdx.zzf("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(strSubstring)));
                            i2 = Integer.MIN_VALUE;
                        }
                        zzalqVar.zzg = i2;
                        strGroup2 = strGroup2.substring(0, iIndexOf);
                    }
                    if (strGroup2.endsWith(CommonCssConstants.PERCENTAGE)) {
                        zzalqVar.zze = zzalu.zza(strGroup2);
                        zzalqVar.zzf = 0;
                    } else {
                        zzalqVar.zze = Integer.parseInt(strGroup2);
                        zzalqVar.zzf = 1;
                    }
                } else if ("align".equals(strGroup)) {
                    switch (strGroup2.hashCode()) {
                        case -1364013995:
                            if (strGroup2.equals(CommonCssConstants.CENTER)) {
                                b = 2;
                            }
                            break;
                        case -1074341483:
                            if (strGroup2.equals(SvgConstants.Values.TEXT_ANCHOR_MIDDLE)) {
                                b = 3;
                            }
                            break;
                        case 100571:
                            if (strGroup2.equals("end")) {
                                b = 4;
                            }
                            break;
                        case 3317767:
                            if (strGroup2.equals("left")) {
                                b = 1;
                            }
                            break;
                        case 108511772:
                            if (strGroup2.equals("right")) {
                                b = 5;
                            }
                            break;
                        case 109757538:
                            if (strGroup2.equals("start")) {
                                b = 0;
                            }
                            break;
                    }
                    if (b != 0) {
                        if (b == 1) {
                            i = 4;
                        } else if (b == 2 || b == 3) {
                            i = 2;
                        } else if (b != 4) {
                            i = 5;
                            if (b != 5) {
                                zzdx.zzf("WebvttCueParser", "Invalid alignment value: ".concat(strGroup2));
                                i = 2;
                            }
                        } else {
                            i = 3;
                        }
                    }
                    zzalqVar.zzd = i;
                } else if (CommonCssConstants.POSITION.equals(strGroup)) {
                    int iIndexOf2 = strGroup2.indexOf(44);
                    if (iIndexOf2 != -1) {
                        String strSubstring2 = strGroup2.substring(iIndexOf2 + 1);
                        switch (strSubstring2.hashCode()) {
                            case -1842484672:
                                if (strSubstring2.equals("line-left")) {
                                    b = 0;
                                }
                                break;
                            case -1364013995:
                                if (strSubstring2.equals(CommonCssConstants.CENTER)) {
                                    b = 2;
                                }
                                break;
                            case -1276788989:
                                if (strSubstring2.equals("line-right")) {
                                    b = 4;
                                }
                                break;
                            case -1074341483:
                                if (strSubstring2.equals(SvgConstants.Values.TEXT_ANCHOR_MIDDLE)) {
                                    b = 3;
                                }
                                break;
                            case 100571:
                                if (strSubstring2.equals("end")) {
                                    b = 5;
                                }
                                break;
                            case 109757538:
                                if (strSubstring2.equals("start")) {
                                    b = 1;
                                }
                                break;
                        }
                        if (b == 0 || b == 1) {
                            i = 0;
                        } else if (b != 2 && b != 3) {
                            if (b == 4 || b == 5) {
                                i = 2;
                            } else {
                                zzdx.zzf("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(strSubstring2)));
                                i = Integer.MIN_VALUE;
                            }
                        }
                        zzalqVar.zzi = i;
                        strGroup2 = strGroup2.substring(0, iIndexOf2);
                    }
                    zzalqVar.zzh = zzalu.zza(strGroup2);
                } else if ("size".equals(strGroup)) {
                    zzalqVar.zzj = zzalu.zza(strGroup2);
                } else if ("vertical".equals(strGroup)) {
                    int iHashCode = strGroup2.hashCode();
                    if (iHashCode != 3462) {
                        if (iHashCode == 3642 && strGroup2.equals("rl")) {
                            b = 0;
                        }
                    } else if (strGroup2.equals("lr")) {
                        b = 1;
                    }
                    if (b != 0) {
                        if (b != 1) {
                            zzdx.zzf("WebvttCueParser", "Invalid 'vertical' value: ".concat(strGroup2));
                            i = Integer.MIN_VALUE;
                        } else {
                            i = 2;
                        }
                    }
                    zzalqVar.zzk = i;
                } else {
                    zzdx.zzf("WebvttCueParser", "Unknown cue setting " + strGroup + ":" + strGroup2);
                }
            } catch (NumberFormatException unused) {
                zzdx.zzf("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(matcher.group())));
            }
        }
    }
}
