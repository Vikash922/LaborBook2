package com.itextpdf.io.font;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.io.exceptions.FontCompressionException;
import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.io.font.woff2.Woff2Converter;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.source.RandomAccessSourceFactory;
import java.io.IOException;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class FontProgramFactory {
    private static boolean DEFAULT_CACHED = true;
    private static FontRegisterProvider fontRegisterProvider = new FontRegisterProvider();

    private FontProgramFactory() {
    }

    public static FontProgram createFont() throws IOException {
        return createFont("Helvetica");
    }

    public static FontProgram createFont(String str) throws IOException {
        return createFont(str, (byte[]) null, DEFAULT_CACHED);
    }

    public static FontProgram createFont(String str, boolean z) throws IOException {
        return createFont(str, (byte[]) null, z);
    }

    public static FontProgram createFont(byte[] bArr) throws IOException {
        return createFont((String) null, bArr, DEFAULT_CACHED);
    }

    public static FontProgram createFont(byte[] bArr, boolean z) throws IOException {
        return createFont((String) null, bArr, z);
    }

    private static FontProgram createFont(String str, byte[] bArr, boolean z) throws IOException {
        FontCacheKey fontCacheKeyCreateFontCacheKey;
        byte[] bArrConvert;
        TrueTypeFont trueTypeFont;
        String strTrimFontStyle = FontProgram.trimFontStyle(str);
        boolean zIsStandardFont = StandardFonts.isStandardFont(str);
        boolean z2 = !zIsStandardFont && FontCache.isPredefinedCidFont(strTrimFontStyle);
        FontProgram type1Font = null;
        if (z) {
            fontCacheKeyCreateFontCacheKey = createFontCacheKey(str, bArr);
            FontProgram font = FontCache.getFont(fontCacheKeyCreateFontCacheKey);
            if (font != null) {
                return font;
            }
        } else {
            fontCacheKeyCreateFontCacheKey = null;
        }
        if (str != null) {
            int iLastIndexOf = strTrimFontStyle.lastIndexOf(46);
            String lowerCase = iLastIndexOf > 0 ? strTrimFontStyle.substring(iLastIndexOf).toLowerCase() : null;
            if (zIsStandardFont || ".afm".equals(lowerCase) || ".pfm".equals(lowerCase)) {
                type1Font = new Type1Font(str, null, null, null);
            } else if (z2) {
                type1Font = new CidFont(str, FontCache.getCompatibleCmaps(strTrimFontStyle));
            } else if (".ttf".equals(lowerCase) || ".otf".equals(lowerCase)) {
                if (bArr != null) {
                    type1Font = new TrueTypeFont(bArr);
                } else {
                    type1Font = new TrueTypeFont(str);
                }
            } else if (".woff".equals(lowerCase) || ".woff2".equals(lowerCase)) {
                if (bArr == null) {
                    bArr = readFontBytesFromPath(strTrimFontStyle);
                }
                if (".woff".equals(lowerCase)) {
                    try {
                        bArrConvert = WoffConverter.convert(bArr);
                    } catch (IllegalArgumentException e) {
                        throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidWoffFile, (Throwable) e);
                    }
                } else {
                    try {
                        bArrConvert = Woff2Converter.convert(bArr);
                    } catch (FontCompressionException e2) {
                        throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidWoff2File, (Throwable) e2);
                    }
                }
                type1Font = new TrueTypeFont(bArrConvert);
            } else {
                int iIndexOf = strTrimFontStyle.toLowerCase().indexOf(".ttc,");
                if (iIndexOf > 0) {
                    try {
                        type1Font = new TrueTypeFont(strTrimFontStyle.substring(0, iIndexOf + 4), Integer.parseInt(strTrimFontStyle.substring(iIndexOf + 5)));
                    } catch (NumberFormatException e3) {
                        throw new com.itextpdf.io.exceptions.IOException(e3.getMessage(), (Throwable) e3);
                    }
                }
            }
        } else if (bArr != null) {
            try {
                if (WoffConverter.isWoffFont(bArr)) {
                    bArr = WoffConverter.convert(bArr);
                } else if (Woff2Converter.isWoff2Font(bArr)) {
                    bArr = Woff2Converter.convert(bArr);
                }
                trueTypeFont = new TrueTypeFont(bArr);
            } catch (Exception unused) {
                trueTypeFont = null;
            }
            if (trueTypeFont == null) {
                try {
                    type1Font = new Type1Font(null, null, bArr, null);
                } catch (Exception unused2) {
                    type1Font = trueTypeFont;
                }
            } else {
                type1Font = trueTypeFont;
            }
        }
        if (type1Font != null) {
            return z ? FontCache.saveFont(type1Font, fontCacheKeyCreateFontCacheKey) : type1Font;
        }
        if (str != null) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.TypeOfFont1IsNotRecognized).setMessageParams(str);
        }
        throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.TypeOfFontIsNotRecognized);
    }

    public static FontProgram createType1Font(byte[] bArr, byte[] bArr2) throws IOException {
        return createType1Font(bArr, bArr2, DEFAULT_CACHED);
    }

    public static FontProgram createType1Font(byte[] bArr, byte[] bArr2, boolean z) throws IOException {
        return createType1Font(null, null, bArr, bArr2, z);
    }

    public static FontProgram createType1Font(String str, String str2) throws IOException {
        return createType1Font(str, str2, DEFAULT_CACHED);
    }

    public static FontProgram createType1Font(String str, String str2, boolean z) throws IOException {
        return createType1Font(str, str2, null, null, z);
    }

    public static FontProgram createFont(String str, int i, boolean z) throws IOException {
        FontProgram font;
        FontCacheKey fontCacheKeyCreate = FontCacheKey.create(str, i);
        if (z && (font = FontCache.getFont(fontCacheKeyCreate)) != null) {
            return font;
        }
        TrueTypeFont trueTypeFont = new TrueTypeFont(str, i);
        return z ? FontCache.saveFont(trueTypeFont, fontCacheKeyCreate) : trueTypeFont;
    }

    public static FontProgram createFont(byte[] bArr, int i, boolean z) throws IOException {
        FontProgram font;
        FontCacheKey fontCacheKeyCreate = FontCacheKey.create(bArr, i);
        if (z && (font = FontCache.getFont(fontCacheKeyCreate)) != null) {
            return font;
        }
        TrueTypeFont trueTypeFont = new TrueTypeFont(bArr, i);
        return z ? FontCache.saveFont(trueTypeFont, fontCacheKeyCreate) : trueTypeFont;
    }

    public static FontProgram createRegisteredFont(String str, int i, boolean z) throws IOException {
        return fontRegisterProvider.getFont(str, i, z);
    }

    public static FontProgram createRegisteredFont(String str, int i) throws IOException {
        return fontRegisterProvider.getFont(str, i);
    }

    public static FontProgram createRegisteredFont(String str) throws IOException {
        return fontRegisterProvider.getFont(str, -1);
    }

    public static void registerFontFamily(String str, String str2, String str3) {
        fontRegisterProvider.registerFontFamily(str, str2, str3);
    }

    public static void registerFont(String str) {
        registerFont(str, null);
    }

    public static void registerFont(String str, String str2) {
        fontRegisterProvider.registerFont(str, str2);
    }

    public static int registerFontDirectory(String str) {
        return fontRegisterProvider.registerFontDirectory(str);
    }

    public static int registerSystemFontDirectories() {
        return fontRegisterProvider.registerSystemFontDirectories();
    }

    public static Set<String> getRegisteredFonts() {
        return fontRegisterProvider.getRegisteredFonts();
    }

    public static Set<String> getRegisteredFontFamilies() {
        return fontRegisterProvider.getRegisteredFontFamilies();
    }

    public static boolean isRegisteredFont(String str) {
        return fontRegisterProvider.isRegisteredFont(str);
    }

    private static FontProgram createType1Font(String str, String str2, byte[] bArr, byte[] bArr2, boolean z) throws IOException {
        FontCacheKey fontCacheKeyCreateFontCacheKey;
        if (z) {
            fontCacheKeyCreateFontCacheKey = createFontCacheKey(str, bArr);
            FontProgram font = FontCache.getFont(fontCacheKeyCreateFontCacheKey);
            if (font != null) {
                return font;
            }
        } else {
            fontCacheKeyCreateFontCacheKey = null;
        }
        Type1Font type1Font = new Type1Font(str, str2, bArr, bArr2);
        return z ? FontCache.saveFont(type1Font, fontCacheKeyCreateFontCacheKey) : type1Font;
    }

    private static FontCacheKey createFontCacheKey(String str, byte[] bArr) {
        if (str != null) {
            return FontCacheKey.create(str);
        }
        return FontCacheKey.create(bArr);
    }

    public static void clearRegisteredFonts() {
        fontRegisterProvider.clearRegisteredFonts();
    }

    public static void clearRegisteredFontFamilies() {
        fontRegisterProvider.clearRegisteredFontFamilies();
    }

    static byte[] readFontBytesFromPath(String str) throws IOException {
        RandomAccessFileOrArray randomAccessFileOrArray = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createBestSource(str));
        int length = (int) randomAccessFileOrArray.length();
        if (length < randomAccessFileOrArray.length()) {
            throw new com.itextpdf.io.exceptions.IOException(MessageFormatUtil.format("Source data from \"{0}\" is bigger than byte array can hold.", str));
        }
        byte[] bArr = new byte[length];
        randomAccessFileOrArray.readFully(bArr);
        return bArr;
    }
}
