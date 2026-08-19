package com.itextpdf.io.font;

import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.io.font.otf.Glyph;
import com.itextpdf.io.logs.IoLogMessageConstant;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Type1Font extends FontProgram {
    private static final int[] PFB_TYPES = {1, 2, 1};
    private String characterSet;
    private Type1Parser fontParser;
    private byte[] fontStreamBytes;
    private int[] fontStreamLengths;
    private Map<Long, Integer> kernPairs;

    protected static Type1Font createStandardFont(String str) throws IOException {
        if (StandardFonts.isStandardFont(str)) {
            return new Type1Font(str, null, null, null);
        }
        throw new com.itextpdf.io.exceptions.IOException("{0} is not a standard type1 font.").setMessageParams(str);
    }

    protected Type1Font() {
        this.kernPairs = new HashMap();
        this.fontNames = new FontNames();
    }

    protected Type1Font(String str, String str2, byte[] bArr, byte[] bArr2) throws IOException {
        this();
        this.fontParser = new Type1Parser(str, str2, bArr, bArr2);
        process();
    }

    protected Type1Font(String str) {
        this();
        getFontNames().setFontName(str);
    }

    public boolean isBuiltInFont() {
        Type1Parser type1Parser = this.fontParser;
        return type1Parser != null && type1Parser.isBuiltInFont();
    }

    @Override // com.itextpdf.io.font.FontProgram
    public int getPdfFontFlags() {
        int i = (this.fontMetrics.isFixedPitch() ? 1 : 0) | (isFontSpecific() ? 4 : 32);
        if (this.fontMetrics.getItalicAngle() < 0.0f) {
            i |= 64;
        }
        if (this.fontNames.getFontName().contains("Caps") || this.fontNames.getFontName().endsWith("SC")) {
            i |= 131072;
        }
        return (this.fontNames.isBold() || this.fontNames.getFontWeight() > 500) ? i | 262144 : i;
    }

    public String getCharacterSet() {
        return this.characterSet;
    }

    @Override // com.itextpdf.io.font.FontProgram
    public boolean hasKernPairs() {
        return this.kernPairs.size() > 0;
    }

    @Override // com.itextpdf.io.font.FontProgram
    public int getKerning(Glyph glyph, Glyph glyph2) {
        if (glyph.hasValidUnicode() && glyph2.hasValidUnicode()) {
            long unicode = (((long) glyph.getUnicode()) << 32) + ((long) glyph2.getUnicode());
            if (this.kernPairs.containsKey(Long.valueOf(unicode))) {
                return this.kernPairs.get(Long.valueOf(unicode)).intValue();
            }
        }
        return 0;
    }

    public boolean setKerning(int i, int i2, int i3) {
        this.kernPairs.put(Long.valueOf((((long) i) << 32) + ((long) i2)), Integer.valueOf(i3));
        return true;
    }

    public Glyph getGlyph(String str) {
        int iNameToUnicode = AdobeGlyphList.nameToUnicode(str);
        if (iNameToUnicode != -1) {
            return getGlyph(iNameToUnicode);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public byte[] getFontStreamBytes() throws Throwable {
        RandomAccessFileOrArray postscriptBinary;
        RandomAccessFileOrArray randomAccessFileOrArray = 0;
        if (this.fontParser.isBuiltInFont()) {
            return null;
        }
        byte[] bArr = this.fontStreamBytes;
        try {
            if (bArr != null) {
                return bArr;
            }
            try {
                postscriptBinary = this.fontParser.getPostscriptBinary();
                try {
                    this.fontStreamBytes = new byte[((int) postscriptBinary.length()) - 18];
                    this.fontStreamLengths = new int[3];
                    int i = 0;
                    for (int i2 = 0; i2 < 3; i2++) {
                        if (postscriptBinary.read() != 128) {
                            LoggerFactory.getLogger((Class<?>) Type1Font.class).error(IoLogMessageConstant.START_MARKER_MISSING_IN_PFB_FILE);
                            if (postscriptBinary != null) {
                                try {
                                    postscriptBinary.close();
                                } catch (Exception unused) {
                                }
                            }
                            return null;
                        }
                        if (postscriptBinary.read() != PFB_TYPES[i2]) {
                            LoggerFactory.getLogger((Class<?>) Type1Font.class).error("incorrect.segment.type.in.pfb.file");
                            if (postscriptBinary != null) {
                                try {
                                    postscriptBinary.close();
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        }
                        int i3 = postscriptBinary.read() + (postscriptBinary.read() << 8) + (postscriptBinary.read() << 16) + (postscriptBinary.read() << 24);
                        this.fontStreamLengths[i2] = i3;
                        while (i3 != 0) {
                            int i4 = postscriptBinary.read(this.fontStreamBytes, i, i3);
                            if (i4 < 0) {
                                LoggerFactory.getLogger((Class<?>) Type1Font.class).error("premature.end.in.pfb.file");
                                if (postscriptBinary != null) {
                                    try {
                                        postscriptBinary.close();
                                    } catch (Exception unused3) {
                                    }
                                }
                                return null;
                            }
                            i += i4;
                            i3 -= i4;
                        }
                    }
                    byte[] bArr2 = this.fontStreamBytes;
                    if (postscriptBinary != null) {
                        try {
                            postscriptBinary.close();
                        } catch (Exception unused4) {
                        }
                    }
                    return bArr2;
                } catch (Exception unused5) {
                    LoggerFactory.getLogger((Class<?>) Type1Font.class).error("type1.font.file.exception");
                    if (postscriptBinary != null) {
                        try {
                            postscriptBinary.close();
                        } catch (Exception unused6) {
                        }
                    }
                    return null;
                }
            } catch (Exception unused7) {
                postscriptBinary = null;
            } catch (Throwable th) {
                th = th;
                if (randomAccessFileOrArray != 0) {
                    try {
                        randomAccessFileOrArray.close();
                    } catch (Exception unused8) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFileOrArray = bArr;
        }
    }

    public int[] getFontStreamLengths() {
        return this.fontStreamLengths;
    }

    @Override // com.itextpdf.io.font.FontProgram
    public boolean isBuiltWith(String str) {
        return Objects.equals(this.fontParser.getAfmPath(), str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void process() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.font.Type1Font.process():void");
    }
}
