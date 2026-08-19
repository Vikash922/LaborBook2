package com.itextpdf.p017io.font;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class FontProgramDescriptor {
    private static final String[] TT_FAMILY_ORDER = {ExifInterface.GPS_MEASUREMENT_3D, AppEventsConstants.EVENT_PARAM_VALUE_YES, "1033", ExifInterface.GPS_MEASUREMENT_3D, AppEventsConstants.EVENT_PARAM_VALUE_NO, "1033", AppEventsConstants.EVENT_PARAM_VALUE_YES, AppEventsConstants.EVENT_PARAM_VALUE_NO, AppEventsConstants.EVENT_PARAM_VALUE_NO, AppEventsConstants.EVENT_PARAM_VALUE_NO, ExifInterface.GPS_MEASUREMENT_3D, AppEventsConstants.EVENT_PARAM_VALUE_NO};
    private final String familyNameEnglishOpenType;
    private final String familyNameLowerCase;
    private final String fontName;
    private final String fontNameLowerCase;
    private final String fullNameLowerCase;
    private final Set<String> fullNamesAllLangs;
    private final Set<String> fullNamesEnglishOpenType;
    private final boolean isMonospace;
    private final float italicAngle;
    private final int macStyle;
    private final String style;
    private final int weight;

    FontProgramDescriptor(FontNames fontNames, float f, boolean z) {
        String fontName = fontNames.getFontName();
        this.fontName = fontName;
        this.fontNameLowerCase = fontName.toLowerCase();
        this.fullNameLowerCase = fontNames.getFullName()[0][3].toLowerCase();
        this.familyNameLowerCase = (fontNames.getFamilyName() == null || fontNames.getFamilyName()[0][3] == null) ? null : fontNames.getFamilyName()[0][3].toLowerCase();
        this.style = fontNames.getStyle();
        this.weight = fontNames.getFontWeight();
        this.macStyle = fontNames.getMacStyle();
        this.italicAngle = f;
        this.isMonospace = z;
        this.familyNameEnglishOpenType = extractFamilyNameEnglishOpenType(fontNames);
        this.fullNamesAllLangs = extractFullFontNames(fontNames);
        this.fullNamesEnglishOpenType = extractFullNamesEnglishOpenType(fontNames);
    }

    FontProgramDescriptor(FontNames fontNames, FontMetrics fontMetrics) {
        this(fontNames, fontMetrics.getItalicAngle(), fontMetrics.isFixedPitch());
    }

    public String getFontName() {
        return this.fontName;
    }

    public String getStyle() {
        return this.style;
    }

    public int getFontWeight() {
        return this.weight;
    }

    public float getItalicAngle() {
        return this.italicAngle;
    }

    public boolean isMonospace() {
        return this.isMonospace;
    }

    public boolean isBold() {
        return (this.macStyle & 1) != 0;
    }

    public boolean isItalic() {
        return (this.macStyle & 2) != 0;
    }

    public String getFullNameLowerCase() {
        return this.fullNameLowerCase;
    }

    public String getFontNameLowerCase() {
        return this.fontNameLowerCase;
    }

    public String getFamilyNameLowerCase() {
        return this.familyNameLowerCase;
    }

    public Set<String> getFullNameAllLangs() {
        return this.fullNamesAllLangs;
    }

    public Set<String> getFullNamesEnglishOpenType() {
        return this.fullNamesEnglishOpenType;
    }

    String getFamilyNameEnglishOpenType() {
        return this.familyNameEnglishOpenType;
    }

    private Set<String> extractFullFontNames(FontNames fontNames) {
        HashSet hashSet = new HashSet();
        for (String[] strArr : fontNames.getFullName()) {
            hashSet.add(strArr[3].toLowerCase());
        }
        return hashSet;
    }

    private String extractFamilyNameEnglishOpenType(FontNames fontNames) {
        if (fontNames.getFamilyName() == null) {
            return null;
        }
        for (int i = 0; i < TT_FAMILY_ORDER.length; i += 3) {
            for (String[] strArr : fontNames.getFamilyName()) {
                String[] strArr2 = TT_FAMILY_ORDER;
                if (strArr2[i].equals(strArr[0]) && strArr2[i + 1].equals(strArr[1]) && strArr2[i + 2].equals(strArr[2])) {
                    return strArr[3].toLowerCase();
                }
            }
        }
        return null;
    }

    private Set<String> extractFullNamesEnglishOpenType(FontNames fontNames) {
        if (this.familyNameEnglishOpenType != null) {
            HashSet hashSet = new HashSet();
            for (String[] strArr : fontNames.getFullName()) {
                int i = 0;
                while (true) {
                    String[] strArr2 = TT_FAMILY_ORDER;
                    if (i >= strArr2.length) {
                        break;
                    }
                    if (strArr2[i].equals(strArr[0]) && strArr2[i + 1].equals(strArr[1]) && strArr2[i + 2].equals(strArr[2])) {
                        hashSet.add(strArr[3]);
                        break;
                    }
                    i += 3;
                }
            }
            return hashSet;
        }
        return new HashSet();
    }
}
