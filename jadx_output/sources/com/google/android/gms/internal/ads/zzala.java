package com.google.android.gms.internal.ads;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzala implements zzaka {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern zzd = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern zze = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern zza = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern zzb = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern zzf = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern zzg = Pattern.compile("^(\\d+) (\\d+)$");
    private static final zzaky zzh = new zzaky(30.0f, 1, 1);

    /* JADX WARN: Removed duplicated region for block: B:50:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzc(java.lang.String r13, com.google.android.gms.internal.ads.zzaky r14) throws com.google.android.gms.internal.ads.zzajw {
        /*
            Method dump skipped, instruction units count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzala.zzc(java.lang.String, com.google.android.gms.internal.ads.zzaky):long");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.text.Layout.Alignment zzd(java.lang.String r5) {
        /*
            java.lang.String r5 = com.google.android.gms.internal.ads.zzftc.zza(r5)
            int r0 = r5.hashCode()
            r1 = 4
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1364013995: goto L38;
                case 100571: goto L2e;
                case 3317767: goto L24;
                case 108511772: goto L1a;
                case 109757538: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L42
        L10:
            java.lang.String r0 = "start"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = r4
            goto L43
        L1a:
            java.lang.String r0 = "right"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = r3
            goto L43
        L24:
            java.lang.String r0 = "left"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = 0
            goto L43
        L2e:
            java.lang.String r0 = "end"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = r2
            goto L43
        L38:
            java.lang.String r0 = "center"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = r1
            goto L43
        L42:
            r5 = -1
        L43:
            if (r5 == 0) goto L55
            if (r5 == r4) goto L55
            if (r5 == r3) goto L52
            if (r5 == r2) goto L52
            if (r5 == r1) goto L4f
            r5 = 0
            return r5
        L4f:
            android.text.Layout$Alignment r5 = android.text.Layout.Alignment.ALIGN_CENTER
            return r5
        L52:
            android.text.Layout$Alignment r5 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            return r5
        L55:
            android.text.Layout$Alignment r5 = android.text.Layout.Alignment.ALIGN_NORMAL
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzala.zzd(java.lang.String):android.text.Layout$Alignment");
    }

    private static zzald zze(zzald zzaldVar) {
        return zzaldVar == null ? new zzald() : zzaldVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v49 */
    /* JADX WARN: Type inference failed for: r6v50 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v89 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r6v90 */
    private static zzald zzf(XmlPullParser xmlPullParser, zzald zzaldVar) {
        ?? r6;
        Matcher matcher;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z = false;
        zzald zzaldVarZze = zzaldVar;
        int i = 0;
        while (i < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            ?? r10 = -1;
             = -1;
             = -1;
             = -1;
             = -1;
            ?? r102 = -1;
             = -1;
             = -1;
            ?? r103 = -1;
             = -1;
             = -1;
             = -1;
             = -1;
             = -1;
             = -1;
            ?? r104 = -1;
             = -1;
             = -1;
            ?? r105 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    r6 = !attributeName.equals("fontStyle") ? -1 : 6;
                    break;
                case -1289044182:
                    r6 = !attributeName.equals("extent") ? -1 : 16;
                    break;
                case -1224696685:
                    r6 = !attributeName.equals("fontFamily") ? -1 : 3;
                    break;
                case -1065511464:
                    r6 = !attributeName.equals("textAlign") ? -1 : 7;
                    break;
                case -1008619738:
                    r6 = !attributeName.equals("origin") ? -1 : 15;
                    break;
                case -879295043:
                    r6 = !attributeName.equals("textDecoration") ? -1 : 12;
                    break;
                case -734428249:
                    r6 = !attributeName.equals("fontWeight") ? -1 : 5;
                    break;
                case 3355:
                    r6 = !attributeName.equals("id") ? -1 : z;
                    break;
                case 3511770:
                    r6 = !attributeName.equals("ruby") ? -1 : 10;
                    break;
                case 94842723:
                    r6 = !attributeName.equals("color") ? -1 : 2;
                    break;
                case 109403361:
                    r6 = !attributeName.equals("shear") ? -1 : 14;
                    break;
                case 110138194:
                    r6 = !attributeName.equals("textCombine") ? -1 : 9;
                    break;
                case 365601008:
                    r6 = !attributeName.equals("fontSize") ? -1 : 4;
                    break;
                case 921125321:
                    r6 = !attributeName.equals("textEmphasis") ? -1 : 13;
                    break;
                case 1115953443:
                    r6 = !attributeName.equals("rubyPosition") ? -1 : 11;
                    break;
                case 1287124693:
                    r6 = !attributeName.equals("backgroundColor") ? -1 : 1;
                    break;
                case 1754920356:
                    r6 = !attributeName.equals("multiRowAlign") ? -1 : 8;
                    break;
                default:
                    r6 = -1;
                    break;
            }
            switch (r6) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzt(attributeValue);
                    }
                    break;
                case 1:
                    zzaldVarZze = zze(zzaldVarZze);
                    try {
                        zzaldVarZze.zzm(zzdi.zzb(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        zzdx.zzf("TtmlParser", "Failed parsing background value: ".concat(String.valueOf(attributeValue)));
                    }
                    break;
                case 2:
                    zzaldVarZze = zze(zzaldVarZze);
                    try {
                        zzaldVarZze.zzp(zzdi.zzb(attributeValue));
                    } catch (IllegalArgumentException unused2) {
                        zzdx.zzf("TtmlParser", "Failed parsing color value: ".concat(String.valueOf(attributeValue)));
                    }
                    break;
                case 3:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzq(attributeValue);
                    break;
                case 4:
                    try {
                        zzaldVarZze = zze(zzaldVarZze);
                        int i2 = zzeu.zza;
                        String[] strArrSplit = attributeValue.split("\\s+", -1);
                        int length = strArrSplit.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                throw new zzajw("Invalid number of entries for fontSize: " + length + ".");
                            }
                            matcher = zze.matcher(strArrSplit[1]);
                            zzdx.zzf("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                        if (!matcher.matches()) {
                            throw new zzajw("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                        String strGroup = matcher.group(3);
                        if (strGroup == null) {
                            throw null;
                        }
                        String str = strGroup;
                        int iHashCode = strGroup.hashCode();
                        if (iHashCode != 37) {
                            if (iHashCode != 3240) {
                                if (iHashCode == 3592 && strGroup.equals(CommonCssConstants.f3304PX)) {
                                    r10 = 0;
                                }
                            } else if (strGroup.equals("em")) {
                                r10 = 1;
                            }
                        } else if (strGroup.equals(CommonCssConstants.PERCENTAGE)) {
                            r10 = 2;
                        }
                        if (r10 == 0) {
                            zzaldVarZze.zzs(1);
                        } else if (r10 == 1) {
                            zzaldVarZze.zzs(2);
                        } else {
                            if (r10 != 2) {
                                throw new zzajw("Invalid unit for fontSize: '" + strGroup + "'.");
                            }
                            zzaldVarZze.zzs(3);
                        }
                        String strGroup2 = matcher.group(1);
                        if (strGroup2 == null) {
                            throw null;
                        }
                        String str2 = strGroup2;
                        zzaldVarZze.zzr(Float.parseFloat(strGroup2));
                    } catch (zzajw unused3) {
                        zzdx.zzf("TtmlParser", "Failed parsing fontSize value: ".concat(String.valueOf(attributeValue)));
                    }
                    break;
                case 5:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzn("bold".equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzu("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzB(zzd(attributeValue));
                    break;
                case 8:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzw(zzd(attributeValue));
                    break;
                case 9:
                    String strZza = zzftc.zza(attributeValue);
                    int iHashCode2 = strZza.hashCode();
                    if (iHashCode2 != 96673) {
                        if (iHashCode2 == 3387192 && strZza.equals("none")) {
                            r105 = z;
                        }
                    } else if (strZza.equals("all")) {
                        r105 = 1;
                    }
                    if (r105 == 0) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzC(z);
                    } else if (r105 == 1) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzC(true);
                    }
                    break;
                case 10:
                    String strZza2 = zzftc.zza(attributeValue);
                    switch (strZza2.hashCode()) {
                        case -618561360:
                            if (strZza2.equals("baseContainer")) {
                                r104 = 2;
                            }
                            break;
                        case -410956671:
                            if (strZza2.equals("container")) {
                                r104 = z;
                            }
                            break;
                        case -250518009:
                            if (strZza2.equals("delimiter")) {
                                r104 = 5;
                            }
                            break;
                        case -136074796:
                            if (strZza2.equals("textContainer")) {
                                r104 = 4;
                            }
                            break;
                        case 3016401:
                            if (strZza2.equals("base")) {
                                r104 = 1;
                            }
                            break;
                        case 3556653:
                            if (strZza2.equals("text")) {
                                r104 = 3;
                            }
                            break;
                    }
                    if (r104 == 0) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzz(1);
                    } else if (r104 == 1 || r104 == 2) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzz(2);
                    } else if (r104 == 3 || r104 == 4) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzz(3);
                    } else if (r104 == 5) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzz(4);
                    }
                    break;
                case 11:
                    String strZza3 = zzftc.zza(attributeValue);
                    int iHashCode3 = strZza3.hashCode();
                    if (iHashCode3 != -1392885889) {
                        if (iHashCode3 == 92734940 && strZza3.equals("after")) {
                            r103 = 1;
                        }
                    } else if (strZza3.equals("before")) {
                        r103 = z;
                    }
                    if (r103 == 0) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzy(1);
                    } else if (r103 == 1) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzy(2);
                    }
                    break;
                case 12:
                    String strZza4 = zzftc.zza(attributeValue);
                    switch (strZza4.hashCode()) {
                        case -1461280213:
                            if (strZza4.equals("nounderline")) {
                                r102 = 3;
                            }
                            break;
                        case -1026963764:
                            if (strZza4.equals("underline")) {
                                r102 = 2;
                            }
                            break;
                        case 913457136:
                            if (strZza4.equals("nolinethrough")) {
                                r102 = 1;
                            }
                            break;
                        case 1679736913:
                            if (strZza4.equals("linethrough")) {
                                r102 = z;
                            }
                            break;
                    }
                    if (r102 == 0) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzv(true);
                    } else if (r102 == 1) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzv(z);
                    } else if (r102 == 2) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzE(true);
                    } else if (r102 == 3) {
                        zzaldVarZze = zze(zzaldVarZze);
                        zzaldVarZze.zzE(z);
                    }
                    break;
                case 13:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzD(zzakw.zza(attributeValue));
                    break;
                case 14:
                    zzald zzaldVarZze2 = zze(zzaldVarZze);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String strGroup3 = matcher2.group(1);
                            if (strGroup3 == null) {
                                throw null;
                            }
                            String str3 = strGroup3;
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup3)));
                        } catch (NumberFormatException e) {
                            zzdx.zzg("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e);
                        }
                    } else {
                        zzdx.zzf("TtmlParser", "Invalid value for shear: ".concat(String.valueOf(attributeValue)));
                    }
                    zzaldVarZze2.zzA(fMin);
                    zzaldVarZze = zzaldVarZze2;
                    break;
                case 15:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzx(attributeValue);
                    break;
                case 16:
                    zzaldVarZze = zze(zzaldVarZze);
                    zzaldVarZze.zzo(attributeValue);
                    break;
            }
            i++;
            z = false;
        }
        return zzaldVarZze;
    }

    private static String[] zzg(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        int i = zzeu.zza;
        return strTrim.split("\\s+", -1);
    }

    @Override // com.google.android.gms.internal.ads.zzaka
    public final void zza(byte[] bArr, int i, int i2, zzajz zzajzVar, zzdk zzdkVar) {
        zzaju.zza(zzb(bArr, i, i2), zzajzVar, zzdkVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:238:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x04e9 A[Catch: IOException -> 0x074b, XmlPullParserException -> 0x0755, TRY_LEAVE, TryCatch #18 {IOException -> 0x074b, XmlPullParserException -> 0x0755, blocks: (B:3:0x0006, B:6:0x0062, B:8:0x006d, B:11:0x0077, B:14:0x0081, B:16:0x0089, B:18:0x0090, B:21:0x009c, B:25:0x00ae, B:27:0x00cd, B:29:0x00d7, B:30:0x00db, B:32:0x00e7, B:34:0x00f2, B:63:0x0187, B:82:0x01e4, B:85:0x01f8, B:87:0x01fe, B:89:0x0206, B:91:0x020e, B:93:0x0216, B:95:0x021e, B:97:0x0226, B:99:0x022c, B:101:0x0234, B:103:0x023c, B:105:0x0242, B:107:0x0248, B:109:0x0250, B:111:0x0258, B:114:0x0261, B:419:0x072d, B:115:0x0286, B:117:0x028c, B:119:0x0295, B:121:0x02a4, B:123:0x02ae, B:125:0x02c2, B:127:0x02c8, B:279:0x0544, B:128:0x02cc, B:131:0x02d6, B:133:0x02dc, B:135:0x02e7, B:137:0x02ed, B:138:0x02f4, B:141:0x02fe, B:278:0x053f, B:145:0x0309, B:147:0x0311, B:149:0x0317, B:151:0x031f, B:153:0x0325, B:156:0x0338, B:158:0x033e, B:160:0x034f, B:161:0x0358, B:185:0x03bc, B:187:0x03c6, B:189:0x03cc, B:191:0x03d4, B:193:0x03da, B:196:0x03ef, B:198:0x03f5, B:200:0x0406, B:224:0x0493, B:226:0x049b, B:247:0x04e1, B:249:0x04e9, B:276:0x0532, B:202:0x0417, B:204:0x0419, B:205:0x041a, B:206:0x0429, B:209:0x0431, B:212:0x0441, B:214:0x0447, B:216:0x0455, B:218:0x046c, B:220:0x046e, B:221:0x046f, B:222:0x047e, B:163:0x035b, B:165:0x035d, B:166:0x035e, B:167:0x0368, B:170:0x0370, B:173:0x037b, B:175:0x0381, B:177:0x038f, B:179:0x03a1, B:181:0x03a3, B:182:0x03a4, B:183:0x03af, B:284:0x0558, B:287:0x0579, B:340:0x061d, B:321:0x05d7, B:324:0x05e0, B:392:0x06be, B:327:0x05ea, B:330:0x05f4, B:337:0x0609, B:338:0x060e, B:339:0x0616, B:347:0x0635, B:379:0x0693, B:381:0x06a1, B:383:0x06a6, B:370:0x067e, B:66:0x0192, B:68:0x019e, B:71:0x01a9, B:73:0x01af, B:75:0x01bd, B:77:0x01cd, B:79:0x01cf, B:80:0x01d0, B:38:0x0109, B:40:0x0115, B:43:0x0120, B:45:0x0126, B:47:0x0134, B:53:0x014d, B:55:0x0154, B:62:0x017c, B:57:0x0171, B:59:0x0177, B:396:0x06d9, B:398:0x06e9, B:401:0x06ed, B:403:0x06f7, B:405:0x0701, B:409:0x070c, B:407:0x0709, B:412:0x071e, B:416:0x0726, B:422:0x0744, B:425:0x074a), top: B:460:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x052e  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x053f A[Catch: IOException -> 0x074b, XmlPullParserException -> 0x0755, TryCatch #18 {IOException -> 0x074b, XmlPullParserException -> 0x0755, blocks: (B:3:0x0006, B:6:0x0062, B:8:0x006d, B:11:0x0077, B:14:0x0081, B:16:0x0089, B:18:0x0090, B:21:0x009c, B:25:0x00ae, B:27:0x00cd, B:29:0x00d7, B:30:0x00db, B:32:0x00e7, B:34:0x00f2, B:63:0x0187, B:82:0x01e4, B:85:0x01f8, B:87:0x01fe, B:89:0x0206, B:91:0x020e, B:93:0x0216, B:95:0x021e, B:97:0x0226, B:99:0x022c, B:101:0x0234, B:103:0x023c, B:105:0x0242, B:107:0x0248, B:109:0x0250, B:111:0x0258, B:114:0x0261, B:419:0x072d, B:115:0x0286, B:117:0x028c, B:119:0x0295, B:121:0x02a4, B:123:0x02ae, B:125:0x02c2, B:127:0x02c8, B:279:0x0544, B:128:0x02cc, B:131:0x02d6, B:133:0x02dc, B:135:0x02e7, B:137:0x02ed, B:138:0x02f4, B:141:0x02fe, B:278:0x053f, B:145:0x0309, B:147:0x0311, B:149:0x0317, B:151:0x031f, B:153:0x0325, B:156:0x0338, B:158:0x033e, B:160:0x034f, B:161:0x0358, B:185:0x03bc, B:187:0x03c6, B:189:0x03cc, B:191:0x03d4, B:193:0x03da, B:196:0x03ef, B:198:0x03f5, B:200:0x0406, B:224:0x0493, B:226:0x049b, B:247:0x04e1, B:249:0x04e9, B:276:0x0532, B:202:0x0417, B:204:0x0419, B:205:0x041a, B:206:0x0429, B:209:0x0431, B:212:0x0441, B:214:0x0447, B:216:0x0455, B:218:0x046c, B:220:0x046e, B:221:0x046f, B:222:0x047e, B:163:0x035b, B:165:0x035d, B:166:0x035e, B:167:0x0368, B:170:0x0370, B:173:0x037b, B:175:0x0381, B:177:0x038f, B:179:0x03a1, B:181:0x03a3, B:182:0x03a4, B:183:0x03af, B:284:0x0558, B:287:0x0579, B:340:0x061d, B:321:0x05d7, B:324:0x05e0, B:392:0x06be, B:327:0x05ea, B:330:0x05f4, B:337:0x0609, B:338:0x060e, B:339:0x0616, B:347:0x0635, B:379:0x0693, B:381:0x06a1, B:383:0x06a6, B:370:0x067e, B:66:0x0192, B:68:0x019e, B:71:0x01a9, B:73:0x01af, B:75:0x01bd, B:77:0x01cd, B:79:0x01cf, B:80:0x01d0, B:38:0x0109, B:40:0x0115, B:43:0x0120, B:45:0x0126, B:47:0x0134, B:53:0x014d, B:55:0x0154, B:62:0x017c, B:57:0x0171, B:59:0x0177, B:396:0x06d9, B:398:0x06e9, B:401:0x06ed, B:403:0x06f7, B:405:0x0701, B:409:0x070c, B:407:0x0709, B:412:0x071e, B:416:0x0726, B:422:0x0744, B:425:0x074a), top: B:460:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0550 A[LOOP:1: B:117:0x028c->B:282:0x0550, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x068f  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x06a6 A[Catch: zzajw -> 0x06b1, IOException -> 0x074b, XmlPullParserException -> 0x0755, TRY_LEAVE, TryCatch #16 {zzajw -> 0x06b1, blocks: (B:381:0x06a1, B:383:0x06a6), top: B:456:0x06a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:479:0x054a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0192 A[Catch: IOException -> 0x074b, XmlPullParserException -> 0x0755, TryCatch #18 {IOException -> 0x074b, XmlPullParserException -> 0x0755, blocks: (B:3:0x0006, B:6:0x0062, B:8:0x006d, B:11:0x0077, B:14:0x0081, B:16:0x0089, B:18:0x0090, B:21:0x009c, B:25:0x00ae, B:27:0x00cd, B:29:0x00d7, B:30:0x00db, B:32:0x00e7, B:34:0x00f2, B:63:0x0187, B:82:0x01e4, B:85:0x01f8, B:87:0x01fe, B:89:0x0206, B:91:0x020e, B:93:0x0216, B:95:0x021e, B:97:0x0226, B:99:0x022c, B:101:0x0234, B:103:0x023c, B:105:0x0242, B:107:0x0248, B:109:0x0250, B:111:0x0258, B:114:0x0261, B:419:0x072d, B:115:0x0286, B:117:0x028c, B:119:0x0295, B:121:0x02a4, B:123:0x02ae, B:125:0x02c2, B:127:0x02c8, B:279:0x0544, B:128:0x02cc, B:131:0x02d6, B:133:0x02dc, B:135:0x02e7, B:137:0x02ed, B:138:0x02f4, B:141:0x02fe, B:278:0x053f, B:145:0x0309, B:147:0x0311, B:149:0x0317, B:151:0x031f, B:153:0x0325, B:156:0x0338, B:158:0x033e, B:160:0x034f, B:161:0x0358, B:185:0x03bc, B:187:0x03c6, B:189:0x03cc, B:191:0x03d4, B:193:0x03da, B:196:0x03ef, B:198:0x03f5, B:200:0x0406, B:224:0x0493, B:226:0x049b, B:247:0x04e1, B:249:0x04e9, B:276:0x0532, B:202:0x0417, B:204:0x0419, B:205:0x041a, B:206:0x0429, B:209:0x0431, B:212:0x0441, B:214:0x0447, B:216:0x0455, B:218:0x046c, B:220:0x046e, B:221:0x046f, B:222:0x047e, B:163:0x035b, B:165:0x035d, B:166:0x035e, B:167:0x0368, B:170:0x0370, B:173:0x037b, B:175:0x0381, B:177:0x038f, B:179:0x03a1, B:181:0x03a3, B:182:0x03a4, B:183:0x03af, B:284:0x0558, B:287:0x0579, B:340:0x061d, B:321:0x05d7, B:324:0x05e0, B:392:0x06be, B:327:0x05ea, B:330:0x05f4, B:337:0x0609, B:338:0x060e, B:339:0x0616, B:347:0x0635, B:379:0x0693, B:381:0x06a1, B:383:0x06a6, B:370:0x067e, B:66:0x0192, B:68:0x019e, B:71:0x01a9, B:73:0x01af, B:75:0x01bd, B:77:0x01cd, B:79:0x01cf, B:80:0x01d0, B:38:0x0109, B:40:0x0115, B:43:0x0120, B:45:0x0126, B:47:0x0134, B:53:0x014d, B:55:0x0154, B:62:0x017c, B:57:0x0171, B:59:0x0177, B:396:0x06d9, B:398:0x06e9, B:401:0x06ed, B:403:0x06f7, B:405:0x0701, B:409:0x070c, B:407:0x0709, B:412:0x071e, B:416:0x0726, B:422:0x0744, B:425:0x074a), top: B:460:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzajv zzb(byte[] r39, int r40, int r41) {
        /*
            Method dump skipped, instruction units count: 1914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzala.zzb(byte[], int, int):com.google.android.gms.internal.ads.zzajv");
    }

    public zzala() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.zzi = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }
}
