package com.itextpdf.io.font;

import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.io.font.woff2.Woff2Converter;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class FontProgramDescriptorFactory {
    private static boolean FETCH_CACHED_FIRST = true;

    public static FontProgramDescriptor fetchDescriptor(String str) {
        FontProgramDescriptor fontProgramDescriptorFetchType1FontDescriptor;
        byte[] bArrConvert;
        FontProgramDescriptor fontProgramDescriptorFetchCachedDescriptor;
        if (str == null || str.length() == 0) {
            return null;
        }
        String strTrimFontStyle = FontProgram.trimFontStyle(str);
        boolean zIsStandardFont = StandardFonts.isStandardFont(str);
        boolean z = !zIsStandardFont && FontCache.isPredefinedCidFont(strTrimFontStyle);
        if (FETCH_CACHED_FIRST && (fontProgramDescriptorFetchCachedDescriptor = fetchCachedDescriptor(str, null)) != null) {
            return fontProgramDescriptorFetchCachedDescriptor;
        }
        try {
            String lowerCase = strTrimFontStyle.toLowerCase();
            if (zIsStandardFont || lowerCase.endsWith(".afm") || lowerCase.endsWith(".pfm")) {
                fontProgramDescriptorFetchType1FontDescriptor = fetchType1FontDescriptor(str, null);
            } else if (z) {
                fontProgramDescriptorFetchType1FontDescriptor = fetchCidFontDescriptor(str);
            } else if (lowerCase.endsWith(".ttf") || lowerCase.endsWith(".otf")) {
                fontProgramDescriptorFetchType1FontDescriptor = fetchTrueTypeFontDescriptor(str);
            } else if (lowerCase.endsWith(".woff") || lowerCase.endsWith(".woff2")) {
                if (lowerCase.endsWith(".woff")) {
                    bArrConvert = WoffConverter.convert(FontProgramFactory.readFontBytesFromPath(strTrimFontStyle));
                } else {
                    bArrConvert = Woff2Converter.convert(FontProgramFactory.readFontBytesFromPath(strTrimFontStyle));
                }
                fontProgramDescriptorFetchType1FontDescriptor = fetchTrueTypeFontDescriptor(bArrConvert);
            } else {
                fontProgramDescriptorFetchType1FontDescriptor = fetchTTCDescriptor(strTrimFontStyle);
            }
            return fontProgramDescriptorFetchType1FontDescriptor;
        } catch (Exception unused) {
            return null;
        }
    }

    public static FontProgramDescriptor fetchDescriptor(byte[] bArr) {
        FontProgramDescriptor fontProgramDescriptorFetchTrueTypeFontDescriptor;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        if (FETCH_CACHED_FIRST) {
            fontProgramDescriptorFetchTrueTypeFontDescriptor = fetchCachedDescriptor(null, bArr);
            if (fontProgramDescriptorFetchTrueTypeFontDescriptor != null) {
                return fontProgramDescriptorFetchTrueTypeFontDescriptor;
            }
        } else {
            fontProgramDescriptorFetchTrueTypeFontDescriptor = null;
        }
        try {
            fontProgramDescriptorFetchTrueTypeFontDescriptor = fetchTrueTypeFontDescriptor(bArr);
        } catch (Exception unused) {
        }
        if (fontProgramDescriptorFetchTrueTypeFontDescriptor != null) {
            return fontProgramDescriptorFetchTrueTypeFontDescriptor;
        }
        try {
            return fetchType1FontDescriptor(null, bArr);
        } catch (Exception unused2) {
            return fontProgramDescriptorFetchTrueTypeFontDescriptor;
        }
    }

    public static FontProgramDescriptor fetchDescriptor(FontProgram fontProgram) {
        return fetchDescriptorFromFontProgram(fontProgram);
    }

    private static FontProgramDescriptor fetchCachedDescriptor(String str, byte[] bArr) {
        FontCacheKey fontCacheKeyCreate;
        if (str != null) {
            fontCacheKeyCreate = FontCacheKey.create(str);
        } else {
            fontCacheKeyCreate = FontCacheKey.create(bArr);
        }
        FontProgram font = FontCache.getFont(fontCacheKeyCreate);
        if (font != null) {
            return fetchDescriptorFromFontProgram(font);
        }
        return null;
    }

    private static FontProgramDescriptor fetchTTCDescriptor(String str) throws IOException {
        int iIndexOf = str.toLowerCase().indexOf(".ttc,");
        if (iIndexOf <= 0) {
            return null;
        }
        try {
            OpenTypeParser openTypeParser = new OpenTypeParser(str.substring(0, iIndexOf + 4), Integer.parseInt(str.substring(iIndexOf + 5)));
            FontProgramDescriptor fontProgramDescriptorFetchOpenTypeFontDescriptor = fetchOpenTypeFontDescriptor(openTypeParser);
            openTypeParser.close();
            return fontProgramDescriptorFetchOpenTypeFontDescriptor;
        } catch (NumberFormatException e) {
            throw new com.itextpdf.io.exceptions.IOException(e.getMessage(), (Throwable) e);
        }
    }

    private static FontProgramDescriptor fetchTrueTypeFontDescriptor(String str) throws IOException {
        OpenTypeParser openTypeParser = new OpenTypeParser(str);
        try {
            FontProgramDescriptor fontProgramDescriptorFetchOpenTypeFontDescriptor = fetchOpenTypeFontDescriptor(openTypeParser);
            openTypeParser.close();
            return fontProgramDescriptorFetchOpenTypeFontDescriptor;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    openTypeParser.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private static FontProgramDescriptor fetchTrueTypeFontDescriptor(byte[] bArr) throws IOException {
        OpenTypeParser openTypeParser = new OpenTypeParser(bArr);
        try {
            FontProgramDescriptor fontProgramDescriptorFetchOpenTypeFontDescriptor = fetchOpenTypeFontDescriptor(openTypeParser);
            openTypeParser.close();
            return fontProgramDescriptorFetchOpenTypeFontDescriptor;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    openTypeParser.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private static FontProgramDescriptor fetchOpenTypeFontDescriptor(OpenTypeParser openTypeParser) throws IOException {
        openTypeParser.loadTables(false);
        return new FontProgramDescriptor(openTypeParser.getFontNames(), openTypeParser.getPostTable().italicAngle, openTypeParser.getPostTable().isFixedPitch);
    }

    private static FontProgramDescriptor fetchType1FontDescriptor(String str, byte[] bArr) throws IOException {
        Type1Font type1Font = new Type1Font(str, null, bArr, null);
        return new FontProgramDescriptor(type1Font.getFontNames(), type1Font.getFontMetrics());
    }

    private static FontProgramDescriptor fetchCidFontDescriptor(String str) {
        CidFont cidFont = new CidFont(str, null);
        return new FontProgramDescriptor(cidFont.getFontNames(), cidFont.getFontMetrics());
    }

    private static FontProgramDescriptor fetchDescriptorFromFontProgram(FontProgram fontProgram) {
        return new FontProgramDescriptor(fontProgram.getFontNames(), fontProgram.getFontMetrics());
    }
}
