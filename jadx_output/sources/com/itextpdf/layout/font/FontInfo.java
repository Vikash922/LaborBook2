package com.itextpdf.layout.font;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.font.FontCacheKey;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.FontProgramDescriptor;
import com.itextpdf.p017io.font.FontProgramDescriptorFactory;
import com.itextpdf.p017io.util.ArrayUtil;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class FontInfo {
    private static final Map<FontCacheKey, FontProgramDescriptor> fontNamesCache = new ConcurrentHashMap();
    private final String alias;
    private final FontProgramDescriptor descriptor;
    private final String encoding;
    private final byte[] fontData;
    private final String fontName;
    private final int hash;
    private final Range range;

    private FontInfo(String str, byte[] bArr, String str2, FontProgramDescriptor fontProgramDescriptor, Range range, String str3) {
        this.fontName = str;
        this.fontData = bArr;
        this.encoding = str2;
        this.descriptor = fontProgramDescriptor;
        range = range == null ? RangeBuilder.getFullRange() : range;
        this.range = range;
        this.alias = str3 != null ? str3.toLowerCase() : null;
        this.hash = calculateHashCode(str, bArr, str2, range);
    }

    public static FontInfo create(FontInfo fontInfo, String str, Range range) {
        return new FontInfo(fontInfo.fontName, fontInfo.fontData, fontInfo.encoding, fontInfo.descriptor, range, str);
    }

    public static FontInfo create(FontInfo fontInfo, String str) {
        return create(fontInfo, str, (Range) null);
    }

    public static FontInfo create(FontProgram fontProgram, String str, String str2, Range range) {
        FontProgramDescriptor fontProgramDescriptorFetchDescriptor = FontProgramDescriptorFactory.fetchDescriptor(fontProgram);
        return new FontInfo(fontProgramDescriptorFetchDescriptor.getFontName(), null, str, fontProgramDescriptorFetchDescriptor, range, str2);
    }

    public static FontInfo create(FontProgram fontProgram, String str, String str2) {
        return create(fontProgram, str, str2, (Range) null);
    }

    static FontInfo create(String str, String str2, String str3, Range range) {
        FontCacheKey fontCacheKeyCreate = FontCacheKey.create(str);
        FontProgramDescriptor fontNamesFromCache = getFontNamesFromCache(fontCacheKeyCreate);
        if (fontNamesFromCache == null) {
            fontNamesFromCache = FontProgramDescriptorFactory.fetchDescriptor(str);
            putFontNamesToCache(fontCacheKeyCreate, fontNamesFromCache);
        }
        FontProgramDescriptor fontProgramDescriptor = fontNamesFromCache;
        if (fontProgramDescriptor != null) {
            return new FontInfo(str, null, str2, fontProgramDescriptor, range, str3);
        }
        return null;
    }

    static FontInfo create(byte[] bArr, String str, String str2, Range range) {
        FontCacheKey fontCacheKeyCreate = FontCacheKey.create(bArr);
        FontProgramDescriptor fontNamesFromCache = getFontNamesFromCache(fontCacheKeyCreate);
        if (fontNamesFromCache == null) {
            fontNamesFromCache = FontProgramDescriptorFactory.fetchDescriptor(bArr);
            putFontNamesToCache(fontCacheKeyCreate, fontNamesFromCache);
        }
        FontProgramDescriptor fontProgramDescriptor = fontNamesFromCache;
        if (fontProgramDescriptor != null) {
            return new FontInfo(null, bArr, str, fontProgramDescriptor, range, str2);
        }
        return null;
    }

    public FontProgramDescriptor getDescriptor() {
        return this.descriptor;
    }

    public Range getFontUnicodeRange() {
        return this.range;
    }

    public String getFontName() {
        return this.fontName;
    }

    public byte[] getFontData() {
        return this.fontData;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public String getAlias() {
        return this.alias;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FontInfo)) {
            return false;
        }
        FontInfo fontInfo = (FontInfo) obj;
        String str = this.fontName;
        if (str == null ? fontInfo.fontName == null : str.equals(fontInfo.fontName)) {
            if (this.range.equals(fontInfo.range) && Arrays.equals(this.fontData, fontInfo.fontData)) {
                String str2 = this.encoding;
                if (str2 != null) {
                    if (str2.equals(fontInfo.encoding)) {
                        return true;
                    }
                } else if (fontInfo.encoding == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return this.hash;
    }

    public String toString() {
        String fontName = this.descriptor.getFontName();
        if (fontName.length() > 0) {
            String str = this.encoding;
            return str != null ? MessageFormatUtil.format("{0}+{1}", fontName, str) : fontName;
        }
        return super.toString();
    }

    private static int calculateHashCode(String str, byte[] bArr, String str2, Range range) {
        return ((((((str != null ? str.hashCode() : 0) * 31) + ArrayUtil.hashCode(bArr)) * 31) + (str2 != null ? str2.hashCode() : 0)) * 31) + range.hashCode();
    }

    private static FontProgramDescriptor getFontNamesFromCache(FontCacheKey fontCacheKey) {
        return fontNamesCache.get(fontCacheKey);
    }

    private static void putFontNamesToCache(FontCacheKey fontCacheKey, FontProgramDescriptor fontProgramDescriptor) {
        if (fontProgramDescriptor != null) {
            fontNamesCache.put(fontCacheKey, fontProgramDescriptor);
        }
    }
}
